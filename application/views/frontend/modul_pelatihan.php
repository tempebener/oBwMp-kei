  <section class="section-md bg-300 text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <h2>Our Featured Courses</h2>
            <p class="big">Our featured courses are selected through a rigorous process and uniquely created for each semester. They cover a lot of topics and are available both online and offline.</p>
          </div>
          <div class="owl-carousel owl-content-1" data-owl="{&quot;dots&quot;:true}" data-loop="false" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4">
                  <!-- Price box-->
                  <?php
              foreach ($modul_pelatihan as $post_new)
              {
              
              ?>
                  <div class="price-box">
                    <div class="price-box-media"><img class="price-box-img" src="<?php echo base_url()?>asset/foto_pelatihan/<?php echo $post_new->foto_pelatihan ?>" alt="" width="270" height="220"/>
                    <!--   <div class="price-box-tag"></div> -->
                    </div>
                    <div class="price-box-body">
                      <div class="price-box-title h6"><a href="#"><?php echo $post_new->judul_pelatihan ?></a></div>
                     <!--  <div class="price-box-text"></div> -->
                    </div>
                  </div>
                   <?php } ?>
          </div>
        </div>
      </section>