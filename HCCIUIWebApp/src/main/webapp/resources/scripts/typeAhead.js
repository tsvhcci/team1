angular.module('hcciApp', [ 'ui.bootstrap' ]);
/*function TypeaheadCtrl($scope, $http, limitToFilter) {
	$scope.results = {
		"conditions" : [ "Back Adjustment", "Back Shot", "Back Exercises",
				"Back Strain", "Bad Back", "Sore Back", "Stiff Back",
				"Back Pain", "Back Surgery", "Pain in Back", "Surgery on Back",
				"Back Pain - Chiropractor Visit", "Back Pain - Manipulation",
				"Back Pain - Doctor Visit", "Back Pain - Office Visit",
				"Back Pain - Injection", "Lower Back X-ray", "Lower Back Xray",
				"Back Pain - Exercises", "Back Pain - Physical Therapy" ]
	}
}*/

function homeCtrl($scope, $http) {
	  // Any function returning a promise object can be used to load values asynchronously
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
}