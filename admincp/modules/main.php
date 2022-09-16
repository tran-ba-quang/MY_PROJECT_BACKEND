
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="modules/main.css">
</head>
<body>
<div class="main"> 
    <?php
    if(isset($_GET['action']) && $_GET['query']){
        $tam = $_GET['action'];
        $query= $_GET['query'];
    }else{
        $tam = '';
        $query= '';
    }
    if($tam=='quanlydanhmucsanpham' && $query=='them'){
        include("modules/quanlydanhmucsp/them.php");
        include("modules/quanlydanhmucsp/lietke.php");
    }elseif($tam=='quanlydanhmucsanpham' && $query=='sua'){
        include("modules/quanlydanhmucsp/sua.php");
    }elseif($tam=='gioithieutrang' && $query=='sua'){
        include("modules/gioithieutrang/sua.php");
    }elseif($tam=='gioithieutrang' && $query=='lietke'){
        include("modules/gioithieutrang/lietke.php");
    }elseif($tam=='quanlysp' && $query=='them'){
        include("modules/quanlysp/them.php");
        include("modules/quanlysp/lietke.php");

    }elseif($tam=='quanlysp' && $query=='sua'){
        include("modules/quanlysp/sua.php");

    }elseif($tam=='quanlytintuc' && $query=='them'){
        include("modules/quanlytintuc/them.php");
        include("modules/quanlytintuc/lietke.php");

    }elseif($tam=='quanlytintuc' && $query=='sua'){
        include("modules/quanlytintuc/sua.php");
    }
    elseif($tam=='quydinhsudung' && $query=='them'){
        include("modules/quydinhsudung/them.php");
        include("modules/quydinhsudung/lietke.php");

    }elseif($tam=='quydinhsudung' && $query=='sua'){
        include("modules/quydinhsudung/sua.php");
    }
    elseif($tam=='quanlylienhe' && $query=='xem'){
        include("modules/quanlylienhe/lietkelienhe.php");    
    }
    elseif($tam=='quanlydonhang' && $query=='lietke'){
        include("modules/quanlydonhang/lietke.php");
    }
    elseif($tam=='donhang' && $query=='xemdonhang'){
        include("modules/quanlydonhang/xemdonhang.php");
    }
    else {
        include("modules/footer.php");
    }
    ?>
</div>
</body>
</html>