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

//Route::get('/', 'WelcomeController@index')->name('welcomescreen');
//Route::get('/loginwithoffice', 'WelcomeController@loginWithOffice')->name('loginwithoffice');

Route::get('/callback', 'WelcomeController@callback')->name('callback');

Route::get('/student', 'LoggedInController@index')->name('student');


Route::get('/dashboard', function () {
    return view('layouts.master');
});

Auth::routes();
Route::get('/', 'HomeController@index')->name('home');
