<?php

namespace App\Http\Controllers;

use App\SellProduto;
use Illuminate\Support\Facades\Auth;
use App\Categoria;
use App\Sells;
use Illuminate\Http\Request;
use App\Produto;
use Carbon\Carbon;
use Khill\Lavacharts\Lavacharts;
use \Lava as Lava;
use DB;


class AdminController extends Controller
{
    public function index()
    {

        //check user type
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }

        //Produto mais vendido




        $best = DB::table('sell_produtos')
        ->select('produto_id', DB::raw('count(*) as total'))
        ->groupBy('produto_id')
            ->orderBy('total','desc')
        ->first();


        $quantidade = DB::table('sell_produtos')
            ->select('produto_id', DB::raw('count(*) as total'))
            ->groupBy('produto_id')
            ->orderBy('total','desc')
            ->first();

        $bestSeller=Produto::where('id','=',$best->produto_id)->get();
//0dd($bestSeller->produto_id);
   //    dd($bestSeller);
        //Chart para os produtos
        $today = Carbon::today();
        $tomorrow = Carbon::tomorrow();
//Consulta para o dia
        $dia = Produto::whereBetween("created_at",
            array($today, $tomorrow)
        )->count();


        $now = Carbon::today();
        $now1 = Carbon::today();
        $weekEnd = $now->endOfWeek();
        $weekStart = $now1->startOfWeek();
//Consulta para a semana
        $week = Produto::whereBetween("created_at",
            array($weekStart, $weekEnd)
        )->count();

        $now2 = Carbon::today();
        $now3 = Carbon::today();
        $endMonth = $now2->endOfMonth();
        $startMonth = $now3->startOfMonth();
//Consulta para o mês
        $month = Produto::whereBetween("created_at",
            array($startMonth, $endMonth))
            ->count();

        $artigos = new Lavacharts;
        $reasons = Lava::DataTable();


        $reasons->addStringColumn('Reasons')
            ->addNumberColumn('Percent')
            ->addRow(['Hoje', $dia])
            ->addRow(['Semana', $week])
            ->addRow(['MES', $month]);

        Lava::DonutChart('Artigos', $reasons, [
            'title' => 'Artigos adicionados'
        ]);

//dd($today,$tomorrow);
        $dia1 = Sells::whereBetween("created_at",
            array($today, $tomorrow)
        )->count();


        $week2 = Sells::whereBetween("created_at",
            array($weekStart, $weekEnd)
        )->count();

        $month3 = Sells::whereBetween("created_at",
            array($startMonth, $endMonth)
        )->count();

        $sells = new Lavacharts;
        $reasons1 = \Lava::DataTable();


        $reasons1->addStringColumn('Reasons')
            ->addNumberColumn('Percent')
            ->addRow(['Hoje', $dia1])
            ->addRow(['Semana', $week2])
            ->addRow(['MES', $month3]);

        \Lava::DonutChart('Sells', $reasons1, [
            'title' => 'Artigos Comprados'
        ]);


        $totalVendas = Sells::count();
        $total = Produto::count();
        $rating = Produto::orderBy('rating', 'desc')->take(5)->get();
        $preco = Produto::orderBy('stock', 'asc')->take(5)->get();
        $produtos = Produto::orderBy('created_at', 'desc')->take(5)->get();


        $stockBaixo = DB::table('produtos')->where('stock', '<', 4)->count();;

//dd($quantidade);
        return view('admin.index')
            ->with('produtos', $produtos)
            ->with('preco', $preco)
            ->with('rating', $rating)
            ->with('total', $total)
            ->with('artigos', $artigos)
            ->with('sells', $sells)
            ->with('totalVendas', $totalVendas)
            ->with('bestSeller', $bestSeller)
            ->with('quantidade', $quantidade->total)
            ->with('stockBaixo', $stockBaixo);


    }


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

}
