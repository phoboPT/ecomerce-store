@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" >
        <h2>Alterar Compra</h2>

    </div>
@stop
@section('content')



    {!! Form::open(['action' => ['ComprasController@update',$compra->id],'method'=>'POST']) !!}
    <div class="container">
        <div class="row">
            <div class="col-sm-8" style="padding-left: 10%">
                @include('inc.messages')

                <div class="form-group">
                    <br>
                    <strong>Nome: </strong>{{ $compra->nome}}<br><br>
                    <strong>Categoria: </strong>{{$compra->categoria}}<br><br>



                    {{Form::label('status','Estado: ')}}
                    {{Form::text('status', $compra->status,['class'=>'form-control','placeholder'=>'Estado: ' ])}}

                    {{Form::label('comentario','Comentário: ')}}
                    {{Form::text('comentario', $compra->comentario,['class'=>'form-control','placeholder'=>'Comentário: ' ])}}
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