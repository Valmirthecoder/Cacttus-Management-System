<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>

    <link href="{{ asset('/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/style.css') }}" rel="stylesheet" media="all">

    <!-- Fonts -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
                @if (Auth::check())
            <button class="openbtn" onclick="openNav()">☰</button> 
            @endif
            <a class="navbar-brand" href="{{ url('/') }}">Cacttus Education Management System</a>
        </div>
        <div class="sidebar" id="mySidebar">
                @if (Auth::check())
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                    @if(Auth::user()->hasRole('admin'))
                    <button class="dropdown-btn">Roles/Permissions 
                        {{-- <i class="fas fa-caret-down"></i>--}}<p style="display:inline-block;margin:0;font-size:23px;">&darr;</p> 
                    </button>
                        <div class="dropdown-container">
                                <a href="{{ url('/role_permission') }}">Panel</a>
                                <a href="{{ URL::route('roles.index') }}">Roles</a>
                                <a href="{{ URL::route('permissions.index') }}">Permissions</a>
                        </div>
                    @endif
                    @if(Auth::user()->hasRole('admin'))
                        <a href="{{ URL::route('users.index') }}">Users</a>
                        <a href="{{ URL::route('years.index') }}">School Years</a>
                        <a href="{{ URL::route('semesters.index') }}">Semester</a>
                        <a href="{{ URL::route('subjects.index') }}">Subject</a>
                        <a href="{{ URL::route('students.index') }}">Student</a>
                    @endif
                    @if(Auth::user()->hasRole('staff') )
                        <a href="{{ URL::route('years.index') }}">School Years</a>
                        <a href="{{ URL::route('semesters.index') }}">Semester</a>
                        <a href="{{ URL::route('subjects.index') }}">Subject</a>
                        <a href="{{ URL::route('students.index') }}">Student</a>
                    @endif
                    @if(Auth::user()->hasRole('student'))
                        <a href="{{ URL::route('checks.create') }}">Student Information</a>
                    @endif
                @endif
            </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                @if (Auth::guest())
                    <li><a href="{{ url('/auth/login') }}">Login</a></li>
                    <li><a href="{{ url('/auth/register') }}">Register</a></li>
                @else
                    <li>
                        <li><a href="{{ url('/auth/logout') }}">Logout</a></li>
                    </li>
                @endif
            </ul>
        </div>
    </div>
</nav>

<div class="container main">
    @include('flash::message')
    @yield('content')
</div>

<!-- Scripts -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="{{ asset('js/script.js') }}"></script>
<script type="text/javascript">
    $('.select2-multi').select2();
</script>
</body>
</html>
