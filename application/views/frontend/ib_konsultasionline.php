<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>Peternakan</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Inkubator Bisnis</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Konsultasi Online</span></div>
           
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>Hubungi Kami</h2>
            <br/>
            <div class="btn-group-1"><a class="btn btn-lg btn-primary" href="https://wa.me/+6282136613891" target="_blank">Whatsapp</a><a class="btn btn-lg btn-primary" href="<?php echo base_url();?>kontak">Kontak</a></div>
          </div>
      </section>

      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>