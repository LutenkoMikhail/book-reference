<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Author;
use App\AuthorBook;
use App\Book;
use Faker\Generator as Faker;

$factory->define(AuthorBook::class, function ($bookId,$authorId) {
//    $authorId = Author::all()->random()->id;
//    $bookId = Book::all()->random()->id;

    return [
        'author_id' => $authorId,
        'book_id' => $bookId
    ];
});
