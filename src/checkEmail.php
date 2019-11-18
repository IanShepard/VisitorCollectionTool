<?php
	include_once "readCSV.php";
	$csv = "test.csv";
	$email = $_REQUEST["email"];
	if(!empty($email)){
		if(($file = fopen($csv, "r+")) !== FALSE){
			$info = readCSV($file);
			$newinfo = array();
			for($i = 0; $i < sizeof($info); $i++){
				if($info[$i][2] == $email){
					$newline = array($info[$i][0],$info[$i][1], $info[$i][2], 1);
					array_push($newinfo, $newline);
				}
				else{
					array_push($newinfo, $info[$i]);
				}
			}

			if(($temp = fopen('temp.csv', 'w')) !== FALSE){  
				foreach ($newinfo as $rows){
	    			fputcsv($temp, $rows);
				}    
				fclose($temp);
			}
			else{
				echo "Can't Open File";
			}
			fclose($file);
			rename('temp.csv', $csv);
			chmod($csv, 0666);
		}
	}
?>