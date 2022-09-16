<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/trangtintuc.css">
</head>
<body>
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Trang tin tức và sự kiện</p>
<?php
    $begin = 0;
    $sql_pro = "SELECT * FROM tin_tuc ORDER BY tin_tuc.id_tintuc DESC LIMIT $begin,100";
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
    <h1>TIN TỨC & SỰ KIỆN</h1>
    <p id="none">**************</p>
    <div class="phantin4">
        <ul>
            <?php
                while($row = mysqli_fetch_array($query_pro)){
                    if ($row['tinhtrang'] == 1){ 
            ?>
            <li class="tin">
                <a id="tin" href="index.php?quanly=tintuc&id=<?php echo $row['id_tintuc']?>">
                <div class="anhtintuc">
                <img class="anhtin" src="admincp/modules/quanlytintuc/uploads/<?php echo $row['hinhanh'] ?>" alt="anhtt">
                </div>    
                    <div class="trangtin">    
                        <h3> <?php echo $row['tieude'] ?></h3> 
                        <p> <?php echo $row['noidung'] ?></p>   
                    </div> 
                </a>
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