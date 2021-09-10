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
            <form method="post" action="index.php?controller=cropinfocontroller&action=add" enctype=multipart/form-data>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <select class="form-control" name="cat_id">
                        <option value="0">Select Category</option>
                        <?php
                            foreach ($cat as $key => $value) {
                                 ?>
                                <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option> 
                                 <?php 
                             } 
                        ?>
                    </select>
                </div>

                <div class="form-group">
                    <label>Image:</label>
                    <input type="file" name="f" class="form-control">
                </div>

                <div class="form-group">
                    <label>Season for planting</label>
                    <input type="text" name="season" class="form-control" value="<?php echo $val['season']; ?>">
                    
                </div>

                <div class="form-group">
                    <label>Irrigation</label>
                    <input type="text" name="irrigation" class="form-control" value="<?php echo $val['irrigation']; ?>">
                </div>

                <div class="form-group">
                    <label>Varieties</label>
                    <input type="text" name="varieties" class="form-control" value="<?php echo $val['varieties']; ?>">
                </div>

                <div class="form-group">
                    <label>Soil type</label>
                    <input type="text" name="soil_type" class="form-control" value="<?php echo $val['soil_type']; ?>">
                </div>

                <div class="form-group">
                    <label>Plant material</label>
                    <input type="text" name="plant_material" class="form-control" value="<?php echo $val['plant_material']; ?>">
                </div>

                <div class="form-group">
                    <label>Spacing</label>
                    <input type="text" name="spacing" class="form-control" value="<?php echo $val['spacing']; ?>">
                </div>

                <div class="form-group">
                    <label>Harvesting</label>
                    <input type="text" name="harvesting" class="form-control" value="<?php echo $val['harvesting']; ?>">
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

                <form method="post" action="index.php?controller=cropinfocontroller&action=edit"enctype=multipart/form-data>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" value="<?php echo $val['name']; ?>">
                </div>

                 <div class="form-group">
                    <label>Category</label>
                    <select class="form-control" name="cat_id">
                        <option value="0">Select Category</option>
                        <?php                            
                            foreach ($cat as $key => $value) {
                                if($value['id'] == $val['cat_id'])
                                 {
                                    $sel = 'selected';
                                 }   
                                 else
                                 {
                                    $sel = '';
                                 }
                                 ?>
                                <option value="<?php echo $value['id']; ?>" <?php echo $sel; ?>><?php echo $value['name']; ?></option> 
                                 <?php 
                             } 
                        ?>
                    </select>
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
                    <label>Season for planting:</label>
                    <input type="text" name="season" class="form-control" value="<?php echo $val['season']; ?>">
                </div>
                <div class="form-group">
                    <label>Irrigation:</label>
                    <input type="text" name="irrigation" class="form-control" value="<?php echo $val['irrigation']; ?>">
                </div>
                <div class="form-group">
                    <label>Varieties:</label>
                    <input type="text" name="varieties" class="form-control" value="<?php echo $val['varieties']; ?>">
                </div>
                <div class="form-group">
                    <label>Soil type:</label>
                    <input type="text" name="soil_type" class="form-control" value="<?php echo $val['soil_type']; ?>">
                </div>
                <div class="form-group">
                    <label>Plant Material</label>
                    <input type="text" name="plant_material" class="form-control" value="<?php echo $val['plant_material']; ?>">
                </div>
                <div class="form-group">
                    <label>Spacing</label>
                    <input type="text" name="spacing" class="form-control" value="<?php echo $val['spacing']; ?>">
                </div>
               <div class="form-group">
                    <label>Harvesting</label>
                    <input type="text" name="harvesting" class="form-control" value="<?php echo $val['harvesting']; ?>">
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
