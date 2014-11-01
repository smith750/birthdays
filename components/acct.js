angular.module("acct")
	.factory("acct", function () {
		var name = "George";
		var friends = [];
		friends.push({
			name: "Sally",
			birthMonth: "11",
			birthDay: "1",
			id: 1
		});
		var todaysBirthdays = [];
		todaysBirthdays.push({
			name: "Sally"
		});
		return {
			addFriend: function(friend) {
				friends.push(friend);
			},
			
			getName: function() {
				return name;
			},
			
			getFriends: function() {
				return friends;
			},
			
			getTodaysBirthdays: function() {
				
			}
		}
	});