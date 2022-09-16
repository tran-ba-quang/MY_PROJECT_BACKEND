
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quydinhsudung/quydinhsd.css">
</head>
<body>
    <?php
        $sql_lietke_quydinh = "SELECT * FROM quydinhsudung ORDER BY id_quydinh DESC";
        $query_lietke_quydinh = mysqli_query($mysqli,$sql_lietke_quydinh);
    ?>
    <p class="themquydinh">Tất Cả Tin Tức Của Bạn</p>
<table width="100%" border="1" style="border-collapse: collapse" class="lietkequydinh" >
  <tr>
    <th>ID</th>
    <th>Tiêu Đề</th>
    <th>Tin Tức</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_quydinh)){
      $i++;
  ?>
  <tr>
      <td><?php echo $i  ?></td>
      <td><?php echo $row['tieude'] ?></td>
      <td><?php echo $row['noidung'] ?></td>
      <td class="xulyquydinh">
        <a href="modules/quydinhsudung/xuly.php?idquydinh=<?php echo $row['id_quydinh']?>">Xóa</a>
        </br>- - - - -</br>
        <a href="?action=quydinhsudung&query=sua&idquydinh=<?php echo $row['id_quydinh']?>">Sửa</a>
      </td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>