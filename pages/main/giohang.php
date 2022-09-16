<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" type="text/css" href ="pages/main/giohang.css">
 </head>
 <body>
<p><a href="index.php?quanly=index">Trang chủ</a> / / Giỏ hàng</p>
<p style="font-size: 30px" >Giỏ hàng
<?php
  if(isset($_SESSION['dang_ky'])){
    echo'xin chào: '.'<span style ="color:red">' .$_SESSION['dang_ky'].'</span>';
  }
?>
</p>
<?php
    if(isset($_SESSION['cart'])){
    }
?>
<table style="width:100%; text-align:center;border-collapse:collapse;"border ="1">
  <tr>
    <th>ID</th>
    <th>Tên sản phẩm</th> 
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
  </tr>
  <?php
  if(isset($_SESSION['cart'])){
      $i = 0;
      $tongtien=0;
      foreach($_SESSION['cart'] as $cart_item){
        $thanhtien = $cart_item['soluong']*$cart_item['giasp'];
        $tongtien+=$thanhtien;
          $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $cart_item['tensanpham']; ?></td>
    <td><img src="admincp/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh'];?>" width="150px"></td>
    <td>
      <a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id']?>"><i class="fa fa-plus fa_style" aria-hidden="true"></i></a>
      <?php echo $cart_item['soluong']; ?>
      <a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id']?>"><i class="fa fa-minus fa_style" aria-hidden="true"></i></a>
    </td>
    <td><?php echo number_format( $cart_item['giasp'],0,',','.').'VNĐ'; ?></td>
    <td><?php echo number_format( $thanhtien,0,',','.').'VNĐ';?></td>
    <td><a class="xoa" href="pages/main/themgiohang.php?xoa=<?php echo $cart_item['id']?>">Xóa </a></td>
  </tr>
  <?php
      } 
      ?>
    <tr>
    <td colspan="8"><p style="float:left;">Tổng tiền: <?php echo number_format( $tongtien,0,',','.').'VNĐ';?> </p>
      <p style="float:right;"><a class="xoatatca" href="pages/main/themgiohang.php?xoatatca=1">Xóa tất cả sản phẩm</a></p>
      <div style="clear: both;"></div>
      <?php
      if(isset($_SESSION['dang_ky'])){
        ?>
            <p><a class="dathang" href="pages/main/thanhtoan.php">Đặt hàng</a></p>
        <?php
      }else{
       ?>
          <p><a class="dkdathang" href="index.php?quanly=dangky">Đăng ký đặt hàng</a></p>
       <?php 
      }
      ?>

      
    </td>
    
  </tr>
<?php
  }else {
  ?>
    <tr>
    <td colspan="8"><p>Hiện tại giỏ hàng trống </p></td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
 </html>