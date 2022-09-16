<?php
include('../../config/config.php');
$tieude = $_POST['tieude'];
$noidung = $_POST['noidung'];
if(isset($_POST['themquydinh'])){
	//them
	$sql_themqd = "INSERT INTO quydinhsudung(tieude,noidung) VALUE('".$tieude."','".$noidung."')";
	mysqli_query($mysqli,$sql_themqd);
	header('Location:../../index.php?action=quydinhsudung&query=them');
}elseif(isset($_POST['suaquydinh'])){
    //sua
    $sql_update = "UPDATE quydinhsudung SET tieude='".$tieude."',noidung='".$noidung."' WHERE id_quydinh='$_GET[idquydinh]' ";
    mysqli_query($mysqli,$sql_update);
    header('Location:../../index.php?action=quydinhsudung&query=them');
}else{
    $id=$_GET['idquydinh'];
    $sql ="SELECT * FROM quydinhsudung WHERE id_quydinh= '$id' LIMIT 1";
    $query= mysqli_query($mysqli,$sql);
    $sql_xoa_qd = "DELETE FROM quydinhsudung WHERE id_quydinh='".$id."'";
    mysqli_query($mysqli,$sql_xoa_qd);
    header('Location:../../index.php?action=quydinhsudung&query=them');
}
?>
