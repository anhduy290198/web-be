<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

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
Route::get('/list-product', [ProductController::class,"getListProduct"]);
Route::get('/list-category', [CategoryController::class,"getListCategory"]);
Route::post('/create', [ProductController::class,"createProduct"]);


Route::post('/login', [UserController::class,"login"]);
Route::post('/register', [UserController::class,"register"]);
