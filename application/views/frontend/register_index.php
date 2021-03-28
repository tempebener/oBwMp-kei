<!DOCTYPE html>
<html lang="en">
 <!-- head -->
<?php $this->load->view('frontend/head')?>
<!-- head end -->
  <body>
    <div class="page">
      <!--RD Navbar-->
    <!-- head -->
<?php $this->load->view('frontend/register_header')?>
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
          <div class="text-block text-block-1 text-center">
            <h2>Pendaftaran</h2>
          </div>
          <div class="row row-30">
            <div class="col-md-12">
              <form class="rd-form rd-mailform" data-form-output="contact-form" data-form-type="contact" method="post" action="<?php echo base_url();?>member/add_member" enctype="multipart/form-data">
                <div class="row row-20">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="nama" placeholder="Nama*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="alamat" placeholder="Alamat*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="no_hp" placeholder="Nomor Handphone*" data-constraints="@Numeric @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="email" name="email" placeholder="E-mail*" data-constraints="@Email @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="pend_terakhir" placeholder="Pendidikan Terakhir*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="pekerjaan" placeholder="Pekerjaan*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="usaha_diminati" placeholder="Bidang Usaha yang Diminati*" data-constraints="@Required">
                    </div>
                  </div>
                  <!-- <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="subject" placeholder="Subject">
                    </div>
                  </div> -->
                  <!-- <div class="col-12">
                    <div class="form-group">
                      <textarea class="form-control" name="textarea" placeholder="Message"></textarea>
                    </div>
                  </div> -->
                </div>

                <div class="row row-20">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="post-title h6">Upload KTP</label>
                      <input class="form-control" type="file" name="foto_ktp" placeholder="Upload KTP*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="post-title h6">Upload NPWP</label>
                      <input class="form-control" type="file" name="foto_npwp" placeholder="Upload NPWP*">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="post-title h6">Upload Foto Diri</label>
                      <input class="form-control" type="file" name="foto_pas" placeholder="Upload Foto Diri*">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="post-title h6">Upload SKU (Surat Keterangan Usaha)</label>
                      <input class="form-control" type="file" name="foto_sku" placeholder="Upload SKU Diri*">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="post-title h6">Partnership Agreement</label>
                      <input class="form-control" type="file" name="partnership_agreement" placeholder="Partnership Agreement*">
                    </div>
                  </div>
                </div>
                <br/>
                <div class="text-left">
                  <button class="btn btn-primary" name="submit" type="submit">Apply</button>
                </div>
              </form>
              <div class="form-output snackbar snackbar-primary" id="contact-form"></div>
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