<div class="row2">
    <div class="row2 font_title">
        <h1>DANH SÁCH HÀNG HÓA</h1>
    </div>
    <div class="row2 form_content ">
        <form action="#" method="POST">
            <div class="row2 mb10 formds_loai">
                <table>
                    <tr>
                        <th></th>
                        <th>MÃ SẢN PHẨM</th>
                        <th>TÊN SẢN PHẨM</th>
                        <th>GIÁ</th>
                        <th>HÌNH</th>
                        <th>LƯỢT XEM</th>
                        <th>SỐ BÌNH LUẬN</th>
                        <th></th>
                    </tr>

                    <?php
                    foreach ($listsanpham as $sanpham) {
                        extract($sanpham);
                        
                        $hinhpath = "../upload/" . $img;
                        
                        $suasp = "index.php?act=suasp&idsp=" . $idsp;
                        $hard_delete = "index.php?act=hard_delete&idsp=" . $idsp;
                        $soft_delete = "index.php?act=soft_delete&idsp=" . $idsp;
                        if (is_file($hinhpath)) {
                            $hinhpath = "<img src= '" . $hinhpath . "' width='100px' height='100px'>";
                        } else {
                            $hinhpath = "No file img!";
                        }
                        echo '<tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>' . $idsp . '</td>
                            <td>' . $name . '</td>
                            <td>' . $price . '</td>
                            <td>' . $hinhpath . '</td>
                            <td>' . $luotxem . '</td>
                            <td>' . $soBinhLuan . '</td>
                            <td>
                                <a href="' . $suasp . '"><input type="button" value="Sửa"> </a>  
                                <a href="' . $hard_delete .'"><input type ="button" value="Xóa cứng" onclick="return confirm(\'Bạn có chắc chắn muốn xóa\')"></a>
                                <a href="' . $soft_delete .'"><input type ="button" value="Xóa mềm" onclick="return confirm(\'Bạn có chắc chắn muốn xóa\')"></a>
                            </td>
                    </tr>';
            
                    }
                    ?>
                </table>
            </div>
            <div class="row mb10 ">
                <a href="index.php?act=addsp"> <input class="mr20" type="button" value="NHẬP THÊM"></a>
            </div>
        </form>
    </div>
</div>




</div>