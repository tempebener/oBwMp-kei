<!DOCTYPE html>
<html lang="en">
   <head>
    <title>Berita Kesatriaan Entrepreneur Indonesia</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Berita </span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Post single-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="row row-30 justify-content-center">
            <div class="col-md-12 col-lg-12">
              <h2>Latest news</h2>
              <?php foreach ($posts_berita as $post_new){
                $isi = character_limiter($post_new->isi_berita,200);
                ?>
                    <div class="post post-offset"><a class="post-media" href="<?php echo base_url("detail/$post_new->id_berita/$post_new->judul_seo ") ?>"><img class="post-img" src="<?php echo base_url();?>theme/images/berita/<?php echo $post_new->gambar ?>" alt="" width="769" height="380"/></a>
                      <div class="post-meta">
                        <div class="post-meta-item">
                          <div class="post-meta-icon custom-font-calendar"></div>
                          <div class="post-date"><?php echo tgl_indo($post_new->tanggal) ?></div>
                        </div>
                      </div>
                      <div class="post-title h6"><a href="<?php echo base_url("detail/$post_new->id_berita/$post_new->judul_seo ") ?>"><?php echo $post_new->judul ?></a></div>
                      <div class="post-text"><?php echo $isi ?></div>
                    </div>
                  <?php } ?>
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
