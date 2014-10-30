<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="/css/main.css">
  <script src="/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/js/app.js"></script>
<script type="text/javascript" src="/js/angular.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>{{title}}</title>
       <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
          <link rel="stylesheet" href="/css/main.css" type="text/css"/>
    <script src="/js/main.js" type="text/javascript"></script>
    <script src="/js/app.js" type="text/javascript"></script>

<div id="panel">
    <nav>
        <ul>
 <li><a href="/addplant">Add Plants</a></li>
            <li><a href="/viewplants">Show Plants</a></li>
        </ul>
    </nav>
</div>
<div id="navi"></div>
      <div id="contentArea">
    <div class="container">
       <p class="bg-success">You have successfully added the following plant to the Database.</p>
        <table class="table table-striped table-hover">
      	<tr>
          <td>Plant Name</td>
          <td>Plant Type</td >
          <td>Plant Family</td>
          <td>Plant Season</td>
          <td>Plant Yeild</td>
          <td>Plant PH</td>
          <td>Plant Zone</td>
        </tr>
        <tr class="active">
          <td>{{plantName}}</td>
          <td>{{plantType}}</td>
          <td>{{plantFamily}}</td>
          <td>{{plantSeason}}</td>
          <td>{{plantYeild}}</td>
          <td>{{plantPH}}</td>
          <td>{{plantZone}}</td>
        </tr>
        </table>
        <div class="form-group">
          <a href="/addplant"><button id="addAnotherPlant" class="btn btn-primary">Add Plant</button></a>
<a href="/viewplants"><button id="viewplants'" class="btn btn-primary">view Plants</button></a>

        </div>
        </div>
    </div><!-- /.container -->
    <script src="js/jquery-1.11.1.js"></script>
</body>
</html>