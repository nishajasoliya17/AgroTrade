<div class="card mb-3">
    <div class="card-header">
        <i class="fa fa-table"></i>
        Form
    </div>
    <div class="col-lg-10">
        <div class="card-body">
            <?php
                if(!isset($_REQUEST['id']))
                {

                
            ?>
            <h1>ADD FORM</h1>
            <form method="post" action="index.php?controller=saledetailfpcontroller&action=add" enctype=multipart/form-data>
             
                <div class="form-group">
                    <label>Quantity</label>
                    <input type="text" name="qty" class="form-control" >
                </div>


                 <div class="form-group">
                    <label>Total Amount</label>
                    <input type="number" name="total_amt" class="form-control" >
                </div>

                 <div class="form-group">
                    <label>Gst</label>
                    <input type="number" name="gst" class="form-control" >
                </div>

            

                <div class="form-group">
                    <input type="submit" value="ADD" class="btn btn-info">
                </div>
            </form>

                <?php } 
                else
                {
                    foreach($row as $val)
                    {
                ?>
                <h1>EDIT FORM</h1>

                <form method="post" action="index.php?controller=saledetailfpcontroller&action=edit"enctype=multipart/form-data>
                <div class="form-group">
                    <label>Quantity:</label>
                    <input type="text" name="qty" class="form-control" value="<?php echo $val['qty']; ?>">
                </div>

                <div class="form-group">
                    <label>Total Amount:</label>
                    <input type="text" name="total_amt" class="form-control" value="<?php echo $val['total_amt']; ?>">
                </div>

                <div class="form-group">
                    <label>Gst:</label>
                    <input type="text" name="gst" class="form-control" value="<?php echo $val['gst']; ?>">
                </div>

                <div class="form-group">
                    <input type="submit" value="EDIT" class="btn btn-info">
                </div>

                <input type="hidden" name="id" value="<?php echo $val['id'] ?>" >
                <!--<input type="text" name="oldpath" value="<?php echo $val['img']; ?>">-->
            </form>


                <?php } } ?>
        </div>
    </div>
</div>
