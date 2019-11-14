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

<?php
include_once "findName.php";

if(!empty($_POST))
{
	if(!empty($_POST["name"]))
	{
		$name = $_POST["name"];
		if(($file = fopen("test.csv", "r+")) !== FALSE)
		{
			$info =  readCSV($file);
		}
		else
		{
			echo "File Not Found!";
		}

		$names = $findName($name, $info);
		echo '<table border = 1>';
		for ($i = 0; $i < sizeof($names); $i++)
		{
			echo '<tr>';
			for ($j = 0; $j < 3; $j++)
			{
				echo '<td>'.$names[$j].'</td>';
			}
			echo '</tr';
		}
		echo '</table>';

		fclose($file);
	}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Some fields are empty, try again!")';
			echo '</script>';
		}
	}
		?>