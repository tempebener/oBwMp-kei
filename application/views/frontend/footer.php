 <footer class="section footer">
        <div class="footer-top bg-300">
          <div class="container">
            <div class="row row-30">
              <div class="col-xs-12 col-md-2">
                <ul class="list list-sm">
                  <li class="list-item"><a class="link link-inherit" href="<?php echo base_url();?>">
                    <img src="<?php echo base_url();?>theme/images/logo-kesatriaan.png" alt="Kesatriaan Entrepreneur Indonesia" width="200px" height="auto"></a>
                  </li>
                </ul>
              </div>
              <div class="col-xs-12 col-md-4">
                <h5 class="footer-title">Kontak</h5>
                <ul class="list list-icons">
                  <li class="list-item">
                    <div class="list-icon custom-font-pin"></div><a class="link link-inherit" href="#">Joglo Tumiyono Desa Ngerangan, Kecamatan Bayat Kabupaten Klaten, Jawa Tengah
                    </a>
                  </li>
                  <li class="list-item">
                    <div class="list-icon custom-font-email"></div><a class="link link-inherit" href="mailto:#">kesatriaan.entrepreneur@gmail.com</a>
                  </li>
                  <li class="list-item">
                    <div class="list-icon custom-font-phone"></div><span><span>Call Us: </span><a class="link link-inherit" href="tel:#">1-800-123-1234</a></span>
                  </li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h5 class="footer-title">Event Terbaru</h5>
                <ul class="list list-sm">
                  <li class="list-item">
                    <?php foreach ($event_terbaru as $post_new){ ?>
                      <div class="post post-responsive post-responsive-1"><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url();?>theme/images/foto_event/event_detail/<?php echo $post_new->gambar ?>" alt="" width="20" height="10"/></a>
                        <div class="post-meta">
                          <div class="post-meta-item">
                            <div class="post-meta-icon custom-font-calendar"></div>
                            <div class="post-date"><?php echo tgl_indo($post_new->date_event_detail) ?></div>
                          </div>
                        </div>
                        <div class="post-title h6"><a href="<?php echo base_url("event_detail/$post_new->id_event_detail/$post_new->judul_event_detail_seo ") ?>"><?php echo $post_new->judul_event_detail ?></a></div>
                      </div>
                  <?php } ?>
                  </li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h5 class="footer-title">Support By</h5>
                <ul class="list list-sm">
                  <li class="list-item"><a class="link link-inherit" href="https://widodomakmurperkasa.co.id" target="_blank">PT WIDODO MAKMUR PERKASA</a></li>
                  <li class="list-item"><a class="link link-inherit" href="https://cianjurartamakmur.co.id" target="_blank">PT CIANJUR ARTA MAKMUR</a></li>
                  <li class="list-item"><a class="link link-inherit" href="https://widodomakmurunggas.co.id" target="_blank">PT WIDODO MAKMUR UNGGAS</a></li>
                  <li class="list-item"><a class="link link-inherit" href="https://garutmakmurperkasa.co.id" target="_blank">PT GARUT MAKMUR PERKASA</a></li>
                  <li class="list-item"><a class="link link-inherit" href="https://youtube.com/channel/UCy4T3aRZ0fg1JOJXCjVcTnw" target="_blank">WTV</a></li>

                </ul>
              </div>
             <!--  <div class="col-6 col-md-3">
                <h5 class="footer-title">Teachers</h5>
                <ul class="list list-sm">
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Olivia Thomas</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Alice Bohm</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Max Turner</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Jane Smith</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">John Stevens</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Martha Stevens</a></li>
                  <li class="list-item"><a class="link link-inherit" href="team-member.html">Connor Walker</a></li>
                </ul>
              </div> -->
            </div>
          </div>
        </div>
        <div class="footer-bottom bg-700 context-dark text-center">
          <div class="container">
                  <!-- Copyright-->
                  <p class="rights"><span>&copy; 2021&nbsp;</span><span>Kesatriaan Entrepreneur Indonesia</span><span> All rights reserved.&nbsp;</span><a class="link link-inherit" href="privacy-policy.html"></a></p>
          </div>
        </div>
      </footer>
