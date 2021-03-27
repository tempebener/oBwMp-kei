      <!-- BOD-->
      <section class="section-md bg-300 text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <h2>Board of Director</h2>
            <p class="big">Profil & Quotes dari para BOD Widodo Makmur Perkasa Group</p>
          </div>
          <div class="slick-person-container">
            <div class="slick-slider slick-person-img slider-nav" data-slick='{"slidesToShow":3,"arrows":false,"asNavFor":".slider-for","focusOnSelect":true,"centerMode":true,"centerPadding":"0px"}'>

            <?php foreach ($post_bod as $bod) {?>
              <div class="slick-content"><img src="<?php echo base_url();?>theme/images/foto_bod/<?= $bod->foto ?>" alt="" width="135" height="135"/>
              </div>
            <?php } ?>

            </div>

            <div class="slick-slider slick-person-content slider-for" data-slick='{"arrows":true,"asNavFor":".slider-nav","autoplay":true,"autoplaySpeed":5000,"fade":true}'>

            <?php foreach ($post_bod as $bod) {?>
              <div class="slick-content">
                      <!-- Quote-->
                      <blockquote class="quote quote-simple">
                        <q class="quote-text"><?= $bod->quotes ?></q>
                        <cite class="quote-cite h6"><?= $bod->nama ?></cite>
                        <div class="quote-meta"><?= $bod->jabatan ?></div>
                      </blockquote>
              </div>
            <?php } ?>

            </div>

          </div>
        </div>
      </section>