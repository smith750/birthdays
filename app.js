angular.module("birthdays",["ngRoute"])
	.config(function($routeProvider, $locationProvider) {
		$locationProvider.html5Mode(true);
		alert("hi");
		$routeProvider.otherwise({
			templateUrl: "/views/main.jsp"
		})
	});