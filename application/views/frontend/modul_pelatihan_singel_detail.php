<!DOCTYPE html>
<html lang="en">
   <head>
     <title><?php echo "$rows[judul_pelatihan_detail]"; ?></title>
     <meta name="title" content="<?php echo "$rows[judul_pelatihan_detail]"; ?>">
     <meta property="og:title" content="<?php echo "$rows[judul_pelatihan_detail]"; ?>">
     <meta name="site_url" content="<?php echo base_url()?>">
    <?php $this->load->view('frontend/head2')?>
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
               <div class="breadcrumb-item"><a class="breadcrumb-link">Modul Pelatihan</a></div>
              <div class="breadcrumb-item"><a class="breadcrumb-link" ><?php echo "$rows[judul_pelatihan]"; ?></a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active"><?php echo "$rows[judul_pelatihan_detail]"; ?></span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Post single-->
    <section class="section-md bg-transparent">
        <div class="container">
          <h2><?php echo "$rows[judul_pelatihan]"; ?></h2>
          <h6 class="text-primary"><?php echo "$rows[judul_pelatihan_detail]"; ?></h6>
          <div class="row row-30">
             <div class="col-md-6 col-xl-8">
               <center>
           <iframe width="720" height="330" src="https://www.youtube.com/embed/GgUy8FzQh7M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

              <p class="big"><?php echo "$rows[deskripsi_pelatihan_singkat]"; ?>.</p><br>

            </div>

            <div class="col-md-6 col-xl-4">
              <div class="box box-info">
                <div class="box-title h5">Pelatihan detail</div>
                <div class="box-list">
                   <div class="box-list-item">
                    <div class="box-list-term">Judul Modul:</div>
                    <div class="box-list-desc"><?php echo "$rows[judul_pelatihan_detail]"; ?></div>
                  </div>
                  <div class="box-list-item">
                    <div class="box-list-term">Download:</div>
                    <div class="box-list-desc"></div>
                  </div>
                  <div class="box-list-item">
                    <div class="box-list-term">Download:</div>
                    <div class="box-list-desc"></div>
                  </div>


                </div>
              </div>
            </div>

          </div>
        </div>
      </section>
      <!-- Call to action-->


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
