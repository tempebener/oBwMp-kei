<!DOCTYPE html>
<html lang="en">
<!-- head -->
 <head>
    <title>SKEMA KEMITRAAN UMKM Produk Olahan</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Kemitraan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Skema Kemitraan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">UMKM Produk Olahan</span></div>
            </div>
          </div>
        </div>
      </section>

       <?php
             foreach ($umkm_produk_olahan as $post_new)
             {

             ?>
      <!-- Deskripsi Profil -->
       <section class="section-md bg-transparent text-center">
        <div class="container">
            <h2><?php echo $post_new->judul_skema_kemitraan ?></h2>
            <hr style="border: 5px solid yellow;margin-left:20px;margin-right:20px;border-radius: 5px;">
            <br>
           <dd><?php echo $post_new->deskripsi_skema_kemitraan ?>
            </dd>
          <div class="row row-30">
            <div class="col-md-6 col-xl-12 d-flex">
              <!-- <div class="image image-responsive rounded" style="background-image:url(<?php echo base_url();?>theme/images/profil/sapi.png)"></div> -->
              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/skema_kemitraan/<?php echo $post_new->foto ?>" alt="SKEMA KEMITRAAN Budidaya Ayam Layer" width="100%" height="auto">
            </div>
          
          </div>
        </div>
      </section>
 <section class="section section-md bg-transparent">
        <div class="container">
          
          <dl class="term-list">
            
            <dd id='editor2'><?php echo $post_new->keterangan_skema_kemitraan ?></dd>
          </dl>
        </div>
      </section>
       <?php } ?>

      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>