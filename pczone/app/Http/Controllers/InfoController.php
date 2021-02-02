<?php

namespace App\Http\Controllers;

use App\SellProduto;
use Illuminate\Http\Request;
use App\Sells;
use Illuminate\Support\Facades\Auth;
use DB;
use Carbon\Carbon;

class InfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $compras = DB::table('sell_produtos')
            ->join('produtos', 'produto_id', '=', 'id')
            ->join('sells', 'sells.id', '=', 'sell_produtos.sells_id')
            ->select('sell_produtos.quantidade', 'produtos.nome', 'produtos.preco', 'sell_produtos.created_at', 'sells.id', 'sells.status', 'sells.comentario')
            ->where('user_id', '=', Auth::user()->getId())
            ->get();

         //dd($compras);
        return view('info.index')->with('compras', $compras);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cart.finalizar');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $compras = DB::table('sell_produtos')
            ->join('produtos', 'produto_id', '=', 'id')
            ->join('sells', 'sells.id', '=', 'sell_produtos.sells_id')
            ->select('sell_produtos.quantidade', 'produtos.nome', 'produtos.preco', 'sell_produtos.created_at', 'sells.id', 'sells.status', 'sells.comentario','sell_produtos.produto_id')
            ->where('user_id', '=', Auth::user()->getId())->where('sell_produtos.sells_id', '=', ($id))->get();

        //dd($compras);
        return view('info.show')->with('compras', $compras);
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
        //
    }
}
