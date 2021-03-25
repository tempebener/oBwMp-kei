        <section class="sidebar">

          <!-- Sidebar user panel -->
          <div class="user-panel">
          <div class="pull-left image">
          <?php $usr = $this->model_app->view_where('users', array('username'=> $this->session->username))->row_array();
                if (trim($usr['foto'])==''){ $foto = 'blank.png'; }else{ $foto = $usr['foto']; } ?>
          <img src="<?php echo base_url(); ?>/asset/foto_user/<?php echo $foto; ?>" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <?php echo "<p>$usr[nama_lengkap]</p>"; ?>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU ADMINISTRATOR</li>
            <li><a href="<?php echo base_url(); ?>administrator/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>




            <li class="treeview">
              <a href="#"><i class="fa fa-picture-o"></i> <span>Slider</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/sliderlist"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_slider"><i class="fa fa-circle-o"></i> Add</a></li>
              </ul>
            </li>

          <!--   <li class="treeview">
              <a href="#"><i class="fa fa-home"></i> <span>About</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/edit_about/1"><i class="fa fa-circle-o"></i> Edit</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-home"></i> <span>Support</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/edit_support/1"><i class="fa fa-circle-o"></i> Edit</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-newspaper-o"></i> <span>Event</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/eventlist"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_event"><i class="fa fa-circle-o"></i> Add</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/gelist"><i class="fa fa-circle-o"></i> Galeri</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-book"></i> <span>Project</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/projectlist"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_project"><i class="fa fa-circle-o"></i> Add</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/galerilist"><i class="fa fa-circle-o"></i> Galeri</a></li>
              </ul>
            </li>

            <li class="treeview">
              <a href="#"><i class="fa fa-newspaper-o"></i> <span>Artikel</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/listberita"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_berita"><i class="fa fa-circle-o"></i> Add</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-youtube-play"></i> <span>Video</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/videolist"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_video"><i class="fa fa-circle-o"></i> Add</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-envelope-square"></i> <span>Email</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/emaillist"><i class="fa fa-circle-o"></i> List</a></li>
                <li><a href="<?php echo base_url(); ?>administrator/tambah_email"><i class="fa fa-circle-o"></i> Add</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-home"></i> <span>Footer</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>administrator/edit_footer/1"><i class="fa fa-circle-o"></i> Edit</a></li>
              </ul>
            </li> -->

            <li class="treeview">
            <?php
            $cek=$this->model_app->umenu_akses("manajemenuser",$this->session->id_session);
            if($cek==1 OR $this->session->level=='admin'){
            echo "<a href='#'><i class='fa fa-users'></i> <span>Modul Users</span><i class='fa fa-angle-left pull-right'></i></a>";
          }
            ?>
            <ul class="treeview-menu">
            <?php
              $cek=$this->model_app->umenu_akses("manajemenuser",$this->session->id_session);
              if($cek==1 OR $this->session->level=='admin'){
                echo "<li><a href='".base_url()."administrator/manajemenuser'><i class='fa fa-circle-o'></i> Manajemen User</a></li>";
              }


            $cek=$this->model_app->umenu_akses("manajemenuser",$this->session->id_session);
            if($cek==1 OR $this->session->level=='admin'){
              echo "<li><a href='".base_url()."administrator/kategorilevel'><i class='fa fa-circle-o'></i> Level </a></li>";
            }
            ?>
            </ul>
          </li>
          <li><a href="<?php echo base_url(); ?>administrator/logout"><i class="glyphicon glyphicon-off"></i> <span>Logout</span></a></li>
        </ul>
        </section>
