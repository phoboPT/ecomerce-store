@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" >
        <h2>Produtos</h2>

    </div>
@stop
@section('content')

    <div class="container" style=" width:1500px;margin: 20px ">
<a class="btn btn-default" href="{{route('admin')}}">Voltar</a>
        <br><br>
        <div class="">


            <table class="table table-bordered table-hover" style="margin: 20px; width: 1200px; ">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Categoria</th>
                    <th>Marca</th>
                    <th>Preço</th>
                    <th>Rating</th>
                    <th>Stock</th>

                    <th>Publicado em</th>
                    <th style="width: 160px">Acções</th>
                </tr>
                @if(count($produtos)>0)
                    @foreach($produtos as $produto)
                        <tr>
                            <td>{{$produto->id}}</td>
                            <td>{{$produto->nome}}</td>
                            <td>{{$produto->categoria->categoria}}</td>
                            <td>{{$produto->marca->marca}}</td>
                            <td>{{$produto->preco}} €</td>
                            <td>{{$produto->rating}}</td>
                            <td>{{$produto->stock}}</td>
                            <td>{{$produto->created_at}}</td>
                            <td>
                                <a class="btn btn-primary "href="{{route('produtos.edit',$produto->id)}}">Editar</a>

                                {!! Form::open(['action'=>['ProdutosController@destroy',$produto->id],'method'=>'POST','class'=>'pull-right']) !!}
                                {{Form::hidden('_method','DELETE')}}
                                {{Form::submit('Delete',['class'=>'btn btn-danger'])}}

                                {!! Form::close() !!} </td>
                        </tr>



                    @endforeach
            </table>



            @else
                <p1>Nada na bd</p1>

            @endif
        </div>
    </div>

    <div class="container-fluid" id="paginate"> {{  $produtos->links()}}</div>
@stop
