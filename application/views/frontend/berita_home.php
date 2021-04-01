 <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1 text-center" data-animate='{"class":"fadeIn"}'>
            
            <h2>Agropreneur Update</h2>
            <p class="big">Berita terbaru seputar Pertanian dan Peternakan, dilengkapi dengan informasi terkini nasional.</p>
          </div>
          <div class="row row-30 justify-content-center">
            <?php foreach ($berita as $post_new) {
$isi = character_limiter($post_new->isi_berita,200);
    
?>
            <div class="col-xs-10 col-sm-6">
                    <!-- Post-->
                    <div class="post" data-animate='{"class":"fadeIn"}'><a class="post-media" href="#"><img class="post-img" src="<?php echo base_url();?>theme/images/berita/<?php echo $post_new->gambar ?>" alt="" width="570" height="380"/></a>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date"><?php echo tgl_indo($post_new->tanggal) ?></div>
                        </div>
                        <!-- <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-message-circle"></div>
                          <div class="post-comment">3 comment(s)</div>
                        </div> -->
                      </div>
                      <div class="post-title h6"><a href="#"><?php echo $post_new->judul ?></a></div>
                      <div class="post-text"><?php echo $isi ?></div>
                    </div>
                    <?php } ?>
            </div>
            <div class="col-xs-10 col-sm-6">
             
                    <!-- Post-->
                    <?php foreach ($berita2 as $post_new) {
                      $isi = character_limiter($post_new->isi_berita,200);
    
?>
                    <div class="post" data-animate='{"class":"fadeInUp"}'>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date"><?php echo tgl_indo($post_new->tanggal) ?></div>
                        </div>
                       
                      </div>
                      <div class="post-title h6"><a href="#"><?php echo $post_new->judul ?></a></div>
                      <div class="post-text"><?php echo $isi ?></div>
                    </div>
                    <!-- Post-->
                   <?php } ?>
                 
            </div>
          </div>
        </div>
      </section>