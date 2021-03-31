<!DOCTYPE html>
<html lang="en">

<!-- head -->
<?php $this->load->view('frontend/head')?>
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
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Pendaftaran</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Contact us-->
      <section class="section-sm bg-transparent">
        <div class="container">
          <div class="post">
            <div class="text-block text-block-1 text-center">
              <h2>Pendaftaran</h2>
            </div>
            <div class="post-text">
              <div class="text-center">
                <a class="btn btn-danger" name="member" href="<?php echo base_url();?>register_member">Member</a>
                <a class="btn btn-info" name="mitra" href="<?php echo base_url();?>register_mitra">Mitra</a>
              </div>
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