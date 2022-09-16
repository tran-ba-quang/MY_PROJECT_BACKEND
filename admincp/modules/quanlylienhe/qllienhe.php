<?php  
include('../../config/config.php');
$ho_ten = $_POST['ho_ten'];
$email = $_POST['email'];
$sodt = $_POST['sodt'];
$noi_dung= $_POST['noi_dung'];
if(isset($_POST['lien_he'])){
	$sql_them = "INSERT INTO lien_he(ho_ten,email,sodt,noi_dung) VALUE('".$ho_ten."','".$email."','".$sodt."','".$noi_dung."')";
	mysqli_query($mysqli,$sql_them);
}else{
    header('Location:../../index.php?action=quanlylienhe&query=xem');
}
?>
<?php
header("location:../../../index.php?quanly=tranglienhe")
?>
