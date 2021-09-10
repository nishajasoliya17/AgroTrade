<?php
require '../model/autoload.php';


header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";
        
        $ltable = $_REQUEST['ltable'];
        $rtable = $_REQUEST['rtable'];
        $lid = $_REQUEST['lid'];
        $rid = $_REQUEST['rid'];
        
        $obj = new Helper;        
        $row = $obj-> innerJoin($ltable , $rtable , $lid , $rid );       
        
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

        print_r($id);
        die();
           
        
    }
?>