  <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
<!--             <h5 class="text-primary"></h5>
 -->            <h2>Ekonomi Outlook</h2>
            <p class="big">Outlook pertumbuhan ekonomi secara kolektif bidang peternakan dan pertanian.</p>
          </div>
          <div class="row row-30 justify-content-center">
              <?php
              foreach ($ekonomi_outlook as $post_new)
              {
              
              ?>
            <div class="col-xs-8 col-sm-6 col-md-4">
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp"}'><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url()?>theme/images/foto_ekonomi/<?php echo $post_new->foto_eo ?>" alt="" width="370" height="240"/>
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
      </section>