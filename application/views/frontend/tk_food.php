<!DOCTYPE html>
<html lang="en">
<!-- head -->
 <head>
    <title>Food</title>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text">Unit Bisnis</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Food</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
       <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>Food</h2>
            <p class="big" style="text-align: justify !important;">

              <img src="<?php echo base_url();?>theme/images/unit/food/WMS.png" alt="PT. Cianjur Arta Makmur" width="250px" height="auto" style="float:left;">
              &emsp;&emsp;PT WidodoFood Mkamur Sejahtera (WMS) adalah anak perusahaan yang bergerak dalam bisnis Food. WMS bergerak di bidang produksi beras kemasan. Komitmen WMP yang tercantum dalam visi, menjadi jembatan kesejahteraan petani dan peternak diwujudkan dengan menjadikan para petani lokal sebagai mitra pemasok bahan baku beras yang dibutuhkan. Sumber bahan baku diperoleh dari sentra lumbung-lumbung padi di Pulau Jawa.
              <br/><br/>
              &emsp;&emsp;WMS saat ini sedang dalam proses mengembangkan produk-produk baru berdasarkan inovasi dan riset pangan yang intensif untuk menciptakan produk pangan yang berkualitas  seperti produk-produk karbohidrat alternatif yang rendah gula, tinggi serat dan kaya dengan vitamin dan mineral. Produk-produk tersebut diharapkan membantu meningkatan kualitas hidup dan kesehatan.
             
              </p>
          </div>

      </section>
    
     <section class="section-md bg-transparent text-center text-md-left">
        <div class="container">
          <div class="row">
            <div class="col-md-6 bg-primary context-dark spacing-box">
              <h2>BERAS</h2>
              <p class="big">WMS berkomitmen untuk memproduksi beras kemasan yang aman untuk dikonsumsi sehingga tidak menyertakan bahan pewangi, pemutih dan pengawet. Sebelum dikemas, beras yang telah diproses melalui mesin akan diuji laboratorium untuk memastikan bebas dari bahan berbahaya.
Produk beras kemasan bermerk Pulosari dan Sumur Tujuh adalah merk premium kami, Terbuat dari beras berkualitas. Dikemas  dalam ukuran kemasan 5 kilogram, 25 kilogram dan 50 kilogram untuk memenuhi pasar retail dan HOREKA.  Sedangkan untuk memenuhi pasar tradisional dan distributor serta memenuhi permintaan khusus digunakan beberapa merk diantaranya Slyp Super dan merk lainnya.
</p>
              
              <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
            </div>
            <div class="col-md-6 bg-image" style="background-image:url(<?php echo base_url();?>theme/images/unit/food/beras.png);"></div>


            <div class="col-md-6 bg-image" style="background-image:url(<?php echo base_url();?>theme/images/unit/food/kedelai.png);"></div>
            <div class="col-md-6 bg-secondary context-dark spacing-box">
             <h2>KEDELAI</h2>
              <p class="big">WMS juga bergerak dalam trading bahan pangan lainnya seperti kedelai, karena telah berpengalaman sebagai importir kedelai berkualitas yang didatangkan dari Amerika, Brazil dan Canada. Kedelai didistribusikan kepada para perajin tahu tempe di berbagai daerah di Pulau Jawa serta menjadi supplier industri makanan olahan kering berbahan dasar kedelai seperti sereal. WMS menggunakan merk “Cahaya Makmur” (CM) untuk produk kedelainya. WMS juga menyuplai bahan baku untuk pakan hewan ternak seperti sapi dan ayam. Bahan baku yang digunakan diantaranya  jagung, soy bean meal, polard, bungkil sawit, dll.</p>
            
             <!--  <a class="btn btn-outline" href="#">Learn more</a> -->
            </div>
             <div class="col-md-6 bg-primary context-dark spacing-box">
              <h2>RICEMILL</h2>
               <p class="big">Beras para petani mitra akan diproses lebih lanjut di pabrik Ricemill yang berada di Tegal, dikemas dan disistribusikan ke berbagai pasar modern, pasar tradisional, menyuplai lembaga pemerintahan untuk kegiatan sosial, serta menyuplai hotel, restoran dan catering.</p>
              
              <!-- <a class="btn btn-outline" href="#">Learn more</a> -->
            </div>
            <div class="col-md-6 bg-image" style="background-image:url(<?php echo base_url();?>theme/images/unit/food/ricemill.png);"></div>


           
           




        </div>
      </section>

 
      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>