<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlydonhang/quanlydh.css">
</head>
<body>
<p class="lkdonhang">Tất Cả Đơn Hàng </p>
<?php
    $sql_lietke_dh = "SELECT * FROM cart,dang_ky WHERE cart.id_khachhang=dang_ky.id_dangky ORDER BY cart.id_cart DESC";
    $query_lietke_dh= mysqli_query($mysqli,$sql_lietke_dh);
?>
<table class="lietkedh" border="1">
  <tr>
    <th>ID</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Số điện thoại</th>
    <th>Tình trạng</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
      $i++;
  ?>
  <tr class="noidungdh">
        <td><?php echo $i  ?></td>
        <td><?php echo $row['code_cart']  ?></td>
        <td><?php echo $row['tenkh']  ?></td>
        <td><?php echo $row['diachi']  ?></td>
        <td><?php echo $row['sdt']  ?></td>
        <td>
            <?php if ($row['cart_status']==1){
                echo '<a style="text-decoration: none" href="modules/quanlydonhang/xuly.php?code='.$row['code_cart'].'">Xử lý</a>';
            }else{
                echo'Đã xử lý';
            }
                ?>
        </td>
        <td>
            <a style="text-decoration: none" href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['code_cart']?>">Xem đơn hàng</a> 
        </td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>