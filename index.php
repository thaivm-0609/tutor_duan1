<?php
session_start();
    include "model/pdo.php";
    include "model/danhmuc.php";
    include "model/sanpham.php";
    include "model/taikhoan.php";
    include "global.php";
    include "view/header.php";
    $sanpham=loadall_sanpham_home();
    $dsdm=loadall_danhmuc();
    $dstop10=loadall_sanpham_top10();
    if(isset($_GET['act']) && ($_GET['act'] != "")){
        $act = $_GET['act'];
        //echo $act;
        switch ($act) {
            case 'sanpham':
                if((isset($_POST['keyw']) && ($_POST['keyw']!=""))){
                    $keyw=$_POST['keyw'];
                }
                else{
                    $keyw="";
                }
                if(isset($_GET['iddm']) && ($_GET['iddm']>0)){
                  $iddm=$_GET['iddm'];
                  
                }else{
                    $iddm=0;
                }
                $tendm = load_ten_dm($iddm); 
                $dssp = loadall_sanpham($keyw, $iddm);
                include "view/sanpham.php";
                break;
            case 'sanphamct':
                if(isset($_GET['idsp']) && ($_GET['idsp']>0)){
                    $id=$_GET['idsp'];
                     $onesp=loadone_sanpham($id);
                     include "view/sanphamct.php";
                  }else{
                      include "view/home.php";
                  }
                break;
            case 'dangnhap':
                if(isset($_POST['dangnhap']) && ($_POST['dangnhap'])){
                    $user=$_POST['user'];
                    $pass=$_POST['pass'];
                    $checkuser=checkuser($user,$pass);
                     if(is_array($checkuser)){
                        $_SESSION['user']=$checkuser;
                        $_SESSION['pass']=$checkuser;
                        header('Location: index.php');
                    // $thongbao="bạn đã đăng nhập thành công ";
                }else{
                    $thongbao="tài khoản không tồn tại. Vui lòng đăng ký";
                    include "view/dangky.php";
                }
            }
                break;
            case 'dangky':
                if(isset($_POST['dangky']) && ($_POST['dangky'])){
                    $email=$_POST['email'];
                    $user=$_POST['user'];
                    $pass=$_POST['pass'];
                    insert_taikhoan($email,$user,$pass);
                    $thongbao="Đã đăng ký thành công.Vui lòng đăng nhập để thực hiện chức năng bình luận hoặc đặt hàng ";
                }
                include "view/dangky.php";
                break;
            case 'thoat':
                session_unset();
                header('Location: index.php');
                    break;
            default:
                include "view/home.php";
                break;
        }
    }else{
        include "view/home.php";
    }
    include "view/footer.php";
?>  
</div>
<script src="main.js"></script>
</body>
</html>