<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\SurveyAlumniController;
use App\Http\Controllers\SurveyLulusanController;
use App\Http\Controllers\UserAlumniController;

use App\Http\Controllers\StatistikController;

use App\Http\Controllers\BankAlumniController;
use App\Http\Controllers\BankLulusanController;

use App\Http\Controllers\EmailController;
use App\Http\Controllers\EksporController;

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
            [
                'title' => 'home',
                'data_alumni' => ' ',
            ]
        );
    })->name('landing');


    Route::get('/unduhan', function () {
        return view(
            'content.unduhan',
            ['title' => 'unduhan']
        );
    })->name('unduhan');
    // Route::get('/unduhan', function () {
    //     return redirect(route('landing') . '#unduhan')->with(['title' => 'unduhan']);
    // })->name('unduhan');


    // Route::get('/survey', function () {
    //     return view(
    //         'content.survey',
    //         ['title' => 'survey']
    //     );
    // })->name('survey');
    // Route::get('/survey', function () {
    //     return view(
    //         'content.survey',
    //         ['title' => 'survey']
    //     );
    // })->name('survey');


    Route::get('/survey', [UserAlumniController::class, 'survey'])->name('survey');

    Route::get('/tes', [BankAlumniController::class, 'tes'])->name('tes');
    // Route::get('/tes', function () {
    //     return view('test');
    // });


    Route::get('/survey/verif/{nim?}/{prodi?}', [UserAlumniController::class, 'verif'])->name('verif_alumni');

    Route::get('/survey/alumni', [SurveyAlumniController::class, 'show'])->name('alumni');
    Route::get('/survey/alumni/{kategori}', [SurveyAlumniController::class, 'showFormAlumni'])->name('survey_alumni');
    Route::post('/survey/alumni', [SurveyAlumniController::class, 'show'])->name('alumni_login');
    Route::post('/survey/alumni/submit', [BankAlumniController::class, 'store'])->name('alumni_submit');

    Route::get('/survey/lulusan', [SurveyLulusanController::class, 'show'])->name('lulusan');
    Route::get('/survey/lulusan2', [SurveyLulusanController::class, 'dad'])->name('lulusan2');
    Route::post('/survey/lulusan', [SurveyLulusanController::class, 'show'])->name('lulusan');
    Route::post('/survey/lulusan/submit', [BankLulusanController::class, 'store'])->name('lulusan_submit');
});

Route::group(['middleware' => ['auth']], function () {
    Route::get('/admin/dashboard', [AdminController::class, 'show'])->name('admin_dashboard');


    Route::get('/admin/data', [SurveyAlumniController::class, 'dataAlumni'])->name('admin_data');

    Route::get('/admin/form_alumni', [SurveyAlumniController::class, 'formAlumni'])->name('form_alumni');
    Route::get('/admin/form_alumni/{kategori}', [SurveyAlumniController::class, 'showFormAlumni'])->name('get_form_alumni');
    Route::get('/admin/form_alumni/{kategori}/{id?}', [SurveyAlumniController::class, 'editFormAlumni'])->name('edit_show_form_alumni');
    Route::get('/admin/form_alumni/destroy/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('destroy_form_alumni');

    Route::post('/admin/form_alumni/store/{kategori}', [SurveyAlumniController::class, 'store'])->name('add_form_alumni');
    Route::post('/admin/form_alumni/update/{kategori}/{id?}', [SurveyAlumniController::class, 'update'])->name('edit_form_alumni');


    Route::get('/admin/form_lulusan', [SurveyLulusanController::class, 'formLulusan'])->name('form_lulusan');
    Route::get('/admin/form_lulusan/{kategori}', [SurveyLulusanController::class, 'showFormLulusan'])->name('get_form_lulusan');
    Route::get('/admin/form_lulusan/{kategori}/{id?}', [SurveyLulusanController::class, 'editFormLulusan'])->name('edit_show_form_lulusan');
    Route::get('/admin/form_lulusan/destroy/{kategori}/{id?}', [SurveyLulusanController::class, 'destroy'])->name('destroy_form_lulusan');

    Route::post('/admin/form_lulusan/store/{kategori}', [SurveyLulusanController::class, 'store'])->name('add_form_lulusan');
    Route::post('/admin/form_lulusan/update/{kategori}/{id?}', [SurveyLulusanController::class, 'update'])->name('edit_form_lulusan');

    Route::get('/admin/user_alumni', [UserAlumniController::class, 'show'])->name('user_alumni');
    Route::get('/admin/user_alumni/{id}', [UserAlumniController::class, 'edit'])->name('edit_user_alumni');
    Route::post('/admin/user_alumni/update/{id}', [UserAlumniController::class, 'update'])->name('update_user_alumni');
    Route::get('/admin/user_alumni/destroy/{id}', [UserAlumniController::class, 'destroy'])->name('destroy_user_alumni');

    Route::get('/admin/statistik/{prodi}', [StatistikController::class, 'statistikProdi'])->name('statistik_prodi');
    Route::get('/admin/diagram/{kategori}/{prodi?}', [StatistikController::class, 'diagram'])->name('diagram');
    Route::get('/admin/statistik_alumni', [UserAlumniController::class, 'statistikAlumni'])->name('statistik_alumni');
    Route::get('/admin/statistik_lulusan/{prodi}', [StatistikController::class, 'statistikLulusan'])->name('statistik_lulusan');

    Route::post('/admin/user_alumni/store', [UserAlumniController::class, 'store'])->name('add_user_alumni');
    Route::post('/admin/user_alumni/import', [UserAlumniController::class, 'import'])->name('import_user_alumni');

    Route::get('/admin/export/alumni', [EksporController::class, 'export'])->name('export_alumni');
});
