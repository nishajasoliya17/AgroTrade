<?php
require '../model/autoload.php';

$table = 'product';

header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";
        

       
        $obj = new Helper;        
        $row = $obj-> getMasterData($table);       
       
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