<!DOCTYPE html>
<html lang="en">
 <!-- head -->
<?php $this->load->view('frontend/head')?>
<!-- head end -->

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
      <?php $this->load->view('frontend/whatweover')?>

      <!--pendaftaran start-->
      <?php $this->load->view('frontend/pendaftaran')?>
      <!--pendaftaran end-->

      <!--modul pelatihan start-->
      <?php $this->load->view('frontend/modul_pelatihan')?>
      <!--modul pelatihan end-->
      
      <!-- Our Tutors start -->
      <?php $this->load->view('frontend/our_tutors')?>
      <!-- Our Tutors end -->
    
      <!-- Counters-->
      <section class="section-lg bg-primary bg-image-wrap context-dark text-center text-md-left">
        <div class="bg-image-wrap-item bg-image" style="background-image:url(<?php echo base_url();?>theme/images/complete_facilities/1.jpg);"></div>
        <div class="container">
          <div class="row">
            <div class="col-lg-7">
              <div class="pr-xxl-5">
                <h2>Complete Facilities to be Entrepreneur</h2>
                <!-- <p class="big">Teachzy offers quality education helping you build your future career. Here just some of the facts that show why students choose us.</p> -->
                <div class="row row-30 row-lg-55">
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <div class="icon blurb-icon custom-font-graduated"></div>
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
                              <div class="icon blurb-icon custom-font-male-teacher"></div>
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
                              <div class="icon blurb-icon custom-font-student-at-desk"></div>
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
                              <div class="icon blurb-icon custom-font-university"></div>
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