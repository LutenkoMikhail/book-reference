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

    {{--    @if($updateMode)--}}
    {{--        @include('livewire.author.update')--}}
    {{--    @else--}}
    {{--        @include('livewire.author.create')--}}
    {{--    @endif--}}


        <div class="starter-template">
            <h1> All Books:</h1>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    @foreach($books as $book)
                        <div class="container">

                            <div class="thumbnail">
                                <h6>{{$book->thumbnail}}</h6>
                                @if( Storage::has ($book->thumbnail))
                                    <img src="{{ Storage::url($book->thumbnail) }}" height="280" width="250" class="card-img-top"
                                         style="max-width: 45%; margin: 0 auto; display: block;">
                                @endif
{{--                                <img src="http://internet-shop.tmweb.ru/storage/products/iphone_x.jpg"--}}
{{--                                     alt="iPhone X 64GB">--}}
                                <div class="caption">
                                    <h3>ID:{{$book->id}}</h3>
                                    <h3>{{$book->name}}</h3>
                                    <h6>{{$book->description}}</h6>

                                    <p>Authors:{{$book->authors->count()}}</p>
                                    @foreach($book->authors as $author)

                                        <h6>{{$author->surname}} {{$author->name}}</h6>
                                    @endforeach
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



    {{--    <table class="table table-striped mt-3">--}}
    {{--        <thead>--}}
    {{--        <tr>--}}
    {{--            <th scope="col">ID</th>--}}
    {{--            <th scope="col">Name</th>--}}
    {{--            <th scope="col">Description</th>--}}
    {{--            <th scope="col">Thumbnail</th>--}}
    {{--            <th scope="col">Date publication</th>--}}
    {{--            <th scope="col"></th>--}}
    {{--        </tr>--}}
    {{--        </thead>--}}
    {{--        <tbody>--}}
    {{--        @foreach($books as $book)--}}
    {{--            <tr>--}}
    {{--                <th>{{$book->id}}</th>--}}
    {{--                <th>{{$book->name}}</th>--}}
    {{--                <th>{{$book->description}}</th>--}}
    {{--                @if( Storage::has ($book->thumbnail))--}}
    {{--                    <img src="{{ Storage::url($book->thumbnail) }}" height="160" width="60"--}}
    {{--                         class="card-img-top"--}}
    {{--                         style="max-width: 45%; margin: 0 auto; display: block;">--}}
    {{--                @endif--}}
    {{--                <th>{{$book->thumbnail}}</th>--}}
    {{--                <th>{{$book->date_publication}}</th>--}}
    {{--                <td>--}}
    {{--                    <button wire:click="edit({{$book->id}})" class="btn btn-success btn-sm">Edit</button>--}}
    {{--                    <button wire:click="destroy({{$book->id}})" class="btn btn-danger btn-sm">Delete</button>--}}
    {{--                </td>--}}
    {{--            </tr>--}}
    {{--        @endforeach--}}
    {{--        </tbody>--}}
    {{--    </table>--}}
    {{ $books->links() }}

    @else
        <h1>
            Not Books
        </h1>
    @endif
</div>
