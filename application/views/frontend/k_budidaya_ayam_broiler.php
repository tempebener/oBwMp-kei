<!DOCTYPE html>
<html lang="en">
<!-- head -->
 <head>
    <title>Kemitraan Budidaya Ayam Broiler</title>
    <?php $this->load->view('frontend/head2')?>
  </head>
<!-- head end -->

  <body>
    <div class="page">

    <!--RD Navbar-->
    <!-- head -->
    <header class="section rd-navbar-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
      <?php $this->load->view('frontend/header')?>
    </header>
    <!-- head end -->

      <section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="<?php echo base_url();?>">Home</a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Kemitraan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Skema Kemitraan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Budidaya Ayam Broiler</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
       <section class="section-md bg-transparent text-center">
        <div class="container">
            <h2>SKEMA KEMITRAAN BROILER</h2>
            <hr style="border: 5px solid yellow;margin-left:200px;margin-right:200px;border-radius: 5px;">
          
          <div class="row row-30">
            <div class="col-md-6 col-xl-12 d-flex">
              <!-- <div class="image image-responsive rounded" style="background-image:url(<?php echo base_url();?>theme/images/profil/sapi.png)"></div> -->
              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/skema_kemitraan/budidaya_ayam_broiler/skema_budidaya_broiler.png" alt="PT. Cianjur Arta Makmur" width="100%" height="auto">
            </div>
          
            </div>
          </div>
        </div>
      </section>

      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>