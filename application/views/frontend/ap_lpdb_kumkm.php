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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Non Perbankan</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">LPDB KUMKM</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-left">
        <div class="container">
          <div class="text-block text-block-1">
            <img src="<?php echo base_url();?>theme/images/akses_permodalan/lpdb_kumkm.png" alt="LPDB KUMKM" width="80px" height="auto" style="float:left;">
            <h2>LPDB KUMKM</h2>
            <br/>
            <p class="big" style="text-align: justify !important;">
            &emsp;&emsp;<strong>LPDB KUMKM Mitra untuk Bangsa</strong> 
            Lembaga keuangan bukan bank yang berada di bawah koordinasi Kementerian Koperasi dan UKM ini memiliki nama lengkap Lembaga Pengelola Dana Bergulir Koperasi Usaha Mikro Kecil dan Menengah (LPDB-KUMKM). Lembaga ini diberikan mandat oleh kementerian Koperasi dan UKM untuk mendistribusikan dan mengelola dana APBN yang diperuntukkan khusus pelaku koperasi maupun usaha mikro kecil dan menengah. Pelaku koperasi dengan syarat: 
            <br/>1. Berbadan Hukum
            <br/>2. Melaksanakan Rapat Anggota Tahunan
            <br/>3. Memiliki  status kantor jelas
            <br/>4. Memiliki hasil usaha positif
            <br/>5. Kinerja pengembalian atas pinjaman/pembiayaan sebelumnya dalam hal Koperasi pernah menerima pinjaman/pembiayaan dana bergulir dari LPDB-KUMKM
            <br/><br/>
            &emsp;&emsp;Pinjaman yang dilakukan oleh LPDB-KUMKM yakni:
            <br/>1. Program Pemulihan Ekonomi Nasional (PEN)
            <br/>2. Sektor Riil
            <br/>3. Sektor Simpan Pinjam
            <br/>4. UKM Strategis & Prioritas Pemerintah
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