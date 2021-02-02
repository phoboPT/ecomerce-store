<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>PC ZONE</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Style sheet-->
    <link rel="stylesheet" href="{{ URL::asset('/css/style.css') }}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"
            integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="row">
    <div class="col-sm-2" >
    <div class="nav-side-menu">
        <div class="brand">PC ZONE</div>
        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

        <div class="menu-list">

            <ul id="menu-content" class="menu-content collapse out">
                <li>
                    <a href="{{route('admin')}}">
                        <i class="fas fa-tachometer-alt fa-lg "></i> MENU
                    </a>
                </li>

                <li data-toggle="collapse" data-target="#produtos" class="collapsed active">
                    <a href="#"><i class="fas fa-boxes fa-lg"></i> Produtos <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="produtos">
                    <li class="active"><i class="fas fa-plus-square fa-lg"></i><a href="{{ route('produtos.create') }}">
                            Adicionar </a></li>

                    <li><i class="fas fa-clipboard fa-lg"></i><a href="{{ route('produtos.listar') }}"> Listar </a></li>

                </ul>


                <li data-toggle="collapse" data-target="#categorias" class="collapsed">
                    <a href="#"><i class="fas fa-cogs fa-lg"></i> Categorias <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="categorias">
                    <li class="active"><i class="fas fa-plus-square fa-lg"></i><a
                                href="{{ route('categorias.create') }}"> Adicionar </a></li>

                    <li><i class="fas fa-clipboard fa-lg"></i><a href="{{ route('categorias.index') }}"> Listar </a>
                    </li>
                </ul>


                <li data-toggle="collapse" data-target="#marcas" class="collapsed">
                    <a href="#"><i class="fas fa-cogs fa-lg"></i> Marcas <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="marcas">
                    <li class="active"><i class="fas fa-plus-square fa-lg"></i><a href="{{ route('marcas.create') }}">
                            Adicionar </a></li>

                    <li><i class="fas fa-clipboard fa-lg"></i><a href="{{ route('marcas.index') }}"> Listar </a></li>
                </ul>
                <li data-toggle="collapse" data-target="#compras" class="collapsed">
                    <a href="#"><i class="fas fa-warehouse"></i></i> Compras <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="compras">
                    <li class="active"><i class="fas fa-clipboard-list"></i><a href="{{ route('compras.index') }}"> Listar Todas as Compras </a>
                    </li>
                    <li><i class="fas fa-pallet"></i><a href="{{route('pendente')}}"> Ver Compras Pendentes</a></li>

                </ul>

                <li data-toggle="collapse" data-target="#user" class="collapsed">
                    <a href="#"><i class="fa fa-users fa-lg"></i> Utilizador <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="user">
                    <li class="active"><i class="fas fa-edit"></i><a href="{{ route('produtos.index') }}"> Sair </a>
                    </li>
                    <li><i class="fas fa-sign-out-alt"></i>Gerir Utilizadores</li>

                </ul>


            </ul>
        </div>
    </div>
    </div>
    <div class="col-sm-10">
        @yield('content1')
        @include('inc.default_messages')
        @yield('content')
    </div>
</div>

<script src="../../vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'article-ckeditor' );
</script>


</body>
</html>
