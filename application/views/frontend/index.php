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

      <!-- Blog-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1 text-center" data-animate='{"class":"fadeIn"}'>
            <h5 class="text-primary">Latest news</h5>
            <h2>Agropreneur Update</h2>
            <p class="big">Berita terbaru seputar Pertanian dan Peternakan, dilengkapi dengan informasi terkini nasional.</p>
          </div>
          <div class="row row-30 justify-content-center">
            <div class="col-xs-10 col-sm-6">
                    <!-- Post-->
                    <div class="post" data-animate='{"class":"fadeIn"}'><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url();?>theme/frontend/images/image-09-570x380.jpg" alt="" width="570" height="380"/></a>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date">April 23, 2020</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-message-circle"></div>
                          <div class="post-comment">3 comment(s)</div>
                        </div>
                      </div>
                      <div class="post-title h6"><a href="single-post.html">Liberal Arts Colleges Rankings</a></div>
                      <div class="post-text">The National Liberal Arts Colleges, including schools like Wellesley College and Bowdoin College, emphasize undergraduate education and award at least half of their degrees in the liberal arts fields of study.</div>
                    </div>
            </div>
            <div class="col-xs-10 col-sm-6">
              <h5 class="text-primary">Popular</h5>
                    <!-- Post-->
                    <div class="post" data-animate='{"class":"fadeInUp"}'>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date">April 23, 2020</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-message-circle"></div>
                          <div class="post-comment">3 comment(s)</div>
                        </div>
                      </div>
                      <div class="post-title h6"><a href="single-post.html">Studying in the United States</a></div>
                      <div class="post-text">International students increasingly want to come to the United States for college or graduate school. Use our tips, rankings, and more to help you find the best school for you.</div>
                    </div>
                    <!-- Post-->
                    <div class="post" data-animate='{"class":"fadeInUp"}'>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date">April 23, 2020</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-message-circle"></div>
                          <div class="post-comment">3 comment(s)</div>
                        </div>
                      </div>
                      <div class="post-title h6"><a href="single-post.html">5 Ways to Pay for Community College</a></div>
                      <div class="post-text">Most community college students qualify for need-based aid, experts say. Many community colleges offer promise programs, which offer tuition-free awards to eligible students - mainly to students with Pell grant eligibility.</div>
                    </div>
                    <!-- Post-->
                    <div class="post" data-animate='{"class":"fadeInUp"}'>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date">April 23, 2020</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-message-circle"></div>
                          <div class="post-comment">3 comment(s)</div>
                        </div>
                      </div>
                      <div class="post-title h6"><a href="single-post.html">Consider MBA Programs That Offer Summer Prep</a></div>
                      <div class="post-text">New MBA students can brush up on finance and accounting before classes begin. Summer preparatory programs offered through schools allow students to get a head start on making connections and building skills.</div>
                    </div>
            </div>
          </div>
        </div>
      </section>

     
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