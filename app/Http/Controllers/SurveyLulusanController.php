<?php

namespace App\Http\Controllers;

use App\Models\SurveyLulusan;
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

        SurveyLulusan::create([
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
     * Display the specified resource.
     *
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function show(SurveyLulusan $surveyLulusan)
    {
        $form_lulusan = SurveyLulusan::all()->sortBy("no");
        $no_urut = $form_lulusan->pluck('no')->last();

        return view('content.form.form_lulusan', ['title' => 'form_lulusan'])->with(['form_lulusan' => $form_lulusan, 'no_urut' => $no_urut, 'title' => 'form']);
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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request, SurveyLulusan $surveyLulusan)
    {
        $editForm = SurveyLulusan::find($id);

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
     * @param  \App\Models\SurveyLulusan  $surveyLulusan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, SurveyLulusan $surveyLulusan)
    {
        SurveyLulusan::destroy($id);
        return back();
    }
}
