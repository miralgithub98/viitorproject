<?php

use Illuminate\Support\Facades\Route;


use App\Http\Controllers\BlogController;
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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//verify email
//Auth::routes(['verify' => true]);


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');





Route::get('/usersprofile/{id}/edit',[App\Http\Controllers\HomeController::class, 'useredit'])->name('usersprofile.edit');
Route::post('/usersprofile/{id}',[App\Http\Controllers\HomeController::class, 'userupdate'])->name('usersprofile.update');



Route::resource('blogs',BlogController::class);

Route::get('auth/logout', [App\Http\Controllers\Auth\AuthController::class,'logout'])->name('logout');


//Route::get('/logout', ['uses' => 'App\Http\Controllers\Auth\LoginController@logout'])->name('logout');

Route::get('send-mail', function () {
   
    $details = [
        'title' => 'Mail from ItSolutionStuff.com',
        'body' => 'This is for testing email using smtp'
    ];
   
    \Mail::to('patelmiral.1998@gmail.com')->send(new \App\Mail\MyTestMail($details));
   
    //dd("Email is Senttttt.");
});

// Route::group(['middleware' => ['auth']], function () { 
//     Route::get('/logout', ['uses' => 'App\Http\Controllers\Auth\LoginController@logout'])->name('logout');
// });
