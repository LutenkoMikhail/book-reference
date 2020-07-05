<?php

namespace App\Http\Livewire;

use App\Author;
use App\Book;
use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;

class bookcomponent extends Component
{
    use WithPagination;
    use WithFileUploads;

    public $name;
    public $description;
    public $thumbnail;
    public $date_publication;
    public $authors = [];


    public $selectedId;
    public $updateMode = false;
    public $sortMethod = 'asc';
    public $sortField = 'id';
    public $countPaginate = 15;

    private function clearInputForm()
    {
        $this->name = null;
        $this->description = null;
        $this->thumbnail = null;
        $this->date_publication = null;
        $this->authors = null;
    }

    public function render()
    {
        $books = Book::orderBy($this->sortField, $this->sortMethod)->paginate($this->countPaginate);
        $authorsAll = Author::orderBy('surname', 'asc')->get();
        return view('livewire.book-component',
            [
                'books' => $books,
                'authorsAll' => $authorsAll
            ]);
    }

    public function store()
    {
        $this->validate([
            'name' => 'required|min:3 | max:100',
            'description' => ' max:100',
            'thumbnail' => 'required|image|max:2048',
            'date_publication' => 'required|digits:4|integer|min:1901|max:2155',
            'authors' => 'required',
        ]);
        $pathThumbnail = $this->thumbnail->store(
            "/images/books",
            'public'
        );
//        dd($this->authors);

        $book = Book::create([
            'name' => $this->name,
            'description' => $this->description,
            'date_publication' => $this->date_publication,
            'thumbnail' => $pathThumbnail
        ]);


        if ($book !== false) {
            foreach ($this->authors as $authorID) {
                $book->authors()->attach(
                    $authorID
                );
            }
        }
        $this->clearInputForm();
    }

}
