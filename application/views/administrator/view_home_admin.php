<?php if ($this->session->level == 'admin'){ ?>
  <a style='color:#000' href='<?php echo base_url(); ?>administrator/manajemenuser'>
    <div class="col-md-5 col-sm-6 col-xs-12">
      <div class="info-box">
        <span class="info-box-icon bg-red"><i class="fa fa-users"></i></span>
        <div class="info-box-content">
          <span class="info-box-text">Users</span>
          <?php $jmld = $this->model_app->view('users')->num_rows(); ?>
          <span class="info-box-number"><?php echo $jmld; ?></span>
        </div><!-- /.info-box-content -->
      </div><!-- /.info-box -->
    </div><!-- /.col -->
    </a>

    <a style='color:#000' href='<?php echo base_url(); ?>administrator/projectlist'>
  <div class="col-md-5 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-purple"><i class="fa fa-book"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Projects</span>
        <?php $jmld = $this->model_app->view('projects')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url(); ?>administrator/eventlist'>
  <div class="col-md-5 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-blue"><i class="fa fa-newspaper-o"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Event</span>
        <?php $jmld = $this->model_app->view('event')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url(); ?>administrator/videolist'>
  <div class="col-md-5 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-green"><i class="fa fa-youtube-play"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Video</span>
        <?php $jmld = $this->model_app->view('video')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>
  <a style='color:#000' href='<?php echo base_url(); ?>administrator/emaillist'>
  <div class="col-md-5 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-yellow"><i class="fa fa-envelope-square"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Email</span>
        <?php $jmld = $this->model_app->view('email')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

<?php } ?>




        </div>
      </div>
   </div>
