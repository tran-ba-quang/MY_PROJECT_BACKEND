
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
    $sql_sua_quydinh = "SELECT * FROM quydinhsudung WHERE id_quydinh='$_GET[idquydinh]'LIMIT 1";
    $query_sua_quydinh = mysqli_query($mysqli,$sql_sua_quydinh);
?>

<p>Sửa Tin Của Bạn </p>
<table border="1" width="50%" style="border-collapse: collapse">
<form method="POST" action="modules/quydinhsudung/xuly.php?idquydinh=<?php echo $_GET['idquydinh']?>" enctype="multipart/form-data">
<?php
while($row = mysqli_fetch_array($query_sua_quydinh)){
?>
<tr>
  <td>Tiêu Đề</td>
  <td><input type="text" name='tieude' maxlength="30" <?php echo $row['tieude']?>></td>
</tr>
<tr>
    <td>Nội Dung </td>
    <td><textarea rows="10" cols="70" name="noidung" style="resize:none"><?php echo $row['noidung']?></textarea></td>
</tr>
<tr>
    <td ><input type="submit" name="suaquydinh" value="Sửa tin tức"></td>
</tr>
<?php
}
?>
</form>
</table>
</body>
</html>