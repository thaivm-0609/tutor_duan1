<div class="boxright">
               <div class="mb">
                  <div class="box_title">TÀI KHOẢN</div>
              <div class="box_content form_account">
                <?php
                if(isset($_SESSION['user'])){
                  extract($_SESSION['user']);
                     
                    ?>
                     Xin Chào
                 <?=$user?>
                 <li class="form_li">
                  <a href="index.php?act=quenmk">Quên mật khẩu</a>
                </li>
                 <li class="form_li">
                  <a href="index.php?act=edit_taikhoan">Cập nhật tài khoản</a>
                </li>
                <?php 
                 if($role==1){
                ?>
                <li class="form_li">
                  <a href="admin/index.php">Đăng nhập admin</a>
                </li>
                <?php }?>
                <li class="form_li">
                  <a href="index.php?act=thoat">Thoát </a>
                </li>
                    <?php
                }else{
                ?>
                  <form action="index.php?act=dangnhap" method="POST">
                  <h4>Tên đăng nhập</h4><br>
                  <input type="text" name="user">
                  <h4>Mật khẩu</h4><br>
                  <input type="password" name="pass"><br>
                  <input type="checkbox" name="" id="">Ghi nhớ tài khoản?
                 <br><input type="submit" value="Đăng nhập" name="dangnhap">
                 <li class="form_li"><a href="#">Quên mật khẩu</a></li>
                 <li class="form_li"><a href="index.php?act=dangky">Đăng kí thành viên</a></li>
                </form>
               <?php }?>
              </div>
               </div>
               <div class="mb">
                  <div class="box_title">DANH MỤC</div>
                  <div class="box_content2 product_portfolio">
                    <ul >
                      <?php
                        foreach($dsdm as $dm){
                          extract($dm);
                          $linkdm="index.php?act=sanpham&iddm=".$id;
                      ?>
                       <li><a href="<?php echo $linkdm ?>"><?php echo $nameDM ?></a></li>
                       <?php } ?>
                    </ul>
                  </div>
                  <div class="box_search">
                    <form action="index.php?act=sanpham" method="POST">
                      <input type="text" name="keyw" id="" placeholder="Từ khóa tìm kiếm">
                     <input type="submit" name="timkiem" value="Tìm kiếm">
                    </form>
                  </div>
               </div>
               <!-- DANH MỤC SẢN PHẨM BÁN CHẠY -->
               <div class="mb">
                  <div class="box_title">Top 10 sản phẩm bán chạy</div>
                  <div class="box_content">
                    <?php 
                      foreach($dstop10 as $sp){
                        extract($sp);
                        $linksp="index.php?act=sanphamct&idsp=".$id;
                        $imgURL=$img_path.$img;
                    ?>
                  <div class="selling_products" style="width:100%;">
                    <img src="<?php echo $imgURL?>" alt="anh">
                    <a href="<?php echo $linksp?>"><?php echo $name?></a>
                  </div>
                  <?php } ?>
                  </div>
               </div>
              </div>