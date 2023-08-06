<?php

namespace App\Http\Controllers;

use App\Models\BankAlumni;
use App\Models\SurveyAlumniBelumBekerja;
use App\Models\ResponEmail;
use App\Mail\SendMail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class BankAlumniController extends Controller
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
    public function store(Request $request, BankAlumni $bankAlumni, SurveyAlumniBelumBekerja $SurveyAlumniBelumBekerja, ResponEmail $ResponEmail)
    {
        $data = $request->except('_token');

        foreach ($data as $key => $value) {
            $data[$key] = is_array($value) ? implode(",", $value) : $value;
        }

        // $bankAlumni->insert([
        //     $data
        // ]);

        // $d = SurveyAlumniBelumBekerja::get('survey');
        $data_bank = BankAlumni::all();
        // $d = SurveyAlumniBelumBekerja::get('survey')->value('survey');
        // $d = SurveyAlumniBelumBekerja::get('survey');
        $data_survey = SurveyAlumniBelumBekerja::all();

        // // dd(response()->json(['a' => $d]));
        // // $q = response()->json(['a' => $d]);
        // // $q = response()->json(['a' => $d]);
        // // foreach ($d as $l => $val) {
        // //     $a[] = $val;
        // //     // $a[] = $l->find($val);
        // // }
        $i = 0;
        // foreach ($data as $k) {
        //     // $q = [
        //     //     'i' . $i++ => $k->pluck('survey'),
        //     // ];
        //     echo $i;
        // }
        // dd($q);

        $data_respon = collect($data)->skip(5);

        if ($data['kategori'] == 'Belum Bekerja') {
            foreach ($data_survey as $s) {
                $survey[] = $s->survey;
            }
            foreach ($data_respon as $r) {
                $respon[] = $r;
            }
        }

        $q = [
            'nama' => $data['nama'],
            'nim' => $data['nim'],
            'prodi' => $data['prodi'],
            'kategori' => $data['kategori'],
            'angkatan' => $data['angkatan'],
            'create_at' => date('Y-m-h h:i:s'),


        ];

        // $qq = [
        //     'survey' => $survey,
        //     'respon' => $respon,
        // ];

        $qq = collect([
            'survey' => $survey,
            'respon' => $respon,
        ]);

        $ResponEmail->create([
            'nim' => $data['nim'],
            'nama' => $data['nama'],
            'prodi' => $data['prodi'],
            'angkatan' => $data['angkatan'],
            'kategori' => $data['kategori'],
            'survey' => $survey,
            'respon' => $respon,

        ]);

        Mail::to('natriumination@gmail.com')->queue(new SendMail($q, $qq));
        dd($qq);

        // Mail::to('natriumination@gmail.com')->queue(new SendMail($data, $q));
        // dd(SurveyAlumniBelumBekerja::get('survey')->values());

        // Mail::to('natriumination@gmail.com')->queue(new SendMail($data_email, $data_concat));


        return redirect()->route('survey');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BankAlumni  $bankAlumni
     * @return \Illuminate\Http\Response
     */
    public function show(BankAlumni $bankAlumni)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BankAlumni  $bankAlumni
     * @return \Illuminate\Http\Response
     */
    public function edit(BankAlumni $bankAlumni)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BankAlumni  $bankAlumni
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BankAlumni $bankAlumni)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BankAlumni  $bankAlumni
     * @return \Illuminate\Http\Response
     */
    public function destroy(BankAlumni $bankAlumni)
    {
        //
    }
}
