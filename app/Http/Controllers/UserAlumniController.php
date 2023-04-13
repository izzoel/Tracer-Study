<?php

namespace App\Http\Controllers;

use App\Models\UserAlumni;
use Illuminate\Http\Request;

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
    public function create(Request $request)
    {
        // dd($request->nama);
        //
        // $model = [
        //     'nama' => $request->nama,
        //     // 'nim' => $request->nim,
        //     // 'prodi' => $request->prodi,
        //     // 'angkatan' => $request->angkatan
        // ];

        // UserAlumni::create(
        //     $model
        // );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = [
            'nama' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'angkatan' => $request->angkatan
        ];

        UserAlumni::create(
            $model
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function show(UserAlumni $userAlumni)
    {
        // $data_user_alumni = ;
        return response()->json(UserAlumni::all());
        // return view('content.data', ['title' => 'data'])->with([
        //     'title' => 'data',
        //     'data_user_alumni' => $data_user_alumni
        // ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function edit(UserAlumni $userAlumni)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserAlumni $userAlumni)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserAlumni  $userAlumni
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserAlumni $userAlumni)
    {
        //
    }
}
