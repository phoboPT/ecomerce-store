<?php

namespace App\Http\Controllers;

use App\Produto;
use App\SellProduto;
use \Cart as Cart;
use App\Sells;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use Carbon\Carbon;

class SellsController extends Controller
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
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [

            'produto' => 'required',
        ]);

        //   dd($request->input('produto'));

        $item = Cart::content();
        $count = 0;
        //dd($item);
        $venda = new Sells();

     //  dd(Carbon::now());
        $venda->user_id = Auth::user()->getId();
        $venda->status = "Pendente";
        $venda->dataEnvio = Carbon::now();
        $venda->comentario = "Em processamento interno";
        $venda->save();

        foreach ($item as $items) {

            $produtos = new SellProduto();


            $s = Sells::orderBy('id', 'desc')->first();

            $produtos->sells_id = $s->id;
            //  dd($items->model->id,$sell);
            $produtos->produto_id = $items->model->id;
            $produtos->quantidade = $items->qty;
            $produtos->save();


            DB::table('produtos')->where('id', $produtos->produto_id)->decrement('stock');


        }


        // dd($count);

        Cart::destroy();
        return redirect('/cart/')->with('sucess', "Venda Adicionada");
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
        //
    }


}
