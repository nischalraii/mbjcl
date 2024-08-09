<?php

use App\Http\Controllers\API\ApiContoller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::get('index',[ApiContoller::class,'index']);
Route::post('login',[ApiContoller::class,'login']);
Route::post('register',[ApiContoller::class,'register']);
Route::middleware('auth.api')->group(function () {
    Route::get('categories',[ApiContoller::class,'categories']);
});


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
