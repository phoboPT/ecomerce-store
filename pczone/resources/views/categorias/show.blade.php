@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" style="padding-left: 150px">
        <h2>Categorias</h2>

    </div>
@stop
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
                        <strong>Categoria ID: </strong>{!! $categorias->id!!}</div>
                    <div class="panel-body"><strong>Categoria: </strong>
                        {!! $categorias->categoria!!}<br>
                        <strong> Publicado em: </strong>{{$categorias->created_at}}<br>
                        <strong> Atualizado em: </strong>{{$categorias->updated_at}}
                    </div>
                    <hr>
                    <div style="padding-left: 15px ;padding-right: 15px">
                        <a href="/categorias/{{$categorias->id}}/edit" class="btn btn-primary">Editar</a>

                        {!!Form::open(['action'=>['CategoriaController@destroy',$categorias->id],'method'=>'POST','class'=>'pull-right']) !!}
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