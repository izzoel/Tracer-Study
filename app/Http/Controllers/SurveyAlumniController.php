<?php

namespace App\Http\Controllers;

use App\Models\SurveyAlumni;
use App\Models\SurveyAlumniBelumBekerja;
use App\Models\SurveyAlumniSudahBekerja;
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
    // public function store(Request $request)
    // {
    //     if ($request->input('wajib') != "on") {
    //         $wajib = 0;
    //     } else {
    //         $wajib = 1;
    //     }

    //     if ($request->input('ganda') != "on") {
    //         $ganda = 0;
    //     } else {
    //         $ganda = 1;
    //     }

    //     if ($request->input('pilihan') != "on") {
    //         $pilihan[] = null;
    //         $other = 0;
    //     } else {
    //         $pilihan = $request->input('opsi');
    //         if ($request->input('other')) {
    //             $other = 1;
    //         } else {
    //             $other = 0;
    //         }
    //     }

    //     SurveyAlumni::create([
    //         'no' => $request->input('no'),
    //         'survey' => $request->input('pertanyaan'),
    //         'pilihan' => implode(";",  $pilihan),
    //         'ganda' => $ganda,
    //         'other' => $other,
    //         'wajib' => $wajib
    //     ]);


    //     return redirect(url()->previous() . '#tambah');;
    //     // return redirect(back() . '#tambah');
    // }

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
        // return redirect(back() . '#tambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SurveyAlumni  $survey_Alumni
     * @return \Illuminate\Http\Response
     */
    public function show(SurveyAlumni $survey_Alumni)
    {
        $form_alumni = SurveyAlumni::all()->sortBy("no");
        $no_urut = $form_alumni->pluck('no')->last();

        $form_alumni_belum_bekerja = SurveyAlumniBelumBekerja::all()->sortBy("no");
        $no_urut_belum_bekerja = $form_alumni_belum_bekerja->pluck('no')->last();

        $form_alumni_sudah_bekerja = SurveyAlumniSudahBekerja::all()->sortBy("no");
        $no_urut_sudah_bekerja = $form_alumni_sudah_bekerja->pluck('no')->last();

        return view('content.form.form_alumni', ['title' => 'form_alumni'])->with([
            'form_alumni' => $form_alumni,
            'no_urut' => $no_urut,
            'form_alumni_belum_bekerja' => $form_alumni_belum_bekerja,
            'no_urut_belum_bekerja' => $no_urut_belum_bekerja,
            'form_alumni_sudah_bekerja' => $form_alumni_sudah_bekerja,
            'no_urut_sudah_bekerja' => $no_urut_sudah_bekerja,
            'title' => 'form'
        ]);
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
            $verifikasi_alumni = UserAlumni::where('nim', $request->input('nim'))->first()->makeHidden(['id', 'created_at', 'updated_at'])->toArray();
            if (array_diff($request->except('_token'), $verifikasi_alumni) == null) {
                $form_alumni = SurveyAlumni::all()->sortBy("no");
                $form_alumni_belum_bekerja = SurveyAlumni::findMany([15, 44, 48, 77, 78, 79, 80]);
                $form_alumni_sudah_bekerja = SurveyAlumni::findMany([29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 48, 72, 73, 74, 76]);
                $form_alumni_wirausaha = SurveyAlumni::findMany([29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 48, 49, 56, 57, 58, 59, 60, 61, 63]);
                $form_alumni_pendidikan = SurveyAlumni::findMany([16, 17, 18, 19, 20, 21, 48, 67]);
                $no_urut = $form_alumni->pluck('no')->last();


                // dd($form_alumni_2;
                return view('survey.alumni', ['title' => 'form_alumni'])->with([
                    'form_alumni' => $form_alumni,
                    'form_alumni_belum_bekerja' => $form_alumni_belum_bekerja,
                    'form_alumni_wirausaha' => $form_alumni_wirausaha,
                    'form_alumni_sudah_bekerja' => $form_alumni_sudah_bekerja,
                    'form_alumni_pendidikan' => $form_alumni_pendidikan,
                    'no_urut' => $no_urut,
                    'title' => 'form',
                    'nama' => $request->input('nama')
                ]);
            }
        }
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SurveyAlumni  $survey_Alumni
     * @return \Illuminate\Http\Response
     */
    public function edit(SurveyAlumni $survey_Alumni)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SurveyAlumni  $survey_Alumni
     * @return \Illuminate\Http\Response
     */
    // public function update($id, Request $request, SurveyAlumni $survey_Alumni)
    // {
    //     $editForm = SurveyAlumni::find($id);

    //     if ($request->input('wajib') != "on") {
    //         $wajib = 0;
    //     } else {
    //         $wajib = 1;
    //     }

    //     if ($request->input('ganda') != "on") {
    //         $ganda = 0;
    //     } else {
    //         $ganda = 1;
    //     }

    //     if ($request->input('pilihan') != "on") {
    //         $pilihan[] = null;
    //         $other = 0;
    //     } else {
    //         $pilihan = $request->input('opsi');
    //         if ($request->input('other')) {
    //             $other = 1;
    //         } else {
    //             $other = 0;
    //         }
    //     }

    //     $editForm->update([
    //         'no' => $request->input('no'),
    //         'survey' => $request->input('pertanyaan'),
    //         'pilihan' => implode(";",  $pilihan),
    //         'ganda' => $ganda,
    //         'other' => $other,
    //         'wajib' => $wajib
    //     ]);

    //     return back();
    // }

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

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SurveyAlumni  $survey_Alumni
     * @return \Illuminate\Http\Response
     */
    // public function destroy($id, SurveyAlumni $survey_Alumni)
    // {
    //     SurveyAlumni::destroy($id);
    //     return back();
    // }
    public function destroyBelumBekerja($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumniBelumBekerja::destroy($id);
        $destroy = SurveyAlumniBelumBekerja::all()->sortBy("no");
        $no_urut = $destroy->pluck('no')->last();
        return redirect(url()->previous() . '#destroy' . $no_urut);
        // return back();
    }
}
