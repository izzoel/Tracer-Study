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
        // $testMailData = [
        //     'title' => 'Test Email From unbl.ac.id',
        //     'body' => 'This is the body of test email.'
        // ];

        Mail::to('natriumination@gmail.com')->queue(new SendMail());
        // Mail::to('natriumination@gmail.com')
        //     ->later(5, new SendMail());


        // Mail::later(5, 'Html.view', new SendMail(), function ($message) {
        //     $message->from('tracer@unbl.ac.id', 'John Doe');
        //     $message->sender('tracer@unbl.ac.id', 'John Doe');
        //     $message->to('natriumination@gmail.com', 'John Doe');
        //     $message->subject('Subject');
        // });
        return back();

        // dd($testMailData);
        // dd('Success');
    }
}
