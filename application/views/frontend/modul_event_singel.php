<!DOCTYPE html>
<html lang="en">
   <head>
    <title>Kesatriaan</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active"><?php echo "$rows[judul_event]"; ?></span></div>
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
                  <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/foto_event/<?php echo "$rows[foto_event]"; ?>" alt="naget ayam" width="100%" height="auto" style="float:left;">
                <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
              </div>
              <div class="col-md-2"></div>
            </div>
          </div>
            <div class="post-title h6"><?php echo "$rows[judul_event]"; ?></div>
          </div>
        </div>
      </section>
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="row row-30 justify-content-center">
            <?php foreach ($event_detail as $post_new){ ?>

            <div class="col-xs-8 col-sm-6 col-md-4">
                    <!-- Post event-->
                    <div class="post post-event" data-animate='{"class":"fadeInUp"}'>
                      <a class="post-media" href="<?php echo base_url("event_detail/$post_new->id_event_detail/$post_new->judul_event_detail_seo ") ?>">
                        <img class="post-img" src="<?php echo base_url();?>theme/images/foto_event/event_detail/<?php echo $post_new->gambar ?>" alt="" width="370" height="240"/>
                        <div class="post-date">
                          <div class=""><?php echo tgl_indo($post_new->date_event_detail) ?></div>
                        </div></a>
                      <div class="post-heading h4">
                        <div class="post-title"><a href="<?php echo base_url("event_detail/$post_new->id_event_detail/$post_new->judul_event_detail_seo ") ?>"><?php echo $post_new->judul_event_detail ?></a></div>

                      </div>
                    </div>
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
