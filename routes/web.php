<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/login', 'LoginController@index');
Route::get('/tutorial/{task}', 'TutorialController@task');


Route::get('/', function () {
    $tasks = [
        'Task number 1',
        'Do my Homeworks',
        'Finish my website'
    ];
    return view('frontpage', compact('tasks'));
});


Route::get("/about", function(){
    return view("about");
});
