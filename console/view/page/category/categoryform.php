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
            <form method="post" action="index.php?controller=categorycontroller&action=add" enctype=multipart/form-data>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Image:</label>
                    <input type="file" name="f" class="form-control" accept="image/*" required>
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

                <form method="post" action="index.php?controller=categorycontroller&action=edit" enctype=multipart/form-data>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" value="<?php echo $val['name']; ?>" required>
                </div>

                 <div class="form-group">
                    <label>Previos Image</label>
                    <img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;">

                </div>

                <div class="form-group">
                    <label>Image:</label>
                    <input type="file" name="f" class="form-control" accept="image/*" required>
                </div>

                <div class="form-group">
                    <input type="submit" value="EDIT" class="btn btn-info">
                </div>

                <input type="hidden" name="id" value="<?php echo $val['id'] ?>" >
                <input type="text" name="oldpath" value="<?php echo $val['img']; ?>">
            </form>


                <?php } } ?>
        </div>
    </div>
</div>

