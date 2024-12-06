<?php

namespace App\Http\Controllers;

use App\Mail\SendMail;
use App\Models\BankAlumni;
use App\Models\ResponEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Models\SurveyAlumniWirausaha;

use App\Models\SurveyAlumniBelumBekerja;
use App\Models\SurveyAlumniSudahBekerja;
use App\Models\SurveyAlumniLanjutPendidikan;

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

    public function tes()
    {
        $userAlumnis = DB::table('user_alumnis')->select('nim', 'periode', 'tahun_akademik')->get();

        foreach ($userAlumnis as $userAlumni) {
            DB::table('bank_alumni')
                ->where('nim', $userAlumni->nim)
                ->update(['periode' =>  $userAlumni->periode . " " . $userAlumni->tahun_akademik]);
        }

        return response()->json(['message' => 'Data updated successfully!']);
    }


    public function store(Request $request, BankAlumni $bankAlumni, SurveyAlumniBelumBekerja $SurveyAlumniBelumBekerja, ResponEmail $ResponEmail)
    {
        $data = $request->except('_token');
        // dd($data);
        foreach ($data as $key => $value) {
            $data[$key] = is_array($value) ? implode(",", $value) : $value;
        }

        $bankAlumni->insert([
            $data
        ]);

        $data_email = BankAlumni::where('nim', $data['nim'])->pluck('alumni5')->last();
        $data_respon = collect($data)->skip(5);

        if ($data['kategori'] == 'Belum Bekerja') {
            $data_survey = SurveyAlumniBelumBekerja::all();
            foreach ($data_survey as $s) {
                $survey[] = $s->survey;
            }
            foreach ($data_respon as $r) {
                $respon[] = $r;
            }
        } elseif ($data['kategori'] == 'Sudah Bekerja') {
            $data_survey = SurveyAlumniSudahBekerja::all();
            foreach ($data_survey as $s) {
                $survey[] = $s->survey;
            }
            foreach ($data_respon as $r) {
                $respon[] = $r;
            }
        } elseif ($data['kategori'] == 'Berwirausaha') {
            $data_survey = SurveyAlumniWirausaha::all();
            foreach ($data_survey as $s) {
                $survey[] = $s->survey;
            }
            foreach ($data_respon as $r) {
                $respon[] = $r;
            }
        } elseif ($data['kategori'] == 'Lanjut Pendidikan') {
            $data_survey = SurveyAlumniLanjutPendidikan::all();
            foreach ($data_survey as $s) {
                $survey[] = $s->survey;
            }
            foreach ($data_respon as $r) {
                $respon[] = $r;
            }
        }

        $data = [
            'nama' => $data['nama'],
            'nim' => $data['nim'],
            'email' => $data_email,
            'prodi' => $data['prodi'],
            'kategori' => $data['kategori'],
            'angkatan' => $data['angkatan'],
            'create_at' => date('Y-m-h h:i:s'),

        ];

        $ResponEmail->create([
            'nim' => $data['nim'],
            'nama' => $data['nama'],
            'email' => $data_email,
            'prodi' => $data['prodi'],
            'angkatan' => $data['angkatan'],
            'kategori' => $data['kategori'],
            'survey' => implode(';', $survey),
            'respon' => implode(';', $respon)

        ]);

        Mail::to($data_email)->queue(new SendMail($data, ResponEmail::where('created_at', '>=', now())->get()));

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
