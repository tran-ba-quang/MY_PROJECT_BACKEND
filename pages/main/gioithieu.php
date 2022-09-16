<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/gioithieu.css">
</head>
<body>
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Bài Viết Giới Thiệu</p>
<?php
        $sql_lietke_gioithieu = "SELECT * FROM gioi_thieu ORDER BY id_gioithieu DESC";
        $query_lietke_gioithieu = mysqli_query($mysqli,$sql_lietke_gioithieu);
  while($row_chitiet = mysqli_fetch_array($query_lietke_gioithieu)){
?>
<div >
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
    <div>
        <p class="g2gt"><?php echo $row_chitiet['tieude'] ?></p>
        </br> 
        <p class="ndgt"><?php echo $row_chitiet['noidung'] ?></p>
    </div>
</div>
<?php
    }
?>
</body>
</html>