<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/sidebar/sideber.css">
</head>
<body>
    <?php
        $sql_danhmuc = "SELECT * FROM danh_muc_moi ORDER BY id_danhmuc DESC";
        $query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
    ?>
        <div id="sideber">
            <ul>
                <?php while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
                ?>
                <li id="si"><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc["id_danhmuc"] ?>"><?php echo $row_danhmuc["tendanhmuc"] ?></a></li>
                <?php
                }
                ?>
                
            </ul>
        </div>
</body>
</html>
