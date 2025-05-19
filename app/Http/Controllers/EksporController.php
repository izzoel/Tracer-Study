<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ekspor;
use App\Exports\EksporAlumni;
use App\Exports\EksporLulusan;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class EksporController extends Controller
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
    public function export()
    {
        return Excel::download(new EksporAlumni, 'TRACER Responden Alumni -- ' . \Carbon\Carbon::now()->locale('id')->isoFormat('D MMMM Y') . '.xlsx');
    }
    public function lulusan()
    {
        return Excel::download(new EksporLulusan, 'TRACER Responden Pengguna Lulusan -- ' . \Carbon\Carbon::now()->locale('id')->isoFormat('D MMMM Y') . '.xlsx');
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ekspor  $ekspor
     * @return \Illuminate\Http\Response
     */
    public function show(Ekspor $ekspor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ekspor  $ekspor
     * @return \Illuminate\Http\Response
     */
    public function edit(Ekspor $ekspor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ekspor  $ekspor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ekspor $ekspor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ekspor  $ekspor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ekspor $ekspor)
    {
        //
    }
}
