<?php

namespace App\Http\Controllers;

use App\Models\UserAlumni;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class StatistikController extends Controller
{
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
}
