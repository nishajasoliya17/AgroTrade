<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Fertilizer/Pesticide Buying Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <?php
          $data = $this->joinmutiple_master_farmer_detail_ferti_pesti_info('f_id' , $_REQUEST['id']);
        ?>
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                   
                  <tr>
                    <th>Sr no</th>
                    <th>Receipt No</th>
                    <th>Ferti/Pesti Name</th>
                    <th>Order_status</th>
                    <th>Pay Type</th>
                    <th>Pay Status</th>
                    <th>Address</th>
                    <th>Delivery Date</th>
                    <th>Total Amount</th>                       
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>Sr no</th>
                    <th>Receipt No</th>
                    <th>Ferti/Pesti Name</th>
                    <th>Order_status</th>
                    <th>Pay Type</th>
                    <th>Pay Status</th>
                    <th>Address</th>
                    <th>Delivery Date</th>
                    <th>Total Amount</th>
                                        
                  </tr>
                </tfoot>
                <tbody>
                    <?php
                    $sr = 1 ;
                    if(!empty($row))
                    {
                   foreach($row as $key=>$val)
                  
                    { 
                       //print_r($val);
                    ?>

                        <tr>
                            <td><?php echo $sr; ?></td>
                            <td><?php echo $val['receipt_no']; ?></td>
                             <td><?php echo $data[0]['ferti_pesti_info_name']; ?></td>
                            <td><?php echo $val['order_status']; ?></td>
                            <td><?php echo $val['pay_type']; ?></td>
                            <td><?php echo $val['pay_status']; ?></td>
                            <td><?php echo $val['address']; ?></td>
                            <td><?php echo $val['del_date']; ?></td>
                            <td><?php echo $val['total_amt']; ?></td>
                           
                        </tr>
                       
                <?php }  ?>
                    <?php $sr++;  } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>

        
