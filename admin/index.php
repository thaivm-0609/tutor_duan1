<?php
include "../model/pdo.php";
include "../model/sanpham.php";
include "header.php";


if (isset($_GET['act'])){
    $act = $_GET['act'];
    switch ($act) {
        case 'listsp':
            include "sanpham/list.php";
            break;
        case 'addsp':
            include "sanpham/add.php";
            break;
        case 'update':
            include "sanpham/update.php";
            break;
    }
}
else {
    include "home.php";
}

include "footer.php";
?>