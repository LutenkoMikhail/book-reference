<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    public function authors()
    {
        return $this->belongsToMany(Book::class, 'author_books', 'author_id', 'book_id')
            ->withTimestamps();
    }
}
