<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Pending Order Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>
                            <a class="btn btn-primary" href="index.php?controller=salemastercropcontroller&action=addform">
                                <i class="fa fa-plus"></i>ADD
                            </a>
                        </th>
                    </tr>
                  <tr>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <th>Farmer Name</th>
                    <th>Customer Name</th>
                    <th>Product Name</th>
                    <th>order status</th>
                    <th>pay type</th>
                    <th>pay status</th>
                    <th>delivery addrss</th>
                    <th>delivery date</th>
                    <th>quantity</th>
                    <th>transportation cost</th>
                    <th>total amount </th>
                    <th>image</th>
                    <th>Action</th>                    
                  </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Sr no</th>
                    <th>Receipt no</th>
                    <th>Farmer Name</th>
                    <th>Customer Name</th>
                    <th>Product Name</th>
                    <th>order status</th>
                    <th>pay type</th>
                    <th>pay status</th>
                    <th>delivery addrss</th>
                    <th>delivery date</th>
                    <th>quantity</th>
                    <th>transportation cost</th>
                    <th>total amount </th>
                    <th>image</th>
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
                        $fname = $this->getSingleData('farmer', array("id" => $val['f_id']));
                        $cname = $this->getSingleData('customer', array("id" => $val['cust_id']));
                        $pname = $this->getSingleData('product', array("id" => $val['pro_id']));
                        
                    ?>
                        <tr>
                            <td><?php echo $sr; ?></td>
                            <td><?php echo $val['id']; ?></td>
                            <td><?php echo $fname[0]['name']; ?></td>
                            <td><?php echo  $cname[0]['name'];?></td>
                            <td><?php echo  $pname[0]['crop_name'];?></td>
                            <td><?php echo $val['order_status']; ?></td>
                            <td><?php echo $val['pay_type']; ?></td>
                            <td><?php echo $val['pay_status']; ?></td>
                            <td><?php echo $val['address']; ?></td>
                            <td><?php echo $val['del_date']; ?></td>
                            <td><?php echo $val['qty']; ?></td>
                            <td><?php echo $val['t_cost']; ?></td>
                            <td><?php echo $val['total_amt']; ?></td>
                            <td><img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;"></td>
                            <td>
                                <a class="btn btn-info" 
                                href="index.php?controller=salemastercropcontroller&action=editform&id=<?php echo $val['id']; ?>"
                                ><i class="fa fa-pencil-square-o"></i></a> 
                                <strong >|</strong>
                                <a class="btn btn-danger" href="index.php?controller=salemastercropcontroller&action=delete&id=<?php echo $val['id']; ?>"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>

                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>