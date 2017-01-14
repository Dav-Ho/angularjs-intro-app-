(function(){
  "use strict";

  angular.module("app").controller("peopleCtrl", function($scope, $http) {
    function setup() {
      $http.get('/api/v1/employees.json').then(function(response) {
        $scope.employees = response.data;
      });
    }

    setup();

    $scope.toggleBio = function(employee){
    person.bioVisible = !person.bioVisible;
  };

  $scope.addEmployee = function(employee){
    $scope.employees.push(employee);
    $scope.employee = {};
    console.log($scope.people);
  };

  $scope.deleteEmployee = function(index){
    //var index = $scope.persons.indexOf(person);
    $scope.employees.splice(index, 1);
  };

  });
})();
