<?php

namespace App\Http\Controllers;

use App\Models\SurveyAlumni;
use App\Models\SurveyAlumniBelumBekerja;
use App\Models\SurveyAlumniSudahBekerja;
use App\Models\SurveyAlumniWirausaha;
use App\Models\SurveyAlumniLanjutPendidikan;
use App\Models\UserAlumni;

use Illuminate\Support\Facades\DB;
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


    public function storeBelumBekerja(Request $request)
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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        SurveyAlumniBelumBekerja::create([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);
        return redirect(url()->previous() . '#tambah');
    }

    public function storeSudahBekerja(Request $request)
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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        SurveyAlumniSudahBekerja::create([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);


        return redirect(url()->previous() . '#tambah');
        // return redirect(back() . '#tambah');
    }

    public function storeWirausaha(Request $request)
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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        SurveyAlumniWirausaha::create([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);


        return redirect(url()->previous() . '#tambah');
        // return redirect(back() . '#tambah');
    }

    public function storeLanjutPendidikan(Request $request)
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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        SurveyAlumniLanjutPendidikan::create([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);


        return redirect(url()->previous() . '#tambah');
    }







    public function show(SurveyAlumni $survey_Alumni)
    {
        $form_alumni = SurveyAlumni::all()->sortBy("no");
        $no_urut = $form_alumni->pluck('no')->last();

        $form_alumni_belum_bekerja = SurveyAlumniBelumBekerja::all()->sortBy("no");
        $no_urut_belum_bekerja = $form_alumni_belum_bekerja->pluck('no')->last();

        $form_alumni_sudah_bekerja = SurveyAlumniSudahBekerja::all()->sortBy("no");
        $no_urut_sudah_bekerja = $form_alumni_sudah_bekerja->pluck('no')->last();

        $form_alumni_wirausaha = SurveyAlumniWirausaha::all()->sortBy("no");
        $no_urut_wirausaha = $form_alumni_wirausaha->pluck('no')->last();

        $form_alumni_lanjut_pendidikan = SurveyAlumniLanjutPendidikan::all()->sortBy("no");
        $no_urut_lanjut_pendidikan = $form_alumni_lanjut_pendidikan->pluck('no')->last();

        return view('content.form.form_alumni', ['title' => 'form_alumni'])->with([
            'form_alumni' => $form_alumni,
            'no_urut' => $no_urut,
            'form_alumni_belum_bekerja' => $form_alumni_belum_bekerja,
            'no_urut_belum_bekerja' => $no_urut_belum_bekerja,
            'form_alumni_sudah_bekerja' => $form_alumni_sudah_bekerja,
            'no_urut_sudah_bekerja' => $no_urut_sudah_bekerja,
            'form_alumni_wirausaha' => $form_alumni_wirausaha,
            'no_urut_wirausaha' => $no_urut_wirausaha,
            'form_alumni_lanjut_pendidikan' => $form_alumni_lanjut_pendidikan,
            'no_urut_lanjut_pendidikan' => $no_urut_lanjut_pendidikan,
            'title' => 'form'
        ]);
    }

    public function show2(SurveyAlumni $survey_Alumni)
    {
        // $data = ;
        return response()->json(SurveyAlumniBelumBekerja::all());
    }


    public function showAlumni(SurveyAlumni $survey_Alumni, Request $request)
    // public function showAlumni(SurveyAlumni $survey_Alumni, Request $request)
    {
        // verifikasi
        // $verifikasi_alumni = DB::table('user_alumnis')->select('nama')->get();
        // $verifikasi_nama_alumni = UserAlumni::all()->pluck('nama')->first();
        // $verifikasi_nim_alumni = UserAlumni::all()->pluck('nim')->first();

        // $verifikasi_alumni = DB::table('user_alumnis')->where($request->input('nama'))->first();
        // $verifikasi_alumni = DB::table('user_alumnis')->where('nama', 'nim', 'prodi')->first();

        $verifikasi_alumni = UserAlumni::find($request->input('nim'));
        // $verifikasi_alumni = UserAlumni::where('nim', $request->input('nim'))->first()->makeHidden(['id', 'created_at', 'updated_at'])->toArray();


        // dd($request->input('nama') . "|" . $request->input('nim') . "|" . $request->input('prodi'), $verifikasi_nama_alumni . " " . $verifikasi_nim_alumni);
        // dd($request->input('nama') . "|" . $request->input('nim') . "|" . $request->input('prodi'), $verifikasi_alumni);
        // dd($request->input('nama') . "|" . $request->input('nim') . "|" . $request->input('prodi'), $verifikasi_alumni);
        // dd($request->except('_token'), $verifikasi_alumni);

        // dd(array_diff($request->except('_token'), $verifikasi_alumni));

        // dd(array_diff($request->except('credit_card'), $verifikasi_alumni));

        if ($verifikasi_alumni == null) {
            return back();
        } else {
            // dd($request->input('karir'));
            $verifikasi_alumni = UserAlumni::where('nim', $request->input('nim'))->first()->makeHidden(['id', 'created_at', 'updated_at'])->toArray();
            if (array_diff($request->except('_token'), $verifikasi_alumni) == null) {

                if ($request->input('karir') == "Belum Bekerja") {
                    $form_alumni = SurveyAlumniBelumBekerja::all()->sortBy("no");
                    $no_urut = $form_alumni->pluck('no')->last();
                    $karir = "Belum Bekerja";
                } elseif ($request->input('karir') == "Sudah Bekerja") {
                    $form_alumni = SurveyAlumniSudahBekerja::all()->sortBy("no");
                    $no_urut = $form_alumni->pluck('no')->last();
                    $karir = "Sudah Bekerja";
                } elseif ($request->input('karir') == "Berwirausaha") {
                    $form_alumni = SurveyAlumniWirausaha::all()->sortBy("no");
                    $no_urut = $form_alumni->pluck('no')->last();
                    $karir = "Berwirausaha";
                } elseif ($request->input('karir') == "Melanjutkan Pendidikan") {
                    $form_alumni = SurveyAlumniLanjutPendidikan::all()->sortBy("no");
                    $no_urut = $form_alumni->pluck('no')->last();
                    $karir = "Melanjutkan Pendidikan";
                }

                return view('survey.alumni', ['title' => 'form_alumni'])->with([
                    'form_alumni' => $form_alumni,
                    'no_urut' => $no_urut,
                    'title' => 'form',
                    'nama' => $request->input('nama'),
                    'karir' => $karir
                ]);
            }
        }
        return back();
    }

    public function edit(SurveyAlumni $survey_Alumni)
    {
        //
    }





    public function updateBelumBekerja($id, Request $request, SurveyAlumni $survey_Alumni)
    {
        $editForm = SurveyAlumniBelumBekerja::find($id);

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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $editForm->update([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);
        return redirect(url()->previous() . '#edit' . $id);
        // return back();
    }

    public function updateSudahBekerja($id, Request $request, SurveyAlumni $survey_Alumni)
    {
        $editForm = SurveyAlumniSudahBekerja::find($id);

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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $editForm->update([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);
        return redirect(url()->previous() . '#edit' . $id);
        // return back();
    }

    public function updateWirausaha($id, Request $request, SurveyAlumni $survey_Alumni)
    {
        $editForm = SurveyAlumniWirausaha::find($id);

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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $editForm->update([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);
        return redirect(url()->previous() . '#edit' . $id);
        // return back();
    }

    public function updateLanjutPendidikan($id, Request $request, SurveyAlumni $survey_Alumni)
    {
        $editForm = SurveyAlumniLanjutPendidikan::find($id);

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

        if ($request->input('pilihan') != "on") {
            $pilihan[] = null;
            $other = 0;
        } else {
            $pilihan = $request->input('opsi');
            if ($request->input('other')) {
                $other = 1;
            } else {
                $other = 0;
            }
        }

        $editForm->update([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);
        return redirect(url()->previous() . '#edit' . $id);
        // return back();
    }





    public function destroyBelumBekerja($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumniBelumBekerja::destroy($id);
        $destroy = SurveyAlumniBelumBekerja::all()->sortBy("no");
        $no_urut = $destroy->pluck('no')->last();
        return redirect(url()->previous() . '#destroy' . $no_urut);
        // return back();
    }

    public function destroySudahBekerja($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumniSudahBekerja::destroy($id);
        $destroy = SurveyAlumniSudahBekerja::all()->sortBy("no");
        $no_urut = $destroy->pluck('no')->last();
        return redirect(url()->previous() . '#destroy' . $no_urut);
        // return back();
    }

    public function destroyWirausaha($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumniWirausaha::destroy($id);
        $destroy = SurveyAlumniWirausaha::all()->sortBy("no");
        $no_urut = $destroy->pluck('no')->last();
        return redirect(url()->previous() . '#destroy' . $no_urut);
        // return back();
    }

    public function destroyLanjutPendidikan($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumniLanjutPendidikan::destroy($id);
        $destroy = SurveyAlumniLanjutPendidikan::all()->sortBy("no");
        $no_urut = $destroy->pluck('no')->last();
        return redirect(url()->previous() . '#destroy' . $no_urut);
        // return back();
    }
}
