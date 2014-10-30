var app = angular.module('myUalmanac', []);

app.controller('addplantController',function($scope) {

    $scope.isUntouched = function (plantName,plantType,plantFamily,plantSeason,plantZone,plantYeild,plantPH) {
        //if (!plantName || !plantType || !plantFamily || !plantSeason || !plantZone || !plantYeild || !plantPH)) {
            return true;
        };
    };

});