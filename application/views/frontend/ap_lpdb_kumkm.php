<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>LPDB KUMKM</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Akses Permodalan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Perbankan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">KUR</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-left">
        <div class="container">
          <div class="text-block text-block-1">
            <img src="<?php echo base_url();?>theme/images/akses_permodalan/kur.png" alt="KUR" width="80px" height="auto" style="float:left;">
            <h2>LPDB KUMKM</h2>
            <br/>
            <p class="big" style="text-align: justify !important;">
            &emsp;&emsp;<strong>Kredit Usaha Rakyat (KUR)</strong> adalah kredit/pembiayaan modal kerja dan/atau investasi kepada debitur individu/perseorangan, badan usaha dan/atau kelompok usaha yang produktif dan layak namun belum memiliki agunan tambahan atau agunan tambahan belum cukup. Penyaluran KUR dapat dilakukan langsung, maksudnya UMKM dan Koperasi dapat langsung mengakses KUR di Kantor Cabang atau Kantor Cabang Pembantu Bank Pelaksana. Untuk lebih mendekatkan pelayanan kepada usaha mikro, maka penyaluran KUR dapat juga dilakukan secara tidak langsung, maksudnya usaha mikro dapat mengakses KUR melalui Lembaga Keuangan Mikro dan KSP/USP Koperasi, atau melalui kegiatan linkage program lainnya yang bekerjasama dengan Bank Pelaksana.
            </p>
          </div>
        </div>
      </section>
      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>