<?php

namespace App\Http\Controllers;

use App\Categoria;
use App\Marca;
use Illuminate\Http\Request;
use App\Produto;
use Illuminate\Support\Facades\Auth;
use DB;


class ProdutosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $produtos = Produto::orderBy('created_at','asc')->get();
        $produtos = Produto::orderBy('created_at', 'asc')->paginate(12);


        return view('index')
            ->with('produtos', $produtos)
            ->with('isIndex',true);

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pages(Categoria $categoria)
    {
        $produtos = Produto::where('categoria_id', $categoria->id)->paginate(12);

        //dd($produtos);

        return view('index')
            ->with('produtos', $produtos)
            ->with('isIndex',false);

//return view('pages.show');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }

        $categorias = Categoria::pluck('categoria', 'id');
        $marcas = Marca::pluck('marca', 'id');
        return view('produtos.create', compact('categorias', 'marcas'));
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
            'descricao' => 'required',
            'categoria' => 'required',
            'preco' => 'required',
            'stock' => 'required',
            'rating' => 'required',
            'cover_image' => 'image|nullable|max:1999',
            'nome' => 'required'
        ]);

        //Handle file upload
        if ($request->hasfile('cover_image')) {
            //Get filemane whit the extension
            $filenameWhitExt = $request->file('cover_image')->getClientOriginalName();
            //Get just filename
            $filename = pathinfo($filenameWhitExt, PATHINFO_FILENAME);
            //Get just extension
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            //Filename to store
            $fileNameToStore = $filename . '_' . time() . '.' . $extension;
            //Upload image
            $path = $request->file('cover_image')->storeAs('public/cover_images', $fileNameToStore);
        } else {
            $filaNameToStore = 'noimage.jpg';
        }


        //create post
        $produto = new Produto;
        $produto->descricao = $request->input('descricao');
        $produto->categoria_id = $request->input('categoria');
        $produto->marca_id = $request->input('marca');
        $produto->preco = $request->input('preco');
        $produto->stock = $request->input('stock');
        $produto->rating = $request->input('rating');
        $produto->nome = $request->input('nome');
        $produto->cover_image = $fileNameToStore;

        $produto->save();

        return redirect('/admin')->with('sucess', "Produto Adicionado");
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $produto = Produto::find($id);

        if (Produto::where('categoria_id', $produto->categoria->id)->count() < 4) {
            $interested = Produto::All()->random(4);
        } else {
            $interested = Produto::where('categoria_id', $produto->categoria->id)->get()->random(4);

        }
       // dd($produto->categoria->id);
        return view('produtos.show')->with(['produto' => $produto, 'interested' => $interested]);
//return view('pages.show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $produtos = Produto::find($id);

        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }

        $categorias = Categoria::pluck('categoria', 'id');
        $marcas = Marca::pluck('marca', 'id');
        return view('produtos.edit', compact('categorias', 'marcas'))->with('produtos', $produtos);
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
            'descricao' => 'required',
            'categoria' => 'required',
            'preco' => 'required',
            'stock' => 'required',
            'rating' => 'required',
            'cover_image' => 'image|nullable|max:1999',
            'nome' => 'required'
        ]);

        //Handle file upload
        if ($request->hasfile('cover_image')) {
            //Get filemane whit the extension
            $filenameWhitExt = $request->file('cover_image')->getClientOriginalName();
            //Get just filename
            $filename = pathinfo($filenameWhitExt, PATHINFO_FILENAME);
            //Get just extension
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            //Filename to store
            $fileNameToStore = $filename . '_' . time() . '.' . $extension;
            //Upload image
            $path = $request->file('cover_image')->storeAs('public/cover_images', $fileNameToStore);
        }


        //create post
        $produto = Produto::find($id);
        $produto->descricao = $request->input('descricao');
        $produto->categoria_id = $request->input('categoria');
        $produto->marca_id = $request->input('marca');
        $produto->preco = $request->input('preco');
        $produto->stock = $request->input('stock');
        $produto->rating = $request->input('rating');
        $produto->nome = $request->input('nome');

        if ($request->hasFile('cover_image')) {
            $produto->cover_image = $fileNameToStore;
        }


        $produto->save();

        return redirect('/admin')->with('sucess', "Produto Alterado com Sucesso");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $produtos = Produto::find($id);

        //check user type
        if (Auth::guest()) {
            return redirect('/produtos')->with('error', 'Necessita ter sessão iniciada para aceder a esta página');
        }
        if (Auth::user()->tipo !== 0) {
            return redirect('/produtos')->with('error', 'Página não autorizada');
        }
        $produtos->delete();
        return view('admin.index')->with('sucess', "Artigo Removido com Sucesso");
    }


    public function marcas()
    {
        $produtos = Produto::select('id', 'categoria_id', 'marca_id', 'stock', 'preco', 'rating', 'cover_image', 'nome')
            ->where('categoria_id', '=', 11)
            ->get();
        //$produtos = Produto::where('categoria_id', '=', 1)->firstOrFail();
        return view('produtos.marcas')->with('produtos', $produtos);
    }


    public function listar()
    {
        // $produtos = Produto::orderBy('created_at','asc')->get();
        $produtos = Produto::orderBy('created_at', 'asc')->paginate(12);
        return view('produtos.listar')->with('produtos', $produtos);
    }

    public function mostrar($id)
    {
        $produto = Produto::find($id);

        return view('produtos.showAdmin')->with('produto', $produto);
    }

}

