<?php

namespace App\Seeds;

use App\Models\Comment;
use DB;
use Illuminate\Database\Seeder;

class CommentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $comments = factory(Comment::class, 20)->create()->toArray();

        DB::table('comments')->truncate();
        DB::table('comments')->insert($comments);
    }
}
