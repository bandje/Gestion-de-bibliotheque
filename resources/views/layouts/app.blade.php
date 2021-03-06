<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>MyBiblio</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->  
    <link rel="stylesheet" type="text/css" href="{{ url('/css/main1.css') }}" />
    <link href="{{ asset('/css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                     <b>MyBiblio</b>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Connexion') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Inscription') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            <div class="container">
                <div class="row">
                   
                        <div class="col-sm-4">
                            @if(Auth::check())
                                <div class="card" style="width: 18rem;">
                                    <div class="card-header">
                                        <b> Bienvenue sur MyBiblio</b>   
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="{{route('accueil')}} ">ACCUEIL</a></li>
                                        <li class="list-group-item"><a href="{{route('biblio.add_book')}} ">AJOUTER UN LIVRE</a></li>
                                        <li class="list-group-item"><a href="{{route('biblio.emprunter_book')}}">EMPRUNTER</a></li>
                                        <li class="list-group-item"><a href="{{route('biblio.deposer_book')}}">DEPOSER</a></li>
                                        <li class="list-group-item"><a href="{{route('biblio.liste_livres_emprunter')}}">LIVRES EMPRUNTER</a></li>
                                        <li class="list-group-item"><a href="{{route('biblio.statistique')}}">STATISTIQUES</a></li>
                                        <li class="list-group-item"><a href="#">PROFIL</a></li>
                                    </ul>
                                </div>
                            @endif
                        </div>
                   
                    <div class="col-sm-8">
                           @yield('content')
                    </div>
                </div>
                
            </div>
        </main>
    </div>
</body>
</html>
