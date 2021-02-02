@extends('layouts.admin')
@section('content')
    <br>



    <div class="container">
        <div class="row">
            <div class="col-sm-10">


                <div class="card1" style=" height: 50%;width: 125%;">
                    <div class="well">
                        <div><a href="{{route('admin')}}" class="btn btn-default">Voltar</a>
                            <h5>{!! $produto->descricao!!}</h5>
                        </div>
                        <br>
                      <strong>Preço: </strong>{{$produto->preco}}€
                        <h5><strong>Categoria: </strong>{{$produto->categoria->categoria}}</h5>
                        <h5><strong>Stock:</strong> {{$produto->stock}} unds</h5>
                        <h5><strong>Rating:</strong> {{$produto->rating}} <i class="fas fa-star"></i></h5>
                        <hr>
                        <div class="container-fluid" style="padding-left: 200px">
                            <img style="width: 70% " src="{{ asset('storage/cover_images/') }}/{{$produto->cover_image}}">
                        </div>
                        <hr>
                        <small>Publicado em: {{$produto->created_at}}</small>
                        <hr>

                        @if(!Auth::guest())
                            @if(Auth::user()->tipo=='0')
                                <a href="{{route('produtos.edit',$produto->id)}}" class="btn btn-primary">Editar</a>

                                {!! Form::open(['action'=>['ProdutosController@destroy',$produto->id],'method'=>'POST','class'=>'pull-right']) !!}
                                {{Form::hidden('_method','DELETE')}}
                                {{Form::submit('Delete',['class'=>'btn btn-danger'])}}

                                {!! Form::close() !!}
                            @endif
                        @endif


                    </div>

                </div>

            </div>
            <div class="col-sm-2">

            </div>

        </div>
    </div>


@stop