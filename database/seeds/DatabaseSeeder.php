<?php

use Illuminate\Database\Seeder;
use App\Seeds\RolesTableSeeder;
use App\Seeds\UsersTableSeeder;
use App\Seeds\UsersRolesTableSeeder;
use App\Seeds\ArticlesTableSeeder;
use App\Seeds\CommentsTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement("SET foreign_key_checks=0");

        $this->call(RolesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(UsersRolesTableSeeder::class);
        $this->call(ArticlesTableSeeder::class);
        $this->call(CommentsTableSeeder::class);

        DB::statement("SET foreign_key_checks=1");
    }
}
