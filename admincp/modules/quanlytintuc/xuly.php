<?php
include('../../config/config.php');
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;
$tieude = $_POST['tieude'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$tatcanoidung = $_POST['tatcanoidung'];
if(isset($_POST['themtintuc'])){
	//them
	$sql_themtin = "INSERT INTO tin_tuc(tieude,noidung,tatcanoidung,hinhanh,tinhtrang) VALUE('".$tieude."','".$noidung."','".$tatcanoidung."','".$hinhanh."','".$tinhtrang."')";
	mysqli_query($mysqli,$sql_themtin);
	move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
	header('Location:../../index.php?action=quanlytintuc&query=them');
}elseif(isset($_POST['suatintuc'])){
    //sua
    if($hinhanh!=''){
        move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
        $sql_update = "UPDATE tin_tuc SET tieude='".$tieude."',noidung='".$noidung."',tatcanoidung='".$tatcanoidung."',hinhanh='".$hinhanh."',tinhtrang='".$tinhtrang."' WHERE id_tintuc='$_GET[idtintuc]' ";
    //xoa anh cu
        $sql ="SELECT * FROM tin_tuc WHERE id_tintuc= '$_GET[idtintuc]' LIMIT 1";
        $query= mysqli_query($mysqli,$sql);
        while($row = mysqli_fetch_array($query)){
            unlink('uploads/'.$row['hinhanh']);
        }
    }else{
        $sql_update = "UPDATE tin_tuc SET tieude='".$tieude."',noidung='".$noidung."',tatcanoidung='".$tatcanoidung."',tinhtrang='".$tinhtrang."' WHERE id_tintuc='$_GET[idtintuc]' ";
    }
    mysqli_query($mysqli,$sql_update);
    header('Location:../../index.php?action=quanlytintuc&query=them');
}else{
    $id=$_GET['idtintuc'];
    $sql ="SELECT * FROM tin_tuc WHERE id_tintuc= '$id' LIMIT 1";
    $query= mysqli_query($mysqli,$sql);
    while($row = mysqli_fetch_array($query)){
        unlink('uploads/'.$row['hinhanh']);
    }
    $sql_xoa = "DELETE FROM tin_tuc WHERE id_tintuc='".$id."'";
    mysqli_query($mysqli,$sql_xoa);
    header('Location:../../index.php?action=quanlytintuc&query=them');
}
?>
