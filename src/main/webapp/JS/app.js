var app = angular.module('myApp', ['socialLogin']);
app.config(function(socialProvider){
	socialProvider.setGoogleKey("811548334385-i9l04mso21gkg94d7iojdgaa5if494k2.apps.googleusercontent.com");
    socialProvider.setLinkedInKey("LINKEDIN_CLIENT_ID");
    socialProvider.setFbKey({appId: "FACEBOOK_APP_ID", apiVersion: "v2.4"});
});
app.controller('myCtrl', function($scope,socialLoginService) {
    $scope.signout = function(){
    	socialLoginService.logout();
	}
	$scope.$on('event:social-sign-in-success', (event, userDetails)=> {
		$scope.result = userDetails;
		$scope.$apply();
	})
	$scope.$on('event:social-sign-out-success', function(event, userDetails){
		$scope.result = userDetails;
	})
   	
});