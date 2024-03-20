<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\User;
use App\Models\BankAlumni;
use App\Models\BankLulusan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return view('admin');

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
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function show(Admin $admin)
    {
        $data_alumni = BankAlumni::all();
        $data_pengguna_lulusan = BankLulusan::all();
        $count = $data_alumni->count();

        $count_D3Farmasi = BankAlumni::where('prodi', 'D3 Farmasi')->count();
        $count_D3TLM = BankAlumni::where('prodi', 'D3 TLM')->count();

        $count_S1Farmasi = BankAlumni::where('prodi', 'S1 Farmasi')->count();
        $count_S1ARS = BankAlumni::where('prodi', 'S1 ARS')->count();
        $count_S1Manajemen = BankAlumni::where('prodi', 'S1 Manajemen')->count();
        $count_S1Gizi = BankAlumni::where('prodi', 'S1 Gizi')->count();
        $count_S1Hukum = BankAlumni::where('prodi', 'S1 Hukum')->count();
        $count_S1PGSD = BankAlumni::where('prodi', 'S1 PGSD')->count();

        $count_ProfesiApoteker = BankAlumni::where('prodi', 'Profesi Apoteker')->count();

        return view('content.admin', [
            'data_alumni' => $data_alumni,
            'data_pengguna_lulusan' => $data_pengguna_lulusan,
            'title' => 'dashboard',
            'count' => $count,
            'count_D3Farmasi' => $count_D3Farmasi,
            'count_D3TLM' => $count_D3TLM,
            'count_S1Farmasi' => $count_S1Farmasi,
            'count_S1ARS' => $count_S1ARS,
            'count_S1Manajemen' => $count_S1Manajemen,
            'count_S1Gizi' => $count_S1Gizi,
            'count_S1Hukum' => $count_S1Hukum,
            'count_S1PGSD' => $count_S1PGSD,
            'count_ProfesiApoteker' => $count_ProfesiApoteker
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit(Admin $admin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Admin $admin)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy(Admin $admin)
    {
        //
    }


    public function admin_login(Request $request)
    {
        if (Auth::attempt($request->only('name', 'password'))) {
            return redirect()->route('admin_dashboard')->with(['title' => '']);
        } else {
            Session::flash('admin', 'Username/Password Salah!');
            return back();
        }
    }
    public function admin_popup(Request $request)
    {
        Session::flash('admin', ' ');
        return back();
    }

    public function admin_logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        // return redirect('/');





        // // $this->guard()->logout();

        // $request->session()->flush();

        // $request->session()->regenerate();

        // Auth::logout();
        return redirect()->route('landing');
        // // return redirect('/');
        // // return redirect('/');
    }
}
