<?php
use App\Http\Controllers\HomeController;
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

Route::get('/', [HomeController::class, 'form_name'])->name('main-page');
Route::get('/forms/{id}', [HomeController::class, 'form']);
Route::get('/stats/{id}', [HomeController::class, 'statistics']);
Route::post('/answers', [HomeController::class, 'insert']);
Route::post('/addform', [HomeController::class, 'newform']);
Route::get('/new', function(){
    return view('new_form');
});

Route::get('/stats', [Homecontroller::class, 'stats']);
Route::get('/logout', [HomeController::class, 'logout'])->name('logout');
Route::get('/delete', [HomeController::class, 'delete']);
Route::get('/delete/{id}', [HomeController::class, 'delete_form']);
Route::get('/edit', [HomeController::class, 'edit']);
Route::get('/edit/{id}', [HomeController::class, 'edit_form']);
Route::post('/edit_form/{id}', [HomeController::class, 'single_form_edit']);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', [HomeController::class, 'main_page'] )->name('dashboard');
