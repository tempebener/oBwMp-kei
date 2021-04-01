<!DOCTYPE html>
<html lang="en">

<!-- head -->
<head>
    <title>Visi & Misi</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Tentang Kami</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Kesatriaan Entrepreneur Indonesia</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Visi & Misi</span></div>
            </div>
          </div>
        </div>
      </section>

      <section class="section-md bg-transparent text-center text-md-left">
        <div class="container">
          <div class="text-block text-block-2 text-center">
            <h2>Visi & Misi</h2>
            <h3>YAYASAN KESATRIAAN ENTREPRENEUR INDONESIA</h3>
            <hr style="border: 5px solid yellow;margin-left:20px;margin-right:20px;border-radius: 5px;">
          </div>
          <div class="row">
            <div class="col-md-6 spacing-box">
              <p class="big text-justify">&emsp;&emsp;Yayasan Kesatriaan Entreprenenur Indonesia (YKEI) merupakan lembaga yang konsen dalam membangun generasi muda bangsa, dengan melahirkan sumberdaya kepemimpinan umat di masa depan, mencetak entrepreneur muda untuk menopang perekenomian nasional menuju ekonomi berdikari. Fokus utama kegiatan YKEI mencakup Pendidikan dan Pelatihan Entrepreneur Muda, serta Pesantren Entrepreneur.
              <br/>
              &emsp;&emsp;Kami meyakini bahwa menciptakan santri entrepreneur dan generasi enterpreuneur muda yang luar biasa, akan menumbuhkan usaha mandiri dan memainkan peran kunci dalam mendorong perekonomian umat dan kemakmuran masa depan Indonesia.
              </p>
              <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
            </div>
            <div class="col-md-6 bg-image-2" style="background-image:url(<?php echo base_url();?>theme/images/kei/visi_misi/visi_misi.jpg);"></div>
           
        </div>
      </section>
      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>