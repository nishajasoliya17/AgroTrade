<?php
//require_once('conn/config.php');//use path and name of your connection file
require '../model/autoload.php';
$base64_string=$_POST['image'];
$image_name = uniqid().".png";
  
 if(validateString($base64_string))
 {
 $data = explode(',', $base64_string);
 $ifp = fopen($_SERVER['DOCUMENT_ROOT'] ."/upload/agrotrade/".$image_name, "wb");// use your folder path
 fwrite($ifp, base64_decode($data[1]));
 fclose($ifp);
  
//inserting the picture name to your table , here i am just inserting pic name, you can insert
//other details also
 $query = "INSERT INTO image1 VALUES (?)";
 $stmt = $con->prepare($query);
 $stmt->bind_param("s",$image_name);
 $stmt->execute();
 $id=$stmt->insert_id;
 
 if($stmt->affected_rows==1){
  
 $final_arr=array();
 $final_arr["status"] = "200";
 $final_arr["msg"] = "successful";
 print_r(json_encode($final_arr));
  
 }else{
  
 $final_arr=array();
 $final_arr["status"] = "401";
 $final_arr["msg"] = "Not successful";
 print_r(json_encode($final_arr));
 }
 } 
 else
 {
  
 $final_arr=array();
 $final_arr["status"] = "501";
 $final_arr["msg"] = "Unsccessfull";
 print_r(json_encode($final_arr));
 
 }
  
//function to validate base64 string 
 function validateString($string)
 {
 $data = explode(',', $string);
 if(count($data) >= 2)
 {
 $format = explode('/', $data[0]);
 if($format[0] == 'data:image')
 {
 return true;
 }
 }
 return false;
 }
  
?>