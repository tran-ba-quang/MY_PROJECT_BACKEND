<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href ="pages/main/sanpham.css">
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Chi tiết sản phẩm</p>
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
<p class="chitiet"> Chi tiết sản phẩm</p>
<?php
        $sql_chitiet = "SELECT * FROM san_pham,danh_muc_moi WHERE  san_pham.id_danhmuc=danh_muc_moi.id_danhmuc AND san_pham.id_sanpham='$_GET[id]' LIMIT 1";
        $query_chitiet = mysqli_query($mysqli,$sql_chitiet);
        while($row_chitiet = mysqli_fetch_array($query_chitiet)){    
?>
<div class="sanpham_chitiet">
    <div class="hinhanh_sanpham">
    <img width="100%"src="admincp/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>" alt="">      
    </div>
<form method="POST"action="pages/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham']?>">
    <div class="chitiet_sanpham">
                <h3 style="margin:0"> <?php echo $row_chitiet['tensanpham']?></h3>
                <p>Mã sản phẩm: <?php echo $row_chitiet['masp']?></p>
                <p>Giá: <?php echo number_format( $row_chitiet['giasp'],0,',','.').'VNĐ'?></p>
                <p>Số lượng: <?php echo $row_chitiet['soluong']?></p>
                <p>Tóm tắt:</br> <?php echo $row_chitiet['tomtat'] ?></p>
                <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
                <p>Nội dung:</br> <?php echo $row_chitiet['noidung'] ?></p>   
    </div>
</form>
</div>
<?php
    }
?>
<p class="chitiet"> Sản Phẩm Liên Quan</p>
<?php
    $sql_pro = "SELECT * FROM san_pham WHERE  san_pham.id_danhmuc='$_GET[danhmuc]' ORDER BY id_sanpham DESC";
    $query_pro = mysqli_query($mysqli,$sql_pro);
    // $sql_cate = "SELECT * FROM danh_muc_moi WHERE  danh_muc_moi.id_danhmuc='$_GET[danhmuc]'LIMIT 1";
    // $query_cate = mysqli_query($mysqli,$sql_cate);
    // $row_title = mysqli_fetch_array($query_cate);
?>
<div class="splienquan">
 <ul class="lienquan">
                    <?php
                    while($row_pro = mysqli_fetch_array($query_pro)){
                    ?>
                    <li>
                        <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanpham']?>&danhmuc=<?php echo $row_pro['id_danhmuc']?>">
                            <img src="admincp/modules/quanlysp/uploads/<?php echo $row_pro['hinhanh'] ?>" alt="">
                            <p class="title_product2"> <?php echo $row_pro['tensanpham'] ?></p>
                            <p class="price_product2">Giá : <?php echo number_format( $row_pro['giasp'],0,',' ,'.').'VNĐ' ?></p>
                        </a>
                        <form method="post" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_pro['id_sanpham']?>">
                            <p><input class="themgiohangggg" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
                        </form>
                    </li>
                    <?php
                    }
                    ?>
                </ul>

</div>