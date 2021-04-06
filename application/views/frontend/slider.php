      <!-- Swiper default-->
      <section class="swiper-container swiper-1 context-dark text-center" data-swiper>
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
          <!-- Slides-->
        <?php foreach ($post_slider as $u) {?>
          <div class="swiper-slide section-md" style="background-image: url(<?php echo base_url()?>theme/images/foto_slider/<?=$u->foto?> )">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-md-9 col-lg-7">
                  <h1><?php echo $u->jdl_1 ?></h1>
                  <p class="big"><?php echo $u->jdl_2 ?></p><a class="btn btn-primary" href="#">selengkapnya</a>
                </div>
              </div>
            </div>
          </div>
   <?php
          }
        ?>
       
         
        </div>
        <!-- Pagination-->
        <div class="swiper-pagination"></div>
      </section>