@extends('layouts.admin')

@section('content')
    {!! Form::open(['action' => 'MarcaController@store','method'=>'POST']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Adicionar Marca</h1>
                <div class="form-group">
                    {{Form::label('marcas','Marca: ')}}
                    {{Form::text('marcas', '',['class'=>'form-control','placeholder'=>'Marca:' ])}}
                </div>

                {{Form::submit('Adicionar',['class'=>'btn btn-primary'])}}
            </div>
            <div class="col-sm-4">

            </div>

        </div>
    </div>
    {!! Form::close() !!}
@stop