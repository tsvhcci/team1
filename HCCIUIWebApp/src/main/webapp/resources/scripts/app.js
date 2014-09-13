var hcciApp = angular.module('hcciApp', [ 'ngRoute','ui.bootstrap' ]);

hcciApp.config(function($routeProvider) {
           $routeProvider.
                        when('/home', {
                          templateUrl: 'views/home.html',
                          controller: 'homeCtrl'}).
                        when('/home/careBundle/:condiationName/:zipCode', {
                            templateUrl: 'views/careBundle.html',
                            controller: 'careBundleCtrl'}).
                        when('/home/careBundleCost/:url', {
                             templateUrl: 'views/careBundleCost.html',
                             controller: 'careBundleCostCtrl'}).
                        otherwise({redirectTo: '/home'}
                        );
});


hcciApp.controller('homeCtrl',['$scope', '$http',
      function ($scope, $http) {
	 
	  //Type Ahead
	  $scope.getCondition = function(conditionName) {
	    return $http.jsonp("http://localhost:8983/solr/conditions/suggestions/v1?q="+ conditionName+"&wt=json&json.wrf=JSON_CALLBACK"
	    ).then(function(response){
	    	var data = response.data.response;
	    	var output = [];
	    	angular.forEach(data.docs, function(keyword) {
	    	//	console.log(keyword.keyword);
	    		output.push(keyword.keyword);
	    	});
	    	return output;
	    });
	  };
	  
	  //Get Geo Location and Zipcode
	  if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(function(position){
		        $http.get('http://maps.googleapis.com/maps/api/geocode/json?latlng='+position.coords.latitude+','+position.coords.longitude+'&sensor=true').then(function(res){
				    angular.forEach(res.data.results[0].address_components, function(address_components) {
				    	 angular.forEach(address_components.types, function(type) {
				    		 if(angular.equals(type,"postal_code")){
							    console.log(address_components.long_name);
							    $scope.zipCode = address_components.long_name;
							    return;
				    		 }
				    	 });
				    	
				    });
				  });
		      });
	  }
	  
}]);


hcciApp.controller('careBundleCtrl',['$scope', '$http','$routeParams',
      function ($scope, $http,$routeParams) {
	//$http.get('http://hccipilot-dev.elasticbeanstalk.com/api/carebundle/v1/treatmntconditionWithCarebundles/'+$routeParams.condiationName+'/'+$routeParams.zipCode+'/zip').then(function(res){
	$http.get('http://localhost:8080/HCCIApp/api/carebundle/v1/treatmntconditionWithCarebundles/'+$routeParams.condiationName+'/'+$routeParams.zipCode+'/zip').then(function(res){
		$scope.careBundleResponse=res.data;
		console.log(res.data.TreatmentConditionResponse);   
	});
}]);

hcciApp.controller('careBundleCostCtrl',['$scope', '$http','$routeParams',
      function ($scope, $http,$routeParams) {
	      //$http.get('http://hccipilot-dev.elasticbeanstalk.com/api/carebundle/v1/treatmntconditionWithCarebundles/'+$routeParams.condiationName+'/'+$routeParams.zipCode+'/zip').then(function(res){
	    //  $http.get('http://localhost:8080/HCCIApp/api/carebundle/v1/treatmntconditionWithCarebundles/'+$routeParams.condiationName+'/'+$routeParams.zipCode+'/zip').then(function(res){
	      console.log($scope);   
      //});
}]);
