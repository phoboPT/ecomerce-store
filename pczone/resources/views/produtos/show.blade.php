@extends('layouts.default')
@section('content')
    <br>



    <div class="container">
        <div class="row">
            <div class="col-sm-10">


                <div class="card1" style=" height: auto;width: 118%;">
                    <div class="well">
                        <div><a href="{{route('produtos.index')}}" class="btn btn-default">Voltar</a>
                            <h2>{!! $produto->nome!!}</h2>
                        </div>
                        <br>

                        <h5><strong>Preço: </strong>{{$produto->preco}}€</h5>
                        <h5><strong>Categoria: </strong>{{$produto->categoria->categoria}}</h5>
                        <h5><strong>Stock:</strong> {{$produto->stock}} unds</h5>
                        <h5><strong>Rating:</strong> {{$produto->rating}} <i class="fas fa-star"></i></h5>
                        <hr>
                        <div class="container-fluid" style="padding-left: 200px">
                            <img style="width: 70% " src="{{ asset('storage/cover_images/') }}/{{$produto->cover_image}}">
                        </div>
                        <h5><strong>Descrição: </strong>{!! $produto->descricao!!}</h5>

                        <form action="{{route('cart.store') }}" method="POST" >
                            {!! csrf_field() !!}
                            <input type="hidden" name="id" value="{{ $produto->id }}">
                            <input type="hidden" name="nome" value="{{ $produto->nome }}">
                            <input type="hidden" name="preco" value="{{ $produto->preco }}">
                            <br><br><br>
                            @if(($produto->stock)<=0)
                                <input type="submit" class="btn btn-success pull-right" value="Pedir">
                                @else
                                <input type="submit" class="btn btn-success pull-right" value="Comprar">
                            @endif
                        </form>
                        <br>
                        <hr>
                        <small>Publicado em: {{$produto->created_at}}</small>
                        <hr>

                        @if(!Auth::guest())

                            @if(Auth::user()->tipo==0)

                                <a href="{{ route('produtos.edit',$produto->id)}}" class="btn btn-primary">Editar</a>


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

    <div class="container" style="padding-left: 50px;">
        <div class="row">
            <h3> Também poderás gostar...</h3>

            @foreach ($interested as $product)
                <div class="col-md-3" style="padding-right: 15px;padding-left:30px ">
                    <div class="thumbnail" >
                        <div class="caption text-center" >
                            <a href="{{ url('produtos', [$product->id]) }}">
                                <img class="img-responsive" src="{{ asset('storage/cover_images/') }}/{{$product->cover_image}}"
                                     alt="IMAGEM"
                                     style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 140px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">
                                {{ $product->nome }}
                            </a>

                            <br>
                            <strong> Preço: </strong>{{ $product->preco }} €

                            </a>
                        </div> <!-- end caption -->

                    </div> <!-- end thumbnail -->
                </div> <!-- end col-md-3 -->
            @endforeach

        </div> <!-- end row -->
    </div>
@stop