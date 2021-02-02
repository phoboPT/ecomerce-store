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

//Grupo de rotas para os produtos
Route::group(['as' => 'produtos.', 'prefix' => 'produtos'], function () {

    Route::get('marcas', ['as' => 'marcas', 'uses' => 'ProdutosController@marcas']);
    Route::get('listar', ['as' => 'listar', 'uses' => 'ProdutosController@listar']);

});

//Rota para resources
Route::resource('produtos', 'ProdutosController');
Route::resource('categorias', 'CategoriaController');
Route::resource('marcas', 'MarcaController');
Route::resource('cart', 'VendasController');
Route::resource('sells', 'SellsController');
Route::resource('info', 'InfoController');
Route::resource('compras', 'ComprasController');

//Rota para autorizações
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/admin', 'AdminController@index')->name('admin');

//Rotas de controlo categorias

Route::get('showAdmin/{id}', ['as' => 'produtos.mostrar', 'uses' => 'ProdutosController@mostrar']);

//rotas cart
Route::get('empty', "VendasController@empty")->name('cart.empty');

//save for later
Route::post('/cart/switchToSaveForLAter/{produto}', 'VendasController@switchToSaveForLAter')->name('saveForLater.switchToSaveForLAter');
Route::post('/cart/saveForLater/switchToSaveForLAter/{produto}', 'SaveForLaterController@destroy')->name('saveForLater.switchToSaveForLAter');

//Route::get('finalizar', ['as' => 'finalizar', 'uses' => 'SellsController@finalizar']);

Route::get('/', 'ProdutosController@index')->name('index1');
Route::get('/{categoria}', 'ProdutosController@pages')->name('index');

Route::get('/compra/pendente', 'ComprasController@pendente')->name('pendente');
