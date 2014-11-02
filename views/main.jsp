<div ng-controller="birthdaysController">
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
					<td>&nbsp;</td>
					<td>{{friend.name}}</td>
					<td>{{friend.birthMonth}} {{friend.birthDay}}</td>
				</tr>
			</table>
		</div>
	</div>
</div>