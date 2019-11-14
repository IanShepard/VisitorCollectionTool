<html>
	<head>
	</head>
	<body>
		<form method = "post">
			<input type = "hidden" name = "test" value = "test">
			<input type = "submit" value = "Run Tests">
		</form>
	</body>
</html>

<?php
	include_once "/home/mdnessel/public_html/capstone/src/readCSV.php";
	include_once "unitTesting.php";

	function testReadCSV(){
		if(($file = fopen("tests.csv", "r+")) !== FALSE){
			echo "<br><br>";
			assertEquals("bjones@gmail.com", readCSV($file)[0][2]);
		}
		else{
			echo "Can Not Open File";
		}
	}

	if(!empty($_POST["test"])){
		testReadCSV();
	}
?>