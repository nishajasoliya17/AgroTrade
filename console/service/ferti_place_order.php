<?php 
require '../model/autoload.php';

$table = 'salemaster_fp';
header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();
	$order = $_REQUEST['json'];
	$user_id= $_REQUEST['user_id'];
  $pay_type= $_REQUEST['pay_type'];
	$res = (array) json_decode($order,true);

	
	foreach ($res['order'] as $key => $value) 
    {
        $res = mysqli_query($obj->con,"insert into dummy set 
            pro_id = '".$value['pro_id']."',
            price = '".$value['price']."',            
            qty = '".$value['qty']."',
            product_name = '".$value['product_name']."',
            user_id = '".$user_id."'
            ");
    }
    $total = 0;
    $salemaster_cropID = 0;
    $res = mysqli_query($obj->con,"SELECT sum(price) as total,user_id FROM dummy GROUP by user_id");
    while($row = mysqli_fetch_array($res))
    {
     $total =  $row['total'];
	  	  $rctpt = "RCPT".rand(000,999);
       $purchaseMaster = mysqli_query($obj->con,"insert into  salemaster_fp set
       f_id ='".$user_id."',
       receipt_no ='".$rctpt."',
	     order_status ='pending',
       total_amt ='".$row['total']."',
       pay_type ='".$_REQUEST['pay_type']."',
       pay_status ='unpaid',
       address ='".$_REQUEST['address']."',
       order_date ='".date('d-m-Y')."'
       ") or die(mysqli_error($obj->con));
       $salemaster_fertiID= mysqli_insert_id($obj->con);
       $data = array();

       $data['img'] = $obj -> generateQrCode($salemaster_fertiID);
       
       $obj->updateData($table,$data,array("id" => $salemaster_fertiID));

       $mqr = mysqli_query($obj->con,"select * from dummy where user_id='".$user_id."'");

        while($mrow = mysqli_fetch_array($mqr))
        {
          $purdetail = mysqli_query($obj->con,"insert into saledetail_fp set
           sfp_id = '".$salemaster_fertiID."',           
           fp_id = '".$mrow['pro_id']."',
           qty = '".$mrow['qty']."',
           total_amt = '".$mrow['price']."'") or die(mysqli_error($obj->con));
           
           // $p = mysqli_query($obj->con,"select * from product where id='".$mrow['pro_id']."'");
           // $pstk = mysqli_fetch_array($p);
           
           // $stock = mysqli_query($obj->con,"update product set
           //  qty  = '".($pstk['qty']-$mrow['qty'])."' where id = '".$mrow['pro_id']."'");
        }
    }

     $dummy= mysqli_query($obj->con,"truncate table dummy");

    if($pay_type == 'cod')
    {
      if($dummy)
      {
        $response = array("data" => 200);
      }
      else
      {
        $response = array("data" => 100);
      }
    }
    if($pay_type == 'online')
    {
      if($dummy)
      {
        $response = array("data" => 200 , "url" => 'http://service.techfusiontechnologies.com/agrofarm/console/payment_ferti/?amount='.$total.'&order_id='.$salemaster_fertiID.'');
      }
      else
      {
        $response = array("data" => 100);
      }

    }

    
	echo json_encode($response);
       
}	
?>