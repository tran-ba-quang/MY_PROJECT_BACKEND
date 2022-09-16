<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlydanhmucsp/quanlydanhmuc.css">
</head>
<body>
<?php
    $sql_lietke_danhmucsp = "SELECT * FROM danh_muc_moi ORDER BY thutu DESC";
    $query_lietke_danhmucsp = mysqli_query($mysqli,$sql_lietke_danhmucsp);
?>
<p class="themdmsp">Danh Mục Sản Phẩm Của Bạn</p>
<table width="100%" border="1" class="lietkedm" >
  <tr>
      <th>ID</th>
    <th>Tên danh mục</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_danhmucsp)){
      $i++;
  ?>
  <tr>
      <td><?php echo $i  ?></td>
      <td><?php echo $row['tendanhmuc']  ?></td>
    <td class="xulydm">
      <a href="modules/quanlydanhmucsp/xuly.php?iddanhmuc=<?php echo $row['id_danhmuc']?>">Xóa</a> | 
      <a href="?action=quanlydanhmucsanpham&query=sua&iddanhmuc=<?php echo $row['id_danhmuc']?>">Sửa</a>
    </td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>