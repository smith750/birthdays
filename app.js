angular.module("birthdays",["ngRoute"])
	.config(function($routeProvider, $locationProvider) {
		$locationProvider.html5Mode(true);
		$routeProvider.when("/friend",{
			templateUrl: "/views/friend.html"
		});
		
		$routeProvider.otherwise({
			templateUrl: "/views/main.html"
		})
	});