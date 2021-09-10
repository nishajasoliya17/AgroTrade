<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Product Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                   
                  <tr>
                    <th>Sr no</th>
                    <th>Cat_Name</th>
                    <th>Crop_Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Image</th>                   
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>Sr no</th>
                    <th>Cat_Name</th>
                    <th>Crop_Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Date</th>
                    <th>Description</th> 
                    <th>Image</th>                 
                   </tr>
                </tfoot>
                <tbody>
                    <?php
                    $sr = 1 ;
                    if(!empty($row))
                    {
                   foreach($row as $val)
                    { 
                       // print_r(val);
                    ?>

                        <tr>
                            <td><?php echo $sr; ?></td>
                            <td><?php echo $val['cat_name']; ?></td>
                            <td><?php echo $val['crop_name']; ?></td>
                            <td><?php echo $val['qty']; ?></td>
                            <td><?php echo $val['price']; ?></td>
                            <td><?php echo $val['c_date']; ?></td>
                            <td><?php echo $val['description']; ?></td>
                            <td><img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;"></td>
                        </tr>
                      
                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>