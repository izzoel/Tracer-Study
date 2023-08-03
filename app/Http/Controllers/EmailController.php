<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;

class EmailController extends Controller
{
    public function index()
    {
        // Mail::to('natriumination@gmail.com')->queue(new SendMail());
        // return back();
    }
}
