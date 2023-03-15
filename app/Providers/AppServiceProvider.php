<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Models\SurveyAlumniBelumBekerja;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        // view()->share('data', [1, 2, 3]);

        // View::share('key', 'value');
        // Schema::defaultStringLength(191);
        $form_alumni_belum_bekerja = SurveyAlumniBelumBekerja::all()->sortBy("no");
        $no_urut_belum_bekerja = $form_alumni_belum_bekerja->pluck('no')->last();

        // $categories = DB::table('categories')->get();
        View::share([
            'form_alumni_belum_bekerja' => $form_alumni_belum_bekerja,
            'no_urut_belum_bekerja' => $no_urut_belum_bekerja,
        ]);
    }
}
