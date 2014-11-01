<!DOCTYPE html>
<html ng-app="birthdays">
<head>
	<meta charset="UTF-8"/>
	<title>Birthday Reminders</title>
	<script src="angular.js"></script>
	<link href="bootstrap.css" rel="stylesheet"/>
	<link href="bootstrap-theme.css" rel="stylesheet"/>
	<script>
		angular.module("birthdays",[]);
	</script>
	<script src="controllers/birthdays.js"></script>
	<!--script src="components/acct.js"></script-->
</head>
<body ng-controller="birthdaysController">
	<div class="navbar navbar-inverse">
		<a class="navbar-brand" href="#">{{acct.name}}'s Birthday Reminders</a>
	</div>
	<div>
		<h3>Today's Birthdays</h3>
		<ul>
			<li ng-repeat="today in acct.todaysBirthdays">{{today.name}}</li>
		</ul>
	</div>
	<div class="panel panel-default">
		<div class="panel panel-header">Friends <button class="btn" ng-show="!friendsTabOpen" ng-click="openFriendsTab()">Open</button><button class="btn" ng-show="friendsTabOpen" ng-click="closeFriendsTab()">Close</button></div>
		<!-- birthday reminders -->
		<div ng-show="friendsTabOpen">
			<!-- list of friends -->
			<table class="table-striped">
				<thead>
					<tr>
						<th>&nbsp;</th><!-- actions -->
						<th>&nbsp;</th>
						<th>Birthday</th>
					</tr>
				</thead>
				<tr ng-repeat="friend in acct.friends">
					<tr>&nbsp;</tr>
					<tr>{{friend.name}}</tr>
					<tr>{{friend.birthMonth}} {{friend.birthDay}}</tr>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
