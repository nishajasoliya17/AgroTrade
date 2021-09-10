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
            <form method="post" action="index.php?controller=fertipestiinfocontroller&action=add" enctype=multipart/form-data>

                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" >
                </div>

                <div class="form-group">
                    <label>Price:</label>
                    <input type="text" name="price" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Weight:</label>
                    <input type="number" name="weight" class="form-control" >
                </div>

                <div class="form-group">
                    <label>Unit:</label>
                    <input type="text" name="unit" class="form-control" >
                </div>

                <div class="form-group">
                    <label>Description:</label>
                    <input type="text" name="description" class="form-control" >
                </div>

                <div class="form-group">
                    <label>Product Information:</label>
                    <input type="text" name="pro_info" class="form-control" >
                </div>

                <div class="form-group">
                    <label>For which crop to be used:</label>
                    <input type="text" name="crop_name" class="form-control" >
                </div>

                <div class="form-group">
                    <label>For which pest to be used:</label>
                    <input type="text" name="pest_name" class="form-control">
                </div>

                <div class="form-group">
                    <label>Direction to use:</label>
                    <input type="text" name="direction" class="form-control">
                </div>

                <div class="form-group">
                    <label>Image:</label>
                    <input type="file" name="f" class="form-control" accept="image/*">
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

                <form method="post" action="index.php?controller=fertipestiinfocontroller&action=edit" enctype=multipart/form-data>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" value="<?php echo $val['name']; ?>">
                </div>

                <div class="form-group">
                    <label>Price:</label>
                    <input type="text" name="price" class="form-control" value="<?php echo $val['price']; ?>">
                </div>

                <div class="form-group">
                    <label>Weight:</label>
                    <input type="number" name="weight" class="form-control" value="<?php echo $val['weight']; ?>">
                </div>

                <div class="form-group">
                    <label>Unit:</label>
                    <input type="text" name="unit" class="form-control" value="<?php echo $val['unit']; ?>">
                </div>

                <div class="form-group">
                    <label>Description:</label>
                    <input type="text" name="description" class="form-control" value="<?php echo $val['description']; ?>">
                </div>

                <div class="form-group">
                    <label>Product Information</label>
                    <input type="text" name="pro_info" class="form-control" value="<?php echo $val['pro_info']; ?>">
                </div>

                <div class="form-group">
                    <label>For which crop to be used:</label>
                    <input type="text" name="crop_name" class="form-control" value="<?php echo $val['crop_name']; ?>">
                </div>

                <div class="form-group">
                    <label>For which pest to be used:</label>
                    <input type="text" name="pest_name" class="form-control" value="<?php echo $val['pest_name']; ?>">
                </div>

                 <div class="form-group">
                    <label>Direction to use:</label>
                    <input type="text" name="direction" class="form-control" value="<?php echo $val['direction']; ?>">
                </div>

                 <div class="form-group">
                    <label>Previos Image</label>
                    <img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;">

                </div>

                <div class="form-group">
                    <label>Image:</label>
                    <input type="file" name="f" class="form-control" accept="image/*">
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

