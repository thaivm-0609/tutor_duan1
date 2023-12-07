<main class="catalog  mb ">

<div class="boxleft">
  <div class="  mb">
    <div class="box_title">CHI TIẾT SẢN PHẨM</div>
    <div class="box_content">
      <?php extract($onesp);
          $img=$img_path.$img; 
          
        ?>
      <span>Tên: <?php echo $name ?></span>
      <img src="<?php echo $img ?>">
      <span>Số lượng: <?php echo $soluong ?></span>
      <span>Giá: <?php echo $price ?></span>
    </div>
  </div>

  <div class="mb">
    <div class="box_title">BÌNH LUẬN</div>
    <div class="box_content2  product_portfolio binhluan ">
      <table>
        <?php foreach ($dsbl as $binhluan) { 
          extract($binhluan);  
        ?>
          <tr>
            <td><?php echo $id ?></td>
            <td><?php echo $noidung ?></td>
            <td><?php echo $email ?></td>
            <td><?php echo $ngaybinhluan ?></td>
          </tr>
        <?php } ?>
      </table>
    </div>
    <div class="box_search">
      <form action="index.php?act=sanphamct" method="POST">
        <input type="hidden" name="idpro" value="<?=$onesp['id']?>">
        <input type="text" name="noidung">
        <input type="submit" name="guibinhluan"
          value="Gửi bình luận">
      </form>
    </div>

  </div>

  <div class=" mb">
    <div class="box_title">SẢN PHẨM CÙNG LOẠI</div>
    <div class="box_content">
      <li><a href>Sản phẩm 1</a></li>
      <li><a href>Sản phẩm 1</a></li>
      <li><a href>Sản phẩm 1</a></li>
      <li><a href>Sản phẩm 1</a></li>
      <li><a href>Sản phẩm 1</a></li>
    </div>
  </div>
</div>
      <?php
         include "view/boxright.php";
      ?>

</main>