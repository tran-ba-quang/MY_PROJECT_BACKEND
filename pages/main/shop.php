<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/shop.css">
</head>
<body>
<?php
    if(isset($_GET['trang'])){
        $page =$_GET['trang'];
    }else{
        $page="";
    }
    if($page == '' ||$page ==1 ){
        $begin = 0;
    }else{
        $begin = (($page-1)*12);
    }
    $sql_pro = "SELECT * FROM san_pham,danh_muc_moi WHERE san_pham.id_danhmuc=danh_muc_moi.id_danhmuc ORDER BY san_pham.id_sanpham DESC LIMIT $begin,12";
    $query_pro = mysqli_query($mysqli,$sql_pro);
?>
<div class="shop">
    <h1>CỬA HÀNG GBOOK</h1>
    <p id="none">**************</p>
    <div class="shopg">
    
        <ul class="shop_gbook">
            <?php
                while($row = mysqli_fetch_array($query_pro)){
                    // if ($row['tinhtrang'] == 1){ 
            ?>
                <li>
                    <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>&danhmuc=<?php echo $row['id_danhmuc']?>">
                        <img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" alt="">
                        <p class="title_product1"> <?php echo $row['tensanpham'] ?></p>
                        <p class="price_product1" id="pgia">Giá : <?php echo number_format( $row['giasp'],0,',','.').'VNĐ' ?></p>
                    </a>
                    <form method="post" action="pages/main/themgiohang.php?idsanpham=<?php echo $row['id_sanpham']?>">
                        <p class="muacombo"><input class="themgiohangg" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
                    </form>
                </li>
            <?php
                
            }
            ?> 
        </ul>       
    </div>
    <?php
                $sql_trang = mysqli_query ($mysqli,"SELECT * FROM san_pham");
                $row_count = mysqli_num_rows($sql_trang);
                $trang = ($row_count/12);
                ?>
                <div class="flex">
                    <ul>
                        <?php
                        for($i=1;$i-1<=$trang;$i++){
                        ?>
                        <li <?php if($i ==$page){echo '';}else{ echo'';}?>><a  href="index.php?trang=<?php echo $i?>"><?php echo $i?></a></li>
                        <?php
                        } 
                        ?>   
                    </ul>   
                </div>
</body>
</html>
