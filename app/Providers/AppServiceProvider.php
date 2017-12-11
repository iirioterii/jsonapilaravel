<?php

namespace App\Providers;

use App\Services\ArticleService;
use App\Services\CommentService;
use Illuminate\Support\ServiceProvider;
use App\Services\UserService;
use Laracasts\Generators\GeneratorsServiceProvider;
use Xethron\MigrationsGenerator\MigrationsGeneratorServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->environment() !== 'production') {
            $this->app->register(GeneratorsServiceProvider::class);
            $this->app->register(MigrationsGeneratorServiceProvider::class);
        }

        $this->app->bind(UserService::class, function () {
            return new UserService();
        });
        $this->app->bind(ArticleService::class, function () {
            return new ArticleService();
        });
        $this->app->bind(CommentService::class, function () {
            return new CommentService();
        });
    }
}
