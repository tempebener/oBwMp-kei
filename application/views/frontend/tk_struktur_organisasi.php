<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>Struktur Yayasan</title>
    <?php $this->load->view('frontend/head2')?>
  </head>
<!-- head end -->

  <body>
    <div class="page">

    <!--RD Navbar-->
    <!-- head -->
    <header class="section rd-navbar-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
      <?php $this->load->view('frontend/header2')?>
    </header>
    <!-- head end -->

      <section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="<?php echo base_url();?>">Home</a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Tentang Kami</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">KEI</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Struktur Yayasan</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>Struktur Yayasan</h2>

          <div class="row">
            <!-- <div class="col-md-2"></div> -->
            <div class="col-md-12">
                <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/kei\struktur_organisasi/struktur_yayasan.png" alt="Struktur Yayasan" width="100%" height="auto" style="float:left;">
              <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
            </div>
            <!-- <div class="col-md-2"></div> -->
          </div>
          </div>
      </section>

      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>