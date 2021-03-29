<!--Counter Inbox-->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Menu Utama</li>
        <li class="active">
          <a href="<?php echo base_url().'admin/dashboard'?>">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
      
        <li class="treeview">
          <a href="#">
            <i class="fa fa-camera"></i>
            <span>Slider</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <!-- <li><a href="<?php echo base_url().'admin/album'?>"><i class="fa fa-clone"></i> Album</a></li> -->
            <li><a href="<?php echo base_url().'admin/slider'?>"><i class="fa fa-picture-o"></i> List Slider </a></li>
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="fa fa-user"></i>
            <span>member</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
            <li><a href="<?php echo base_url().'admin/pendaftaran'?>"><i class="fa fa-picture-o"></i> List member </a></li>
          </ul>
        </li>

      

         <li>
          <a href="<?php echo base_url().'administrator/logout'?>">
            <i class="fa fa-sign-out"></i> <span>Sign Out</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>


      </ul>
    </section>
    <!-- /.sidebar -->
</aside>
