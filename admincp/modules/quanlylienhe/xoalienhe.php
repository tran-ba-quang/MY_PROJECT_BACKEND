<?php
include('../../config/config.php');
$id=$_GET['id'];
$sql ="SELECT * FROM lien_he WHERE id = '$id' LIMIT 1";
$query= mysqli_query($mysqli,$sql);
$sql_xoa = "DELETE FROM lien_he WHERE id ='".$id."'";
mysqli_query($mysqli,$sql_xoa);
header('Location:../../index.php?action=quanlylienhe&query=xem');
?>