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
				<input class = "input" type = "text" name = "name">
				<br><br>
				<input class = "submit" type = "submit" value = "Search">
				<br><br>
			</form>
			<button class = "submit" onclick="register('')">Register</button>
		</div>
		<br><br><br>
		<div class = "table">
			<?php
				include_once "findName.php";
				include_once "readCSV.php";

				if(!empty($_POST)){
					if(!empty($_POST["name"])){
						$name = $_POST["name"];
						$csv = "test.csv";
						if(($file = fopen($csv, "r+")) !== FALSE){
							$info = readCSV($file);
							$names = findName($name, $info);
							fclose($file);
							echo '<table border = 1>';
							if(sizeof($names) !== 0){
								for ($i = 0; $i < sizeof($names); $i++){
									echo '<tr>';
									for ($j = 0; $j < 3; $j++){
										echo '<td>'.$names[$i][$j].'</td>';
									}
								echo "<td><button id = '". $i . "' onclick= verifyUser('".$names[$i][2]."')>This is me</button>";
								echo '</tr>';
								}
							echo '</table>';
							}
							else{
								echo "<div class = 'table'>No users found, try again!</div>";
							}	
						}
							
						else{
							echo "File Not Found!";
						}
					}
					else{
						echo '<script language="javascript">';
						echo 'alert("Some fields are empty, try again!")';
						echo '</script>';
					}	
				}		
			?>
		</div>
	</body>
</html>