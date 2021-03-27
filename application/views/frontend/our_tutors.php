
      <!-- Person side-->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
<!--             <h5 class="text-primary"></h5>
 -->            <h2>Business Coach</h2>
            <p class="big">Belajar Bersama Para Ahli di Bidangnya.</p>
          </div>
          <div class="row row-30 row-lg-60">

        <?php foreach ($post_tutors as $t) {?>
            <div class="col-xs-6 col-lg-4">
                    <!-- Person side-->
                    <div class="person person-side" data-animate='{"class":"fadeInUp"}'>
                      <div class="person-media"><img class="person-img" src="<?php echo base_url();?>theme/images/our_tutors/<?= $t->foto ?>" alt="" width="135" height="135"/>
                      </div>
                      <div class="person-body">
                        <div class="person-title h6"><a href="<?php echo base_url();?>/<?= $t->link ?>"><?= $t->nama ?></a></div>
                        <div class="person-meta"><?= $t->jabatan ?></div>
                        <div class="person-text"><?= $t->quotes ?></div>
                        <!-- <div class="person-social social"><a class="icon social-icon custom-font-facebook" href="#"></a><a class="icon social-icon custom-font-twitter" href="#"></a><a class="icon social-icon custom-font-linkedin" href="#"></a>
                        </div> -->
                      </div>
                    </div>
            </div>
        <?php } ?>
            
          </div>
        </div>
      </section>