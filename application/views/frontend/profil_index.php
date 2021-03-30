<!DOCTYPE html>
<html lang="en">
<!-- head -->
<?php $this->load->view('frontend/head')?>
<!-- head end -->

  <body>
    <div class="page">

    <!--RD Navbar-->
    <!-- head -->
    <?php $this->load->view('frontend/header2')?>
    <!-- head end -->

      <section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="<?php echo base_url();?>">Home</a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Tentang Kami</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text">Joglo Tumiyono</span></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Profil</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
      <section class="section-md bg-transparent text-center">
        <div class="container">
          <div class="text-block text-block-1">
            <h2>PROFIL JOGLO TUMIYONO</h2>
            <p class="big">Massa, et porttitor cras sed ultrices ullamcorper mauris semper iaculis. Ornare suscipit purus nulla pharetra velit, leo in. Amet nulla nunc vitae viverra pellentesque in eget. Mi ut sit ultrices sed.</p>
          </div>
          <div class="row no-gutters">
            <div class="col-6"><img src="<?php echo base_url();?>theme/frontend/images/image-10-390x390.jpg" alt="" width="390" height="390"/>
            </div>
            <div class="col-6"><img src="<?php echo base_url();?>theme/frontend/images/image-11-390x390.jpg" alt="" width="390" height="390"/>
            </div>
            <div class="col-6"><img src="<?php echo base_url();?>theme/frontend/images/image-12-390x390.jpg" alt="" width="390" height="390"/>
            </div>
            <div class="col-6"><img src="<?php echo base_url();?>theme/frontend/images/image-12-390x390.jpg" alt="" width="390" height="390"/>
            </div>
          </div>
        </div>
      </section>
      <!-- Footer start-->
      <?php $this->load->view('frontend/footer')?>
      <!-- Footer end-->

    </div>
  </body>
</html>