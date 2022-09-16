<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/tintucchitiet.css">
</head>
<body>
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Bài Viết</p>
<div class="">  
        <?php
        if(isset($_GET['quanly'])){
            $tam = $_GET['quanly'];
        }else{
            $tam = '';
        }if($tam=='index'){
            include("main/index.php");
        }
        ?>
</div>
<?php
        $sql_chitiet = "SELECT * FROM tin_tuc  WHERE tin_tuc.id_tintuc='$_GET[id]' LIMIT 1";
        $query_chitiet = mysqli_query($mysqli,$sql_chitiet);
        while($row_chitiet = mysqli_fetch_array($query_chitiet)){    
?>
<div class="noi_dung_footer">
        <h2>VỀ CHÚNG TÔI</h2>
        <ul>
                 <li><a href="index.php?quanly=gioithieu">Giới Thiệu</a></li>
                 <li><a href="index.php?quanly=trangtintuc">Tin Tức</a></li>
                 <li><a href="index.php?quanly=tranglienhe">Liên Hệ</a></li>
                 <li><a href="index.php?quanly=quydinhsudung">Quy Định Sử Dụng</a></li>
                 <!-- <li><a href="#">Điều Kiện Chính Sách</a></li> -->
        </ul>
    </div>
<div >
    <div class="chitiettintuc">
        <h2><?php echo $row_chitiet['tieude'] ?></h2>
        </br> 
        <p><?php echo $row_chitiet['tatcanoidung'] ?></p>
    </div>
</div>
<?php
    }
?>
</body>
</html>