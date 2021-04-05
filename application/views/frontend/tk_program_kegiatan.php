<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>Program & Kegiatan</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Kesatriaan Entrepreneur Indonesia</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Program & Kegiatan</span></div>
            </div>
          </div>
        </div>
      </section>

      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-2 text-center">
            <h2>Program & Kegiatan</h2>
            <hr style="border: 5px solid yellow;margin-left:20px;margin-right:20px;border-radius: 5px;">
              <!-- <div class="image image-responsive rounded" style="background-image:url(<?php echo base_url();?>theme/images/profil/sapi.png)"></div> -->
            <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/kei/program_kegiatan/program_kegiatan.png" alt="Program & Kegiatan" width="100%" height="auto">
          </div>
        </div>
      </section>
      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>