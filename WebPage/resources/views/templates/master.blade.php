<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('titol')</title>

    <link rel='stylesheet' href="{{ asset('css/bootstrap.min.css')}}">
    <script src="{{ asset('js/jquery-3.3.1.min.js') }}"> </script>
    <script src="{{ asset('js/popper.min.js') }}"> </script>
    <script src="{{ asset('js/bootstrap.min.js') }}"> </script>
</head>
<body style="padding-top: 70px">
    <nav class="navbar navbar-expand-sm navbar-light bg-white fixed-top">
        <a class="navbar-brand" href="{{$url=route('index')}}"><img src="{{ asset('img/logo.jpg') }}" width= "50px"></a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href=""></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        @yield('contenidor')
    </div>
</body>
</html>