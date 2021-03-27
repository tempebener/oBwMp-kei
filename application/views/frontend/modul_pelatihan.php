 <section class="section-md bg-300 text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <h2>Events dan Pelatihan</h2>
            <p class="big">Webinar Entrepreneur-Kesatriaan Sekolah Tani/Ternak-Pengembangan Ekonomi-Seni&Budaya.</p>
          </div>

         
          <div class="owl-carousel owl-content-1" data-owl="{&quot;dots&quot;:true}" data-loop="false" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4">
                  <!-- Price box-->
                   <?php
              foreach ($pelatihan as $post_new)
              {
              
              ?>
                  <div class="price-box">
                    <div class="price-box-media"><img class="price-box-img" src="<?php echo base_url()?>theme/images/foto_pelatihan/<?php echo $post_new->foto ?>" alt="" width="270" height="220"/>
                      <!-- <div class="price-box-tag"></div> -->
                    </div>
                    <div class="price-box-body">
                      <div class="price-box-title h6"><a href="#" class="margin-auto"><?php echo $post_new->judul_pelatihan ?></a></div>
                     <!--  <div class="price-box-text"></div>
 -->                    </div>
                  </div>
                  <!-- Price box-->
               <?php } ?>
          </div>
        </div>
      </section>