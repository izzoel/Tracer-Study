<?php

namespace App\Http\Controllers;

use App\Models\SurveyLulusan;
use App\Models\SurveyLulusanAspekIntegritas;
use App\Models\SurveyLulusanAspekKemampuanBerbahasaAsing;
use App\Models\SurveyLulusanAspekKerjasamaTim;
use App\Models\SurveyLulusanAspekKomunikasi;
use App\Models\SurveyLulusanAspekPengembanganDiri;
use App\Models\SurveyLulusanAspekPenggunaanTeknologi;
use App\Models\SurveyLulusanAspekProfesionalisme;
use App\Models\SurveyLulusanProfilPenggunaLulusan;
use Illuminate\Http\Request;

class SurveyLulusanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    public function formLulusan()
    {
        return view('content.form.form_lulusan', ['title' => 'form_lulusan'])->with([
            'title' => 'form'
        ]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,  $kategori)
    {
        if ($request->input('wajib') != "on") {
            $wajib = 0;
        } else {
            $wajib = 1;
        }

        if ($request->input('ganda') != "on") {
            $ganda = 0;
        } else {
            $ganda = 1;
        }

        if ($request->pilihan != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->opsi;
            if ($request->other) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $model = [
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ];


        if ($kategori == "profil_pengguna_lulusan") {
            SurveyLulusanProfilPenggunaLulusan::create(
                $model
            );
        } elseif ($kategori == "aspek_integritas") {
            return response()->json(SurveyLulusanAspekIntegritas::all());
            SurveyLulusanAspekIntegritas::create(
                $model
            );
        } elseif ($kategori == "aspek_profesionalisme") {
            SurveyLulusanAspekProfesionalisme::create(
                $model
            );
        } elseif ($kategori == "aspek_kemampuan_berbahasa_asing") {
            SurveyLulusanAspekKemampuanBerbahasaAsing::create(
                $model
            );
        } elseif ($kategori == "aspek_penggunaan_teknologi") {
            SurveyLulusanAspekPenggunaanTeknologi::create(
                $model
            );
        } elseif ($kategori == "aspek_komunikasi") {
            SurveyLulusanAspekKomunikasi::create(
                $model
            );
        } elseif ($kategori == "aspek_kerjasama_tim") {
            SurveyLulusanAspekKerjasamaTim::create(
                $model
            );
        } elseif ($kategori == "aspek_pengembangan_diri") {
            SurveyLulusanAspekPengembanganDiri::create(
                $model
            );
        }
    }

    public function showFormLulusan($kategori)
    {
        if ($kategori == "profil_pengguna_lulusan") {
            return response()->json(SurveyLulusanProfilPenggunaLulusan::all());
        } elseif ($kategori == "aspek_integritas") {
            return response()->json(SurveyLulusanAspekIntegritas::all());
        } elseif ($kategori == "aspek_profesionalisme") {
            return response()->json(SurveyLulusanAspekProfesionalisme::all());
        } elseif ($kategori == "aspek_kemampuan_berbahasa_asing") {
            return response()->json(SurveyLulusanAspekKemampuanBerbahasaAsing::all());
        } elseif ($kategori == "aspek_penggunaan_teknologi") {
            return response()->json(SurveyLulusanAspekPenggunaanTeknologi::all());
        } elseif ($kategori == "aspek_komunikasi") {
            return response()->json(SurveyLulusanAspekKomunikasi::all());
        } elseif ($kategori == "aspek_kerjasama_tim") {
            return response()->json(SurveyLulusanAspekKerjasamaTim::all());
        } elseif ($kategori == "aspek_pengembangan_diri") {
            return response()->json(SurveyLulusanAspekPengembanganDiri::all());
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $profil_pengguna_lulusan = SurveyLulusanProfilPenggunaLulusan::all();
        $aspek_integritas = SurveyLulusanAspekIntegritas::all();
        $aspek_profesionalisme = SurveyLulusanAspekProfesionalisme::all();
        $aspek_kemampuan_berbahasa_asing = SurveyLulusanAspekKemampuanBerbahasaAsing::all();
        $aspek_penggunaan_teknologi = SurveyLulusanAspekPenggunaanTeknologi::all();
        $aspek_komunikasi = SurveyLulusanAspekKomunikasi::all();
        $aspek_kerjasama_tim = SurveyLulusanAspekKerjasamaTim::all();
        $aspek_pengembangan_diri = SurveyLulusanAspekPengembanganDiri::all();

        return view('survey.lulusan', ['title' => 'form_lulusan'])->with([
            'title' => 'form',
            'nama' => $request->input('nama'),
            'form_lulusan' => $profil_pengguna_lulusan->take(8)->concat($aspek_integritas->concat($aspek_profesionalisme->concat($aspek_kemampuan_berbahasa_asing->concat($aspek_penggunaan_teknologi)->concat($aspek_komunikasi->concat($aspek_kerjasama_tim->concat($aspek_pengembangan_diri->concat($profil_pengguna_lulusan->skip(8))))))))
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function edit(SurveyLulusan $surveyLulusan)
    {
        //
    }



    public function editFormLulusan($kategori, $id)
    {
        if ($kategori == "profil_pengguna_lulusan") {
            return response()->json(SurveyLulusanProfilPenggunaLulusan::find($id));
        } elseif ($kategori == "aspek_integritas") {
            return response()->json(SurveyLulusanAspekIntegritas::find($id));
        } elseif ($kategori == "aspek_profesionalisme") {
            return response()->json(SurveyLulusanAspekProfesionalisme::find($id));
        } elseif ($kategori == "aspek_kemampuan_berbahasa_asing") {
            return response()->json(SurveyLulusanAspekKemampuanBerbahasaAsing::find($id));
        } elseif ($kategori == "aspek_penggunaan_teknologi") {
            return response()->json(SurveyLulusanAspekPenggunaanTeknologi::find($id));
        } elseif ($kategori == "aspek_komunikasi") {
            return response()->json(SurveyLulusanAspekKomunikasi::find($id));
        } elseif ($kategori == "aspek_kerjasama_tim") {
            return response()->json(SurveyLulusanAspekKerjasamaTim::find($id));
        } elseif ($kategori == "aspek_pengembangan_diri") {
            return response()->json(SurveyLulusanAspekPengembanganDiri::find($id));
        }
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $kategori, $id)
    {
        if ($request->wajib != "on") {
            $wajib = 0;
        } else {
            $wajib = 1;
        }

        if ($request->ganda != "on") {
            $ganda = 0;
        } else {
            $ganda = 1;
        }

        if ($request->pilihan != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->opsi;
            if ($request->other) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $model = [
            'no' => $request->no,
            'survey' => $request->pertanyaan,
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ];

        if ($kategori == "profil_pengguna_lulusan") {
            SurveyLulusanProfilPenggunaLulusan::find($id)->update($model);
        } elseif ($kategori == "aspek_integritas") {
            SurveyLulusanAspekIntegritas::find($id)->update($model);
        } elseif ($kategori == "aspek_profesionalisme") {
            SurveyLulusanAspekProfesionalisme::find($id)->update($model);
        } elseif ($kategori == "aspek_kemampuan_berbahasa_asing") {
            SurveyLulusanAspekKemampuanBerbahasaAsing::find($id)->update($model);
        } elseif ($kategori == "aspek_penggunaan_teknologi") {
            SurveyLulusanAspekPenggunaanTeknologi::find($id)->update($model);
        } elseif ($kategori == "aspek_komunikasi") {
            SurveyLulusanAspekKomunikasi::find($id)->update($model);
        } elseif ($kategori == "aspek_kerjasama_tim") {
            SurveyLulusanAspekKerjasamaTim::find($id)->update($model);
        } elseif ($kategori == "aspek_pengembangan_diri") {
            SurveyLulusanAspekPengembanganDiri::find($id)->update($model);
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function destroy($kategori, $id)
    {
        if ($kategori == "profil_pengguna_lulusan") {
            return response()->json(SurveyLulusanProfilPenggunaLulusan::destroy($id));
        } elseif ($kategori == "aspek_integritas") {
            return response()->json(SurveyLulusanAspekIntegritas::destroy($id));
        } elseif ($kategori == "aspek_profesionalisme") {
            return response()->json(SurveyLulusanAspekProfesionalisme::destroy($id));
        } elseif ($kategori == "aspek_kemampuan_berbahasa_asing") {
            return response()->json(SurveyLulusanAspekKemampuanBerbahasaAsing::destroy($id));
        } elseif ($kategori == "aspek_penggunaan_teknologi") {
            return response()->json(SurveyLulusanAspekPenggunaanTeknologi::destroy($id));
        } elseif ($kategori == "aspek_komunikasi") {
            return response()->json(SurveyLulusanAspekKomunikasi::destroy($id));
        } elseif ($kategori == "aspek_kerjasama_tim") {
            return response()->json(SurveyLulusanAspekKerjasamaTim::destroy($id));
        } elseif ($kategori == "aspek_pengembangan_diri") {
            return response()->json(SurveyLulusanAspekPengembanganDiri::destroy($id));
        }
    }
}
