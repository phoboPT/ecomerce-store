@extends('layouts.admin')
@section('content1')


    <br>

    <div class="container-fluid" style="padding-left: 60px">
        <h1>Informação </h1>

        <div class="row">
            <strong>Mais Vendido: </strong> {{$bestSeller[0]->nome}}
            <strong>Vendeu: </strong> {{$quantidade}}

            <div class="col-sm-4">
                <p><strong>     Total de artigos: {{$total}}</strong></p>
                <div id="chart-div"></div>

                @donutchart('Artigos', 'chart-div')


            </div>
            <div class="col-sm-4">
                <p><strong>Total de vendas: {{$totalVendas}}</strong></p>
                <div id="div"></div>

                @donutchart('Sells', 'div')


            </div>

        </div>


    </div>
    <br>


@stop
@section('content')

    <!-- Ultimos produtos adicionados -->
    @if(count($produtos)>0)
        <div class="container-fluid" style="margin-left: 24px">
            <h1>Ultimos Produtos Adicionados</h1>

        </div>
        <div class="container-fluid">
            <div class="container-fluid">
                @foreach ($produtos as $listar)
                    <div class="col-md-3"
                         style="padding-right: 5px;padding-left:5px ;width: 260px ; ">
                        <div class="thumbnail">
                            <div class="caption text-left">
                                <a href="{{ url('showAdmin', [$listar->id]) }}">
                                    <img class="img-responsive"
                                         src="{{ asset('storage/cover_images/') }}/{{$listar->cover_image}}"
                                         alt="IMAGEM"
                                         style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 50px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">
                                </a>

                                <hr>
                                <p class="big"><strong>ID Produto: </strong> {!! $listar->id!!}</p>

                                <p class="big"><strong>Produto: </strong> {!! $listar->nome!!}</p>
                                <p class="big"><strong>Categoria: </strong>{!! $listar->categoria->categoria!!}</p>


                            </div> <!-- end caption -->

                        </div> <!-- end thumbnail -->
                    </div> <!-- end col-md-3 -->
                @endforeach
            </div>
            @else
                <p1>Não existem registos na base de dados</p1>

            @endif

        <!-- Produtos com baixo stock-->

            <br>

            <div class="container-fluid" style="margin-left: 10px">
                <h1>Produtos com baixo stock </h1>
                <strong>Total de artigos com stock inferior a 4: </strong>{{$stockBaixo}}
            </div>

            @if(count($preco)>0)

                <div class="container-fluid"   >
                    @foreach ($preco as $listar)
                        <div class="col-md-3"
                             style="padding-right: 5px;padding-left:5px ;width: 260px ;">
                            <div class="thumbnail">
                                <div class="caption text-left">
                                    <a href="{{ url('showAdmin', [$listar->id]) }}">
                                        <img class="img-responsive"
                                             src="{{ asset('storage/cover_images/') }}/{{$listar->cover_image}}"
                                             alt="IMAGEM"
                                             style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 50px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">
                                    </a>

                                    <hr>
                                    <p class="big"><strong>ID Produto: </strong> {!! $listar->id!!}</p>

                                    <p class="big"><strong>Produto: </strong> {!! $listar->nome!!}</p>

                               @if(($listar->stock) < 4)
                                        <p class="big" style="color:red"><strong>Stock: </strong>{!! $listar->stock!!}
                                        </p>
                                   <strong style="color:red;">BAIXO STOCK</strong>

                                    @else


                                        <p class="big"><strong>Stock: </strong>{!! $listar->stock!!}</p>
                                    @endif


                                </div> <!-- end caption -->

                            </div> <!-- end thumbnail -->
                        </div> <!-- end col-md-3 -->
                    @endforeach
                </div>





            @else
                <p1>Não existem registos na base de dados</p1>

            @endif

        <!-- Rating -->

            <br>

            <div class="container-fluid" style="margin-left: 10px">
                <h1>Artigos com melhor rating </h1>

            </div>

            @if(count($rating)>0)

                <div class="container-fluid" >
                    @foreach ($rating as $listar)
                        <div class="col-md-3"
                             style="padding-right: 5px;padding-left:5px ;width: 260px ;">
                            <div class="thumbnail">
                                <div class="caption text-left">
                                    <a href="{{ url('showAdmin', [$listar->id]) }}">
                                        <img class="img-responsive"
                                             src="{{ asset('storage/cover_images/') }}/{{$listar->cover_image}}"
                                             alt="IMAGEM"
                                             style="width: auto !important; /*Keep the aspect ratio of the image*/
                                     height: 50px !important;
                                     margin: 0 auto 1em auto; /*Center the image*/">
                                    </a>

                                    <hr>
                                    <p class="big"><strong>ID Produto: </strong> {!! $listar->id!!}</p>

                                    <p class="big"><strong>Produto: </strong> {!! $listar->nome!!}</p>
                                    <p class="big"><strong>Categoria: </strong>{!! $listar->categoria->categoria!!}</p>


                                </div> <!-- end caption -->

                            </div> <!-- end thumbnail -->
                        </div> <!-- end col-md-3 -->
                    @endforeach
                </div>





            @else
                <p1>Não existem registos na base de dados</p1>

            @endif


            <br>
@stop

