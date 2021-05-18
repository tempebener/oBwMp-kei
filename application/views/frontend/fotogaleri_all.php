<!DOCTYPE html>
<html lang="en">
   <head>
    <title>Foto Galeri Kesatriaan Entrepreneur Indonesia</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Foto Galeri </span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Post single-->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <h2>Foto Galeri</h2>
          <div class="row no-gutters justify-content-center" data-lightgallery>
            <?php foreach ($posts_galeri as $post_new){ ?>
            <div class="col-6 col-xs-5 col-md-4">
                    <!-- Thumbnail gallery-->
                    <div class="thumbnail thumbnail-gallery">
                      <a class="thumbnail-media lightgallery-item" href="<?php echo base_url();?>theme/images/foto_fotogaleri/<?php echo $post_new->gambar_fotogaleri ?>">
                        <img class="thumbnail-img" src="<?php echo base_url();?>theme/images/foto_fotogaleri/<?php echo $post_new->gambar_fotogaleri ?>" alt="" width="390" height="390"/>
                        <div class="thumbnail-media-caption">
                          <div class="thumbnail-media-icon custom-font-maximize"></div>
                        </div></a></div>
            </div>
            <?php } ?>
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
