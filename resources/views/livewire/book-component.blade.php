<div>
    @if (count($books))
        @if(count($errors)>0)
            <div class="alert alert-danger" role="alert">
                <ul>
                    @foreach($errors->all() as $error)
                        <li>
                            {{$error}}
                        </li>
                    @endforeach
                </ul>
            </div>
        @endif

        @if($updateMode)
            @include('livewire.book.update')
        @else
            @include('livewire.book.create')
        @endif


        <div class="starter-template">
            <h1> All Books:</h1>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    @foreach($books as $book)
                        <div class="container">

                            <div class="thumbnail">
                                @if( Storage::has ($book->thumbnail))
                                    <img src="{{ Storage::url($book->thumbnail) }}" height="280" width="250"
                                         class="card-img-top"
                                         style="max-width: 45%; margin: 0 auto; display: block;">
                                @endif

                                <div class="caption">
                                    <h3>ID:{{$book->id}}</h3>
                                    <h3>{{$book->name}}</h3>
                                    <h6>{{$book->description}}</h6>

                                    <p>Authors:{{$book->authors->count()}}</p>
                                    @foreach($book->authors as $author)

                                        <h6>{{$author->surname}} {{$author->name}}  {{$author->patronymic}}</h6>
                                    @endforeach
                                    <h3>
                                    <p>Date :{{$book->date_publication}}</p>
                                    </h3>
                                    <button wire:click="edit({{$book->id}})" class="btn btn-success btn-sm">Edit
                                    </button>
                                    <button wire:click="destroy({{$book->id}})" class="btn btn-danger btn-sm">Delete
                                    </button>

                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

        {{ $books->links() }}

    @else
        <h1>
            Not Books !
        </h1>
    @endif
</div>
