@extends('layouts.default')
@section('content')
    <div class="container">

        <h1>O seu Carrinho</h1>

        <hr>

        @if (session()->has('success_message'))
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if (session()->has('error_message'))
            <div class="alert alert-danger">
                {{ session()->get('error_message') }}
            </div>
        @endif

        @if (sizeof(Cart::content()) > 0)

            <table class="table">
                <thead>
                <tr>
                    <th class="table-image"></th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th class="column-spacer"></th>
                    <th></th>
                </tr>
                </thead>

                <tbody>
                @foreach (Cart::content() as $item)
                    <tr>
                        <td class="table-image"><a href="{{ url('/produtos', $item->model->id) }}"><img height="100px"
                                                                                                        width="100px"
                                                                                                        src="{{ asset('storage/cover_images/'.$item->model->cover_image) }}"
                                                                                                        alt="product"
                                                                                                        class="img-responsive cart-image"></a>
                        </td>
                        <td><a href="{{ url('/produtos',$item->model->id) }}">{{ $item->name }}</a></td>
                        <td>
                            <select class="quantity" data-id="{{ $item->rowId }}">
                                <option {{ $item->qty == 1 ? 'selected' : '' }}>1</option>
                                <option {{ $item->qty == 2 ? 'selected' : '' }}>2</option>
                                <option {{ $item->qty == 3 ? 'selected' : '' }}>3</option>
                                <option {{ $item->qty == 4 ? 'selected' : '' }}>4</option>
                                <option {{ $item->qty == 5 ? 'selected' : '' }}>5</option>
                            </select>
                        </td>
                        <td>{{ $item->subtotal }} €</td>
                        <td class=""></td>
                        <td>
                            <form action="{{ url('cart', [$item->rowId]) }}" method="POST" class="side-by-side">
                                {!! csrf_field() !!}
                                <input type="hidden" name="_method" value="DELETE">
                                <input type="submit" class="btn btn-danger btn-sm" value="Remove">
                            </form>


                        </td>
                    </tr>

                @endforeach
                <tr>
                    <td class="table-image"></td>
                    <td></td>
                    <td class="small-caps table-bg" style="text-align: right">Subtotal</td>
                    <td>{{ Cart::instance('default')->subtotal() }} €</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="table-image"></td>
                    <td></td>
                    <td class="small-caps table-bg" style="text-align: right">Iva</td>
                    <td>{{ Cart::instance('default')->tax() }} €</td>
                    <td></td>
                    <td></td>
                </tr>

                <tr class="border-bottom">
                    <td class="table-image"></td>
                    <td style="padding: 40px;"></td>
                    <td class="small-caps table-bg" style="text-align: right">Total</td>
                    <td class="table-bg">{{ Cart::total() }} €</td>
                    <td class="column-spacer"></td>
                    <td></td>
                </tr>

                </tbody>
            </table>
            <div class="row">
                <div class="col-sm-4">
                    {!! Form::open(['action' => 'SellsController@store','method'=>'POST']) !!}
                    <a href="{{ route('produtos.index') }}" class="btn btn-primary btn-lg">Continuar a comprar</a>
                    &nbsp;
                    {{ Form::hidden('produto', $item->model->id) }}
                    {{Form::submit('Adicionar',['class'=>'btn btn-success btn-lg'])}}


                    {!! Form::close() !!}
                </div>
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4" >
                    <a style="float:right" class="btn btn-danger btn-lg" href="{{route('cart.empty')}}">Esvaziar Carrinho</a>
                </div>

            </div>
    </div>


    @else

        <h3>Sem produtos no carrinho neste momento</h3><br><br>
        <a href="{{ route('produtos.index') }}" class="btn btn-primary btn-lg">Continuar a Comprar</a>

    @endif

    <div class="spacer"></div>

    </div> <!-- end container -->
@endsection