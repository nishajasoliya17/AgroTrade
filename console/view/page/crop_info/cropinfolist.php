<div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Crop Information</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>
                            <a class="btn btn-primary" href="index.php?controller=cropinfocontroller&action=addform">
                                <i class="fa fa-plus"></i>ADD
                            </a>
                        </th>
                    </tr>
                  <tr>
                    <th>Sr no</th>
                    <th>Name</th>
                    <th>Season for planting</th>
                    <th>Irrigation</th>
                    <th>Varieties</th>
                    <th>Soil Type</th>
                    <th>Plant Material</th>
                    <th>Spacing</th>
                    <th>Harvesting</th>
                    <th>Image</th>
                    <th>Action</th>                    
                  </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Sr no</th>
                    <th>Name</th>
                    <th>Season for planting</th>
                    <th>Irrigation</th>
                    <th>Varieties</th>
                    <th>Soil Type</th>
                    <th>Plant Material</th>
                    <th>Spacing</th>
                    <th>Harvesting</th>
                    <th>Image</th>
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
                    ?>
                        <tr>
                            <td><?php echo $sr; ?></td>
                           <td><?php echo $val['name']; ?></td>
                          <td><?php echo $val['season']; ?></td>
                            <td><?php echo $val['irrigation']; ?>
                            </td>
                            <td><?php echo $val['varieties']; ?>
                            </td>
                            <td><?php echo $val['soil_type']; ?>
                            </td>
                            <td><?php echo $val['plant_material']; ?></td>
                            <td><?php echo $val['spacing']; ?></td>
                            <td><?php echo $val['harvesting']; ?></td>
                            <td><img src="<?php echo $val['img']; ?>" style="height: 100px;width:100px;"></td>
                            <td>
                                <a class="btn btn-info" 
                                href="index.php?controller=cropinfocontroller&action=editform&id=<?php echo $val['id']; ?>"
                                ><i class="fa fa-pencil-square-o"></i></a> 
                                <strong >|</strong>
                                <a class="btn btn-danger" href="index.php?controller=cropinfocontroller&action=delete&id=<?php echo $val['id']; ?>"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>

                    <?php $sr++; } } ?> 
                           
                </tbody>
              </table>
            </div>
          </div>
          
        </div>