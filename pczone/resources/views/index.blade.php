@extends('layouts.default')
@section('content1')
    <br>

    <div style="background: lightblue; height: 70px;padding-top: 5px ;">
        @if(count($produtos)>0)
            @if($isIndex==false)
                <h1 style="margin-left: 50px;margin-top: 15px; ">{{$produtos[0]->categoria->categoria}}</h1>
            @else
                <h1 style="margin-left: 50px;margin-top: 15px; ">Todos os Produtos</h1>
            @endif
        @else
            <h1 style="margin-left: 50px;margin-top: 15px; ">Sem Artigos</h1>

        @endif
    </div>
@stop
@section('content')

    @if(count($produtos)>0)
        @foreach($produtos as $produto)

            <div class="card1" style="height: 370px; width: 300px;">

                <a href="show.blade.php"></a>
                <div class="row " style="height:170px">

                    <div class="col-md-12">
                        <a href="{{ url('produtos', [$produto->id]) }}">
                            <img class="img-responsive"
                                 src="{{ asset('storage/cover_images/') }}/{{$produto->cover_image}}"
                                 alt="IMAGEM"
                                 style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 160px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">

                        </a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col pl-2" style="padding-left: 15px ">

                        <a href="/produtos/{{$produto->id}}"><h4>{!! $produto->nome!!}</h4></a>
                    </div>
                    <div class="col-sm-12">
                        <strong>Categoria:</strong>
                        {!! $produto->categoria->categoria!!}
                    </div>


                </div>
                <div class="row">

                    <div class="col-sm-2">
                        <strong>Marca: </strong>
                    </div>
                    <div class="col-sm-6">
                        {!! $produto->marca->marca!!}
                    </div>


                </div>
                @if(($produto->stock)>0)
                    <div class="row">
                        <div class="col-sm-2">
                            <strong>Stock: </strong>
                        </div>
                        <div class="col-sm-4">
                            {!! $produto->stock!!}
                        </div>
                    </div>
                @else
                    <div class="row">
                        <div class="col-sm-2">
                            <strong>Stock: </strong>
                        </div>
                        <div class="col-sm-6">
                            <strong style="color :red">Sem Stock</strong>
                        </div>
                    </div>

                @endif


                <small> Publicado em: {{$produto->created_at}}</small>


            </div>

        @endforeach


    @else
        <p1>Sem artigos na Base de Dados</p1>

    @endif



@stop
@section('content3')

    <div class="container-fluid" id="paginate"> {{  $produtos->links()}}</div>

@endsection