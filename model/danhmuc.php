<?php
function loadall_danhmuc(){
    $sql="select id, name as nameDM from danhmuc order by id desc";
    $listdanhmuc=pdo_query($sql);
    return  $listdanhmuc;
}
function load_ten_dm($iddm){
    if($iddm>0){
    $sql="select id, name as nameDM from danhmuc where id=".$iddm;
    $dm=pdo_query_one($sql);
    extract($dm);
    return $nameDM;
    }else{
        return "";
    }
}
?>