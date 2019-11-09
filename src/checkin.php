<html>
	<head>
		<script src = "checkin.js"></script>
		<link rel = "stylesheet" type = "text/css" href = "checkin.css">
	</head>
	<body>
		<div id = "main">
			<h1>Check In</h1>
			<form method = "post">
				<span id = "prompt">Enter your name</span>
				<br>
				<input class = "input" type = "text" name = "name" onchange="" ="checkName('')">
				<br><br>
				<input class = "submit" type = "submit" value = "Search">
				<br><br>
			</form>
			<form method = "post" action = "register.php">
				<button class = "submit">Register</button>
			</form>
		</div>
	</body>
</html>

<?php?>