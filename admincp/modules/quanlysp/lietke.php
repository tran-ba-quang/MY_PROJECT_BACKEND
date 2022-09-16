<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlysp/quanlysp.css">
</head>
<body>
<?php
    $sql_lietke_sp = "SELECT * FROM san_pham,danh_muc_moi WHERE san_pham.id_danhmuc=danh_muc_moi.id_danhmuc ORDER BY id_sanpham DESC";
    $query_lietke_sp = mysqli_query($mysqli,$sql_lietke_sp);
?>
<p class="lietkesp">Liệt kê sản phẩm</p>
<table width="100%" border="1" style="border-collapse: collapse">
  <tr>
      <th>ID</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Giá sp</th>
    <th>Số lượng</th>
    <th>Danh mục</th>
    <th>Mã sp</th>
    <th>Tóm tắt</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_sp)){
      $i++;
  ?>
    <tr>
        <td><?php echo $i  ?></td>
        <td><?php echo $row['tensanpham']  ?></td>
        <td><img src="modules/quanlysp/uploads/<?php echo $row['hinhanh']?>" width="150px" </td>
        <td><?php echo $row['giasp']  ?></td>
        <td><?php echo $row['soluong']  ?></td>
        <td><?php echo $row['tendanhmuc']  ?></td>
        <td><?php echo $row['masp']  ?></td>
        <td><?php echo $row['tomtat']  ?></td>
        <!-- <td><?php if($row['tinhtrang']==1 ){
          echo'Kích hoạt';
        }else{
            echo 'Ẩn';
        } 
      ?></td> -->
        <td class="xulysp">      
            <a  href="modules/quanlysp/xuly.php?idsanpham=<?php echo $row['id_sanpham']?>">Xóa</a>      
        </br>- - - - -</br>
            <a href="?action=quanlysp&query=sua&idsanpham=<?php echo $row['id_sanpham']?>">Sửa</a>
        </td>
    </tr>
  <?php
  }
  ?>

</table>
</body>
</html>