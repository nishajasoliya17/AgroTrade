<?php 
require '../model/config.php';

// echo FS_UPLOAD_PATH;
// echo "<br/>";
// echo WS_UPLOAD_PATH;
    if(isset($_REQUEST['s']))
    {
       echo "<pre>";
        print_r($_FILES);
        $fn = $_FILES['f']['name'];
        $tmp = $_FILES['f']['tmp_name'];
        $path = FS_UPLOAD_PATH.$fn;
        
        echo WS_UPLOAD_PATH.$fn;

        move_uploaded_file($tmp,$path);
    }
?>
<html>

<body>
    <form method="post" action="#" enctype= multipart/form-data>
        <input type="file" name="f">
        <input type="submit" name="s">
    </form>
</body>
</html>
