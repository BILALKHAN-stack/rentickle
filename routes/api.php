<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('test',function(){
	return response()->json('hello');
});
Route::get('categories',[App\Http\Controllers\ProductController::class,'categories']);
Route::get('products',[App\Http\Controllers\ProductController::class,'products']);
Route::get('productsSizes',[App\Http\Controllers\ProductController::class,'productsSizes']);
Route::get('productsReviews',[App\Http\Controllers\ProductController::class,'productsReviews']);
Route::get('productDetail',[App\Http\Controllers\ProductController::class,'productDetail']);