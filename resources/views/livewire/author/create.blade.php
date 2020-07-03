<div>
    <hr>
    <h2>Add Author</h2>

    <div class="form-group">
        <label for="surname">surname</label>
        <input wire:model="surname" type="text" class="form-control" id="surname">
    </div>

    <div class="form-group">
        <label for="name">name</label>
        <input wire:model="name" type="text" class="form-control" id="name">
    </div>

    <div class="form-group">
        <label for="patronymic">patronymic</label>
        <input wire:model="patronymic" type="text" class="form-control" id="patronymic">
    </div>


    <button wire:click="store()" class="btn btn-primary">Add Author</button>

</div>
