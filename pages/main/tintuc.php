<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/tintuc.css">
</head>
<body>
<?php
    $begin = 0;
    $sql_pro = "SELECT * FROM tin_tuc ORDER BY tin_tuc.id_tintuc DESC LIMIT $begin,4";
    $query_pro = mysqli_query($mysqli,$sql_pro);
?>
<div class="phantin">
    <h1>TIN TỨC & SỰ KIỆN</h1>
    <p id="none">**************</p>
    <div class="phantin2">
        <ul>
            <?php
                while($row = mysqli_fetch_array($query_pro)){
                    if ($row['tinhtrang'] == 1){ 
            ?>
            <li class="tin">
                <a id="tin" >
                    <img class="anhtin" src="admincp/modules/quanlytintuc/uploads/<?php echo $row['hinhanh'] ?>" alt="anhtt">
                    <div>
                        <h3> <?php echo $row['tieude'] ?></h3> 
                        <p> <?php echo $row['noidung'] ?></p>   
                    </div> 
                </a>
                <a id="xemthem" href="index.php?quanly=tintuc&id=<?php echo $row['id_tintuc']?>">Xem Thêm >></a>
            </li>
            <?php
                }
            }
            ?> 
        </ul>
    </div>
</div>
</body>
</html>