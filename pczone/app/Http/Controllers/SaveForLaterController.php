<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SaveForLaterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Muda para o carrinho
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function switchToCart($id)
    {
        $item=Cart::instance('saveForLater')->get($id);

        Cart::instance('saveForLater')->remove($id);

        $duplicates = Cart::instance('default')->search(function ($cartItem, $rowID) use ($id) {
            return $rowID === $id;
        });

        if ($duplicates->isNotEmpty()) {
            return redirect()->route("cart.index")->with('sucess', 'Produto já existe no carrinho!');
        }

        Cart::instance('default')->add($item->id, $item->name, 1, $item->price)->associate('App\Produto');
        return redirect()->route('cart.index')->with('sucess', "Item foi movido para o carrinho");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::instance('saveForLater')->remove($id);
        return back()->with('sucess', "Produto Removido do carrinho!");
    }
}
