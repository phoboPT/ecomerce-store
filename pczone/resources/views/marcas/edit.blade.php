@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" style="padding-left: 150px">
        <h2>Marcas</h2>

    </div>
@stop
@section('content')



    {!! Form::open(['action' => ['MarcaController@update',$marca->id],'method'=>'POST']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')
                <h1>Alterar Marca</h1>
                <div class="form-group">
                    {{Form::label('marca','Marca: ')}}
                    {{Form::text('marca', $marca->marca,['class'=>'form-control','placeholder'=>'Marca: ' ])}}
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