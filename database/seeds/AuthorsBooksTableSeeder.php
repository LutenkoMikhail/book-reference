<?php

use App\Author;
use App\AuthorBook;
use App\Book;
use Illuminate\Database\Seeder;

class AuthorsBooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $authorIdAll = Author::all('id')->toArray();
        $bookIdAll = Book::all('id')->toArray();

        foreach ($bookIdAll as $index => $book) {
            mt_srand(time() * 100000);
            shuffle($authorIdAll);
            $maxAuthor = mt_rand(3, count($authorIdAll) /4);

            for ($i = 0; $i < $maxAuthor; $i++) {
                factory(AuthorBook::class)
                    ->create([
                        'book_id' => $book['id'],
                        'author_id' => $authorIdAll [$i]['id']
                    ]);
            }
        }
    }
}

