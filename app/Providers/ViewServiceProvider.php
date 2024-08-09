<?php

// app/Providers/ViewServiceProvider.php

namespace App\Providers;

use App\Models\TopNavbar;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    public function boot()
    {
        // Register the view composer
        View::composer('partials.top-navbar', function ($view) {
            // Data to be passed to the view
            $main_items = TopNavbar::where('parent', null)->get(); // Fetch main items where parent is null
            $child_items = TopNavbar::whereNotNull('parent')->get(); // Fetch child items where parent is not null

            // Pass the data to the view
            $view->with([
                'main_items' => $main_items,
                'child_items' => $child_items,
            ]);
        });
    }

    public function register()
    {
        //
    }
}
