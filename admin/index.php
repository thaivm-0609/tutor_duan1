<?php
include "../model/pdo.php";
include "../model/sanpham.php";
include "../model/danhmuc.php";
include "header.php";


if (isset($_GET['act'])){
    $act = $_GET['act'];
    switch ($act) {
        case 'listsp':
            $listsanpham = listsp();
            include "sanpham/list.php";
            break;
        case 'addsp':
            $listdanhmuc = loadall_danhmuc();
            if (isset($_POST['themmoi'])) {
                $iddm = $_POST['iddm'];
                $tensp = $_POST['tensp'];
                $giasp = $_POST['giasp'];
                $mota = $_POST['mota'];
                $hinh = $_FILES['hinh']['name'];
                //uploadanh
                $target_dir="../upload/";
                $target_file = $target_dir.basename($_FILES['hinh']['name']);

                move_uploaded_file($_FILES['hinh']['tmp_name'],$target_file); //upload ảnh
                insert_sanpham($iddm,$tensp,$giasp,$mota,$hinh);
            }
            include "sanpham/add.php";
            break;
        case 'suasp':
            if (isset($_GET['idsp'])&&($_GET['idsp'] >0)) {
                $sanpham = loadone_sanpham($_GET['idsp']);
            }
            include "sanpham/update.php";
            break;
        case 'updatesp':
            if (isset($_POST['capnhat'])) {
                $idsp = $_POST['id'];
                $iddm = $_POST['iddm'];
                $tensp = $_POST['tensp'];
                $giasp = $_POST['giasp'];
                $mota = $_POST['mota'];
                $hinh = $_FILES['hinh']['name'];
                //uploadanh
                $target_dir="../upload/";
                $target_file = $target_dir.basename($_FILES['hinh']['name']);

                move_uploaded_file($_FILES['hinh']['tmp_name'],$target_file); //upload ảnh
                update_sanpham($idsp,$iddm,$tensp,$giasp,$mota,$hinh);
            }
            include "sanpham/update.php";
            break;
    }
}
else {
    include "home.php";
}

include "footer.php";
?>