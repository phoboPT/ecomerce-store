@extends('layouts.default')
@section('content1')
    <br>
    <div class="container" style="padding-left: 50px">
        <h1>Compras</h1>
    </div>
@stop
@section('content3')
    <div class="container" style=" width:1000px ">
        <?php
        $fatura = 1;
        $total = 1
        ?>
        <div style="align-content: center;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="{{route('info.index')}}" class="btn btn-default">Voltar</a>
                    <br>
                </div>
                <div>
                    <div class="row" style=" margin: 15px " >
                        <div class="col-sm-9"  >
                            <h3>PC ZONE</h3>
                            <h4>Largo Transladário, Arcos de Valdevez</h4>
                            <h4>4970-285</h4>
                            <h4>Telefone: 25821507</h4>
                            <h4>Fax: 256435234</h4>
                            <h4>www.pczone.pt</h4>
                            <br>
                        </div>
                        <div class="col-sm-3">
                            <img src="{{ asset('imgs/images.png') }}" height="200" align="rigth"  >
                        </div>
                        <br>
                    </div>
                    <hr>
                    <div  style=" border-radius: 15px;  margin: 15px ">

                        &nbsp<strong>Fatura nº: </strong>{{$compras[0]->id}}<br><br>
                        &nbsp<strong>Nome: </strong>{{Auth::user()->name}}<br>
                        &nbsp<strong>Data:</strong> {{$compras[0]->created_at}}<br>
                        &nbsp<strong>Morada:</strong> {{Auth::user()->morada}}
                        &nbsp<strong style="margin-left: 50%">Telefone: </strong>{{Auth::user()->telefone}}<br>
                        @if((Auth::user()->contribuinte)!=null)
                        &nbsp<strong>Contribuinte:</strong> {{Auth::user()->contribuinte}}
                        @else
                            &nbsp<strong>Contribuinte:</strong> 999999999
                        @endif
                        <br>
                        <br>
                    </div>
                    <hr>
                    <h4 style="margin: 15px ">Produtos: </h4>

                    @if(count($compras)>0)
                        <table class="table table-bordered table-hover" style=" width: 940px;margin: 15px ">
                            <tr >
                                <th style="width: 100px">Produto nº</th>
                                <th>Produto</th>
                                <th style="width: 200px;text-align: right">Preço</th>
                            </tr>
                            @foreach($compras as $produto)
                                <?php
                                $total = $total + $produto->preco;
                                ?>
                                <tr>
                                    <td >{{$produto->produto_id}}</td>
                                    <td  >{{$produto->nome}}</td>
                                    <td style="text-align: right" >{{$produto->preco}} €</td>
                                </tr>
                            @endforeach
                        </table>
                        <div class="row" style=" margin: 15px ">
                            <div class="col-sm-9">
                                <!-- Texto para ser introduzido depois -->

                            </div>
                            <div class="col-sm-3" style="text-align: right">
                                <strong>Total: </strong>{{$total}} €
                                <br><br><br>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div >
                                    <h5 style="text-align: center">Obrigado por comprar com a PCZONE.</h5>
                                </div>

                            </div>


                        </div>


                </div>
            </div>
        </div>
    </div>
    @else
        <p1>Ainda não foram registadas compras</p1>
    @endif
@stop
