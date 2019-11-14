<?php
	function assertEquals($base, $result){
		try{
			if($base == $result){
				echo "Test Passed: " . $base . " is equal to the test result of " . $result;
			}
			else{
				echo "Test Failed: " . $base . " is not equal to the test result of " . $result;
			}
		}
		catch(Exception $e){
			echo "There was an error with the test!";
			echo "Error: " . $e->getMessage();
		}
		echo "<br><br>";
	}

	function assertTrue($result){
		try{
			if($result == TRUE){
				echo "Test Passed: " . $result . " is TRUE";
			}
			else{
				echo "Test Passed: " . $result . " is not TRUE";
			}
		}
		catch(Exception $e){
			echo "There was an error with the test!";
			echo "Error: " . $e->getMessage();
		}
		echo "<br><br>";
	}

?>