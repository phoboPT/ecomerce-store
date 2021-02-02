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

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js"
            integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="{{ URL::asset('/css/style.css') }}">


</head>
<body>


<!--/.navbar-->
<br><br><br>
<div class="header">
    <h1>PC ZONE</h1>
    <p>Tudo o que precisa para o seu computador.</p>
</div>


<nav class="navbar navbar-inverse navbar-fixed-top ">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{route('index1')}}">PC ZONE</a>
        </div>

        <!-- Navbar Computadores -->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Computadores <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Desktops</strong></li>
                                    <li><a href="{{ route('index', 19)}}">Gaming</a></li>
                                    <li><a href="{{route('index',20)}}">Workstation</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Notebooks</strong></li>
                                    <li><a href="{{route('index',17)}}">Portatil</a></li>
                                    <li><a href="{{route('index',21)}}">HÍbrido</a></li>
                                    <li><a href="{{route('index',18)}}">All IN ONE</a></li>
                                    <li><a href="{{route('index',22)}}">Servidores</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Mini PCS</strong></li>
                                    <li><a href="{{route('index',23)}}">Android </a></li>
                                    <li><a href="{{route('index',24)}}">Windows</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Eletrónica DIY</strong></li>
                                    <li><a href="{{route('index',25)}}">Acessórios</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Barebones</strong></li>
                                    <li><a href="{{route('index',26)}}">Workstations</a></li>
                                    <li><a href="{{route('index',27)}}">Acessórios</a></li>

                                    <li><a href="{{route('index',28)}}">Garantias </a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Acessórios/Portáteis</strong></li>
                                    <li><a href="{{route('index',29)}}">Bases/Docs</a></li>
                                    <li><a href="{{route('index',30)}}">Carregadores</a></li>
                                    <li><a href="{{route('index',31)}}">Bolsas</a></li>
                                    <li><a href="{{route('index',32)}}">Mochilas</a></li>
                                    <li><a href="{{route('index',33)}}">Malas </a></li>


                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>


                <!-- Navbar Mobilidade -->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobilidade <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Smartphones </strong></li>
                                    <li><a href="{{route('index',34)}}">Android</a></li>
                                    <li><a href="{{route('index',35)}}">IOS</a></li>
                                    <li><a href="{{route('index',36)}}">Windows</a></li>

                                    <li><a href="{{route('index',37)}}">Capas/Bolsas</a></li>

                                    <li><a href="{{route('index',38)}}">Peliculas</a></li>
                                    <li><a href="{{route('index',39)}}">Telemovéis</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Tablets</strong></li>
                                    <li><a href="{{route('index',40)}}">Android</a></li>
                                    <li><a href="{{route('index',41)}}">Capas/Bolsas</a></li>
                                    <li><a href="{{route('index',42)}}">Peliculas</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Wearables</strong></li>
                                    <li><a href="{{route('index',43)}}">SmartWatch</a></li>
                                    <li><a href="{{route('index',44)}}">SmartBand</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Acessórios</strong></li>
                                    <li><a href="{{route('index',45)}}">PowerBanks</a></li>
                                    <li><a href="{{route('index',46)}}">Carregadores</a></li>
                                    <li><a href="{{route('index',47)}}">Stylus</a></li>
                                    <li><a href="{{route('index',48)}}">Outros</a></li>
                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>


                <!-- Navbar Componentes -->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Componentes <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Processadores </strong></li>
                                    <li><a href="{{route('index',49)}}">Intel</a></li>
                                    <li><a href="{{route('index',50)}}">AMD</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Placas Gráficas</strong></li>
                                    <li><a href="{{route('index',51)}}">AMD</a></li>
                                    <li><a href="{{route('index',52)}}">Nvidia</a></li>
                                    <li><a href="{{route('index',53)}}">Acessórios</a></li>
                                    <li class="divider"></li>

                                    <li><strong>Ventoinhas</strong></li>
                                    <li><a href="{{route('index',54)}}">140 MM</a></li>
                                    <li><a href="{{route('index',55)}}">120 MM</a></li>
                                    <li><a href="{{route('index',56)}}">80 MM</a></li>
                                    <li><a href="{{route('index',57)}}">RGB</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Motherboards</strong></li>
                                    <li><a href="{{route('index',58)}}">Intel</a></li>
                                    <li><a href="{{route('index',59)}}">AMD</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Fontes Alimentação</strong></li>
                                    <li><a href="{{route('index',60)}}">Full Modulares</a></li>
                                    <li><a href="{{route('index',61)}}">Semi Modulares</a></li>
                                    <li><strong>Memórias</strong></li>
                                    <li><a href="{{route('index',62)}}">DDR4</a></li>
                                    <li><a href="{{route('index',63)}}">DDR3</a></li>
                                    <li><a href="{{route('index',64)}}">DDR2</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Coolers/CPU</strong></li>
                                    <li><a href="{{route('index',65)}}">Air Colling</a></li>
                                    <li><a href="{{route('index',66)}}">Water Colling</a></li>
                                    <li><a href="{{route('index',67)}}">Pasta Térmica</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Caixas</strong></li>
                                    <li><a href="{{route('index',68)}}">ATX</a></li>
                                    <li><a href="{{route('index',69)}}">Extended-ATX</a></li>
                                    <li><a href="{{route('index',70)}}">Micro-ATX</a></li>
                                    <li><a href="{{route('index',71)}}">Mini-ITX</a></li>
                                    <li><a href="{{route('index',72)}}">Acessórios</a></li>
                                </ul>
                            </div>

                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Placas de Som</strong></li>
                                    <li><a href="{{route('index',73)}}">Interna</a></li>
                                    <li><a href="{{route('index',74)}}">Externa</a></li>
                                    <li class="divider"></li>
                                    <li><strong>Drives Ópticas</strong></li>
                                    <li><a href="{{route('index',75)}}">Gravadores Blu-Ray</a></li>
                                    <li><a href="{{route('index',76)}}">Gravadores DVD</a></li>
                                    <li><a href="{{route('index',77)}}">Externos</a></li>
                                    <li class="divider"></li>

                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>

                <!-- Navbar Imagem -->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Imagem <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Monitores </strong></li>
                                    <li><a href="{{route('index',78)}}">NVDIA G-SYNK</a></li>
                                    <li><a href="{{route('index',79)}}">AMD FREE-SYNK</a></li>
                                    <li><a href="{{route('index',80)}}">144Hz</a></li>
                                    <li><a href="{{route('index',81)}}">Ultra HD</a></li>
                                    <li><a href="{{route('index',82)}}">Mais 25"</a></li>
                                    <li><a href="{{route('index',83)}}">Entre 23" e 24"</a></li>
                                    <li><a href="{{route('index',84)}}">Entre 19" e 22"</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Televisores</strong></li>
                                    <li><a href="{{route('index',85)}}">OLED</a></li>
                                    <li><a href="{{route('index',86)}}">LED</a></li>
                                    <li><a href="{{route('index',87)}}">Curvos</a></li>
                                    <li><a href="{{route('index',88)}}">144Hz</a></li>
                                    <li><a href="{{route('index',89)}}">Ultra HD</a></li>
                                    <li><a href="{{route('index',90)}}">Mais 25"</a></li>
                                    <li><a href="{{route('index',91)}}">Entre 23" e 24"</a></li>
                                    <li><a href="{{route('index',92)}}">Entre 19" e 22"</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <ul class="multi-column-dropdown">

                                    <li><a href="{{route('index',93)}}">Câmaras</a></li>
                                    <li><a href="{{route('index',94)}}">Projectores</a></li>
                                    <li><a href="{{route('index',95)}}">Suportes/Acessórios</a></li>
                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>


                <!-- Navbar Periféricos -->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Periféricos <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Áudio </strong></li>
                                    <li><a href="{{route('index',96)}}">Headsets</a></li>
                                    <li><a href="{{route('index',97)}}">Headphones</a></li>
                                    <li><a href="{{route('index',98)}}">Auriculares</a></li>
                                    <li><a href="{{route('index',99)}}">Microfones</a></li>
                                    <li><a href="{{route('index',100)}}">Colunas</a></li>
                                    <li><a href="{{route('index',101)}}">Acessórios</a></li>
                                    <li><a href="{{route('index',102)}}">Cadeiras</a></li>
                                    <li><a href="{{route('index',103)}}">Bundles</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Ratos/Teclados</strong></li>
                                    <li><a href="{{route('index',104)}}">Ratos</a></li>
                                    <li><a href="{{route('index',105)}}">Teclados</a></li>
                                    <li><a href="{{route('index',106)}}">Conjuntos</a></li>
                                    <li><a href="{{route('index',107)}}">Apomtadores</a></li>
                                    <li><a href="{{route('index',108)}}">Tapestes</a></li>
                                    <li><a href="{{route('index',109)}}">Acessórios</a></li>
                                    <li><a href="{{route('index',110)}}">Mesas Digitalizadoras</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Impressoras</strong></li>
                                    <li><a href="{{route('index',111)}}">Jacto Tinta</a></li>
                                    <li><a href="{{route('index',112)}}">Laser</a></li>
                                    <li><a href="{{route('index',113)}}">POS/Talões</a></li>
                                    <li><a href="{{route('index',114)}}">Scanners</a></li>
                                    <li><a href="{{route('index',115)}}">Placas de Captura</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><a href="{{route('index',116)}}">Comandos</a></li>
                                    <li><a href="{{route('index',117)}}">Gamepads</a></li>
                                    <li><a href="{{route('index',118)}}">Volantes</a></li>
                                    <li><a href="{{route('index',119)}}">WebCams</a></li>
                                    <li><a href="{{route('index',120)}}">UPS/Tomadas</a></li>
                                    <li><a href="{{route('index',121)}}">HUBs</a></li>
                                    <li><a href="{{route('index',122)}}">Drones</a></li>
                                    <li><a href="{{route('index',123)}}">Óculos</a></li>
                                    <li><a href="{{route('index',124)}}">Outros</a></li>
                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>

                <!-- Navbar Armazenamento -->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Armazenamento <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Armazenamento Interno </strong></li>
                                    <li><a href="{{route('index',59)}}">SSD</a></li>
                                    <li><a href="{{route('index',59)}}">HDD</a></li>
                                    <li><strong> Armazenamento Externo </strong></li>
                                    <li><a href="{{route('index',59)}}">Desktop</a></li>
                                    <li><a href="{{route('index',59)}}">Portátil</a></li>
                                    <li><strong> Cartões Memória</strong></li>
                                    <li><a href="{{route('index',59)}}">SD</a></li>
                                    <li><a href="{{route('index',59)}}">MiscroSD</a></li>
                                    <li><a href="{{route('index',59)}}">CompactFlash</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Pen Drives</strong></li>
                                    <li><a href="{{route('index',59)}}">USB 2.0</a></li>
                                    <li><a href="{{route('index',59)}}">USB 3.0</a></li>
                                    <li><a href="{{route('index',59)}}">USB 3.1</a></li>
                                    <li><strong>Caixas Externas</strong></li>
                                    <li><a href="{{route('index',59)}}">IDE 2.5"</a></li>
                                    <li><a href="{{route('index',59)}}">SATA 2.5"</a></li>
                                    <li><a href="{{route('index',59)}}">SATA 3.5"</a></li>

                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><strong>NAS</strong></li>
                                    <li><a href="{{route('index',59)}}">1 Baía</a></li>
                                    <li><a href="{{route('index',59)}}">2 Baías</a></li>
                                    <li><a href="{{route('index',59)}}">4 Baías</a></li>
                                    <li><a href="{{route('index',59)}}">5 Baías</a></li>
                                    <li><a href="{{route('index',59)}}">Docking Station</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3">
                                <ul class="multi-column-dropdown">
                                    <li><a href="{{route('index',59)}}">Controladoras</a></li>
                                    <li><a href="{{route('index',59)}}">Adaptadores Internos</a></li>
                                    <li><a href="{{route('index',59)}}">Leitores de Cartões</a></li>
                                    <li><a href="{{route('index',59)}}">Acessórios</a></li>
                                </ul>
                            </div>
                        </div>
                    </ul>
                </li>


                <!-- Navbar Software/Consumiveis-->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Software/Consumiveis<b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-2">
                        <div class="row">
                            <div class="col-sm-6">
                                <ul class="multi-column-dropdown">
                                    <li><strong> Software</strong></li>
                                    <li><a href="{{route('index',59)}}">Sistema Operativo</a></li>
                                    <li><a href="{{route('index',59)}}">Office</a></li>
                                    <li><a href="{{route('index',59)}}">Segurança</a></li>
                                    <li><a href="{{route('index',59)}}">Multimédia</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-6">
                                <ul class="multi-column-dropdown">
                                    <li><strong>Consumivéis</strong></li>
                                    <li><a href="{{route('index',59)}}">Blu-Ray</a></li>
                                    <li><a href="{{route('index',59)}}">CDs</a></li>
                                    <li><a href="{{route('index',59)}}">DVDs</a></li>
                                    <li><a href="{{route('index',59)}}">Limpeza</a></li>
                                    <li><a href="{{route('index',59)}}">Tinteiros</a></li>
                                </ul>
                            </div>

                        </div>
                    </ul>
                </li>


            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <button onclick="location.href =' {{route('cart.index')}}'" class="btn btn-primary" type="submit"
                            style="margin-top: 10px"><i class="fas fa-shopping-cart"></i>
                        @if( Cart::instance('default')->count() >0)
                            <span>{{ Cart::instance('default')->count(false) }}</span></button>
                    @endif
                </li>

                @guest
                    <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                    <li><a class="nav-link" href="{{ route('register') }}">{{ __('Registar') }}</a></li>
                @else

                    <li class="nav-item dropdown">

                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>


                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                  style="display: none;">
                                @csrf
                            </form>

                        </div>
                    </li>

                @endguest
                @if (!Auth::guest());
                @if(Auth::user()->tipo==0)

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">Admin <span class="caret"></span></a>
                        <ul class="dropdown-menu">


                            <li><a href="{{route('admin')}}">Admin</a></li>

                        </ul>
                    </li>
                @endif
                @endif

                @if (!Auth::guest());
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Informação<span class="caret"></span></a>
                    <ul class="dropdown-menu">


                        <li><a href="{{ route('info.index') }}">Minhas Compras</a></li>

                    </ul>
                </li>
                @endif
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>
<div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-9">
    </div>
    <div class="col-sm-1">
    </div>
</div>
<div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-10">
        @yield('content1')
        @include('inc.default_messages')
        <div class="cards   ">
            @yield('content')
        </div>
    </div>
    <div class="col-sm-1">
    </div>
</div>
@yield('content3')
<div class="footer">
    <h2>Footer</h2>
</div>
<script src="../..//vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace('article-ckeditor');
</script>

</body>
</html>
