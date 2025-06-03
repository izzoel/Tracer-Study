<?php

namespace App\Http\Controllers;

use App\Models\BankLulusan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BankLulusanController extends Controller
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
        $data = $request->except('_token');

        foreach ($data as $key => $value) {
            $data[$key] = is_array($value) ? implode(",", $value) : $value;
        }

        // dd($data);

        DB::table('bank_lulusans')->insert([
            $data
        ]);

        // return back();
        return redirect()->route('survey');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BankLulusan  $bankLulusan
     * @return \Illuminate\Http\Response
     */
    public function show(BankLulusan $bankLulusan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BankLulusan  $bankLulusan
     * @return \Illuminate\Http\Response
     */
    public function edit(BankLulusan $bankLulusan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BankLulusan  $bankLulusan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BankLulusan $bankLulusan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BankLulusan  $bankLulusan
     * @return \Illuminate\Http\Response
     */
    public function destroy(BankLulusan $bankLulusan)
    {
        //
    }
}
