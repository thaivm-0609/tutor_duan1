<?php

function checkuser($user,$pass){
    $sql="select * from taikhoan where user='".$user."' AND pass='".$pass."'" ;
    $sp=pdo_query_one($sql);
    return $sp;
}
function insert_taikhoan($email,$user,$pass){
    $sql="INSERT INTO `taikhoan` ( `email`, `user`, `pass`,  `role`) VALUES ( '$email', '$user','$pass', 2); ";
    pdo_execute($sql);
}
?>