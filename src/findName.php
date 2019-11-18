<?php
function findName($fullName, $info)
    {
        $name = explode(" ", $fullName);
        $fname = $name [0];
        $lname =  $name [1];
        $matchL = array();
        for ($i = 0; $i < sizeof($info); $i++)
        {
            if ($info[$i][1] == $lname)
            {
                array_push($matchL, $info[$i]);
            }
        }
        $matchF = array();
        for ($i = 0; $i < sizeof($matchL); $i++)
        {
            if ($matchL[$i][0] == $fname)
            {
                array_push($matchF, $matchL[$i]);
            }
        }
        return $matchF;
	}
?>