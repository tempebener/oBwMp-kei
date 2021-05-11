<!DOCTYPE html>
<html lang="en">
   <head>
    <title>Food</title>
    <?php $this->load->view('frontend/head')?>
  </head>
  <body>
    <div class="page">

    <!--RD Navbar-->
    <!-- head -->
    <header class="section rd-navbar-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
      <?php $this->load->view('frontend/header')?>
    </header>
      <section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="<?php echo base_url();?>">Beranda</a></div>
              <!-- <div class="breadcrumb-item"><a class="breadcrumb-link" href="blog.html">Blog</a></div> -->
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active"><?php echo "$rows[judul_pelatihan]"; ?></span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Post single-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1">
            <div class="row">
              <div class="col-md-2"></div>
              <div class="col-md-8">
                  <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_pelatihan/<?php echo "$rows[foto]"; ?>" alt="naget ayam" width="100%" height="auto" style="float:left;">
                <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
              </div>
              <div class="col-md-2"></div>
            </div>
          </div>

          <div class="post">
           <!--  <div class="post-meta">
              <div class="post-meta-item">
                <div class="post-meta-icon custom-font-calendar"></div>
                <div class="post-date"></div>
              </div> -->
             
            </div>
          </br>
            <div class="post-title h6"><?php echo "$rows[judul_pelatihan]"; ?></div>
            </br>
            <div class="post-text">
              <div class="row row-30 row-lg-55">
                
                <!-- foreachnya nti taro sini - Start -->
                   <?php
              foreach ($pelatihan_detail as $post_new)
              {
              ?>
                <div class="col-6 col-sm-3 col-md-6">
                  <!-- Blurb side-->
                  <article class="blurb blurb-side">
                  
                    <div class="blurb-item">
                      <!-- <div class="icon blurb-icon custom-font-graduated"></div> -->
                      <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_pelatihan/pelatihan_detail/<?php echo $post_new->gambar ?>" alt="Jaminan Akses Pemodalan" width="80px" height="auto">
                    </div>
                    <div class="blurb-body">
                      <div class="blurb-counter-value h2"><!-- <span data-counter="">100</span><span class="counter-postfix">%</span> -->
                      </div>
                      
                      <div class="blurb-title h4"><a href="<?php echo base_url("pelatihan/isi/$post_new->id_pelatihan_detail/$post_new->judul_pelatihan_detail_seo") ?>"><?php echo $post_new->judul_pelatihan_detail ?></a></div>
                      
                    </div>
                    
                  </article>
                </div>
                 <?php } ?>
                <!-- foreachnya nti taro sini - End -->

              </div>
            </div>
          </div>
        </div>
      </section>
    
      <!-- Footer default-->
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