        
<div class="main">  
        <?php
        if(isset($_GET['quanly'])){
            $tam = $_GET['quanly'];
        }else{
            $tam = '';
        }
        if($tam=='dangky'){
            include("main/dangky.php");
        }elseif($tam=='giohang'){
            include("main/giohang.php");
        }elseif($tam=='sanpham'){
            include("main/sanpham.php");
        }elseif($tam=='thanhtoan'){
            include("main/thanhtoan.php");
        }elseif($tam=='dangnhap'){
            include("main/dangnhap.php");
        }elseif($tam=='tintuc'){
            include("main/tintucchitiet.php");
        }elseif($tam=='timkiem'){
            include("main/timkiem.php");
        }elseif($tam=='camon'){
            include("main/camon.php");
        }elseif($tam=='gioithieu'){
            include("main/gioithieu.php");
        }elseif($tam=='trangtintuc'){
            include("main/trangtintuc.php");
        }elseif($tam=='danhmucsanpham'){
            include("main/danhmuc.php");
        }elseif($tam=='quydinhsudung'){
            include("main/quydinhsudung.php");
        }elseif($tam=='tranglienhe'){
            include("main/lienhe.php");
        }else{
            include("main/index.php");
        }       
        ?>
</div>