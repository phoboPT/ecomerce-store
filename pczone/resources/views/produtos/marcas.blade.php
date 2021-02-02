@extends('layouts.default')
@section('content1')
    <br>

    <div class="container" style="padding-left: 50px">
        <h1>Marcas</h1>

    </div>
@stop
@section('content')

    @if(count($produtos)>0)
        @foreach($produtos as $produto)

            <div class="card1">

                <a href="show.blade.php"></a>
                <div class="row " style="height:170px">

                    <div class="col-md-12">
                        <a href="{{ url('produtos', [$produto->id]) }}">
                            <img class="img-responsive" src="{{ asset('storage/cover_images/') }}/{{$produto->cover_image}}"
                                 alt="IMAGEM"
                                 style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 140px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">

                        </a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col pl-2" style="padding-left: 15px">

                        <a href="/produtos/{{$produto->id}}"><h4>{!! $produto->nome!!}</h4></a>
                    </div>
                    <div class="col-sm-4">
                        <strong>Categoria: </strong>
                    </div>
                    <div class="col">
                        {!! $produto->categoria->categoria!!}
                    </div>


                </div>
                <div class="row">

                    <div class="col-sm-2">
                        <strong>Marca: </strong>
                    </div>
                    <div class="col-sm-4">
                        {!! $produto->marca->marca!!}
                    </div>


                </div>


                <small>Publicado em: {{$produto->created_at}}</small>


            </div>


        @endforeach


    @else
        <p1>Nada na bd</p1>

    @endif



@stop
