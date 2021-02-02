<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Produto;
use \Cart as Cart;
use App\Vendas;

class VendasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('cart.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $duplicates = Cart::search(function ($cartItem, $rowID) use ($request) {
            return $cartItem->id === $request->id;
        });

        if ($duplicates->isNotEmpty()) {
            return redirect()->route("cart.index")->with('sucess', 'Produto já existe no carrinho');
        }


        Cart::add($request->id, $request->nome, 1, $request->preco)->associate('App\Produto');
        return redirect()->route('cart.index')->with('sucess', "Produto Adicionado ao carrinho!");
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::remove($id);
        return back()->with('sucess', "Produto Removido do carrinho!");
    }

    /**
     * Metodo para a funcao save for later
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function switchToSaveForLAter($id)
    {
        $item = Cart::get($id);

        Cart::remove($id);

        $duplicates = Cart::instance('switchToSaveForLAter')->search(function ($cartItem, $rowID) use ($id) {
            return $rowID === $id;
        });

        if ($duplicates->isNotEmpty()) {
            return redirect()->route("cart.index")->with('sucess', 'Produto já existe nos favoritos');
        }

        Cart::instance('switchToSaveForLAter')->add($item->id, $item->name, 1, $item->price)->associate('App\Produto');
        return redirect()->route('cart.index')->with('sucess', "Item foi guardado");
    }

    public function empty()
    {
        echo('ola');

        Cart::destroy();
        return redirect()->route('index1')->with('sucess','Produtos removidos com sucesso do carrinho');

    }


}
