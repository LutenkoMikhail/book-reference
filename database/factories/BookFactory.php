<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Book;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {

    return [
        'name' => $faker->sentence(6,true),
        'description' => $faker->realText(100),
        'thumbnail' => $faker->image('public/storage/images/books', 400, 300, 'animals', true),
        'date_publication' => $faker->year(now())
    ];
});
