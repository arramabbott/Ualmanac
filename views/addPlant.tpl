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
 <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.21/angular.min.js"></script>
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
      <div id="contentArea" ng-app="myUalmanac" ng-controller="addplantController">
<div class="form-container" id="form-container">
    	<form role="form" action="/addplant" method="post">

<div class="form-group">
	<lable for="plantType">Plant Type</label>
	<input name="plantType" type="text" class="form-control" ng-model="plantType" id="plantType" placeholder="plant Type" require/>
</div>
<div class="form-group">
  <label for="PlantName">Plant Name</lable>
  <input name="plantName" type="text" class="form-control" ng-model="plantName" id="plantName" placeholder="Plant Name" require/>
</div>
<div class="form-group">
	<lable for="PlantFamily">Plant Family</label>
	<input name="plantFamily" type="text" class="form-control"  ng-model="plantFamily" id="plantFamily" placeholder="plant Family" require/>
</div>
<div class="form-group">
	<lable for="PlantSeason">Plant Season</label>
	<input name="plantSeason" type="text" class="form-control" ng-model="PlantSeason" id="PlantSeason" placeholder="Plant Season"/>
</div>
<div class="form-group">
	<lable for="PlantZone">Plant Zone</label>
	<input name="plantZone" type="text" class="form-control" ng-model="PlantZone" id="PlantZone" placeholder="Plant Zone"/>
</div>
<div class="form-group">
	<lable for="PlantYeild">Plant Yeild</label>
	<input name="plantYeild" type="text" class="form-control" ng-model="PlantYeild"  id="PlantYeild" placeholder="Plant Yeild"/>
</div>
<div class="form-group">
	<lable for="PlantPH">Plant PH</label>
	<input name="plantPH" type="text" class="form-control" ng-model="PlantPH" id="PlantPH" placeholder="Plant PH"/>
</div>
<!--
	<div class="form-group">
	<lable for="PlantWater">Plant Water</label>
	<input name="plantWater" type="text" class="form-control" id="PlantWater" placeholder="Plant Water"/>
</div>
<div class="form-group">
	<lable for="PlantSun">Plant Sun</label>
	<input name="PlantSun" type="text" class="form-control" id="PlantSun" placeholder="PlantSun"/>
</div>
<div class="form-group">
	<lable for="plantNutrientIntake">Plant Nutrient Intake</label>
	<input name="plantNutrientIntake" type="text" class="form-control" id="plantNutrientIntake" placeholder="Plant Nutrient Intake"/>
</div>
-->
<div class="form-group">
	<button class="btn btn-primary" id="addPlant" value="Add Plant" ng-disabled="true">Submit</button>
</div>

</form>
        </div>
</div>
    <script src="/js/jquery-1.11.1.js"></script>
  </body>
</html>
