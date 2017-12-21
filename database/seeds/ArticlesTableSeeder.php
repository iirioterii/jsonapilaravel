<?php

namespace App\Seeds;

use App\Models\Article;
use DB;
use Illuminate\Database\Seeder;


/**
 * This is the comments table seeder class.
 *
 * @author Graham Campbell <graham@alt-three.com>
 */
class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeding.
     *
     * @return void
     */
    public function run()
    {
        $articles = factory(Article::class, 100)->create()->toArray();

        DB::table('articles')->truncate();
        DB::table('articles')->insert($articles);
    }
}
