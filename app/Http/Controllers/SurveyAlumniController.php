<?php

namespace App\Http\Controllers;

use App\Models\SurveyAlumni;
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
    public function store(Request $request)
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

        SurveyAlumni::create([
            'no' => $request->input('no'),
            'survey' => $request->input('pertanyaan'),
            'pilihan' => implode(";",  $pilihan),
            'ganda' => $ganda,
            'other' => $other,
            'wajib' => $wajib
        ]);


        return redirect(url()->previous() . '#tambah');;
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

        return view('content.form.form_alumni', ['title' => 'form_alumni'])->with(['form_alumni' => $form_alumni, 'no_urut' => $no_urut, 'title' => 'form']);
    }

    public function showAlumni(SurveyAlumni $survey_Alumni)
    {
        $form_alumni = SurveyAlumni::all()->sortBy("no");
        $no_urut = $form_alumni->pluck('no')->last();

        return view('survey.alumni', ['title' => 'form_alumni'])->with(['form_alumni' => $form_alumni, 'no_urut' => $no_urut, 'title' => 'form']);
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
    public function update($id, Request $request, SurveyAlumni $survey_Alumni)
    {
        $editForm = SurveyAlumni::find($id);

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

        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SurveyAlumni  $survey_Alumni
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, SurveyAlumni $survey_Alumni)
    {
        SurveyAlumni::destroy($id);
        return back();
    }
}
