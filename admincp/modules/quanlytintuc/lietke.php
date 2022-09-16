
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlytintuc/quanlytintuc.css">
</head>
<body>
    <?php
        $sql_lietke_tintuc = "SELECT * FROM tin_tuc ORDER BY id_tintuc DESC";
        $query_lietke_tintuc = mysqli_query($mysqli,$sql_lietke_tintuc);
    ?>
    <p class="themtintuc">Tất Cả Tin Tức Của Bạn</p>
<table width="100%" border="1" style="border-collapse: collapse" class="lietketintuc" >
  <tr>
    <th>ID</th>
    <th>Tiêu Đề</th>
    <th>Tin Tức</th>
    <th>Hình Ảnh</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_tintuc)){
      $i++;
  ?>
  <tr>
      <td><?php echo $i  ?></td>
      <td><?php echo $row['tieude'] ?></td>
      <td><?php echo $row['noidung'] ?></td>
      <td><img src="modules/quanlytintuc/uploads/<?php echo $row['hinhanh']?>" width="150px" alt="anhtt"> </td>
      <td><?php if($row['tinhtrang']==1 ){
          echo'Hiển Thị';
        }else{
            echo 'Ẩn';
        } 
      ?></td>
      <td class="xulytintuc">
        <a href="modules/quanlytintuc/xuly.php?idtintuc=<?php echo $row['id_tintuc']?>">Xóa</a> 
        </br>- - - - -</br>
        <a href="?action=quanlytintuc&query=sua&idtintuc=<?php echo $row['id_tintuc']?>">Sửa</a>
      </td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>