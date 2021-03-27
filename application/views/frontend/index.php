<!DOCTYPE html>
<html lang="en">
 <!-- head -->
<?php $this->load->view('frontend/head')?>
<!-- head end -->

  <body>
    <div class="page">
      <!--RD Navbar-->
     <!-- head -->
<?php $this->load->view('frontend/header')?>
<!-- head end -->
      <!-- Swiper default-->
      <!-- slider -->
<?php $this->load->view('frontend/slider')?>
<!-- slider end -->

      <!-- Blurb default-->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <h5 class="text-primary">Guaranteed Success</h5>
            <h2>What We Offer</h2>
            <p class="big">Teachzy offers students the best of education and entertainment opportunities available in the area. We are glad to take care of every student and university entrant.</p>
          </div>
          <div class="row row-30 justify-content-center">
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp"}'>
                      <div class="icon blurb-icon custom-font-online-course"></div>
                      <div class="blurb-title h4">Online Education</div>
                      <div class="blurb-text big">Teachzy provides online education services with all learning materials and lectures available to you.</div>
                    </article>
            </div>
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp","delay":".15s"}'>
                      <div class="icon blurb-icon custom-font-degree"></div>
                      <div class="blurb-title h4">Programs &amp; Courses</div>
                      <div class="blurb-text big">We offer a wide range of courses and  programs that encompass lots of knowledge spheres.</div>
                    </article>
            </div>
            <div class="col-sm-6 col-md-4">
                    <!-- Blurb-->
                    <article class="blurb blurb-2" data-animate='{"class":"fadeInUp","delay":".3s"}'>
                      <div class="icon blurb-icon custom-font-school"></div>
                      <div class="blurb-title h4">Campus Events</div>
                      <div class="blurb-text big">Our campus is the hub to a talented and diverse student community that turns opportunities into success.</div>
                    </article>
            </div>
          </div>
        </div>
      </section>
      <!--modul pelatihan start-->
      <?php $this->load->view('frontend/modul_pelatihan')?>
      <!--modul pelatihan end-->
      

      <!-- Our Tutors start -->
      <?php $this->load->view('frontend/our_tutors')?>
      <!-- Our Tutors end -->
    

      <!-- Counters-->
      <section class="section-lg bg-primary bg-image-wrap context-dark text-center text-md-left">
        <div class="bg-image-wrap-item bg-image" style="background-image:url(images/image-05-875x705.jpg);"></div>
        <div class="container">
          <div class="row">
            <div class="col-lg-7">
              <div class="pr-xxl-5">
                <h2>Why Choose Us</h2>
                <p class="big">Teachzy offers quality education helping you build your future career. Here just some of the facts that show why students choose us.</p>
                <div class="row row-30 row-lg-55">
                  <div class="col-6 col-sm-3 col-md-6">
                          <!-- Blurb side-->
                          <article class="blurb blurb-side">
                            <div class="blurb-item">
                              <div class="icon blurb-icon custom-font-graduated"></div>
                            </div>
                            <div class="blurb-body">
                              <div class="blurb-counter-value h2"><span data-counter="">100</span><span class="counter-postfix">%</span>
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
                              <div class="blurb-counter-value h2"><span data-counter="">100%</span><span class="counter-postfix">%</span>
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
                               <div class="blurb-counter-value h2"><span data-counter="">100%</span><span class="counter-postfix">%</span>
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
                              <div class="blurb-counter-value h2"><span data-counter="">100%</span><span class="counter-postfix">%</span>
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
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1" data-animate='{"class":"fadeIn"}'>
            <h5 class="text-primary">Don’t miss anything</h5>
            <h2>Upcoming Events</h2>
            <p class="big">Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.</p>
          </div>
          <div class="row row-30 justify-content-center">
            <div class="col-xs-8 col-sm-6 col-md-4">
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp"}'><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url();?>theme/frontend/images/image-06-370x240.jpg" alt="" width="370" height="240"/>
                        <div class="post-date">
                          <div class="post-day">19</div>
                          <div class="post-month">Sep</div>
                        </div></a>
                      <div class="post-heading h4">
                        <div class="post-title"><a href="single-post.html">Creative Day</a></div>
                        <div class="post-price">$20</div>
                      </div>
                      <div class="post-meta post-meta-vertical big">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-clock"></div>
                          <div class="post-time">12:00 am - 2:00 pm</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-pin"></div>
                          <div class="post-location">Cambridge, MA 02138, USA</div>
                        </div>
                      </div>
                    </div>
            </div>
            <div class="col-xs-8 col-sm-6 col-md-4">
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp","delay":".15s"}'><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url();?>theme/frontend/images/image-07-370x240.jpg" alt="" width="370" height="240"/>
                        <div class="post-date">
                          <div class="post-day">21</div>
                          <div class="post-month">Sep</div>
                        </div></a>
                      <div class="post-heading h4">
                        <div class="post-title"><a href="single-post.html">Poetry Event</a></div>
                        <div class="post-price">$15</div>
                      </div>
                      <div class="post-meta post-meta-vertical big">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-clock"></div>
                          <div class="post-time">11:00 am - 1:00 pm</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-pin"></div>
                          <div class="post-location">233 Main St. New York United States</div>
                        </div>
                      </div>
                    </div>
            </div>
            <div class="col-xs-8 col-sm-6 col-md-4">
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp","delay":".3s"}'><a class="post-media" href="single-post.html"><img class="post-img" src="<?php echo base_url();?>theme/frontend/images/image-08-370x240.jpg" alt="" width="370" height="240"/>
                        <div class="post-date">
                          <div class="post-day">26</div>
                          <div class="post-month">Sep</div>
                        </div></a>
                      <div class="post-heading h4">
                        <div class="post-title"><a href="single-post.html">Undergraduate Day</a></div>
                        <div class="post-price">Free</div>
                      </div>
                      <div class="post-meta post-meta-vertical big">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-clock"></div>
                          <div class="post-time">1:00 pm - 11:59 pm</div>
                        </div>
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-pin"></div>
                          <div class="post-location">Cambridge, MA 02138, USA</div>
                        </div>
                      </div>
                    </div>
            </div>
          </div>
        </div>
      </section>
      
      <!-- Testimonials start -->
      <?php $this->load->view('frontend/testimonials')?>
      <!-- Our Tutors end -->

      <!-- Blog-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1 text-center" data-animate='{"class":"fadeIn"}'>
            <h5 class="text-primary">Latest news</h5>
            <h2>Agropreneur Update</h2>
            <p class="big">We regularly share news and updates in our university’s blog. The articles we publish vary from announcing new events and courses to providing useful information to our students.</p>
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
      <!-- Call to action-->
      <section class="section-sm bg-primary context-dark text-center">
        <div class="container">
          <div class="group-16 d-lg-flex flex-wrap justify-content-between align-items-center">
            <h3>Prepare Your Application Letter for Admission</h3><a class="btn btn-primary" href="#">Apply</a>
          </div>
        </div>
      </section>
      <!-- Footer default-->
      <footer class="section footer">
        <div class="footer-top bg-300">
          <div class="container">
            <div class="row row-30">
              <div class="col-xs-6 col-md-3">
                <h5 class="footer-title">Contacts</h5>
                <ul class="list list-icons">
                  <li class="list-item">
                    <div class="list-icon custom-font-pin"></div><a class="link link-inherit" href="#">Brooklyn, NY 10036, 16-2 United States</a>
                  </li>
                  <li class="list-item">
                    <div class="list-icon custom-font-email"></div><a class="link link-inherit" href="mailto:#">info@demolink.org</a>
                  </li>
                  <li class="list-item">
                    <div class="list-icon custom-font-phone"></div><span><span>Call Us: </span><a class="link link-inherit" href="tel:#">1-800-123-1234</a></span>
                  </li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h5 class="footer-title">Socials</h5>
                <ul class="list list-sm">
                  <li class="list-item"><a class="link link-inherit" href="#">Facebook</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Pinterest</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">LinkedIn</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Instagram</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Twitter</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">YouTube</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h5 class="footer-title">About Us</h5>
                <ul class="list list-sm">
                  <li class="list-item"><a class="link link-inherit" href="#">Our Mission</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Graduate Admission</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Our Vision</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Our Values</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">About Us</a></li>
                  <li class="list-item"><a class="link link-inherit" href="academics.html">Academics</a></li>
                  <li class="list-item"><a class="link link-inherit" href="#">Degree Programs</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
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
              </div>
            </div>
          </div>
        </div>
        <div class="footer-bottom bg-700 context-dark text-center">
          <div class="container">
                  <!-- Copyright-->
                  <p class="rights"><span>&copy; 2020&nbsp;</span><span>Teachzy</span><span>. All rights reserved.&nbsp;</span><a class="link link-inherit" href="privacy-policy.html">Privacy Policy</a></p>
          </div>
        </div>
      </footer>
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