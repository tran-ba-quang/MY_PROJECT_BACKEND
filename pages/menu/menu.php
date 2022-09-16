<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/menu/menu.css">
</head>
<body>
<?php
  session_start();
?>
<?php
    if(isset($_GET['dangxuat']) && $_GET['dangxuat']==1){
        unset($_SESSION['dang_ky']);
    }
?>

<div class="menu">
        <div id="menu">
            <ul>
                <li id="logo"><img src="images/logo.jpg" alt="LOGO" ></li>
                <li><h1>GBOOK</h1></li> 
                <li id="gmail"><a href="mailto:tranbaquangg@gmail.com"><img src="images/gmail.jpg">tranbaquangg@gmail.com</a></li>  
                <?php
                if (isset($_SESSION['dang_ky'])) {        
                ?>
                <li id="a" title="Đăng Xuất"><a href="index.php?dangxuat=1"><img src="images/dangxuat.jpg"></a></li>
                <?php
                }else{
                ?>               
                <li id="a" title="Đăng Nhập"><a href="index.php?quanly=dangnhap"><img src="images/dangnhap3.jpg"></a></li>
                <li id="a" title="Đăng Ký"><a href="index.php?quanly=dangky"><img src="images/dangky2.jpg"></a></li>
                <?php
                }
                ?>
                <li id="a" title="Giỏ Hàng"><a href="index.php?quanly=giohang"><img src="images/giohang4.jpg"></a></li>
                
                <li id="aa"><form action="index.php?quanly=timkiem" method="POST">    
                <input type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa">
                <input type="submit" name="timkiem" value="Tìm kiếm"  > 
            </form></li> 
                             
            </ul>
        </div>  
</div>
</body>
</html>
