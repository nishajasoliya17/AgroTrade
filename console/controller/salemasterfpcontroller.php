<?php 
    class SaleMasterFpController extends Controller
    {
        private $tbl = 'salemaster_fp'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               $row = $this->getMasterData($this->tbl);         

               
                include 'page/salemaster_fp/salemasterfplist.php';                
                
            }
            
            if($action == "addform")
            {
                include 'page/salemaster_fp/salemasterfpform.php';
            }

            if($action == "add")
            {
                
                $data = $_POST;                
                $data['img'] = $this -> uploadfile($_FILES,"f");
               $this->insertData($this->tbl,$data);

               $this->redirect("index.php?controller=salemasterfpcontroller&action=listdata");
                
            }


             if($action == "editform")
            {
               $row = $this->getSingleData($this->tbl,array("id" => $_REQUEST['id']));
                
                $trans = $this->getMasterData(' transporter');
                
                include 'page/salemaster_crop/salemastercropform.php';

            }

            if($action == "edit")
            {
                $data = $_POST;
                

                if($_FILES['f']['saledetail']== null)
                {
                    $data['img'] = $_REQUEST['oldpath'];    
                }
                else
                {
                    $data['img'] = $this -> uploadfile($_FILES,"f");
                    
                }

                unset($data['oldpath']);
                // print_r($_FILES['f']);
                // print_r($data);
                // die;
                
                
                
                $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));
                $this->redirect("index.php?controller=salemasterfpcontroller&action=listdata");
            }

            if($action == "delete")
            {
                $this->deleteData($this->tbl,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=salemasterfpcontroller&action=listdata");
            }
			
			f ($action == "pending") {
                $row = $this->getSingleData('salemaster_fp' , array('order_status' => 'pending'));
                //print_r($row);
                include 'page/salemaster_fp/pending_order.php';
            }

            if ($action == "delivered") {
                 $row = $this->getSingleData('salemaster_crop' , array('order_status' => 'delivered'));
                //print_r($row);
                include 'page/salemaster_fp/delivered_order.php';
            }
        }
    }

