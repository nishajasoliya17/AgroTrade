<?php 
	require 'autoload.php';
	$obj = new Helper;
	$data = array(
		"fullname" => "krunal",
		"mobileno" => "9687451968",
		"username" => "k@gmail.com",
		
	);
	$pk = array(
		"mobileno" => "9687451968",
		"username" => "k@gmail.com",
		

		
	);

	//$obj->insertData('product',$data,1,$pk);

	echo "<pre>";
	$data = $obj -> insertData('customer' , $data, 1, $pk);
	if($data)
	{
		//print_r($data);	
		echo "data inserted";
	}
	else
	{
		echo "Record exits";
	}
	//$data = $obj -> innerJoin('crop_info','categories','cat_id','id');

	

	
	
?>

