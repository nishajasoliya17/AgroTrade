<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Farmer Details</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                   
                  <tr>
                    <th>Sr no</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Mobile no</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Password</th>
                    <th>OTP</th>
                    <th>Verify</th> 
                    <th>Action(Crop Selling)</th>
                    <th>Action(Fertilizer/ pesticide Buying)</th>                  
                  </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Sr no</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Mobile no</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Password</th>
                    <th>OTP</th>
                    <th>Verify</th>
                    <th>Action(Crop Selling)</th>
                    <th>Action(Fertilizer/ pesticide Buying)</th>
                                        
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
                           <td><?php echo $val['name']; ?></td>
                          <td><?php echo $val['address']; ?></td>
                            <td><?php echo $val['mobileno']; ?>
                            </td>
                            <td><?php echo $val['lat']; ?>
                            </td>
                            <td><?php echo $val['lgt']; ?>
                            </td>
                            <td><?php echo $val['pass']; ?></td>
                            <td><?php echo $val['otp']; ?></td>
                            <td><?php echo $val['verify']; ?></td>
                            <td>
                                <a class="btn btn-info" 
                                href="index.php?controller=farmercontroller&action=detail&id=<?php echo $val['id']; ?>"
                                >
								<i class="fa fa-pagelines"  aria-hidden="true"></i></a> 
                            </td> 
                            <td>
                                <a class="btn btn-info" 
                                href="index.php?controller=farmercontroller&action=buydetail&id=<?php echo $val['id']; ?>"
                                ><i class="fa fa-shopping-cart"></i></a> 
                            </td>  
                             
                        </tr>

                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>