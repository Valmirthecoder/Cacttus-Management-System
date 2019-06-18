<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">

  <title>Cacttus System Management</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

  
</head>

<body class="login-img3-body">
  <a href="{{route('welcomescreen')}}" class="btn btn-primary" style="float:right;">LOGOUT</a>
<table class="table" style="width: 80%; height: 20%; position: absolute; left: 0; right: 0; top: 0; bottom: 0; margin: auto; overflow: auto; background-color: #121212dd;">
  <thead>
    <tr><th scope="col" colspan="3" style="color: white; font-weight: bold; text-align: center;">{{$user}}</th></tr>
    <tr>
      <th scope="col" style="color: white; font-weight: bold;"></th>
      <th scope="col" style="color: white; font-weight: bold;">Subject</th>
      <th scope="col" style="color: white; font-weight: bold;">Grade</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" style="color: white; font-weight: bold;">1</th>
      <td style="color: white;">Laravel</td>
      <td style="color: white;">10</td>
    </tr>
    <tr>
      <th scope="row" style="color: white; font-weight: bold;">2</th>
      <td style="color: white;">ios</td>
      <td style="color: white;">10</td>
    </tr>
    <tr>
      <th scope="row" style="color: white; font-weight: bold;">3</th>
      <td style="color: white;">Python</td>
      <td style="color: white;">10</td>
    </tr>
    <tr>
      <th scope="row" style="color: white; font-weight: bold;">4</th>
      <td style="color: white;">Siguri</td>
      <td style="color: white;">10</td>
    </tr>
    <tr>
      <th scope="row" style="color: white; font-weight: bold;">5</th>
      <td style="color: white;">shitje</td>
      <td style="color: white;">10</td>
    </tr>
  </tbody>
</table>
</body>

</html>
