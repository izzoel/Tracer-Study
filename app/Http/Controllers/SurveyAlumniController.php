<?php

namespace App\Http\Controllers;

use App\Models\SurveyAlumni;
use App\Models\SurveyAlumniBelumBekerja;
use App\Models\SurveyAlumniSudahBekerja;
use App\Models\SurveyAlumniWirausaha;
use App\Models\SurveyAlumniLanjutPendidikan;
use App\Models\UserAlumni;

use Illuminate\Http\Request;


class SurveyAlumniController extends Controller
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


    public function store(Request $request, $kategori)
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

        if ($kategori == "belum_bekerja") {
            SurveyAlumniBelumBekerja::create(
                $model
            );
        } elseif ($kategori == "sudah_bekerja") {
            SurveyAlumniSudahBekerja::create(
                $model
            );
        } elseif ($kategori == "berwirausaha") {
            SurveyAlumniWirausaha::create(
                $model
            );
        } elseif ($kategori == "lanjut_pendidikan") {
            SurveyAlumniLanjutPendidikan::create(
                $model
            );
        }
    }

    public function formAlumni()
    {
        return view('content.form.form_alumni', ['title' => 'form_alumni'])->with([
            'title' => 'form'
        ]);
    }
    public function dataAlumni()
    {
        $data_user_alumni = UserAlumni::all();
        return view('content.data', ['title' => 'data'])->with([
            'title' => 'data',
            'data_user_alumni' => $data_user_alumni
        ]);
    }

    public function showFormAlumni(SurveyAlumni $survey_Alumni, $kategori)
    {
        if ($kategori == "belum_bekerja") {
            return response()->json(SurveyAlumniBelumBekerja::all());
        } elseif ($kategori == "sudah_bekerja") {
            // return response()->json(SurveyAlumniSudahBekerja::skip(18)->take(2)->get());
            return response()->json(SurveyAlumniSudahBekerja::all());
        } elseif ($kategori == "berwirausaha") {
            return response()->json(SurveyAlumniWirausaha::all());
        } elseif ($kategori == "lanjut_pendidikan") {
            return response()->json(SurveyAlumniLanjutPendidikan::all());
        }
    }


    public function show(SurveyAlumni $survey_Alumni, Request $request)
    {
        $karir = $request->input('karir');

        $data_user = [
            'nama' => $request->input('nama'),
            'nim' => $request->input('nim'),
            'prodi' => $request->input('prodi'),
            'kategori' => ucwords(str_replace('_', ' ', $karir)),
            'angkatan' => UserAlumni::where('nim',  $request->input('nim'))->pluck('angkatan')->first(),
            'periode' => UserAlumni::where('nim',  $request->input('nim'))->pluck('periode')->first(),
            'tahun_akademik' => UserAlumni::where('nim', $request->input('nim'))->pluck('tahun_akademik')->first(),
            'karir' => $karir
        ];

        return view('survey.alumni', ['title' => 'form_alumni'])->with($data_user);
    }

    public function editFormAlumni($kategori, $id)
    {
        if ($kategori == "belum_bekerja") {
            return response()->json(SurveyAlumniBelumBekerja::find($id));
        } elseif ($kategori == "sudah_bekerja") {
            return response()->json(SurveyAlumniSudahBekerja::find($id));
        } elseif ($kategori == "berwirausaha") {
            return response()->json(SurveyAlumniWirausaha::find($id));
        } elseif ($kategori == "lanjut_pendidikan") {
            return response()->json(SurveyAlumniLanjutPendidikan::find($id));
        }
    }

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

        if ($kategori == "belum_bekerja") {
            SurveyAlumniBelumBekerja::find($id)->update($model);
        } elseif ($kategori == "sudah_bekerja") {
            SurveyAlumniSudahBekerja::find($id)->update($model);
        } elseif ($kategori == "berwirausaha") {
            SurveyAlumniWirausaha::find($id)->update($model);
        } elseif ($kategori == "lanjut_pendidikan") {
            SurveyAlumniLanjutPendidikan::find($id)->update($model);
        }
    }

    public function destroyFormAlumni($kategori, $id)
    {
        if ($kategori == "belum_bekerja") {
            SurveyAlumniBelumBekerja::destroy($id);
        } elseif ($kategori == "sudah_bekerja") {
            SurveyAlumniSudahBekerja::destroy($id);
        } elseif ($kategori == "berwirausaha") {
            SurveyAlumniWirausaha::destroy($id);
        } elseif ($kategori == "lanjut_pendidikan") {
            SurveyAlumniLanjutPendidikan::destroy($id);
        }
    }
}
