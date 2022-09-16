<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href ="pages/bookmoi/gbook_moi.css">                         
    <h1>GBOOK MỚI</h1>
    <p id="none">*************</p>
    <P>Biết bao kẻ đọc sách và học hỏi, không phải để tìm ra chân lý mà là để gia tăng những gì mình đã biết.</br>
(Junline Green)</P> 
<?php
    $sql_pro = "SELECT * FROM san_pham,danh_muc_moi WHERE san_pham.id_danhmuc=danh_muc_moi.id_danhmuc ORDER BY san_pham.id_sanpham DESC LIMIT 5";
    $query_pro = mysqli_query($mysqli,$sql_pro);            
    ?>                           
    <div class="book_moi">
    <ul class="sp_moi">          
            <?php
            while($row = mysqli_fetch_array($query_pro)){               
            ?>              
                    <li class="img__wrap">  
                        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>&danhmuc=<?php echo $row['id_danhmuc']?>">                 
                            <img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" alt="">
                            <p class="img__description" id="ten"> <?php echo $row['tensanpham'] ?></p>
                            <p class="img__description" id="gia">Giá : <?php echo number_format( $row['giasp'],0,',','.').'VNĐ' ?></p>
                        </a>
                        <form method="post" action="pages/main/themgiohang.php?idsanpham=<?php echo $row['id_sanpham']?>">
                            <p class="img__description"><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
                        </form>
                    </li>    
            <?php               
            }
            ?>   
        </ul>
    </div>