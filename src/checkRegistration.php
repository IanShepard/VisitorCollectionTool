<?php
function checkRegistration($info,$email){
		$registered = FALSE;
		for($i = 0; $i < sizeof($info); $i++){
			if($email == $info[$i][2]){
				$registered = TRUE;
			}
		}
		return $registered;
	}
?>