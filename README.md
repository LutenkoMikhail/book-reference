Установка :

Выполнить команду : 
npm install
composer update;
php artisan migrate --seed;
php artisan storage:link(при необходимости);
php artisan optimize:clear(при необходимости);
Переименовать файл .env.example в файл .env и настроть подключение к базе данных и пр;

Стартовая страница :
public\index.php

Использованы :
Laravel
Livewire для Ajax запросов

Дамп базы данный base.sql;

Тестовое задание :
Создать справочник книг, в которой есть такие операции

-просмотр списка книг
- просмотр списка авторов
- просмотр выбранного автора или книги 
- редактирование автора или книги
- добавление автора или книги
- удаление автора или книги

https://laravel-livewire.com/docs/file-uploads#basic
https://github.com/asantibanez?tab=repositories

https://lightit.io/blog/laravel-livewire-shopping-cart-demo/
https://www.codechief.org/article/laravel-livewire-laravel-livewire-crud-tutorial#gsc.tab=0

