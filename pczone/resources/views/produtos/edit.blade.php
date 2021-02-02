@extends('layouts.admin')
@section('content')



    {!! Form::open(['action' => ['ProdutosController@update',$produtos->id],'method'=>'POST','enctype'=>'multipart/form-data']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Alterar Produto</h1>

                <a class="btn btn-default" href="{{route('admin')}}">Voltar</a>
                <div class="form-group">
                    {{Form::label('nome','Nome: ')}}
                    {{Form::text('nome', $produtos->nome,['class'=>'form-control','placeholder'=>'Nome:' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('descricao','Descrição: ')}}
                    {{Form::textarea('descricao', $produtos->descricao,['id'=>'article-ckeditor','class'=>'form-control','placeholder'=>'Descrição:' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('categoria','Categoria: ')}}
                    {{ Form::select('categoria', $categorias,$produtos->categoria_id,['class' => 'form-control',])}}


                    <div class="form-group">
                        {{Form::label('marca','Marca: ')}}
                        {{ Form::select('marca', $marcas,$produtos->marca_id,['class' => 'form-control'])}}

                    </div>
                    <div class="form-group">
                        {{Form::label('preco','Preço: ')}}
                        {{Form::text('preco', $produtos->preco,['class'=>'form-control','placeholder'=>'Preço: ' ])}}
                    </div>
                    <div class="form-group">
                        {{Form::label('stock','Stock: ')}}
                        {{Form::text('stock', $produtos->stock,['class'=>'form-control','placeholder'=>'Stock:' ])}}
                    </div>
                    <div class="form-group">
                        {{Form::label('rating','Rating: ')}}
                        {{Form::text('rating', $produtos->rating,['class'=>'form-control','placeholder'=>'Rating: ' ])}}
                    </div>
                    <div class="form-group">
                        {{Form::file('cover_image')}}
                    </div>

                    {{Form::hidden('_method','PUT')}}
                    {{Form::submit('Gravar',['class'=>'btn btn-primary'])}}
                </div>
                <div class="col-sm-4">

                </div>

            </div>
        </div>

    </div>

    {!! Form::close() !!}


@stop