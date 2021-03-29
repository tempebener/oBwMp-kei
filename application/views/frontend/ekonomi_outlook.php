  <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <!-- <h5 class="text-primary"></h5> -->
            <h2>Ekonomi Outlook</h2>
            <p class="big">Outlook pertumbuhan ekonomi secara kolektif bidang peternakan dan pertanian.</p>
          </div>
          <div class="row row-30 justify-content-center">
         
          <div class="owl-carousel owl-content-1" data-owl="{&quot;dots&quot;:true}" data-loop="false" data-items="1" data-sm-items="2" data-md-items="2" data-lg-items="3">
              <?php
              foreach ($ekonomi_outlook as $post_new)
              {
              
              ?>
            <div>
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp"}'><a class="post-media" href="#"><img class="post-img post-img-custom" src="<?php echo base_url()?>theme/images/foto_ekonomi/<?php echo $post_new->foto_eo ?>" alt=""/>
                       <!--  <div class="post-date">
                          <div class="post-day">19</div>
                          <div class="post-month"></div>
                        </div> --></a>
                      <div class="post-heading h4">
                        <div class="post-title"><a href="#"><?php echo $post_new->judul_eo ?></a></div>
<!--                         <div class="post-price"></div>
 -->                      </div>
                      <div class="post-meta post-meta-vertical big">
                        <!-- <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-clock"></div>
                          <div class="post-time"><?php echo tgl_indo($post_new->date_time) ?></div>
                        </div> -->
                        <div class="post-meta-item">
                         <!--  <div class="post-meta-icon custom-font-pin"></div>
                          <div class="post-location">Cambridge, MA 02138, USA</div> -->
                        </div>
                      </div>
                    </div>
            </div>
          <?php } ?>

          </div>
          </div>
        </div>
      </section>