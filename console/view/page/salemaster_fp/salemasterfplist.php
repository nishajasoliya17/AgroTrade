<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Farmer Order Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <!--<th>Farmer Name</th>-->
                    <th>Farmer Name</th>
                    <th>Order Status</th>
                    <!--<th>pay type</th>
                    <th>pay status</th>-->
                    <th>Delivery Addrss</th>
                    <th>Delivery Date</th>
                    <!--<th>quantity</th>
                    <th>transportation cost</th>-->
                     <th>Transporter Name</th>
                    <th>Total Amount </th>
                    <!--<th>image</th>-->
                    <th>Action</th>                    
                  </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <!--<th>Farmer Name</th>-->
                    <th>Farmer Name</th>
                    <th>Order Status</th>
                    <!--<th>pay type</th>
                    <th>pay status</th>-->
                    <th>Delivery Addrss</th>
                    <th>Delivery Date</th>
                    <!--<th>quantity</th>
                    <th>transportation cost</th>-->
                     <th>Transporter Name</th>
                    <th>Total Amount </th>
                    <!--<th>image</th>-->
                    <th>Action</th>                  
                  </tr>
                </tfoot>
                <tbody>
                    <?php
                    $sr = 1 ;
                    if(!empty($row))
                    {
                   foreach($row as $val)
                    { 
                        //$fname = $this->getSingleData('farmer', array("id" => $val['f_id']));
                        
                        $fname = $this->getSingleData('farmer', array("id" => $val['f_id']));
                       
                       //$pname = $this->getSingleData('product', array("id" => $val['pro_id']));
                       $tname = $this->getSingleData('transporter', array("id" => $val['t_id'])); 
                    ?>
                        <tr>
                            <td><?php echo $sr; ?></td>
                            <td><?php echo $val['receipt_no']; ?></td>
                            <!--<td><?php echo $fname[0]['name']; ?></td>-->
                            <td><?php echo  $fname[0]['name'];?></td>
                            <td><?php echo $val['order_status']; ?></td>
                            <!--<td><?php echo $val['pay_type']; ?></td>
                            <td><?php echo $val['pay_status']; ?></td>-->
                            <td><?php echo $val['address']; ?></td>
                            <td><?php echo $val['del_date']; ?></td>
                            <!--<td><?php echo $val['qty']; ?></td>
                            <td><?php echo $val['t_cost']; ?></td>-->
                            <td><?php echo  $tname[0]['name'];?></td>
                            <td><?php echo $val['total_amt']; ?></td>
                            <!--<td><img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;"></td>-->
                            <td>
                                <a class="btn btn-info" 
                                href="index.php?controller=salemasterfpcontroller&action=editform&id=<?php echo $val['id']; ?>"
                                ><i class="fa fa-sticky-note"></i></a> 
                                <!--<strong >|</strong>
                                <a class="btn btn-danger" href="index.php?controller=salemastercropcontroller&action=delete&id=<?php echo $val['id']; ?>"><i class="fa fa-trash"></i></a>-->
                            </td>
                        </tr>

                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>