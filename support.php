<!--End Page Body-->
<?php $this->load->view('frontend/header')?>
<!--End Page Footer-->

<!--Page Header-->
<header class="page-header common-header bgc-dark-o-5">
  <?php
    $support = $this->db->select("*")->from("support")->order_by('id_support','asc')->limit(1)->get()->result();
    foreach ($support as $row) {
    ?>
  <div data-parallax="scroll"> 
  <!--<image src="<?php echo base_url()?>asset/foto_support/<?=$row->foto?>" data-speed="0.3" class="parallax-background ">-->
    <image data-speed="0.3" class="parallax-background responsive-bg-support">
  </div>
  

  <div class="container text-center cell-vertical-wrapper">
    <div class="cell-middle">
      <h1 class="text-responsive size-l nmb"><?php echo $row->judul_support ?></h1>
      <p class="nmb common-serif text-responsive"><?php echo $row->deskripsi_support ?></p>
    </div>
  </div>

  <div class="ab-bottom col-xs-12">
    <div class="container">
      <div class="breadcrumb bgc-dark-o-6"><span class="__title font-heading fz-6-s">Support :</span><span class="__content italic font-serif fz-6-ss"><span><a href="<?php echo base_url()?>">Home</a></span><span><a href="<?php echo base_url()?>">Contact Us</a></span></span></div>
    </div>
  </div>
</header>
<!--End Page Header-->
<!--Page Body-->
<div id="page-body" class="page-body">
  <section class="page-section bgc-light">
    <div class="container section-block-small-p">
      <div class="row">
        <div class="col-md-4 section-block-p">
          <header class="hr-header">
            <p class="common-serif __caption">Kunjungi Kami</p>
            <div class="separator-2-color"></div>
          </header>
          <div class="footer-widget-contact">
            <div class="__content font-heading fz-6-ss">
              <div class="__address"><i class="icon icon-location"></i><span> <?php echo $row->lokasi ?></span></div>
              <div class="__phone"><i class="icon icon-phone-1"></i><span><?php echo $row->telepone ?></span></div>
              <div class="__phone-2"><i class="icon icon-mobile-1"></i><a href="tel:<?php echo $row->handpone ?>"><span>Whatsapp + VideoChat <?php echo $row->handpone ?></span></a></div>
            </div>
          </div>
          <?php
    ini_set( 'display_errors', 1 );   
    error_reporting( E_ALL );    
    $from = "adjiedwisandy@gmail.com";    
    $to = "lmpgroup.it@gmail.com";    
    $subject = "Checking PHP mail";    
    $message = "PHP mail berjalan dengan baik";   
    $headers = "From:" . $from;    
    mail($to,$subject,$message, $headers);    
    echo "Pesan email sudah terkirim.";
?>
        </div>
        <div class="col-md-4 section-block">
          <img src="<?php echo base_url()?>asset/foto_support/<?=$row->foto?>" style="width: 100%;padding: 0 1px">

        </div>
        <div class="col-md-4 section-block">
          <iframe
            width="450"
            height="300"
            frameborder="0" style="border:0"
            src="<?php echo $row->peta ?>" width="600" height="450" frameborder="0" style="border:0"  allowfullscreen>
          </iframe>
        </div>
      </div>
    </div>
  </section>
  <?php }?>
  <section class="page-section no-padding">
    <div class="border-top-lighter pt-70 pb-40">
      <div class="container section-block-small-p">
        <div class="row">
          <div class="col-md-12 section-block-p">
            <header class="hr-header">
              <h3 class="smb">Hubungi Kami</h3>
              <div class="separator-2-color"></div>
            </header>
           <form action="<?php echo site_url(); ?>/Contact/sendmail" method="post">
              <div class="row">
                <div class="col-md-6">
                  <input type="text" name="nama" placeholder="Name" required="required"/>
                </div>
                <div class="col-md-6">
                  <input type="text" name="phone" placeholder="Phone"/>
                </div>
                <div class="col-md-6">
                  <input type="text" name="wa" placeholder="Whatsapp Number"/>
                </div>
                <div class="col-md-6">
                  <input type="text" name="email" placeholder="Email"/>
                </div>
                <div class="col-md-12">
                  <p><b>Bersedia kontak dengan video atau chat?</b></p>
                </div>
                <div class="col-md-2">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" name="kontak" value="yes" class="form-check-input">
                      Yes
                    </label>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" name="kontak" value="no" class="form-check-input">
                      No
                    </label>
                  </div>
                </div>
                <div class="col-md-12 text-center-md-max">
                  <button type="submit" class="btn btn-size-2 btn-primary">KIRIM</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="page-section no-padding">
    <div class="border-top-lighter pt-70 pb-40">
      <div class="container section-block-small-p">
        <!-- <div class="row">
          <div class="col-xs-12">
            <header class="hr-header">
              <h3 class="smb">Social Media</h3>
              <p class="common-serif __caption">Get in Touch</p>
              <div class="separator-2-color"></div>
            </header>
          </div>
        </div> -->
      </div>
    </div>
    <div style="text-align: center; margin-left: 18%;">
      <div class="group-process small-icon">
        <div style="padding-left:60px; padding-right: 90px; text-align: center; margin-bottom: 40px;">
          <h6 class="__title"><a href="https://www.facebook.com/WismayaResidenceBekasi/">Facebook</a></h6>
          <a href="https://www.facebook.com/WismayaResidenceBekasi/" target="_blank">
          <div class="__icon">
            <img src="<?php echo base_url()?>asset/frontend/sosmed/107175-64.png" class="company-header-avatar">
          </div>
          </a>
        </div>
        <div style="padding-left:60px; padding-right: 90px; text-align: center; margin-bottom: 40px;">
          <h6 class="__title"><a href="https://www.instagram.com/wismayaresidencebekasi/">Instagram</a></h6>
          <a href="https://www.instagram.com/wismayaresidencebekasi/" target="_blank">
          <div class="__icon">
            <img src="<?php echo base_url()?>asset/frontend/sosmed/if_instagram_287535.png" class="company-header-avatar">
          </div>
          </a>
        </div>
        <div style="padding-left:60px; padding-right: 90px; text-align: center; margin-bottom: 40px;">
          <h6 class="__title"><a href="https://www.youtube.com/channel/UCaT3K8Z4tUp7Id2GZEk1AMQ?view_as=subscriber">Youtube</a></h6>
          <a href="https://www.youtube.com/channel/UCaT3K8Z4tUp7Id2GZEk1AMQ?view_as=subscriber" target="_blank">
          <div class="__icon">
            <img src="<?php echo base_url()?>asset/frontend/sosmed/107167-64.png" class="company-header-avatar">
          </div>
          </a>
        </div>
        <div style="padding-left:60px; padding-right: 90px; text-align: center; margin-bottom: 40px;">
          <h6 class="__title"><a href="http://www.langgengproperty.com/">Blog</a></h6>
          <a href="http://www.langgengproperty.com/" target="_blank">
          <div class="__icon">
            <img src="<?php echo base_url()?>asset/frontend/sosmed/if_Blogger_381395.png" class="company-header-avatar">
          </div>
          </a>
        </div>
      </div>
    </div>
  </section>

</div>
<!--End Page Body-->

<!--End Page Body-->
<?php $this->load->view('frontend/footer')?>
<!--End Page Footer-->
<!--End Page Body-->
<button id="back-to-top-btn"><i class="icon-up-open-big"></i></button>
<script src="<?php echo base_url();?>asset/frontend/vendors/jquery/dist/jquery.min.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/waypoints/lib/shortcuts/sticky.min.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/smoothscroll/SmoothScroll.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/wow/dist/wow.min.js"></script>
<script src="<?php echo base_url();?>asset/frontend/vendors/parallax.js/parallax.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/jquery-countTo/jquery.countTo.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/isotope/dist/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/slick-carousel/slick/slick.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/vendors/jquery-modal/jquery.modal.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>asset/frontend/js/main.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/smoothscroll.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/jquery.parallax.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>/assets/template/frontend/js/main.js"></script>
<!--End Page Footer-->
</body>
</html>
