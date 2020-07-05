<?php

namespace App\Http\Livewire;

use App\Author;
use Livewire\Component;
use Livewire\WithPagination;

class authorcomponent extends Component
{
    use WithPagination;

    public $surname;
    public $name;
    public $patronymic;

    public $selectedId;
    public $updateMode = false;
    public $sortMethod = 'asc';
    public $sortField = 'surname';
    public $countPaginate = 15;

    private function clearInputForm()
    {
        $this->surname = null;
        $this->name = null;
        $this->patronymic = null;
    }

    public function render()
    {
        $authors = Author::orderBy($this->sortField, $this->sortMethod)->paginate($this->countPaginate);

        return view('livewire.author-component',
            ['authors' => $authors]);
    }

    public function store()
    {
        $this->validate([
            'surname' => 'required|min:3 | max:50',
            'name' => 'required|min:3 | max:50',
            'patronymic' => 'max:50'
        ]);
        Author::create([
            'surname' => $this->surname,
            'name' => $this->name,
            'patronymic' => $this->patronymic
        ]);
        $this->clearInputForm();
    }


    public function edit($idAuthor)
    {
        $author = Author::findorFail($idAuthor);
        $this->selectedId = $idAuthor;
        $this->surname = $author->surname;
        $this->name = $author->name;
        $this->patronymic = $author->patronymic;
        $this->updateMode = true;
    }

    public function update()
    {
        $this->validate([
            'surname' => 'required|min:3 | max:50',
            'name' => 'required|min:3 | max:50',
            'patronymic' => 'max:50'
        ]);
        if ($this->selectedId) {
            $post = Author::find($this->selectedId);
            $post->update([
                'surname' => $this->surname,
                'name' => $this->name,
                'patronymic' => $this->patronymic
            ]);
        }
        $this->clearInputForm();
        $this->updateMode = false;
    }

    public function destroy($idAuthor)
    {
        if ($idAuthor) {
            $author = Author::find($idAuthor);
            $author->books()->delete();
            $author->delete();

        }
    }
}
