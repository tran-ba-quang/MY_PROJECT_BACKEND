<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href ="pages/main/tiemkiem.css">
</head>
<body>
<?php
	if(isset($_POST['timkiem'])){
		$tukhoa = $_POST['tukhoa'];
	}
	$sql_pro = "SELECT * FROM san_pham,danh_muc_moi WHERE san_pham.id_danhmuc=danh_muc_moi.id_danhmuc AND san_pham.tensanpham LIKE '%".$tukhoa."%'";
	$query_pro = mysqli_query($mysqli,$sql_pro);
	
?>
<p class="tk"><a href="index.php?quanly=index">Trang chủ</a> / / tìm kiếm</p>
<h3 class="tk">tìm kiếm : <?php echo $_POST['tukhoa']; ?></h3>
				<ul class="product_list">
					<?php
					while($row = mysqli_fetch_array($query_pro)){ 
						if ($row['tinhtrang'] == 1){ 
					?>
					<li>
						<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
							<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
							<p class="title_product">Tên sản phẩm : <?php echo $row['tensanpham'] ?></p>
							<p class="price_product">Giá : <?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></p>							
						</a>
					</li>
					<?php
					} 
					}
					?>
				</ul>
</body>
</html>