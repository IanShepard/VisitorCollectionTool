<html>
	<head>
		<script src="register.js"></script>
		<link rel = "stylesheet" type = "text/css" href = "register.css">
	</head>
	<body>
		<div id = "main">
			<h1>Register</h1>
			<form method = "post">
				<span id = "field">First Name <input class = "input" type = "text" name = "fname" value="<?php echo isset($_POST["fname"]) ? $_POST["fname"] : ''?>"></span>
				<br><br>
				<span id = "field">Last Name <input class = "input" type = "text" name = "lname" value="<?php echo isset($_POST["lname"]) ? $_POST["lname"] : ''?>"></span>
				<br><br>
				<span id = "field">Email <input class = "input" type = "email" name = "email" value="<?php echo isset($_POST["email"]) ? $_POST["email"] : ''?>"></span>
				<br><br>
				<input class = "submit" type = "submit" value = "Submit">
			</form>
			<form method = "post" action = "checkin.php">
				<button class = "submit">Back</button>
			</form>
		</div>
	</body>
</html>

<?php
	if(!empty($_POST)){
		if(!empty($_POST["fname"]) and !empty($_POST["lname"]) and !empty($_POST["email"])){
			$fname = $_POST["fname"];
			$lname = $_POST["lname"];
			$email = $_POST["email"];
			if(($file = fopen("test.csv", "r+")) !== FALSE){
				$info = array();
				echo "<table border = 1>";
				while (($data = fgetcsv($file, 1000, ",")) !== FALSE){
					array_push($info, $data);
				}
			}
			else{
				echo "File Not Found!";
			}

			$registration = [$fname, $lname, $email, 1];
			$registered = FALSE;
			echo sizeof($info);
			for($i = 0; $i < sizeof($info); $i++){
				if($email == $info[$i][2]){
					$registered = TRUE;
				}
			}

			if($registered !== TRUE){
				fputcsv($file, $registration);
				echo '<script language="javascript">';
				echo 'alert("Registration successful, you are now checked in!")';
				echo '</script>';
				sleep(4);
				header("Location: checkin.php");
			}

			else{
				echo '<script language="javascript">';
				echo 'alert("User already exists, try again!")';
				echo '</script>';
			}

			fclose($file);
		}
		
		else{
			echo '<script language="javascript">';
			echo 'alert("Some fields are empty, try again!")';
			echo '</script>';
		}
	}

?>