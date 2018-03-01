

var app = angular.module('myApp', ['socialLogin']);

app.config(function (socialProvider) {
	socialProvider.setGoogleKey("811548334385-i9l04mso21gkg94d7iojdgaa5if494k2.apps.googleusercontent.com");
});

app.controller('SocialLoginController', function (socialLoginService, $scope, $rootScope) {
	$scope.userDetails = {};
	$scope.runMe = function () {
    console.dir(JSON.stringify($scope.userDetails));
    console.dir($scope.userDetails);
  }
	$scope.logout = function () {
    socialLoginService.logout();
  }
  
  $rootScope.$on('event:social-sign-in-success', function (event, userDetails) {
    console.log('log in successful, these are the parameters');
    console.dir(event);
    console.dir(JSON.stringify(userDetails));
    $scope.userDetails = userDetails;
    if (userDetails.provider === 'google') $scope.$apply();
  });
  
  $rootScope.$on('event:social-sign-out-success', function (event, logoutStatus) {
    console.log('You have been signed out')
    $scope.userDetails = {};
    if ($scope.$root.$$phase != '$apply' && $scope.$root.$$phase != '$digest') $scope.$apply();
  });
  
});