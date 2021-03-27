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
                  <h1>Inspiration, Innovation and Discovery</h1>
                  <p class="big">Any successful career starts with good education. Together with us you will have deeper knowledge of the subjects that will be especially useful for you when climbing the career ladder.</p><a class="btn btn-primary" href="academics.html">Learn more</a>
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