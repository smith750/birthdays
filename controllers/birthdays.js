angular.module("birthdays")
	.value("friendsTabOpen",false)
	.controller("birthdaysController", function($scope, friendsTabOpen) {
		$scope.acct = {};
		$scope.acct.name = "George";
		$scope.acct.friends = [];
		$scope.acct.friends.push({
			name: "Sally",
			birthMonth: "November ",
			birthDay: "1",
			id: 1
		});
		$scope.acct.todaysBirthdays = [];
		$scope.acct.todaysBirthdays.push({
			name: "Sally"
		});
		
		$scope.openFriendsTab = function() {
			$scope.friendsTabOpen = true;
		}
		
		$scope.closeFriendsTab = function() {
			$scope.friendsTabOpen = false;
		}
	});