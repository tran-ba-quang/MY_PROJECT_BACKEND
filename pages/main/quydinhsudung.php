<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/quydinhsudung.css">
</head>
<body>
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Quy định sử dụng</p>
<?php
    $begin = 0;
    $sql_pro = "SELECT * FROM quydinhsudung ORDER BY quydinhsudung.id_quydinh DESC LIMIT $begin,100";
    $query_pro = mysqli_query($mysqli,$sql_pro);
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
<div class="phantin3">
    <h1>QUY ĐỊNH SỬ DỤNG</h1>
    <p id="none">**************</p>
    <div class="phantin4">
        <ul>
            <?php
                while($row = mysqli_fetch_array($query_pro)){
            ?>
            <li class="tin">
                <a >   
                    <div class="trangtin">    
                        <h3> <?php echo $row['tieude'] ?></h3> 
                        <p> <?php echo $row['noidung'] ?></p>   
                    </div> 
                </a>
            </li>
            <?php
            }
            ?> 
        </ul>
    </div>
</div>
</body>
</html>