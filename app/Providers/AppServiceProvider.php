<?php

namespace App\Providers;

use App\Author;
use App\Book;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\ServiceProvider;

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
        $countAuthors=0;
        $countBooks=0;
        if (Schema::hasTable('authors')) {
            $countAuthors = Author::get()->count();
            view()->share('authors', $countAuthors);
        }
        if (Schema::hasTable('books')) {
            $countBooks = Book::get()->count();
            view()->share('books', $countBooks);
        }
    }
}
