<?php

namespace App\Http\Controllers;

use Exception;
use App\Categoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoriaController extends Controller
{
    public function index()
    {
        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        $categorias = Categoria::orderBy('id', 'asc')->paginate(12);
        return view('categorias.index')->with('categorias', $categorias);
    }


    public function create()
    {
        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        return view('categorias.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'categorias' => 'required',
        ]);

        $categoria = new Categoria;
        $categoria->categoria = $request->input('categorias');
        $categoria->save();

        return redirect('/categorias/create')->with('sucess', "Categoria Adicionada");

    }

    public function show($id)
    {
        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        $categorias = Categoria::find($id);
        return view('categorias.show')->with('categorias', $categorias);

    }


    public function edit($id)
    {
        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        $categoria = Categoria::find($id);

        return view('categorias.edit')->with('categoria', $categoria);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'categoria' => 'required',

        ]);
        //create post
        $categoria = Categoria::find($id);
        $categoria->categoria = $request->input('categoria');


        $categoria->save();

        return redirect('/categorias')->with('sucess', "Produto Alterado");
    }

    public function destroy($id)
    {
//check user type
        if(Auth::guest()){
            return redirect('/produtos')->with('error','Necessita ter sessão iniciada para aceder a esta página');
        }
        if(Auth::user()->tipo !==0){
            return redirect('/produtos')->with('error','Página não autorizada');
        }
        try {
            Categoria::destroy($id);

            return redirect('/categorias')->with('sucess', "Categoria Removida com Sucesso");
        } catch (Exception $e) {
            return redirect("/categorias/{$id}/edit")
                ->with("error", "Não pode apagar uma categoria que esteja em uso, verifique primeiro os produtos que pertencem a esta categoria.");
        }


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
