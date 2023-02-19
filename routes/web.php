<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SurveyAlumniController;
use App\Http\Controllers\SurveyLulusanController;
use App\Http\Controllers\UserAlumniController;

use App\Http\Controllers\BankAlumniController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/admin', [AdminController::class, 'admin_popup'])->name('login');
Route::post('/admin', [AdminController::class, 'admin_login'])->name('login');

Route::get('/logout', [AdminController::class, 'admin_logout'])->name('logout');





Route::group(['middleware' => ['guest']], function () {

    Route::get('/', function () {
        return view(
            'content.main',
            ['title' => 'home']
        );
    })->name('landing')->middleware('guest');


    Route::get('/unduhan', function () {
        return redirect(route('landing') . '#unduhan')->with(['title' => 'unduhan']);
    })->name('unduhan');


    Route::get('/survey', function () {
        return view(
            'content.survey',
            ['title' => 'survey']
        );
    })->name('survey');

    Route::get('/survey/alumni', [SurveyAlumniController::class, 'show'])->name('alumni');
    Route::get('/survey/lulusan', [SurveyLulusanController::class, 'show'])->name('lulusan');


    Route::post('/survey/alumni/submit', [BankAlumniController::class, 'store'])->name('alumni_submit');
});




Route::group(['middleware' => ['auth']], function () {
    Route::get('/admin/dashboard', function () {
        return view('content.admin', ['title' => 'dashboard']);
    })->name('admin_dashboard');

    Route::get('/admin/form_alumni', [SurveyAlumniController::class, 'show'])->name('form_alumni');
    Route::post('/admin/form_alumni', [SurveyAlumniController::class, 'store'])->name('add_alumni');
    Route::post('/admin/form_alumni/{id}', [SurveyAlumniController::class, 'update'])->name('edit_alumni');
    Route::get('/admin/form_alumni/{id}', [SurveyAlumniController::class, 'destroy'])->name('delete_alumni');

    Route::get('/admin/form_lulusan', [SurveyLulusanController::class, 'show'])->name('form_lulusan');
    Route::post('/admin/form_lulusan', [SurveyLulusanController::class, 'store'])->name('add_lulusan');
    Route::post('/admin/form_lulusan/{id}', [SurveyLulusanController::class, 'update'])->name('edit_lulusan');
    Route::get('/admin/form_lulusan/{id}', [SurveyLulusanController::class, 'destroy'])->name('delete_lulusan');

    Route::get('/admin/user_alumni', [UserAlumniController::class, 'show'])->name('user_alumni');
});
