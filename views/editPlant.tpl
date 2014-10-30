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
%for doc in data_docs:
<div class="form-container" id="form-container">
  <form role="form" action="/editplant/{{doc['_id']}}" method="post">
<div class="form-group">
  <label for="PlantName">Plant Name</lable>
  <input  name="plantName" type="text" class="form-control" id="plantName" value={{doc['plantName']}} require/>
</div>
<div class="form-group">
  <lable for="plantType">Plant Type</label>
  <input name="plantType" type="text" class="form-control" id="plantType" value={{doc['plantType']}} require/>
</div>
<div class="form-group">
  <lable for="PlantFamily">Plant Family</label>
  <input name="plantFamily" type="text" class="form-control" id="plantFamily" value={{doc['plantFamily']}} require/>
</div>
<div class="form-group">
  <lable for="PlantSeason">Plant Season</label>
  <input name="plantSeason" type="text" class="form-control" id="PlantSeason" value={{doc['plantSeason']}} />
</div>
<div class="form-group">
  <lable for="PlantZone">Plant Zone</label>
  <input name="plantZone" type="text" class="form-control" id="PlantZone" value={{doc['plantZone']}} />
</div>
<div class="form-group">
  <lable for="PlantYeild">Plant Yeild</label>
  <input name="plantYeild" type="text" class="form-control" id="PlantYeild" value={{doc['plantYeild']}} />
</div>
<div class="form-group">
  <lable for="PlantPH">Plant PH</label>
  <input name="plantPH" type="text" class="form-control" id="PlantPH" value={{doc['plantPH']}} />
</div>
<div class="form-group">
  <input class="btn btn-primary" id="editPlant" value="Edit Plant" type="submit" />
</div>
</form>
</div><!-- /.container -->
</div>
</div>
    <script src="js/jquery-1.11.1.js"></script>
  </body>
</html>
