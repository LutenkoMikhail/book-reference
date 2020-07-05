<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    protected $fillable = [
        'id', 'surname', 'name', 'patronymic'
    ];

    public function books()
    {
        return $this->belongsToMany(Book::class,
            'author_books',
            'author_id',
            'book_id')
            ->withTimestamps();

    }
}
