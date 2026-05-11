<?php

namespace App\Providers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\City;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        View::composer('*', function ($view) {
//            $categories = Category::all();
            $categories = Cache::remember('categories', now()->addDay(), function () {
                return Category::all();
            });

            $cartCount = 0;
            if(request()->hasSession()){
                $cartCount = count(session()->get('cart', []));
            }
            $view->with(compact('categories', 'cartCount'));
        });

        View::composer('partials.products.filter', function ($view) {
            $cities = Cache::remember('cities_with_products', now()->addDay(), function () {
                return City::has('products')->get();
            });
            $view->with('cities', $cities);
        });
    }
}
