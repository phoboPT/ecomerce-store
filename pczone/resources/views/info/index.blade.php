@extends('layouts.default')
@section('content1')
    <br>
    <div class="container" style="padding-left: 50px">
        <h1>Compras</h1>
    </div>
@stop
@section('content3')
    <div class="container" style="align-items: center; width:1500px ">
        <div class="">

            <?php
            $fatura = 1;
            ?>
            <table class="table table-bordered table-hover" style="margin: auto; width: 50%; ">
                <tr >
                    <th style="width: 100px">Factura</th>
                    <th >Data</th>
                    <th>Estado</th>
                    <th>Comentário</th>
                    <th style="width: 160px">Ações</th>
                </tr>
            @if(count($compras)>0)
                @foreach($compras as $produto)
                    @if($produto->id != $fatura)

                            <tr>
                                <td >{{$produto->id}}</td>
                                <td  >{{$produto->created_at}}</td>
                                <td  >{{$produto->status}}</td>
                                <td  >{{$produto->comentario}}</td>
                                <td><a class="btn btn-primary" href=" {{url('info')}}/{{$produto->id}}">Ver</a>


                                    {!! Form::open(['action'=>['CategoriaController@destroy',$produto->id],'method'=>'POST','class'=>'pull-right']) !!}
                                    {{Form::hidden('_method','DELETE')}}
                                    {{Form::submit('Delete',['class'=>'btn btn-danger'])}}

                                    {!! Form::close() !!} </td>
                                </td>

                            </tr>

                        <?php
                        $fatura = $produto->id;
                        ?>
                    @else
                    <!-- Colocar aqui o que fazer caso nao haja compras -->
                    @endif
                @endforeach
            </table>
            @endif
        </div>
    </div>

@endsection

