<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href ="pages/main/dangky.css">
<?php
if(isset($_POST['dang_ky'])){
    $tenkh= $_POST['tenkh'];
    $sdt = $_POST['sdt'];
    $password = md5($_POST['password']);
    $diachi = $_POST['diachi'];
    $dang_ky = mysqli_query($mysqli,"INSERT INTO dang_ky(tenkh,sdt,password,diachi) VALUE('".$tenkh."','".$sdt."','".$password."','".$diachi."')");

    if($dang_ky){
        $_SESSION['dang_ky'] =$tenkh;  
        $_SESSION['id_khachhang'] =mysqli_insert_id($mysqli);
        header('Location:index.php?quanly=giohang');
    }

}
?>

<p><a href="index.php?quanly=index">Trang chủ</a> / / Đăng Ký</p>
<form action="" method="POST">
<table class="dangky" border='1' width="50%" style="border-collapse:collapse">
<h2 class="h2dangky">Đăng ký Tài Khoản</h2>
    <tr>
        <td>Họ và tên</td>
        <td><input type="text"size="50" name="tenkh"></td>
    </tr>
    <tr>
        <td>Điện thoại </td>
        <td><input type="text"size="50" name="sdt"></td>
    </tr>
    <tr>
        <td>Địa chỉ</td>
        <td><input type="text"size="50" name="diachi"></td>
    </tr>
    <tr>
        <td>Mật khẩu</td>
        <td><input type="password"size="50" name="password"></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" name="dang_ky" value="Đăng ký"> | <a href="index.php?quanly=dangnhap" class="neucotk">Đăng nhập nếu có tài khoản</a></td>       
    </tr>
</table>
</form>