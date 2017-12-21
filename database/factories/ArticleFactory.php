<?php

$factory->define(App\Models\Article::class, function (Faker\Generator $faker) {

    return [
        'title' => $faker->title,
        'description' => str_random(30),
        'text' => $faker->realText(255),
        'user_id' => $faker->numberBetween(2,3),
    ];
});
