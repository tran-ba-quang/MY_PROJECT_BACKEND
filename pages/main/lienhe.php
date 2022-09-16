<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/lienhe.css">
</head>
<body>
<p><a href="index.php?quanly=index">Trang chủ</a> / / Liên Hệ</p>
<div class="noi_dung_footer">
        <h2>VỀ CHÚNG TÔI</h2>
        <ul>
                 <li><a href="index.php?quanly=gioithieu">Giới Thiệu</a></li>
                 <li><a href="index.php?quanly=trangtintuc">Tin Tức</a></li>
                 <li><a href="index.php?quanly=tranglienhe">Liên Hệ</a></li>
                 <li><a href="index.php?quanly=quydinhsudung">Quy Định Sử Dụng</a></li>
                 <!-- <li><a href="#">Điều Kiện Chính Sách</a></li> -->
        </ul>
</div>
<form action="admincp/modules/quanlylienhe/qllienhe.php" method="POST" enctype="multipart/form-data">
    <div class="form">
        <p>Để thuận tiện hơn cho việc liên lạc Quý khách vui lòng nhập đầy đủ các thông tin bên dưới</p>
        <div class="thong_tin">
            <div class="input-box">
                Họ và tên:
                <input type="text" required name="ho_ten" placeholder="Họ tên">    
            </div>
            <div class="input-box">
                Email:
                <input type="email" required name='email' placeholder="email">
            </div>
            <div class="input-box">
                Số điện thoại:
                <input type="text" require name="sodt" placeholder="số điện thoại">
            </div>
            <div class="input-box">
                Nội Dung:
                <textarea name="noi_dung" placeholder="nội dung"></textarea>
            </div>
        </div>
        <div>
                <button  class="lienhe" name="lien_he" type="submit" >
                    LIÊN HỆ
                </button> 
        </div>
    </div>
</form>

</body>
</html>