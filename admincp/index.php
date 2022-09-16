

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="admincp.css">
    <title>Admincp</title>
</head>
<?php
session_start();
include('config/config.php');
if(!isset($_SESSION['dangnhap'])){
    header('Location:login.php');
}
?>
<body class="welcom">
    <h3 class="title_admin">Welcom to AdminCP</h3>
    <div class="headerad"><img src="imagead/banner2.jpg"></div>
    <div class="wrapper">
    <?php
            include("config/config.php");
            include("modules/dangxuat.php");
    ?>
    </div>
    <div class="noidungad">
        <?php
            include("modules/menu.php");
            include("modules/main.php");
       ?> 
    </div>
</body>
</html>