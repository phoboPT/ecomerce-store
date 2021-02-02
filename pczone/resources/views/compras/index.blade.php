@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container">
        @if($pendente==true)
            <h2>Compras</h2>
        @else
            <h2>Compras Pendentes</h2>
        @endif
    </div>
@stop
@section('content')

    <div class="container" style=" width:1200px;margin: 20px ">

        <div class="">


            <table class="table table-bordered table-hover" style="margin: auto; width: 80%; ">
                <tr>
                    <th >Nome</th>
                    <th>Categoria</th>
                    <th>Publicado em</th>
                    <th>Estado</th>
                    <th>Comentário</th>
                    <th style="width: 160px">Ações</th>

                </tr>
                @if(count($compras)>0)
                    @foreach($compras as $produto)


                        <tr>

                            <td>{{$produto->nome}}</td>
                            <td>{{$produto->categoria}}</td>
                            <td>{{$produto->created_at}}</td>
                            <td>{{$produto->status}}</td>
                            <td>{{$produto->comentario}}</td>

                            <td>
                                <a class="btn btn-primary "  href="{{route('compras.edit',$produto->id)}}">Editar</a>


                        </tr>



                    @endforeach
            </table>


            @else
                <p1>Nada na bd</p1>

            @endif
        </div>
    </div>

    <div class="container-fluid" id="paginate"> {{  $compras->links()}}</div>
@stop