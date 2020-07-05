<?php

namespace App\Http\Livewire;

use App\Book;
use Livewire\Component;
use Livewire\WithPagination;

class bookcomponent extends Component
{
    use WithPagination;

    public $name;
    public $description;
    public $thumbnail;
    public $date_publication;

    public $selectedId;
    public $updateMode = false;
    public $sortMethod = 'asc';
    public $sortField = 'id';
    public $countPaginate = 15;

    public function render()
    {
        $books = Book::orderBy($this->sortField, $this->sortMethod)->paginate($this->countPaginate);
        return view('livewire.book-component', ['books' => $books]);
    }
}


//'photo' => 'image|max:1024',
