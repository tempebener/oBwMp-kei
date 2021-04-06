<!DOCTYPE html>
<html lang="en">
<!-- head -->
  <head>
    <title>Kontak</title>
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
              
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">KONTAK</span></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Deskripsi Profil -->
     <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1 text-center">
            <h2>Kontak</h2>
          </div>
          <div class="row row-30">
            <div class="col-md-6">
              <form class="rd-form rd-mailform" data-form-output="contact-form" data-form-type="contact" method="post" action="<?php echo base_url('kontak/kirim_pesan'); ?>">
                <div class="row row-20">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="xnama" placeholder="Name*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="email" name="xemail" placeholder="E-mail*" data-constraints="@Email @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="xphone" placeholder="Phone*" data-constraints="@Numeric @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="xmessage" placeholder="Subject">
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <textarea class="form-control" name="textarea" placeholder="Message"></textarea>
                    </div>
                  </div>
                </div>
                <div class="rd-form-btn text-left">
                  <button class="btn btn-primary" type="submit">Send message</button>
                </div>
              </form>
              <div class="form-output snackbar snackbar-primary" id="contact-form"></div>
            </div>
            <div class="col-md-6">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.9264541708335!2d110.68021091477814!3d-7.797611494380766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a4987c6e94321%3A0xf6776808bc202238!2sJOGLO%20TUMIYONO!5e0!3m2!1sid!2sid!4v1617696667041!5m2!1sid!2sid" width="600" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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