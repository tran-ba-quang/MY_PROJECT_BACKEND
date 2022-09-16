<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlydanhmucsp/quanlydanhmuc.css">
</head>
<body>
<p class="themdmsp">Thêm danh mục sản phẩm </p>
<table >
<form method="POST" action="modules/quanlydanhmucsp/xuly.php">
  <tr class="hang">
    <td class="tendm">Tên danh mục </td>
    <td><input type="boder" size="85"type="text" name='tendanhmuc' ></td>
  </tr>
  <tr class="hang">
    <td class="tendm">Thứ tự</td>
    <td><input  size="85" type="text" name='thutu'></td>
  </tr>
  <tr class="hang">
    <td colspan="2" class="themdm"><input type="submit" name="themdanhmuc"value="Thêm danh mục sản phẩm"></td>
  </tr>
  </form>
</table>
</body>
</html>