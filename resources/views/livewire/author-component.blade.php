<div>
    @if (count($authors))

    <h1>
        All Authors:
    </h1>

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
        @include('livewire.author.update')
    @else
        @include('livewire.author.create')
    @endif

    <table class="table table-striped mt-3">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Surname</th>
            <th scope="col">Name</th>
            <th scope="col">Patronymic</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        @foreach($authors as $author)
            <tr>
                <th>{{$author->id}}</th>
                <td>{{$author->surname}}</td>
                <td>{{$author->name}}</td>
                <td>{{$author->patronymic}}</td>
                <td>
                    <button wire:click="edit({{$author->id}})" class="btn btn-success btn-sm">Edit </button>
                    <button wire:click="destroy({{$author->id}})" class="btn btn-danger btn-sm">Delete</button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $authors->links() }}
    @else
        <h1>
            Not Authors
        </h1>
        @endif

</div>


