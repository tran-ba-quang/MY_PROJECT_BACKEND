<meta charset="UTF-8">
<?php
    $sql_pro = "SELECT * FROM san_pham WHERE  san_pham.id_danhmuc='$_GET[id]' ORDER BY id_sanpham DESC";
    $query_pro = mysqli_query($mysqli,$sql_pro);
    $sql_cate = "SELECT * FROM danh_muc_moi WHERE  danh_muc_moi.id_danhmuc='$_GET[id]'LIMIT 1";
    $query_cate = mysqli_query($mysqli,$sql_cate);
    $row_title = mysqli_fetch_array($query_cate);
?>
<link rel="stylesheet" type="text/css" href ="pages/main/danhmuc.css">
<p class="quaylai"><a href="index.php?quanly=index">Trang chủ</a> / / Danh mục sản phẩm</p>
<div class="trangdanhmuc">
<div>
<?php include("pages/sidebar/sideber.php"); ?>
</div>
<div class="danhmuc">
<h3>Danh mục sản phẩm: <?php echo $row_title['tendanhmuc'] ?> </h3>
                <ul class="product_list">
                    <?php
                    while($row_pro = mysqli_fetch_array($query_pro)){
                        // if ($row_pro['tinhtrang'] == 1){ 
                    ?>
                    <li>
                    <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanpham']?>&danhmuc=<?php echo $row_pro['id_danhmuc']?>">
                            <img src="admincp/modules/quanlysp/uploads/<?php echo $row_pro['hinhanh'] ?>" alt="">
                            <p class="title_product"> <?php echo $row_pro['tensanpham'] ?></p>
                            <p class="price_product">Giá : <?php echo number_format( $row_pro['giasp'],0,',' ,'.').'VNĐ' ?></p>
                        </a>
                        <form method="post" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_pro['id_sanpham']?>">
                            <p><input class="themgiohanggg" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
                        </form>
                    </li>
                    <?php
                        
                    }
                    ?>
                </ul>
</div>
                </div>