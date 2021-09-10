<?php

require '../model/autoload.php';
    $obj = new Helper;
$postdata = $_POST;
$msg = '';
if (isset($postdata ['key'])) {
	$key				=   $postdata['key'];
	//$salt				=   $postdata['salt'];
	$txnid 				= 	$postdata['txnid'];
    $amount      		= 	$postdata['amount'];
	$productInfo  		= 	$postdata['productinfo'];
	$firstname    		= 	$postdata['firstname'];
	$email        		=	$postdata['email'];
	$udf5				=   $postdata['udf5'];
	$mihpayid			=	$postdata['mihpayid'];
	$status				= 	$postdata['status'];
	$resphash				= 	$postdata['hash'];
	//Calculate response hash to verify	
	$keyString 	  		=  	$key.'|'.$txnid.'|'.$amount.'|'.$productInfo.'|'.$firstname.'|'.$email.'|||||'.$udf5.'|||||';
	$keyArray 	  		= 	explode("|",$keyString);
	$reverseKeyArray 	= 	array_reverse($keyArray);
	$reverseKeyString	=	implode("|",$reverseKeyArray);
	//$CalcHashString 	= 	strtolower(hash('sha512', $salt.'|'.$status.'|'.$reverseKeyString));
	
	
	if ($status == 'success') {
		
        $data = array("pay_status" => "paid");
        if($obj->updateData('salemaster_crop',$data,array("id" => $_REQUEST['order_id'])))
        {
            $msg = "Transaction Successful and Hash Verified...";
        }
		//Do success order processing here...
	}
	else {
		//tampered or failed
		$msg = "Payment failed for Hasn not verified...";
	} 
}
else exit(0);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PayUmoney BOLT PHP7 Kit</title>
</head>
<style type="text/css">
	.main {
		margin-left:30px;
		font-family:Verdana, Geneva, sans-serif, serif;
	}
	.text {
		float:left;
		width:180px;
	}
	.dv {
		margin-bottom:5px;
	}

</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
<div class="main">

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3>PHP7 BOLT Kit Response</h3>
                <img src="images/payumoney.png" />
            </div>
            <div class="col-lg-6">
                <div class="alert alert-info">
                    <p>Thank you for order.</p>
                    <p>Transaction/Order ID:</p></span>
                    <p><?php echo $txnid; ?></p>
                    <p class="text"><label>Amount:</label></p>
                    <p><?php echo $amount; ?></p>
                    <p class="text"><label>Mihpayid:</label></p>
                     <p><?php echo $mihpayid; ?></p>
                     <p class="text"><label>Transaction Status:</label></p>
                    <p><?php echo $status; ?></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>