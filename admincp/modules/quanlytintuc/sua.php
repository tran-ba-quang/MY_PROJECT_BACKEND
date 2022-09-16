
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
    $sql_sua_tintuc = "SELECT * FROM tin_tuc WHERE id_tintuc='$_GET[idtintuc]'LIMIT 1";
    $query_sua_tintuc = mysqli_query($mysqli,$sql_sua_tintuc);
?>

<p>Sửa Tin Của Bạn </p>
<table border="1" width="50%" style="border-collapse: collapse">
<form method="POST" action="modules/quanlytintuc/xuly.php?idtintuc=<?php echo $_GET['idtintuc']?>" enctype="multipart/form-data">
<?php
while($row = mysqli_fetch_array($query_sua_tintuc)){
?>
<tr>
  <td>Tiêu Đề</td>
  <td><input type="text" name='tieude' maxlength="30" <?php echo $row['tieude']?>></td>
</tr>
<tr>
    <td>Tóm Tắt</td>
    <td><textarea rows="5" cols="70" maxlength="280" name="noidung" style="resize:none"><?php echo $row['noidung']?></textarea></td>
</tr>
<tr>
    <td>Nội Dung </td>
    <td><textarea rows="10" cols="70" name="tatcanoidung" style="resize:none"><?php echo $row['tatcanoidung']?></textarea></td>
</tr>
<tr>
    <td>Hình ảnh</td>
    <td>
      <input type="file" name='hinhanh'>
      <img src="modules/quanlytintuc/uploads/<?php echo $row['hinhanh']?>" width="150px">
    </td>
</tr>
 <tr>
    <td>Tình trạng</td>
    <td>
        <select name="tinhtrang">
        <?php
          if ($row[tinhtrang]==1) {
          ?>
            <option value="1" selected>Hiển Thị</option>
            <option value="0">Ẩn</option>
            <?php
          }else{
            ?>
            <option value="1">Hiển Thị</option>
            <option value="0" selected>Ẩn</option>
          <?php
          }
          ?>
        </select>
    </td>
  </tr>
  <tr>
    <td ><input type="submit" name="suatintuc" value="Sửa tin tức"></td>
  </tr>
  <?php
  }
  ?>
  </form>
</table>
</body>
</html>