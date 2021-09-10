<?php 
    class SaleDetailCropController extends Controller
    {
        private $tbl = 'saledetail_crop'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               $row = $this->getMasterData($this->tbl);         

               
                include 'page/saledetail_crop/saledetailcroplist.php';                
                
            }
            
            if($action == "addform")
            {
                include 'page/saledetail_crop/saledetailcropform.php';
            }

            if($action == "add")
            {
                
                $data = $_POST;                
                //$data['img'] = $this -> uploadfile($_FILES,"f");
               $this->insertData($this->tbl,$data);

               $this->redirect("index.php?controller=saledetailcropcontroller&action=listdata");
                
            }

            if($action == "editform")
            {
                $row = $this->getSingleData($this->tbl,array("id" => $_REQUEST['id']));
                
                include 'page/saledetail_crop/saledetailcropform.php';
            }

            if($action == "edit")
            {
                $data = $_POST;
                

               /* if($_FILES['f']['name'] == null)
                {
                    $data['img'] = $_REQUEST['oldpath'];    
                }
                else
                {
                    $data['img'] = $this -> uploadfile($_FILES,"f");
                    
                }*/

                unset($data['oldpath']);
                // print_r($_FILES['f']);
                // print_r($data);
                // die;
                
                
                
                $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));
                $this->redirect("index.php?controller=saledetailcropcontroller&action=listdata");
            }

            if($action == "delete")
            {
                $this->deleteData($this->tbl,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=saledetailcropcontroller&action=listdata");
            }
        }
    }

