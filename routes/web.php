<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SurveyAlumniController;
use App\Http\Controllers\SurveyLulusanController;
use App\Http\Controllers\UserAlumniController;

use App\Http\Controllers\BankAlumniController;
use App\Http\Controllers\BankLulusanController;

use Illuminate\Support\Facades\Session;
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
        return redirect(route('landing') . '#unduhan')->with(['title' => 'unduhan']);
    })->name('unduhan');


    Route::get('/survey', function () {
        return view(
            'content.survey',
            ['title' => 'survey']
        );
    })->name('survey');


    // Route::get('/survey/alumni', [SurveyAlumniController::class, 'verifikasi'])->name('alumni_verif');
    Route::get('/survey/alumni', [SurveyAlumniController::class, 'showAlumni'])->name('alumni');
    Route::post('/survey/alumni', [SurveyAlumniController::class, 'showAlumni'])->name('alumni');

    Route::get('/survey/lulusan', [SurveyLulusanController::class, 'show'])->name('lulusan');


    Route::post('/survey/alumni/submit', [BankAlumniController::class, 'store'])->name('alumni_submit');
    Route::post('/survey/lulusan/submit', [BankLulusanController::class, 'store'])->name('lulusan_submit');
});




Route::group(['middleware' => ['auth']], function () {
    // Route::get('/admin/dashboard', function () {
    //     return view('content.admin', ['title' => 'dashboard']);
    // })->name('admin_dashboard');


    // Route::get('/', function () {
    //     // Session::flush();
    //     return view(
    //         'content.main',
    //         [
    //             'title' => 'home',
    //             'data_alumni' => ' ',
    //         ]
    //     );
    //     // Session::flush();
    // })->name('landing');


    // Route::get('/', function () {
    //     return redirect('/');
    // })->name('landing');

    // Route::get('/', [AdminController::class, 'admin_logout'])->name('logout');

    // Route::get('/', function () {
    //     return view(
    //         'content.main',
    //         [
    //             'title' => 'home',
    //             'data_alumni' => ' ',
    //         ]
    //     );
    // })->name('landing');

    Route::get('/admin/dashboard', [AdminController::class, 'show'])->name('admin_dashboard');


    // Route::get('/admin/form_alumni', [SurveyAlumniController::class, 'show'])->name('form_alumni');
    // Route::get('/admin/form_alumni', [SurveyAlumniController::class, 'show'])->name('form_alumni');
    Route::get('/admin/form_alumni', [SurveyAlumniController::class, 'formAlumni'])->name('form_alumni');
    Route::get('/admin/form_alumni/{kategori}', [SurveyAlumniController::class, 'showFormAlumni'])->name('get_form_alumni');
    Route::get('/admin/form_alumni/{destroy}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('destroy_form_alumni');
    Route::get('/admin/form_alumni/destroy/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('destroy_form_alumni');

    // Route::post('/admin/form_alumni/store/belum_bekerja', [SurveyAlumniController::class, 'store'])->name('add_form_alumni');
    Route::post('/admin/form_alumni/store/{kategori}', [SurveyAlumniController::class, 'store'])->name('add_form_alumni');
    // Route::post('/admin/form_alumni/store/{kategori}', [SurveyAlumniController::class, 'store'])->name('add_form_alumni');



    // Route::get('/admin/form_alumni/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFoarmAlumni'])->name('delete_alumni_belum_bekerja');
    // Route::get('/admin/form_alumni/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('delete_alumni_sudah_bekerja');
    // Route::get('/admin/form_alumni/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('delete_alumni_berwirausaha');
    // Route::get('/admin/form_alumni/{kategori}/{id?}', [SurveyAlumniController::class, 'destroyFormAlumni'])->name('delete_alumni_lanjut_pendidikan');
    // Route::post('/admin/form_alumni', [SurveyAlumniController::class, 'store'])->name('add_alumni');
    // Route::post('/admin/form_alumni/{id}', [SurveyAlumniController::class, 'update'])->name('edit_alumni');
    // Route::get('/admin/form_alumni/{id}', [SurveyAlumniController::class, 'destroy'])->name('delete_alumni');

    // Route::post('/admin/form_alumni/belum_bekerja', [SurveyAlumniController::class, 'storeBelumBekerja'])->name('add_alumni_belum_bekerja');
    // Route::post('/admin/form_alumni/belum_bekerja/{id}', [SurveyAlumniController::class, 'updateBelumBekerja'])->name('edit_alumni_belum_bekerja');
    // Route::get('/admin/form_alumni/belum_bekerja/{id}', [SurveyAlumniController::class, 'destroyBelumBekerja'])->name('delete_alumni_belum_bekerja');

    // Route::post('/admin/form_alumni/sudah_bekerja', [SurveyAlumniController::class, 'storeSudahBekerja'])->name('add_alumni_sudah_bekerja');
    // Route::post('/admin/form_alumni/sudah_bekerja/{id}', [SurveyAlumniController::class, 'updateSudahBekerja'])->name('edit_alumni_sudah_bekerja');
    // Route::get('/admin/form_alumni/sudah_bekerja/{id}', [SurveyAlumniController::class, 'destroySudahBekerja'])->name('delete_alumni_sudah_bekerja');

    // Route::post('/admin/form_alumni/wirausaha', [SurveyAlumniController::class, 'storeWirausaha'])->name('add_alumni_berwirausaha');
    // Route::post('/admin/form_alumni/wirausaha/{id}', [SurveyAlumniController::class, 'updateWirausaha'])->name('edit_alumni_berwirausaha');
    // Route::get('/admin/form_alumni/wirausaha/{id}', [SurveyAlumniController::class, 'destroyWirausaha'])->name('delete_alumni_berwirausaha');

    // Route::post('/admin/form_alumni/lanjut_pendidikan', [SurveyAlumniController::class, 'storeLanjutPendidikan'])->name('add_alumni_lanjut_pendidikan');
    // Route::post('/admin/form_alumni/lanjut_pendidikan/{id}', [SurveyAlumniController::class, 'updateLanjutPendidikan'])->name('edit_alumni_lanjut_pendidikan');
    // Route::get('/admin/form_alumni/lanjut_pendidikan/{id}', [SurveyAlumniController::class, 'destroyLanjutPendidikan'])->name('delete_alumni_lanjut_pendidikan');






    Route::get('/admin/form_lulusan', [SurveyLulusanController::class, 'show'])->name('form_lulusan');
    Route::post('/admin/form_lulusan', [SurveyLulusanController::class, 'store'])->name('add_lulusan');
    Route::post('/admin/form_lulusan/{id}', [SurveyLulusanController::class, 'update'])->name('edit_lulusan');
    Route::get('/admin/form_lulusan/{id}', [SurveyLulusanController::class, 'destroy'])->name('delete_lulusan');

    Route::get('/admin/user_alumni', [UserAlumniController::class, 'show'])->name('user_alumni');
});
