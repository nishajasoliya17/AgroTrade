<?php

?>
<!-- Icon Cards-->
<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Customer Crop Order Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    
                </thead>
               
                <tbody>
                    <div class="row">
          <div class="col-xl-3 col-sm-6 mb-3">
            <?php
            $row = $cont->getMasterData('salemaster_crop');
            ?>
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Total Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemastercropcontroller&action=listdata">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <?php
          $row = $cont->getSingleData('salemaster_crop' , array('order_status' => 'pending')); 
          ?>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-list"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Pending Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemastercropcontroller&action=pending">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
           <?php
          $row = $cont->getSingleData('salemaster_crop' , array('order_status' => 'Delivered')); 
          ?>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Delivered Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemastercropcontroller&action=delivered">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <!--<div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">13 New Tickets!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>-->
        </div>
 
                </tbody>
              </table>
            </div>
          </div>  
        </div>

        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Farmer Fertilizer/Pesticides Order Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    
                </thead>
               
                <tbody>
                    <div class="row">
          <div class="col-xl-3 col-sm-6 mb-3">
            <?php
            $row = $cont->getMasterData('salemaster_fp');
            ?>
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Total Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemasterfpcontroller&action=listdata">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <?php
          $row = $cont->getSingleData('salemaster_fp' , array('order_status' => 'pending')); 
          ?>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-list"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Pending Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemasterfpcontroller&action=pending">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
           <?php
          $row = $cont->getSingleData('salemaster_fp' , array('order_status' => 'Delivered')); 
          ?>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5"><?php echo count($row); ?> Delivered Order!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="index.php?controller=salemasterfpcontroller&action=delivered">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <!--<div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">13 New Tickets!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>-->
        </div>
 
                </tbody>
              </table>
            </div>
          </div>  
        </div>
        
    

       