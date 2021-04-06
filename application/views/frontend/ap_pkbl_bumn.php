<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>PKBL BUMN</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Non Perbankan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">PKBL BUMN</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-left">
        <div class="container">
          <div class="text-block text-block-1">
            <img src="<?php echo base_url();?>theme/images/akses_permodalan/pkbl_bumn.jpg" alt="PKBL BUMN" width="50px" height="auto" style="float:left;">
            <h2>PKBL BUMN</h2>
            <br/>
            <p class="big" style="text-align: justify !important;">
            <strong>Program Kemitraan dan Bina Lingkungan BUMN</strong>
            <br/>&emsp;&emsp;<strong>Program Kemitraan</strong>merupakan Program untuk meningkatkan kemampuan usaha kecil agar menjadi Tangguh dan mandiri. Bentuk Program Kemitraan, yakni:
            <br/>1. Bentuk Pinjaman
            <br/>&emsp;&emsp;Dana Program Kemitraan disalurkan dalam bentuk:
            <br/>• Pinjaman untuk membiayai modal kerja dan/atau pembelian asset tetap dalam rangka meningkatkan produksi dan penjualan.
            <br/>• Pinjaman tambahan untuk membiayai kebutuhan yang bersifat jangka pendek dalam rangka memenuhi pesanan dari rekanan usaha Mitra Binaan.
            <br/>2. Batasan Maksimal Pinjaman
            <br/>&emsp;&emsp;Jumlah pinjaman untuk setiap Mitra Binaan dari Program Kemitraan maksimum sebesar Rp. 200.000.000,00 (dua ratus juta rupiah).
            <br/>3. Jasa Administrasi
            <br/>&emsp;&emsp;Besarnya jasa administrasi pinjaman dana Program Kemitraan ditetapkan satu kali pada saat pemberian pinjaman yaitu  sebesar 3% (tiga persen) per tahun dari saldo pinjaman awal tahun.
            <br/><br/><strong>Bina Lingkungan</strong> merupakan Program pemberdayaan kondisi sosial masyarakat oleh BUMN.
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