<?php
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\DownloadsController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\NoticeController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\ThemeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [FrontController::class,'index'])->name('index');
Route::get('/show/{id}', [FrontController::class,'show'])->name('show');
Route::get('/company/page/{title}', [CompanyController::class,'show'])->name('company.show');
Route::get('/project/page/{title}', [ProjectController::class,'show'])->name('projects.show');
Route::get('/notice/page/{title}', [NoticeController::class,'show'])->name('notice.show');
Route::get('/downloads/page/{title}', [DownloadsController::class,'show'])->name('downloads.show');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/dashboard',[FrontController::class,'dashboard'])->name('dashboard');

    Route::middleware('role:admin')->group(function(){
        Route::get('/permissions/create', [PermissionController::class, 'create'])->name('permissions.create');
        Route::post('/permissions', [PermissionController::class, 'store'])->name('permissions.store');
        Route::get('/permissions', [PermissionController::class, 'index'])->name('permissions.index');
        Route::get('/permissions/edit/{id}', [PermissionController::class, 'edit'])->name('permissions.edit');
        Route::put('/permissions/update/{id}', [PermissionController::class, 'update'])->name('permissions.update');
        Route::delete('/permissions/delete/{id}', [PermissionController::class, 'destroy'])->name('permissions.delete');
        Route::get('/permissions/data', [PermissionController::class, 'data'])->name('permissions.data');


        Route::get('/roles/create', [RoleController::class, 'create'])->name('roles.create');
        Route::post('/roles', [RoleController::class, 'store'])->name('roles.store');
        Route::get('/roles', [RoleController::class, 'index'])->name('roles.index');
        Route::get('/roles/edit/{id}', [RoleController::class, 'edit'])->name('roles.edit');
        Route::put('/roles/update/{id}', [RoleController::class, 'update'])->name('roles.update');
        Route::delete('/roles/delete/{id}', [RoleController::class, 'destroy'])->name('roles.delete');
        Route::get('/roles/data', [RoleController::class, 'data'])->name('roles.data');


        Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
        Route::post('/users', [UserController::class, 'store'])->name('users.store');
        Route::get('/users', [UserController::class, 'index'])->name('users.index');
        Route::get('/users/edit/{id}', [UserController::class, 'edit'])->name('users.edit');
        Route::put('/users/update/{id}', [UserController::class, 'update'])->name('users.update');
        Route::delete('/users/delete/{id}', [UserController::class, 'destroy'])->name('users.delete');
        Route::get('/users/data', [UserController::class, 'data'])->name('users.data');


        Route::get('/categories/create', [CategoryController::class, 'create'])->name('categories.create');
        Route::post('/categories', [CategoryController::class, 'store'])->name('categories.store');
        Route::get('/categories', [CategoryController::class, 'index'])->name('categories.index');
        Route::get('/categories/edit/{id}', [CategoryController::class, 'edit'])->name('categories.edit');
        Route::put('/categories/update/{id}', [CategoryController::class, 'update'])->name('categories.update');
        Route::delete('/categories/delete/{id}', [CategoryController::class, 'destroy'])->name('categories.delete');
        Route::get('/categories/data', [CategoryController::class, 'data'])->name('categories.data');

        Route::get('/theme', [ThemeController::class, 'index'])->name('theme.index');
        Route::post('/theme/update', [ThemeController::class, 'update'])->name('theme.update');

        Route::get('/company/create', [CompanyController::class, 'create'])->name('company.create');
        Route::post('/company', [CompanyController::class, 'store'])->name('company.store');
        Route::get('/company', [CompanyController::class, 'index'])->name('company.index');
        Route::get('/company/edit/{slug}', [CompanyController::class, 'edit'])->name('company.edit');
        Route::put('/company/update/{slug}', [CompanyController::class, 'update'])->name('company.update');
        Route::delete('/company/delete/{id}', [CompanyController::class, 'destroy'])->name('company.delete');
        Route::get('/company/data', [CompanyController::class, 'data'])->name('company.data');

        Route::get('/project/create', [ProjectController::class, 'create'])->name('project.create');
        Route::post('/project', [ProjectController::class, 'store'])->name('project.store');
        Route::get('/project', [ProjectController::class, 'index'])->name('project.index');
        Route::get('/project/edit/{slug}', [ProjectController::class, 'edit'])->name('project.edit');
        Route::put('/project/update/{slug}', [ProjectController::class, 'update'])->name('project.update');
        Route::delete('/project/delete/{id}', [ProjectController::class, 'destroy'])->name('project.delete');
        Route::get('/project/data', [ProjectController::class, 'data'])->name('project.data');

        Route::get('/notice/create', [NoticeController::class, 'create'])->name('notice.create');
        Route::post('/notice', [NoticeController::class, 'store'])->name('notice.store');
        Route::get('/notice', [NoticeController::class, 'index'])->name('notice.index');
        Route::get('/notice/edit/{slug}', [NoticeController::class, 'edit'])->name('notice.edit');
        Route::put('/notice/update/{slug}', [NoticeController::class, 'update'])->name('notice.update');
        Route::delete('/notice/delete/{id}', [NoticeController::class, 'destroy'])->name('notice.delete');
        Route::get('/notice/data', [NoticeController::class, 'data'])->name('notice.data');

        Route::get('/downloads/create', [DownloadsController::class, 'create'])->name('downloads.create');
        Route::post('/downloads', [DownloadsController::class, 'store'])->name('downloads.store');
        Route::get('/downloads', [DownloadsController::class, 'index'])->name('downloads.index');
        Route::get('/downloads/edit/{slug}', [DownloadsController::class, 'edit'])->name('downloads.edit');
        Route::put('/downloads/update/{slug}', [DownloadsController::class, 'update'])->name('downloads.update');
        Route::delete('/downloads/delete/{id}', [DownloadsController::class, 'destroy'])->name('downloads.delete');
        Route::get('/downloads/data', [DownloadsController::class, 'data'])->name('notice.data');

    });

    Route::get('/articles/create', [ArticleController::class, 'create'])->name('articles.create');
    Route::post('/articles', [ArticleController::class, 'store'])->name('articles.store');
    Route::get('/articles', [ArticleController::class, 'index'])->name('articles.index');
    Route::get('/articles/edit/{id}', [ArticleController::class, 'edit'])->name('articles.edit');
    Route::put('/articles/update/{id}', [ArticleController::class, 'update'])->name('articles.update');
    Route::delete('/articles/delete/{id}', [ArticleController::class, 'destroy'])->name('articles.delete');
    Route::get('/articles/data', [ArticleController::class, 'data'])->name('articles.data');
  

});

require __DIR__.'/auth.php';
