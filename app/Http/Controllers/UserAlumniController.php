<?php

namespace App\Http\Controllers;

use App\Imports\FirstSheet;
use App\Models\UserAlumni;
use Maatwebsite\Excel\Facades\Excel;
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
        return response()->json(UserAlumni::all());
    }

    public function countD3F(UserAlumni $userAlumni)
    {
        $d3f_2001 = UserAlumni::where('prodi', 'D3 Farmasi')->where('angkatan', '2001')->count();
        $d3f_2002 = UserAlumni::where('prodi', 'D3 Farmasi')->where('angkatan', '2002')->count();
        $d3f_2003 = UserAlumni::where('prodi', 'D3 Farmasi')->where('angkatan', '2003')->count();
        $d3f_2004 = UserAlumni::where('prodi', 'D3 Farmasi')->where('angkatan', '2004')->count();
        // $d3f_2005 = UserAlumni::where('prodi', 'D3 Farmasi')->where('angkatan', '2005')->count();
        // return response()->json(count(UserAlumni::where('prodi', 'D3 Farmasi')->get()));
        return response()->json(['2001' => $d3f_2001, $d3f_2002, $d3f_2003, $d3f_2004]);
    }

    public function import(Request $request)
    {
        // Excel::selectSheets('sheet1')->load();
        Excel::import(new FirstSheet, $request->file('formFile'));

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
            'nama' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'angkatan' => $request->angkatan
        ];

        UserAlumni::find($id)->update($model);
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
