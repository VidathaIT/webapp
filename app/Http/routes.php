<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('vrc','VrcController@home');
Route::get('vrc/{vrc}','VrcController@show');
Route::get('vrc/{vrc}/edit','VrcController@edit');
Route::post('vrc/{vrc}','VrcController@update');

Route::get('employee','EmployeeController@home');

Route::auth();

Route::get('/home', 'HomeController@index');

