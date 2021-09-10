
<div class="card mb-3">
    <div class="card-header">
        <i class="fa fa-table"></i>
        Form
    </div>
    <div class="col-lg-10">
        <div class="card-body">          
        <div class="card-body">
            <div class="table-responsive">

                <?php 
                $data = $this->joinmutiple_master_farmer_detail_product('id' , $_REQUEST['id']);
                
                ?>
              <table class="table table-striped table-bordered">
                <tr>
                    <td colspan="20">
                        <table class="table table-striped table-bordered">
                            <tr>
                               <th>Receipt No.</th>  
                                <th>Order Date</th>  
                                <th>Delivery Date</th> 
                            </tr>

                            <tr>
                                <th><?php echo $data[0]['salemaster_crop_receipt_no']; ?></th>
                    
                                <th><?php echo $data[0]['salemaster_crop_order_date']; ?></th>
                    
                                <th><?php echo $data[0]['salemaster_crop_del_date']; ?></th>
                            </tr>                            
                        </table>
                        
                    </td>
                    
                    
                </tr>
                <tr>
                    <td colspan="20">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th colspan="20">Customer Info</th>
                            </tr>
                            <tr>
                                <th>Customer Name</th>
                                <th>Address</th>
                                <th>Mobile</th>
                            </tr>

                            <tr>
                                <td><?php echo $data[0]['customer_name']; ?></td>
                                <td><?php echo $data[0]['customer_address']; ?></td>
                                <td><?php echo $data[0]['customer_mobileno']; ?></td>
                            </tr>
                            
                        </table>
                    </td>                    
                    
                </tr>

                 <tr>
                    <td colspan="20">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th colspan="20">Farmer Info</th>
                            </tr>

                            <tr>
                                <th>Farmer Name</th>
                                <th>Address</th>
                                <th>Mobile</th>
                            </tr>

                            <tr>
                                <td><?php echo $data[0]['farmer_name']; ?></td>
                                <td><?php echo $data[0]['farmer_address']; ?></td>
                                <td><?php echo $data[0]['farmer_mobileno']; ?></td>
                            </tr>
                            
                        </table>
                    </td>                    
                    
                </tr>
                <tr>
                    <td colspan="20">
                        <table class="table table-striped table-bordered">
                             <tr>
                                <th colspan="20">Product Info</th>
                            </tr>
                            <tr>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Amount</th>
                            </tr>
                            <?php
                            foreach($data as $skey=>$sval)
                            {
                            ?>
                            <tr>
                                <td><?php echo $sval['product_crop_name'] ?></td>
                                <td><?php echo $sval['saledetail_crop_qty'] ?></td>
                                <td><?php echo $sval['saledetail_crop_total_amt'] ?></td>
                            </tr>

                            <?php 
                            } 
                            ?>                            
                        </table>
                    </td>
                </tr>

                <tr>
                    <td colspan="20">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th colspan="20">Order Info</th>
                            </tr>
                            <tr>
                                <th>Amount</th>
                                <th>Transportation Cost</th>
                                <th>Order Status</th>
                                <th>Payment Type</th>
                                <th>Payment Status</th>
                            </tr>
                            <tr>
                                <td><?php echo $data[0]['salemaster_crop_total_amt']; ?></td>
                                <td><?php echo $data[0]['salemaster_crop_t_cost']; ?></td>
                                <td><?php echo $data[0]['salemaster_crop_order_status']; ?></td>
                                <td><?php echo $data[0]['salemaster_crop_pay_type']; ?></td>
                                <td><?php echo $data[0]['salemaster_crop_pay_status']; ?></td>
                            </tr>
                        </table>
                    </td>                    
                </tr>

                <tr>
                    <td>
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>Total Amount</th>
                            </tr>
                            <tr><th colspan="20"><?php echo $data[0]['salemaster_crop_total_amt'] + $data[0]['salemaster_crop_t_cost'];   ?></th></tr>
                        </table>
                    </td>
                    
                    
                </tr>

                  
              </table>
            </div>
          </div>
                <h4>SELECT TRANSPORTER</h4>
                <?php

                    foreach($row as $key => $val)
                    {
                ?>

        <form method="post" action="index.php?controller=salemastercropcontroller&action=edit" enctype=multipart/form-data>
           <input type="hidden" name="id" value="<?php echo $_REQUEST['id']; ?>" > 
               

        <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                    <?php
                    foreach($trans as $tkey => $tval) 
                    {
                        if($val['t_id'] == $tval['id'])
                        {
                            $chk = 'checked';
                        }
                        else
                        {
                            $chk = '';
                        }
                    ?>
                    <tr>
                        <td><input type="radio" name="t_id" value="<?php echo $tval['id']; ?>" <?php echo $chk; ?>></td>
                        <td><?php echo $tval['name']; ?> </td>
                    </tr>  

                    <?php } }  ?>                  
                </table>
            </div>
        </div>

                <div class="form-group">
                    <input type="submit" value="SELECT" class="btn btn-info">
                    <!--<input type="text" name="id" value="<?php echo $_REQUEST['id']; ?>">-->
                </div>

                
            </form>


            
        </div>
    </div>
</div>