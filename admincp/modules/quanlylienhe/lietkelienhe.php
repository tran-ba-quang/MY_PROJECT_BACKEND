<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlylienhe/quanlylienhe.css">
</head>
<body>
<?php
    $sql_lietke_lh = "SELECT * FROM lien_he ORDER BY id DESC";
    $query_lietke_lh = mysqli_query($mysqli,$sql_lietke_lh);
?>
<p class="lietkesp">Liệt kê các liên hệ</p>
<table width="100%" border="1" style="border-collapse: collapse">
  <tr>
    <th>ID</th>
    <th>Họ tên</th>
    <th>email</th>
    <th>số điện thoại</th>
    <th>nội dung</th>
  </tr>
  <?php
  while($row = mysqli_fetch_array($query_lietke_lh)){
  ?>
    <tr >
        <td><?php echo $row['id']?></td>
        <td><?php echo $row['ho_ten']  ?></td>
        <td><?php echo $row['email']  ?></td>
        <td><?php echo $row['sodt']  ?></td>
        <td><?php echo $row['noi_dung']  ?></td>
        <td class="xulylh">      
            <a href="modules/quanlylienhe/xoalienhe.php?id=<?php echo $row['id']?>">Xóa</a>      
        </td>
    </tr>
  <?php
  }
  ?>

</table>
</body>
</html>