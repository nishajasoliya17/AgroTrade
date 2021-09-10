<?php 
    class SaleMasterCropController extends Controller
    {
        private $tbl = 'salemaster_crop'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               $row = $this->getMasterData($this->tbl);         

               
                include 'page/salemaster_crop/salemastercroplist.php';                
                
            }
            
            if($action == "addform")
            {
                include 'page/salemaster_crop/salemastercropform.php';
            }

            if($action == "add")
            {
                
                $data = $_POST;                
                $data['img'] = $this -> uploadfile($_FILES,"f");
               $this->insertData($this->tbl,$data);

               $this->redirect("index.php?controller=salemastercropcontroller&action=listdata");
                
            }

            if($action == "editform")
            {
               $row = $this->getSingleData($this->tbl,array("id" => $_REQUEST['id']));
                // $sale = $this->joinmutiple_master_farmer_detail_product("scp_id",$_REQUEST['id']);
                // print_r($sale);
                //     print_r($row);
                $trans = $this->getMasterData(' transporter');
                
                include 'page/salemaster_crop/salemastercropform.php';

            }

            if($action == "edit")
            {
                $data = $_POST; 
                $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));
                $this->redirect("index.php?controller=salemastercropcontroller&action=listdata");
            }

            if($action == "delete")
            {
                $this->deleteData($this->tbl,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=salemastercropcontroller&action=listdata");
            }

            if ($action == "pending") {
                $row = $this->getSingleData('salemaster_crop' , array('order_status' => 'pending'));
                //print_r($row);
                include 'page/salemaster_crop/pending_order.php';
            }

            if ($action == "delivered") {
                 $row = $this->getSingleData('salemaster_crop' , array('order_status' => 'delivered'));
                //print_r($row);
                include 'page/salemaster_crop/delivered_order.php';
            }
        }
    }

