<?php

namespace App\Http\Controllers;

use App\Imports\FirstSheet;
use App\Models\UserAlumni;
use App\Models\BankAlumni;
use App\Models\BankLulusan;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UserAlumniController extends Controller
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
    public function create(Request $request) {}

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = [
            'nik' => $request->nik,
            'nama' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'angkatan' => $request->angkatan,
            'periode' => $request->periode,
            'tahun_akademik' => $request->tahun_akademik,
        ];

        UserAlumni::create($model);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function show(UserAlumni $userAlumni)
    {
        return response()->json(UserAlumni::all());
    }

    public function survey(UserAlumni $userAlumni)
    {
        $data = UserAlumni::all();
        return view('content.survey', ['title' => 'survey', 'nama_alumni' => $data->skip(2)]);
    }

    public function verif($nim)
    {
        $data = UserAlumni::where('nim', $nim)->get();
        $d_nim = $data->value('nim');
        $d_nama = $data->value('nama');
        $d_prodi = $data->value('prodi');

        $d = [
            'nim' => $d_nim,
            'nama' => $d_nama,
            'prodi' => $d_prodi,
        ];
        return $d;
    }

    public function statistikProdi(UserAlumni $userAlumni, $prodi)
    {
        foreach (UserAlumni::get('angkatan')->unique('angkatan') as $d) {
            $angkatan[] = $d->angkatan;
        }

        foreach ($angkatan as $key) {
            $res[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
        }

        return response()->json($res);
    }
    public function statistikAlumni(UserAlumni $userAlumni)
    {
        foreach (UserAlumni::get('angkatan')->unique('angkatan')->sortBy('angkatan') as $d) {
            $angkatan[] = $d->angkatan;
        }

        foreach ($angkatan as $key) {
            $alumni[$key] = BankAlumni::where('angkatan', $key)->count();
            $lulusan[$key] = BankLulusan::where('bank8', $key)->count();
        }
        return response()->json(['responden_alumni' => $alumni, 'responden_lulusan' => $lulusan]);
    }
    public function import(Request $request)
    {
        Excel::import(new FirstSheet(), $request->file('formFile'));

        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return response()->json(UserAlumni::find($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $model = [
            'nik' => $request->nik,
            'nama' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'angkatan' => $request->angkatan,
            'periode' => $request->periode,
            'tahun_akademik' => $request->tahun_akademik,
        ];

        try {
            $user = UserAlumni::find($id);

            if (!$user) {
                // Log jika ID tidak ditemukan
                Log::error("Update UserAlumni gagal: ID {$id} tidak ditemukan", [
                    'data' => $model,
                ]);
                return response()->json(['message' => 'Data tidak ditemukan'], 404);
            }

            $user->update($model);

            return response()->json(['message' => 'Data berhasil diupdate'], 200);
        } catch (\Exception $e) {
            // Log jika terjadi error lain
            Log::error("Update UserAlumni gagal: {$e->getMessage()}", [
                'id' => $id,
                'data' => $model,
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json(['message' => 'Terjadi kesalahan saat update'], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        UserAlumni::destroy($id);
    }
}
