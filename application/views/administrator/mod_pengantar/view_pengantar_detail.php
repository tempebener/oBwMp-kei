<section class='invoice'>
      <!-- title row -->
      <div class='row'>
        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> DETAIL PENGANTAR
            <small class='pull-right'></small>
          </h2>
          <?php 
                    
                    foreach ($pengantar as $row){
                
                    echo "
           <a class='btn btn-success btn-sm' title='Edit Data' href='".base_url()."admin/administrator/edit_pengantar/$row[id_pengantar]'>Edit</a>
             "; 
                    }
                  ?></div>
        <!-- /.col -->
     

<div class='col-xs-12 table-responsive'>
          <table class='table table-striped'>
          	<?php 
                    $no = 1;
                    foreach ($pengantar as $row){
                   
                    if ($row['icon_1'] == ''|$row['icon_2'] == ''|$row['icon_3'] == ''){  $icon_1 = $row['icon_1'];$icon_2 = $row['icon_2'];$icon_3 = $row['icon_3']; }
                    echo "
<tr><th>Judul</th><td> $row[judul]</td></tr>

<tr><th>Deskripsi</th><td> $row[deskripsi]</td></tr>
<tr><th>Icon & Judul | Kiri</th><td> <img style='border:1px solid #cecece' width='100px' class='' src='".base_url()."theme/images/foto_pengantar/$row[icon_1]'> <br/>$row[judul_icon_1]</td></tr>
<tr><th>Icon & Judul | Tengah</th><td> <img style='border:1px solid #cecece' width='100px' class='' src='".base_url()."theme/images/foto_pengantar/$row[icon_2]'> <br/>$row[judul_icon_2]</td></tr>
<tr><th>Icon & Judul | Kanan</th><td> <img style='border:1px solid #cecece' width='100px' class='' src='".base_url()."theme/images/foto_pengantar/$row[icon_3]'> <br/>$row[judul_icon_3]</td></tr>

 ";
                      $no++;
                    }
                  ?>
</table>
</div>
</div>
  </section>