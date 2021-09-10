<?php
require '../model/autoload.php';


header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";
        
        
        $fid = $_REQUEST['f_id'];
        $pid = $_REQUEST['pro_id'];
        
        $obj = new Helper;        
        $row = $obj-> farmer_expense_ge_single( $fid ,$pid);       
        
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

        
        die();
           
        
    }
?>