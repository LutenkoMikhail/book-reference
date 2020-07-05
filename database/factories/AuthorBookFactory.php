<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Author;
use App\AuthorBook;
use App\Book;
use Faker\Generator as Faker;

$factory->define(AuthorBook::class, function ($bookId, $authorId) {
    return [
        'author_id' => $authorId,
        'book_id' => $bookId
    ];
});
