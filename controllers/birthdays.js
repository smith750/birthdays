angular.module("birthdays")
	.value("friendsTabOpen",false)
	.controller("birthdaysController", function($scope, friendsTabOpen, acct) {
		$scope.openFriendsTab = function() {
			friendsTabOpen = true;
		}
		
		$scope.closeFriendsTab = function() {
			friendsTabOpen = false;
		}
	});