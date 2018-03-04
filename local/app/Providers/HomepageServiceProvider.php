<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class HomepageServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer(
            ['frontend.baogia.baogia','frontend.home.index'],
            'App\Http\ViewComposers\HomepageComposer'
        );
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
