<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\User;
use App\Models\BankAlumni;
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
        // ['title' => 'dashboard']
        $count = $data_alumni->count();
        // $count = json_encode($data_alumni->count());
        // dd($count);
        return view('content.admin')->with(['data_alumni' => $data_alumni, 'title' => 'dashboard', 'count' => $count]);
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
