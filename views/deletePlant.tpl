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
 <li>
     <a href="/addplant">Add Plants</a></li>
            <li><a href="/viewplants">Show Plants</a></li>
        </ul>
    </nav>
</div>
<div id="navi"></div>
      <div id="contentArea">
    <div class="container">
       <p class="bg-danger">Are you sure you want to delete the following plant in the Database.</p>
       <form role="form" class="form-container" method="post">
        <table class="table table-striped table-hover">
      	<tr>
          <td>Plant Name</td>
          <td>Plant Type</td >
          <td>Plant Family</td>
          <td>Plant Season</td>
          <td></td>
        </tr>
        <tr class="danger">
          <td>{{doc['plantName']}}</td>
          <td>{{doc['plantType']}}</td>
          <td>{{doc['plantFamily']}}</td>
          <td>{{doc['plantSeason']}}</td>
          <td>
          <a href="/deleteplant/{{doc['_id']}}"><button id="deleteAnotherPlant" class="btn btn-primary btn-xs">Delete Plant</button></a>
       
        </td>
        </tr>
        </table>
         </form> 
        <div><a href="/viewplants"><button  class="btn btn-primary btn-xs">Cancel</button></a></div>
</div>
    </div><!-- /.container -->
    <script src="js/jquery-1.11.1.js"></script>
</body>
</html>