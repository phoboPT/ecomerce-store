<?php

namespace App\Http\Controllers;

use App\SellProduto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Sells;
use Illuminate\Support\Facades\Auth;

class ComprasController extends Controller
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
            ->join('categorias', 'categorias.id', '=', 'produtos.categoria_id')
            ->select('sell_produtos.quantidade', 'sells.status', 'produtos.nome', 'categoria', 'produtos.preco', 'sell_produtos.created_at', 'sells.id', 'sells.status', 'sells.comentario')
            ->paginate(12);

       // dd($compras);
        return view('compras.index')
            ->with('compras', $compras)
            ->with('pendente',true);
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
        $compra = DB::table('sells')
            ->join('sell_produtos','sells_id','=','sells.id')
            ->join ('produtos', 'produtos.id','=','sell_produtos.produto_id')
            ->join('categorias','categorias.id','=','produtos.categoria_id')
            ->select( 'sells.status',   'sells.id', 'sells.comentario', 'produtos.nome','categorias.categoria')
            ->where ('sells.id','=',$id)
            ->first();


        //dd($compra);
        return view('compras.edit')->with('compra', $compra);
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
        $this->validate($request, [
            'status' => 'required',
            'comentario'=>'required'

        ]);
        //create post
        $compra = Sells::find($id);
        $compra->status = $request->input('status');
        $compra->comentario = $request->input('comentario');


        $compra->save();

        return redirect('/compras')->with('sucess', "Produto Alterado");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    }

    public function pendente()
    {
        $compras = DB::table('sell_produtos')
            ->join('produtos', 'produto_id', '=', 'id')
            ->join('sells', 'sells.id', '=', 'sell_produtos.sells_id')
            ->join('categorias', 'categorias.id', '=', 'produtos.categoria_id')
            ->select('sell_produtos.quantidade', 'sells.status', 'produtos.nome', 'categoria', 'produtos.preco', 'sell_produtos.created_at', 'sells.id', 'sells.status', 'sells.comentario')
            ->where('status', '=', "pendente")
            ->paginate(12);

        //dd($compras);
        return view('compras.index')
            ->with('compras', $compras)
            ->with('pendente',false);
    }
}
