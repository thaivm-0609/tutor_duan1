<?php
    function insert_binhluan($idpro,$noidung,$iduser) {
        $ngaybinhluan = date('Y-m-d');
        $sql = "INSERT INTO `binhluan` (`noidung`,`idpro`,`iduser`,`ngaybinhluan`)
            VALUES ('$noidung','$idpro','$iduser','$ngaybinhluan')";
        pdo_execute($sql);
    }

    function load_binhluan_theosp($id) {
        $sql = "SELECT binhluan.*,taikhoan.user as user, taikhoan.email as email
            FROM binhluan 
            JOIN taikhoan ON binhluan.iduser = taikhoan.id
            WHERE idpro = $id";
        $dsbl = pdo_query($sql);

        return $dsbl;
    } 
?>