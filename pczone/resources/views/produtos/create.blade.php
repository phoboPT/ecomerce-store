@extends('layouts.admin')
@section('content')

    {!! Form::open(['action' => 'ProdutosController@store','method'=>'POST', 'enctype'=>'multipart/form-data']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Adicionar Produto</h1>
                <div class="form-group">
                    {{Form::label('nome','Nome: ')}}
                    {{Form::text('nome', '',['class'=>'form-control','placeholder'=>'Nome:' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('descricao','Descrição: ')}}
                    {{Form::textarea('descricao', '',['id'=>'article-ckeditor','class'=>'form-control','placeholder'=>'Descrição:' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('categoria','Categoria: ')}}
                    {{ Form::select('categoria', $categorias,['class' => 'form-control'])}}
                    <a href="{{route('categorias.create')}}" class="btn btn-info">Acicionar Categoria</a>

                </div>
                <div class="form-group">
                    {{Form::label('marca','Marca: ')}}
                    {{ Form::select('marca', $marcas,['class' => 'form-control'])}}
                    <a href="{{route('marcas.create')}}" class="btn btn-info">Acicionar Marca</a>
                </div>
                <div class="form-group">
                    {{Form::label('preco','Preço: ')}}
                    {{Form::text('preco', '',['class'=>'form-control','placeholder'=>'Preço: ' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('stock','Stock: ')}}
                    {{Form::text('stock', '',['class'=>'form-control','placeholder'=>'Stock:' ])}}
                </div>
                <div class="form-group">
                    {{Form::label('rating','Rating: ')}}
                    {{Form::text('rating', '',['class'=>'form-control','placeholder'=>'Rating: ' ])}}
                </div>
                <div class="form-group">
                    {{Form::file('cover_image')}}
                </div>
                {{Form::submit('Adicionar',['class'=>'btn btn-primary'])}}
            </div>
            {!! Form::close() !!}
            <div class="col-sm-4 " style="padding-top: 400px">

            </div>

        </div>
    </div>

@stop
