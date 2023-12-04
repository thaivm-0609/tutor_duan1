<main class="catalog  mb ">     
            <div class="boxleft">
            <div class="box_title"><?php echo $tendm ?></div>
            <div class="items">
            <?php
                  foreach($dssp as $ds) {
                     extract($ds);
                     $hinh=$img_path.$img;
                     $linksp="index.php?act=sanphamct&idsp=".$id;
               ?>
             <div class="box_items">
               <div class="box_items_img">
                  <img src="<?php echo $hinh ?>" alt="">
                  <div class="add" href="">ADD TO CART</div>
               </div>
                <a class="item_name" href="<?php echo $linksp ?>"><?php echo $name ?></a>
                <p class="price"><?php echo $price ?></p>
                
             </div>
             <?php }?>
        </div>
      </div>
      <?php
         include "view/boxright.php";
        ?> 
</main>