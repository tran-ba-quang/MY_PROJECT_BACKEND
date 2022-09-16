<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href ="pages/main/dangnhap.css">
<?php
	if(isset($_POST['dang_nhap'])){
		$sdt = $_POST['sdt'];
		$password = md5($_POST['password']);
		$sql = "SELECT * FROM dang_ky WHERE sdt='".$sdt."' AND password='".$password."' LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);

		if($count>0){
			$row_data = mysqli_fetch_array($row);
			$_SESSION['dang_ky'] = $row_data['tenkh'];
			$_SESSION['id_khachhang'] = $row_data['id_dangky'];
			header('Location:index.php?quanly=giohang');           
        }else{
            echo'<script>alert("Tài khoản hoặc Mật khẩu không đúng! Vui lòng đăng nhập lại")</script>';
        }
    }
?>
<p><a href="index.php?quanly=index">Trang chủ</a> / / Đăng Nhập</p>
<form action="" autocomplete="off" method="POST">
    <table border ="1" class="dangnhap" style="border-collapse:collapse">
    <h2 class="h2dangnhap">Đăng Nhập Tài Khoản Của Bạn</h2>
        <tr>
            <td>Tài khoản</td>
            <td><input type="" name="sdt" placeholder="nhập sdt..."></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" name="password" placeholder="Mật khẩu..."></td>
        </tr>
        <tr>
      
            <td colspan ='2'><input type="submit" name="dang_nhap" value="Đăng nhập"></td>
        </tr>
    </table>
</form>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>