<?php
include('../../config/config.php');
$tieude = $_POST['tieude'];
$noidung = $_POST['noidung'];
if(isset($_POST['suagioithieu'])){
    //sua
        $sql_update = "UPDATE gioi_thieu SET tieude='".$tieude."',noidung='".$noidung."' WHERE id_gioithieu='$_GET[idgioithieu]' ";
    mysqli_query($mysqli,$sql_update);
    header('Location:../../index.php?action=gioithieutrang&query=lietke');
}else{
    header('Location:../../index.php?action=gioithieutrang&query=lietke');
}
?>
