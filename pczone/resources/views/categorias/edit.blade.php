@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" style="padding-left: 150px">
        <h2>Categorias</h2>

    </div>
@stop
@section('content')



    {!! Form::open(['action' => ['CategoriaController@update',$categoria->id],'method'=>'POST']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Alterar Categoria</h1>
                <div class="form-group">
                    {{Form::label('categoria','Categoria: ')}}
                    {{Form::text('categoria', $categoria->categoria,['class'=>'form-control','placeholder'=>'Categoria: ' ])}}
                </div>


                {{Form::hidden('_method','PUT')}}
                {{Form::submit('Gravar',['class'=>'btn btn-primary'])}}
            </div>
            <div class="col-sm-4">

            </div>

        </div>
    </div>



    {!! Form::close() !!}


@stop