(function(){
  "use strict";
  angular.module("app").controller("taskCtrl", function($scope) {
    $scope.tasks = [
    {

      text: "Take the garbage out",
      complete: false
    },
    {
      text: "Feed the cat",
      complete: false
    },
    {
      text: "Clean the bathroom",
      complete: false
    }
    ];

    $scope.addTask = function(task){
        $scope.tasks.push($scope.task);
        $scope.task = "";
    };

    $scope.toggleTask = function(task){
      task.complete = !task.complete;
    };

    $scope.counter = function(task){
      var counter = 0;
      for (var i = 0; i < $scope.tasks.length; i++) {
        if (!$scope.tasks[i].complete){
          counter++;
        }
      }
    };

    $scope.isPositive = function(task) {
      return task.indexOf("stupid") === -1;
    };

    $scope.deleteAll= function(index){
      $scope.tasks.splice(index, 1);
    };
  });
})();
