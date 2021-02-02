@extends('layouts.admin')

@section('content')
    {!! Form::open(['action' => 'CategoriaController@store','method'=>'POST']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Adicionar Categoria</h1>
                <div class="form-group">
                    {{Form::label('categorias','Categoria: ')}}
                    {{Form::text('categorias', '',['class'=>'form-control','placeholder'=>'Categoria:' ])}}
                </div>

                {{Form::submit('Adicionar',['class'=>'btn btn-primary'])}}
            </div>
            <div class="col-sm-4">

            </div>

        </div>
    </div>
    {!! Form::close() !!}
@stop
