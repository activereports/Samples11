var testapp = angular.module("testapp", []);
testapp.controller("CustomerController", function ($scope, $http) {
    $scope.loading = true;   
    //Used to display the data
    $http.get('/api/Customers/').success(function (data) {
        $scope.customers = data;
        $scope.loading = false;
    })
    .error(function () {
        $scope.error = "An Error has occured while loading data!";
        $scope.loading = false;
    });
    // used to display details 
    $scope.CustomerDetail = function () {       
        var customerdid = this.customer.CustomerId;
        $http.get('/api/Customers/' + customerdid).success(function (data) {           
            $scope.customerDetail = data;
        }).error(function (data) {
            $scope.error = "An Error has occured while reading the Customer Details! " + data;
            $scope.loading = false;
        });
    };
});
