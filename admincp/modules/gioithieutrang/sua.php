
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
    $sql_sua_gioithieu = "SELECT * FROM gioi_thieu WHERE id_gioithieu='$_GET[idgioithieu]'LIMIT 1";
    $query_sua_gioithieu = mysqli_query($mysqli,$sql_sua_gioithieu);
?>

<p>Sửa Tin Của Bạn </p>
<table border="1" width="50%" style="border-collapse: collapse">
<form method="POST" action="modules/gioithieutrang/xuly.php?idgioithieu=<?php echo $_GET['idgioithieu']?>" enctype="multipart/form-data">
<?php
while($row_gt = mysqli_fetch_array($query_sua_gioithieu)){
?>
<tr>
  <td>Tiêu Đề</td>
  <td><textarea rows="5" cols="70" name="tieude" style="resize:none"><?php echo $row_gt['tieude']?></textarea></td>
</tr>
<tr>
    <td>Nội Dung </td>
    <td><textarea rows="10" cols="70" name="noidung" style="resize:none"><?php echo $row_gt['noidung']?></textarea></td>
</tr>
  <tr>
    <td ><input type="submit" name="suagioithieu" value="Sửa Giới Thiệu"></td>
  </tr>
  <?php
  }
  ?>
  </form>
</table>
</body>
</html>