@extends('layouts.admin')
@section('content')


    @include('inc.messages')
    <div class="container" style=" padding-top: 40px;">

        <div class="row">
            <div class="col-sm-2">

            </div>
            @include('inc.messages')
            <div class="col-lg-6" style="padding-left: 40px">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Marca ID: </strong>{!! $marca->id!!}</div>
                    <div class="panel-body"><strong>Marca: </strong>
                        {!! $marca->marca!!}<br>
                        <strong> Publicado em: </strong>{{$marca->created_at}}<br>
                        <strong> Atualizado em: </strong>{{$marca->updated_at}}
                    </div><hr>
                    <div style="padding-left: 15px ;padding-right: 15px">
                        <a href="/marcas/{{$marca->id}}/edit" class="btn btn-primary">Editar</a>

                        {!!Form::open(['action'=>['MarcaController@destroy',$marca->id],'method'=>'POST','class'=>'pull-right']) !!}
                        {{Form::hidden('_method','DELETE')}}
                        {{Form::submit('Delete',['class'=>'btn btn-danger'])}}

                        {!! Form::close() !!}

                        <p></p>
                    </div>
                    <div></div>
                </div>

            </div>


            <div class="col-sm-4">


            </div>
        </div>



@stop