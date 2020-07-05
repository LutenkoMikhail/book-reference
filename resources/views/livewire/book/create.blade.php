<div>
    <hr>
    <h2>Add Book</h2>

    <div class="mb-8">
        <label class="inline-block w-32 font-bold">Authors:</label>
        <select multiple="multiple" name="authors []" wire:model="authors" class="border shadow p-2 bg-white">
            @foreach($authorsAll as $author)
                <option
                    value={{ $author->id }}>{{ $author->surname.' '.$author->name.' '.$author->patronymic }}</option>
            @endforeach
        </select>
    </div>


    <form wire:submit.prevent="store">
        <div class="form-group">
            <label for="name">name</label>
            <input wire:model="name" type="text" class="form-control" id="name">
        </div>
        <div class="form-group">
            <label for="description">description</label>
            <input wire:model="description" type="text" class="form-control" id="description">
        </div>

        <div class="form-group">
            <label for="date_publication">date publication</label>
            <input wire:model="date_publication" type="text" class="form-control" id="date_publication">
        </div>

        @if ($thumbnail)
            <h3>Photo Preview:</h3>
            <img src="{{  $thumbnail->temporaryUrl() }}" height="280" width="250" class="card-img-top"
                 style="max-width: 45%; margin: 0 auto; display: block;">
        @endif

        <input type="file" wire:model="thumbnail" accept=".jpg,.png">

        @error('thumbnail') <span class="error">{{ $message }}</span> @enderror

        <button wire:click="store()" class="btn btn-primary">Add Book</button>
    </form>
</div>
