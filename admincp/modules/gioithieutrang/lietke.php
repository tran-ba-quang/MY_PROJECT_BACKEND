
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/gioithieutrang/gioithieu.css">
</head>
<body>
    <?php
        $sql_lietke_gioithieu = "SELECT * FROM gioi_thieu ORDER BY id_gioithieu DESC";
        $query_lietke_gioithieu = mysqli_query($mysqli,$sql_lietke_gioithieu);
    ?>
    <p class="tranggioit">Trang giới thiệu</p>
<table border="1" style="border-collapse: collapse" class="tranggioithieu" >
  <tr>
    <th>ID</th>
    <th>Tiêu Đề</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_gioithieu)){
      $i++;
  ?>
  <tr>
      <td><?php echo $i  ?></td>
      <td><?php echo $row['tieude'] ?></td>
      <td class="xulygt">
        <a href="?action=gioithieutrang&query=sua&idgioithieu=<?php echo $row['id_gioithieu']?>">Sửa</a>
      </td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>