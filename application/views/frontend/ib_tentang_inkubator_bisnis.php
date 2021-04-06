<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>Tentang Inkubator Bisnis</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Inkubator Bisnis</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Tentang Inkubator Bisnis</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>TENTANG INKUBATOR BISNIS</h2>
            <p class="big" style="text-align: justify !important;">

              <img class="image-custom rounded" src="<?php echo base_url();?>theme/images/pengembangan_seni_budaya/seni.jpg" alt="PENGEMBANGAN SENI & BUDAYA" width="300px" height="auto" style="float:left;margin-right: 10px;"><strong>Inkubasi Menejemen</strong>
              &emsp;&emsp;Inkubasi manajemen merupakan fasilitas yang di berikan kepada member dan mitra guna membantu dalam mengembangkan Wirausaha, Fasilitas yang di dapatkan member dan mitra adalah sebagai beikut:
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