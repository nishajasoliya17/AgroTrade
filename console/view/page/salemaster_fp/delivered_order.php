<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Delivered Order Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    
                  <tr>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <th>Order Status</th>
                    <th>Pay Type</th>
                    <th>Pay Status</th>
                    <th>Delivery Address</th>
                    <th>Delivery Date</th>
                    <th>Transportation Cost</th>
                    <th>Total Amount </th>
                    <th>image</th>
                                       
                  </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <th>Order Status</th>
                    <th>Pay Type</th>
                    <th>Pay Status</th>
                    <th>Delivery Addrss</th>
                    <th>Delivery Date</th>
                    <th>Transportation Cost</th>
                    <th>Total Amount </th>
                    <th>image</th>
                                     
                  </tr>
                </tfoot>
                <tbody>
                    <?php
                    $sr = 1 ;
                    if(!empty($row))
                    {
                   foreach($row as $val)
                    { 
                    ?>
                        <tr>
                            <td><?php echo $sr; ?></td>
                            <td><?php echo $val['receipt_no']; ?></td>
                            <td><?php echo $val['order_status']; ?></td>
                            <td><?php echo $val['pay_type']; ?></td>
                            <td><?php echo $val['pay_status']; ?></td>
                            <td><?php echo $val['address']; ?></td>
                            <td><?php echo $val['del_date']; ?></td>
                            <td><?php echo $val['t_cost']; ?></td>
                            <td><?php echo $val['total_amt']; ?></td>
                            <td><img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;"></td>
                           
                        </tr>

                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>
