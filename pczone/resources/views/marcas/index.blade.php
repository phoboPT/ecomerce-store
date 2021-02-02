@extends('layouts.admin')
@section('content1')
    <br>

    <div class="container" >
        <h2>Marcas</h2>

    </div>
@stop
@section('content')

    <div class="container" style=" width:1200px;margin: 20px ">

        <div class="">


            <table class="table table-bordered table-hover" style="margin: auto; width: 50%; ">
                <tr>
                    <th>ID</th>
                    <th>Categoria</th>
                    <th>Publicado em</th>
                    <th style="width: 160px">Ações</th>
                </tr>
                @if(count($marcas)>0)
                    @foreach($marcas as $produto)


                        <tr>

                            <td>{{$produto->id}}</td>
                            <td>{{$produto->marca}}</td>
                            <td>{{$produto->created_at}}</td>
                            <td>
                                <a class="btn btn-primary "href="{{route('marcas.edit',$produto->id)}}">Editar</a>

                                {!! Form::open(['action'=>['MarcaController@destroy',$produto->id],'method'=>'POST','class'=>'pull-right']) !!}
                                {{Form::hidden('_method','DELETE')}}
                                {{Form::submit('Delete',['class'=>'btn btn-danger'])}}

                                {!! Form::close() !!} </td>
                        </tr>



                    @endforeach
            </table>



            @else
                <p1>Nada na bd</p1>

            @endif
        </div>
    </div>

    <div class="container-fluid" id="paginate"> {{  $marcas->links()}}</div>
@stop