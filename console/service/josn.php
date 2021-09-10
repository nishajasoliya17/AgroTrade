<?php 
header("content-type:application/json");
require '../model/autoload.php';
$table = 'crop_info';

if($_SERVER['REQUEST_METHOD'] == "POST" ||  $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;        
    $row = $obj-> getMasterData($table);    
$outp ='';
   // print_r($row);

    foreach ($row as $key => $value) 
        {
            $outp .= "{";
            foreach ($value as $k => $v) 
            {
                $v = $obj->escapeJsonString($v);              

                $outp .= '"'.$k.'":"'.$v.'",';           
                

            }

            $outp = rtrim($outp,",");
            $outp .= "},";           
           
        }

        $outp = rtrim($outp,",");

        
        echo $outp ='{"response":['.$outp.']}';
        
	
}




?>