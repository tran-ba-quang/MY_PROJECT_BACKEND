<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/quanlytintuc/tintuc.css">
</head>
<body>
<p class="themquydinh">Thêm Tin Tức Mới </p>
<table >
<form method="POST" action="modules/quydinhsudung/xuly.php" enctype="multipart/form-data">
    <tr>
        <td>Tiêu Đề</td>
        <td><input type="text" maxlength="30" name='tieude' ></td>
    </tr>
    <tr>
        <td>Nội dung </td>
        <td><textarea rows="10" cols="70"  name="noidung" style="resize:none" ></textarea></td>
    </tr>
    <tr>
        <td colspan="2" ><input type="submit" name="themquydinh" value="Thêm Quy Định Mới"></td>
    </tr>
</form>
</table>
</body>
</html>