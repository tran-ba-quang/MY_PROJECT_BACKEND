<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlydonhang/quanlydh.css">
</head>
<body>
<p class="lkdonhang">Chi Tiết Đơn Hàng</p>
<?php
    $code = $_GET['code'];
    $sql_lietke_dh = "SELECT * FROM cart_details,san_pham WHERE cart_details.id_sanpham=san_pham.id_sanpham AND cart_details.code_cart='".$code."' ORDER BY cart_details.id_details DESC";
    $query_lietke_dh= mysqli_query($mysqli,$sql_lietke_dh);
?>
<table class="lietkedh"  border="1" >
  <tr>
    <th>ID</th>
    <th>Mã đơn hàng</th>
    <th>Tên sản phẩm</th>
    <th>Số luọng</th>
    <th>Đơn giá</th>
  </tr>
  <?php
  $i = 0;
  $tongtien = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
      $i++;
      $tongtien = $row['giasp']*$row['soluongmua'];
  ?>
  <tr>
      <td><?php echo $i  ?></td>
      <td><?php echo $row['code_cart']  ?></td>
      <td><?php echo $row['tensanpham']  ?></td>
      <td><?php echo $row['soluongmua']  ?></td>
      <td><?php echo number_format( $row['giasp'],0,',','.').'VNĐ'  ?></td>

  </tr>
  <?php
  }
  ?>
  <tr>
    <td colspan="5">
          <p>Tổng tiền: <?php echo number_format($tongtien,0,',','.').'VNĐ'  ?></p>
    </td>
    <td >
          <a href="index.php?action=quanlydonhang&query=lietke"> < Quay lại đơn hàng</a>
    </td>
  </tr>
  

</table>
</body>
</html>