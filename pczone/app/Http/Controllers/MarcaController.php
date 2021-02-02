<?php

namespace App\Http\Controllers;

use Exception;
use App\Marca;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MarcaController extends Controller
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
        $marcas = Marca::orderBy('created_at','asc')->paginate(12);

        return view('marcas.index')->with('marcas', $marcas);
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

        return view('marcas.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'marcas' => 'required',
        ]);

        $marca = new Marca;
        $marca->marca = $request->input('marcas');
        $marca->save();

        return redirect('/admin')->with('sucess', "Marca Adicionada");

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
        $marca = Marca::find($id);
        return view('marcas.show')->with('marca', $marca);

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
        $marca = Marca::find($id);
        return view('marcas.edit')->with('marca', $marca);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'marca' => 'required',

        ]);
        //create post
        $marca = Marca::find($id);
        $marca->marca = $request->input('marca');
        $marca->save();

        return redirect('/categorias')->with('sucess', "Marca Alterada");
    }

    public function destroy($id)
    {
        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        try {
            Marca::destroy($id);
            return redirect('/marcas')->with('sucess', "Marca removida com Sucesso");
        } catch (Exception $e) {
            return redirect("/marcas/{$id}/edit")
                ->with("error", "Não pode apagar uma marca que esteja em uso, verifique primeiro os produtos que pertencem a esta marca.");
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
