<?php

use App\Http\Controllers\BasketController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductDetailController;
use App\Http\Controllers\ProductListController;
use App\Http\Controllers\ThanksOrderController;
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
Route::get('/', [HomeController::class, 'index']);
Route::get('/producten', [ProductListController::class, 'index']);
Route::get('/product/{product_id}', [ProductDetailController::class, 'index']);
Route::get('/contact', [ContactController::class, 'index']);
Route::get('/winkelmandje', [BasketController::class, 'index']);
Route::get('/winkelmandje/bedankt', [ThanksOrderController::class, 'index']);

/*
# 1. We gaan eerst de controllers aanmaken
php artisan make:controller HomeController
php artisan make:controller ProductListController
php artisan make:controller ProductDetailController
php artisan make:controller ContactController
php artisan make:controller BasketController
php artisan make:controller ThanksOrderController
*/
