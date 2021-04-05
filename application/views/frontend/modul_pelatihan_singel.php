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
          <div class="post">
            <div class="post-media"><img class="post-img" src="<?php echo base_url()?>theme/images/foto_pelatihan/<?php echo "$rows[foto]"; ?>" alt="" width="1170" height="500"/>
            </div>
           <!--  <div class="post-meta">
              <div class="post-meta-item">
                <div class="post-meta-icon custom-font-calendar"></div>
                <div class="post-date"></div>
              </div> -->
             
            </div>
            <div class="post-title h6"><?php echo "$rows[judul_pelatihan]"; ?></div>
            <div class="post-text">
              <p></p>
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