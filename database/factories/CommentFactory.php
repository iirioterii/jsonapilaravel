<?php

$factory->define(App\Models\Comment::class, function (Faker\Generator $faker) {

    return [
        'text' => $faker->realText(255),
        'user_id' => $faker->numberBetween(2,3),
        'article_id' => $faker->numberBetween(2,5),
    ];
});
