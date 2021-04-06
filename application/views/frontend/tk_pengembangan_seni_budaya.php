<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>PENGEMBANGAN SENI & BUDAYA</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Joglo Tumiyono</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">PENGEMBANGAN SENI & BUDAYA</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>PENGEMBANGAN SENI & BUDAYA</h2>
            <p class="big" style="text-align: justify !important;">

              <img class="image-custom roundedtk_struktur_organisasi" src="<?php echo base_url();?>theme/images/pengembangan_seni_budaya/seni.jpg" alt="PENGEMBANGAN SENI & BUDAYA" width="300px" height="auto" style="float:left;margin-right: 10px;">&emsp;&emsp;Joglo Tumiyono selain menjadi kawah candradimuka menggembleng calon-calon entrepreneur muda untuk menjadi pengusaha kelas menengah yang produktif dan berperan sebagai lokomotif ekonomi Indonesia. Joglo Tumiyono ke depannya juga menjadi sentra pengembangan kawasan ekonomi kreatif berbasis potensi ekonomi lokal seperti pembinaan pada pelaku usaha angkringan mengingat Klaten merupakan tempat perintisan usaha angkringan.  Lurik Klaten yang mulai dikenal dan diminati para turis maupun masyarakat luar Klaten, usaha kripik belut, usaha gerabah dan  keramik juga membutuhkan sentuhan bimbingan pengelolaan agar lebih berkembang ke depannya. Joglo Tumiyono menyediakan barisan bangunan komersial di sisi luar yang bisa menjadi show case dan galeri produk unggulan UMKM setempat.
              <br/><br/>
              &emsp;&emsp;Dalam pengembangan Seni dan Budaya, Joglo Tumiyono mendukung sepenuhnya setiap usaha pelestarian budaya. Di antaranya memberikan wadah bagi PEPADI (Persatuan Pendalangan Indonesia) berkiprah melaksanakan pentas wayang setiap malam Sabtu Pahing di Joglo Tumiyono. Joglo Tumiyono juga menjadi Pahing, 09 Agustus 2019. Acara tersebut dihadiri Founder WMP, Bupati Klaten Sri Mulyani, Nusron Wahid anggota DPR periode 2019-2024 dan tokoh masyarakat lainnya. Acara tersebut menjadi penanda mutualisme antara Joglo Tumiyono dengan PEPADI dan menjadi komitmen bagi Joglo Tumiyono untuk menyelenggarkan pentas wayang kulit secara rutin setiap malam Sabtu Pahing.
              </p>

          <div class="row">
            <!-- <div class="col-md-2"></div> -->
            <div class="col-md-12">
                <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/pengembangan_seni_budaya/kesenian.jpg" alt="pwm2" width="100%" height="auto" style="float:left;">
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