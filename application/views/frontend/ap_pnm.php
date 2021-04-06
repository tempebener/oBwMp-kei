<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>PNM</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">PNM</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-left">
        <div class="container">
          <div class="text-block text-block-1">
            <img src="<?php echo base_url();?>theme/images/akses_permodalan/pnm.jpg" alt="Permodalan Nasional Madani (PNM)" width="50px" height="auto" style="float:left;">
            <h2>PNM</h2>
            <br/>
            <p class="big" style="text-align: justify !important;">
              <strong>Permodalan Nasional Madani (PNM)</strong>
              <br/><strong>1. PNM ULaMM & PNM ULaMM Syariah</strong>
              <br/>• <strong>PNM ULaMM</strong> menjadi gerai layanan di bawah satu atap atau “One Stop Shopping” bagi para pengusaha mikro dan kecil, yang dilengkapi dengan berbagai dukungan teknis bagi peminjam. Tujuannya adalah membantu usaha mikro dan kecil agar terus berkembang sekaligus mempercepat kemajuan usahanya. PNM ULaMM dilengkapi dengan pelatihan, jasa konsultasi, pendampingan, serta dukungan pengelolaan keuangan dan akses pasar bagi nasabah.
              <br/>•  <strong>PNM ULAMM SYARIAH</strong> merupakan penyaluran pembiayaan yang dilakukan sesuai ketentuan prinsip syariah yang berdasarkan fatwa dan/atau pernyataan kesesuaian syariah dari Dewan Syariah Nasional Majelis Ulama Indonesia bagi pelaku usaha UMKM.

              <br/><strong>2. Program Pengembangan Kapasitas Usaha</strong>
              <br/>&emsp;&emsp;PNM selalu menghadirkan layanan yang optimal bagi nasabah, salah satunya dengan meluncurkan program Pengembangan Kapasitas Usaha dan Pengembangan Kelompok (PKU-PK) pada tahun 2010. Program PKU-PK bertujuan untuk memberikan pendampingan dan pembinaan kepada pelaku usaha ultra mikro, mikro dan kecil yang merupakan nasabah binaan PNM.

              <br/><strong>3. Jasa Manajemen & PKBL</strong>
              <br/>• <strong>Jasa Manajemen.</strong> Merupakan Perseroan memiliki dua aktivitas Jasa Manajemen, yaitu Jasa Manajemen untuk penguatan lembaga keuangan dan sektor riil. Selain itu Jasa Manajemen PNM memiliki program Kemitraan berupa penyaluran dana kemitraan yang ditujukan kepada pelaku UMKM.
              <br/>• <strong>Program Kemitraan.</strong> Sebagai bentuk komitmen Perseroan dalam mendorong pemberdayaan UMKM di Indonesia, Perseroan memiliki Program Kemitraan berupa penyaluran dana kemitraan yang ditujukan kepada UMKM. 
              <br/>• <strong>Program Kemitraan dan Bina Lingkungan (PKBL).</strong> PNM senantiasa menjalin hubungan yang harmonis dengan masyarakat dan lingkungan sekitar. Upaya ini dituangkan melalui program-program yang digagas melalui Program Kemitraan dan Bina Lingkungan (PKBL).
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