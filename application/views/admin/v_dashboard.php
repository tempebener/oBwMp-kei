<!--Counter Inbox-->
<?php
    error_reporting(0);
    $query=$this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
    $query2=$this->db->query("SELECT * FROM tbl_komentar WHERE komentar_status='0'");
    $jum_comment=$query2->num_rows();
    $jum_pesan=$query->num_rows();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Kesatriaan | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">
  <?php
        /* Mengambil query report*/
        foreach($visitor as $result){
            $bulan[] = $result->tgl; //ambil bulan
            $value[] = (float) $result->jumlah; //ambil nilai
        }
        /* end mengambil query*/

    ?>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!--Header-->
  <?php
    $this->load->view('admin/include/v_header');
  ?>

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
            <a >
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
            <a>
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
            <a href="<?php echo base_url().'admin/login/logout'?>">
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
     



  
  <!-- Left side column. contains the logo and sidebar -->
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-chrome"></i></span>
              <?php
                  $query=$this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Chrome'");
                  $jml=$query->num_rows();
              ?>
            <div class="info-box-content">
              <span class="info-box-text">Member</span>
              <span class="info-box-number"><?php echo $jml;?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
       
        <!-- /.col -->
      
      <!-- /.row -->

      <!-- Main row -->
    
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0
    </div>
    <strong>Copyright &copy; 2017 <a href="http://mfikri.com">KEI</a>.</strong> All rights reserved.
  </footer>


</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- Sparkline -->
<script src="<?php echo base_url().'assets/plugins/sparkline/jquery.sparkline.min.js'?>"></script>
<!-- jvectormap -->
<script src="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'?>"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url().'assets/plugins/chartjs/Chart.min.js'?>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url().'assets/dist/js/pages/dashboard2.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>

<script>

            var lineChartData = {
                labels : <?php echo json_encode($bulan);?>,
                datasets : [

                    {
                        fillColor: "rgba(60,141,188,0.9)",
                        strokeColor: "rgba(60,141,188,0.8)",
                        pointColor: "#3b8bba",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(152,235,239,1)",
                        data : <?php echo json_encode($value);?>
                    }

                ]

            }

        var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);

        var canvas = new Chart(myLine).Line(lineChartData, {
            scaleShowGridLines : true,
            scaleGridLineColor : "rgba(0,0,0,.005)",
            scaleGridLineWidth : 0,
            scaleShowHorizontalLines: true,
            scaleShowVerticalLines: true,
            bezierCurve : true,
            bezierCurveTension : 0.4,
            pointDot : true,
            pointDotRadius : 4,
            pointDotStrokeWidth : 1,
            pointHitDetectionRadius : 2,
            datasetStroke : true,
            tooltipCornerRadius: 2,
            datasetStrokeWidth : 2,
            datasetFill : true,
            legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
            responsive: true
        });

        </script>

</body>
</html>
