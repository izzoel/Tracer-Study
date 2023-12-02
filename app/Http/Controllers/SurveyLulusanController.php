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
        // dd('qweqw');
    }

    public function formLulusan()
    {
        return view('content.form.form_lulusan', ['title' => 'form_lulusan'])->with([
            'title' => 'form'
        ]);
    }

    public function tes()
    {
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




        // $string = "DF19001 - FEFY NORWALIDAINI - D3 Farmasi";

        // // Find the position of the hyphen ('-')
        // $hyphenPos = strpos($string, '-');

        // if ($hyphenPos !== false) {
        //     // Extract the substring after the hyphen and trim any extra spaces
        //     $substring = trim(substr($string, $hyphenPos + 1));

        //     // Extract the word 'D3 Farmasi' from the extracted substring
        //     $words = explode(' ', $substring);
        //     foreach ($words as $word) {
        //         if (strpos($word, 'D3') !== false && strpos($word, 'Farmasi') !== false) {
        //             $result = $word;
        //             break;
        //         }
        //     }

        //     if (isset($result)) {
        //         dd($result); // Output the extracted word 'D3 Farmasi'
        //     } else {
        //         dd("Word 'D3 Farmasi' not found");
        //     }
        // } else {
        //     dd("Hyphen not found in the string");
        // }


        $string = $request->input('nama_alumni');


        // $string = $request->input('nama_alumni');

        $startPosN = strpos($string, '-'); // Find the position of the first hyphen
        $endPosN = strrpos($string, '('); // Find the position of the last hyphen

        // if ($startPosn !== false && $endPosn !== false && $startPos !== $endPos) {
        $nama = trim(substr($string, $startPosN + 1, $endPosN - $startPosN - 1));
        // dd((ucwords(strtolower($nama)))); // Output the extracted string
        // }



        $startPos = strpos($string, '('); // Find the position of '('
        $endPos = strpos($string, ')', $startPos); // Find the position of ')' after '('
        $prodi = substr($string, $startPos + 1, $endPos - $startPos - 1);


        $data_user = [
            'nama_pengguna_lulusan' => $request->input('nama_pengguna_lulusan'),
            // 'jabatan_pengguna_lulusan' => $request->input('jabatan_pengguna_lulusan'),
            'instansi' => $request->input('instansi'),
            'nama_alumni' => ucwords(strtolower($nama)),
            'prodi' => $prodi
        ];




        // $tes = "asd";
        // $this->dad($tes);

        // return with([
        // 'title' => 'form',
        // 'nama' => $request->input('nama'),
        // 'data_user' => $data_user,
        // 'form_lulusan' => $profil_pengguna_lulusan->take(8)->concat($aspek_integritas->concat($aspek_profesionalisme->concat($aspek_kemampuan_berbahasa_asing->concat($aspek_penggunaan_teknologi)->concat($aspek_komunikasi->concat($aspek_kerjasama_tim->concat($aspek_pengembangan_diri->concat($profil_pengguna_lulusan->skip(8))))))))
        // ]);

        return view('survey.lulusan', ['title' => 'form_lulusan'])->with([
            'title' => 'form',
            'nama' => $request->input('nama'),
            'data_user' => $data_user,
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
