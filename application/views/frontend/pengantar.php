 <section class="section-md bg-transparent text-center">
        <div class="container">

        <?php foreach ($post_pengantar as $p) {?>
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <!-- <h5 class="text-primary"></h5> -->
            <h2><?php echo $p->judul ?></h2>
            <p><?php echo $p->deskripsi ?></p>
          </div>
          <div class="row row-30 justify-content-center">
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp"}'>
                       <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-male-teacher"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_pengantar/<?php echo $p->icon_1 ?>" alt="Pendampingan Bisnis" width="100px" height="auto">
                            </div>
                      <div class="blurb-title h4"><?php echo $p->judul_icon_1 ?></div>
                      <div class="blurb-text big"><?php echo $p->deskripsi1 ?></div>
                    </article>
            </div>
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp","delay":".15s"}'>
                      <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-male-teacher"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_pengantar/<?php echo $p->icon_2 ?>" alt="Pendampingan Bisnis" width="100px" height="auto">
                            </div>
                      <div class="blurb-title h4"><?php echo $p->judul_icon_2 ?></div>
                      <div class="blurb-text big"><?php echo $p->deskripsi2 ?></div>
                    </article>
            </div>
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp","delay":".3s"}'>
                      <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-male-teacher"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_pengantar/<?php echo $p->icon_3 ?>" alt="Pendampingan Bisnis" width="100px" height="auto">
                            </div>
                      <div class="blurb-title h4"><?php echo $p->judul_icon_3 ?></div>
                      <div class="blurb-text big"><?php echo $p->deskripsi3 ?></div>
                    </article>
            </div>
          </div>

        <?php } ?>
        </div>
      </section>