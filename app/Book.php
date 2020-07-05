<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{

    protected $fillable = [
        'id', 'name', 'description', 'date_publication', 'thumbnail'
    ];

    public function authors()
    {
        return $this->belongsToMany(Author::class,
            'author_books',
            'book_id',
            'author_id')
            ->withTimestamps();
    }
}
