<?php

namespace App\Http\Controllers;

use App\Models\BankAlumni;
use Illuminate\Http\Request;

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
    public function store(Request $request, BankAlumni $bankAlumni)
    {
        $data = $request->except('_token');

        foreach ($data as $key => $value) {
            $data[$key] = is_array($value) ? implode(",", $value) : $value;
        }
        // dd($data);
        $bankAlumni->insert([
            $data
        ]);

        return redirect()->route('survey');
        // return back();
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
