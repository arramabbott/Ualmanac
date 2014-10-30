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
<table class="table table-striped table-hover">
      <thead>
        <tr>
          <th></th>
          <th>Plant Name</th>
          <th>Plant Type</th>
          <th>Plant Season</th>
          <th>Plant Yeild</th>
          <th>Plant Family</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
 %for doc in data_docs:
        <tr >
          <td></td>
          <td class="plantRow">{{doc['plantName']}}</td>
          <td class="plantRow">{{doc['plantType']}}</td>
          <td class="plantRow">{{doc['plantSeason']}}</td>
          <td class="plantRow">{{doc['plantYeild']}}</td>
          <td class="plantRow">{{doc['plantFamily']}}</td>
          <td>
          <a href="/editplant/{{doc['_id']}}"><button id="editAnotherPlant" class="btn btn-primary btn-xs">Edit</button></a>
        <a href="/deleteplant/{{doc['_id']}}"><button id="deleteAnotherPlant" class="btn  btn-xs">Delete</button>
           <a href="/uploads/{{doc['_id']}}"><button id="uploadAnotherPlantImage" class="btn btn-primary btn-xs">upload Image</button></a>
            </td>
        </tr>
 %end
      </tbody>
    </table>
        <div class="form-group">
      <a href="/addplant"><button id="addAnotherPlant" class="btn btn-primary btn-xs">Add</button></a>
        </div>
        </div>
    </div><!-- /.container -->
</body> 
</html>
