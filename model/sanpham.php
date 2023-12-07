<?php
function loadall_sanpham($keyw="",$iddm=0){
    $sql="select * from sanpham where 1";
    // where 1 tức là nó đúng
    if($keyw!=""){
        $sql.=" and name like '%".$keyw."%'";
    }
    if($iddm>0){
        $sql.=" and iddm ='".$iddm."'";
    }
    $sql.=" order by id desc";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}
function listsp() {
    $sql = "SELECT *, sanpham.id as idsp, COUNT(binhluan.id) as soBinhLuan
        FROM sanpham 
        JOIN binhluan ON binhluan.idpro = sanpham.id
        WHERE 1
        GROUP BY sanpham.id";
    $listsanpham = pdo_query($sql);
    
    return $listsanpham;
}
function loadall_sanpham_top10(){
    $sql="select * from sanpham where 1 order by luotxem desc limit 0,10";
    $listsanpham=pdo_query($sql);
    return $listsanpham;
}
function loadall_sanpham_home(){
    $sql="select * from sanpham where 1 order by id desc limit 0,9";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}
function loadone_sanpham($id){
    $sql="select * from sanpham where id=".$id;
    $sp=pdo_query_one($sql);
    return $sp;
}

function insert_sanpham($iddm,$tensp,$giasp,$mota,$hinh) {
    $sql= "INSERT INTO `sanpham` (`iddm`,`name`,`price`,`mota`,`img`)
        VALUES('$iddm','$tensp','$giasp','$mota','$hinh')";
    pdo_execute($sql);
}

function update_sanpham($idsp,$iddm,$tensp,$giasp,$mota,$hinh) {
    $sql="UPDATE `sanpham`
        SET `iddm` = '{$iddm}', `name`='{$tensp}', `price`= '{$giasp}', `mota` = '{$mota}', `img`='{$hinh}'
        WHERE id = $idsp";
    pdo_execute($sql);
}
?>