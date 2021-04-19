<!DOCTYPE html>
<html lang="en">
 <!-- head -->
<?php $this->load->view('frontend/head')?>
<!-- head end -->

<style type="text/css">
.icon-bar {
  position: fixed;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
  /*z-index: 1;*/
  right: 0;
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: #000;
}

.facebook {
  background: #3B5998;
  color: white;
}

.instagram {
  background: #ac2bac;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}

.content {
  margin-left: 75px;
  font-size: 30px;
}
</style>

  <body>
    <div class="page">
      <!--RD Navbar-->
      <!-- head -->
      <header class="section rd-navbar-absolute-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
        <?php $this->load->view('frontend/header')?>
      </header>
      <!-- head end -->

      <!-- Swiper default-->
      <!-- slider start -->
      <?php $this->load->view('frontend/slider')?>
      <!-- slider end -->

      <!-- Blurb default-->
      <!-- pengantar start -->
      <?php $this->load->view('frontend/pengantar')?>
      <!-- pengantar end -->

      <!--pendaftaran start-->
      <?php $this->load->view('frontend/pendaftaran')?>
      <!--pendaftaran end-->

      <!--modul pelatihan start-->
      <?php $this->load->view('frontend/modul_pelatihan')?>
      <!--modul pelatihan end-->
      
      <!-- Our Tutors start -->
      <?php $this->load->view('frontend/our_tutors')?>
      <!-- Our Tutors end -->
    
      <!-- Side SocMed -->
      <div class="icon-bar">
        <a href="https://www.facebook.com/kesatriaan.entrepreneur.indonesia" class="facebook"><i class="fa fa-facebook"></i></a> 
        <a href="https://www.instagram.com/kei_widodo_makmur" class="instagram"><i class="fa fa-instagram"></i></a> 
        <!-- <a href="#" class="google"><i class="fa fa-google"></i></a> 
        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a> -->
        <a href="https://www.youtube.com/channel/UCaXcQCE0lbJWRz9GQhtuXSw" class="youtube"><i class="fa fa-youtube"></i></a> 
      </div>

      <!-- Counters-->
      <section class="section-lg bg-primary bg-image-wrap context-dark text-center text-md-left">
        <div class="bg-image-wrap-item bg-image" style="background-image:url(<?php echo base_url();?>theme/images/complete_facilities/1.jpg);"></div>
        <div class="container">
          <div class="row">
            <div class="col-lg-7">
              <div class="pr-xxl-5">
                <h2>Fasilitas Pendampingan dan Pembelajaran</h2>
                <!-- <p class="big">Teachzy offers quality education helping you build your future career. Here just some of the facts that show why students choose us.</p> -->
                <div class="row row-30 row-lg-55">
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-graduated"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/fasilitas_pendampingan_pembelajaran/jaminan_akses_pemodalan.png" alt="Jaminan Akses Pemodalan" width="auto">
                            </div>
                            <div class="blurb-body">
                              <div class="blurb-counter-value h2"><!-- <span data-counter="">100</span><span class="counter-postfix">%</span> -->
                              </div>
                              <div class="blurb-title h4">Jaminan Akses Pemodalan</div>
                            </div>
                          </article>
                  </div>
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-male-teacher"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/fasilitas_pendampingan_pembelajaran/pendampingan_bisnis.png" alt="Pendampingan Bisnis" width="70px">
                            </div>
                            <div class="blurb-body">
                              <div class="blurb-counter-value h2"><!-- <span data-counter="">100%</span><span class="counter-postfix">%</span> -->
                              </div>
                              <div class="blurb-title h4">Pendampingan Bisnis</div>
                            </div>
                          </article>
                  </div>
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-student-at-desk"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/fasilitas_pendampingan_pembelajaran/pembimbing_profesional_berpengalaman.png" alt="Pembimbing Profesional & Berpengalaman" width="auto">
                            </div>
                            <div class="blurb-body">
                               <div class="blurb-counter-value h2"><!-- <span data-counter="">100%</span><span class="counter-postfix">%</span> -->
                              </div>
                              <div class="blurb-title h4">Pembimbing Profesional & Berpengalaman</div>
                            </div>
                          </article>
                  </div>
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <!-- <div class="icon blurb-icon custom-font-university"></div> -->
                              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/fasilitas_pendampingan_pembelajaran/pembelajaran_komprehensif.png" alt="Pembelajaran Komprehensif" width="auto">
                            </div>
                            <div class="blurb-body">
                              <div class="blurb-counter-value h2"><!-- <span data-counter="">100%</span><span class="counter-postfix">%</span> -->
                              </div>
                              <div class="blurb-title h4">Pembelajaran Komprehensif</div>
                            </div>
                          </article>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Post event-->
    
      <!-- ekonomi outlook start-->
      <?php $this->load->view('frontend/ekonomi_outlook')?>
      <!-- ekonomi outlook end-->

      <!-- BOD start -->
      <?php $this->load->view('frontend/bod')?>
      <!-- Our BOD end -->

      <!-- berita start -->
      <?php $this->load->view('frontend/berita_home')?>
      <!-- berita end -->
     

     
      <!-- Footer start-->
     <?php $this->load->view('frontend/footer')?>
     <!-- Footer end-->
    </div>
    <!-- Preloader-->
    <div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
      </div>
    </div>
  </body>
</html>