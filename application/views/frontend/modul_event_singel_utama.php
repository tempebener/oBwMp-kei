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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active"><?php echo "$rows[judul_event_detail]"; ?></span></div>
            </div>
          </div>
        </div>
      </section>
      <section class="section-md bg-transparent">
        <div class="container">
          <h2><?php echo "$rows[judul_event_detail]"; ?></h2>
          <div class="row row-30">
            <div class="col-md-6 col-xl-8">
              <div class="image image-responsive rounded" style="background-image:url(<?php echo base_url();?>theme/images/foto_event/event_detail/<?php echo $rows['gambar']; ?>); padding-bottom: 100%;
    background-size: cover;
    background-position: center center;"></div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="box box-info">
                <div class="box-list">
                  <div class="box-list-item">
                    <div class="box-list-term">Tanggal:</div>
                    <div class="box-list-desc"><?php echo tgl_indo("$rows[date_event_detail]"); ?></div>
                  </div>
                  <div class="box-list-item">
                    <div class="box-list-term">Waktu:</div>
                    <div class="box-list-desc"><?php echo "$rows[time_event_detail]"; ?> - <?php echo "$rows[time_event_detail_end]"; ?></div>
                  </div>
                  <div class="box-list-item">
                    <div class="box-list-term">Tempat:</div>
                    <div class="box-list-desc"><?php echo "$rows[tempat_event_detail]"; ?></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-8">
            <?php echo "$rows[deskripsi_event_detail]"; ?>
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
