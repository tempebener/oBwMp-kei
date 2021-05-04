<section class='invoice'>
  <!-- title row -->
  <div class='row'>
    <div class='col-xs-12'>
      <h2 class='page-header'>
        <i class='fa fa-globe'></i> DETAIL MEMBER
        <small class='pull-right'></small>
      </h2>
      <?php foreach ($member as $row){
        echo "<a class='btn btn-success btn-sm' title='Edit Data' href='".base_url()."admin/administrator/edit_member/$row[id_member]'>Edit</a>"; 
        }
      ?>
    </div>
    
    <div class='col-xs-12 table-responsive'>
      <table class='table table-striped'>
        <?php $no = 1;
          foreach ($member as $row){
                   
            if ($row['foto_ktp'] == ''|$row['foto_npwp'] == ''|$row['foto_pas'] == ''|$row['foto_sku'] == ''|$row['partnership_agreement'] == ''){
              $foto_ktp = $row['foto_ktp'];
              $foto_npwp = $row['foto_npwp'];
              $foto_pas = $row['foto_pas'];
              $foto_sku = $row['foto_sku'];
              $partnership_agreement = $row['partnership_agreement'];
            }
            echo"<tr><th>Nama</th><td> $row[nama]</td></tr>
                  <tr><th>Alamat</th><td> $row[alamat]</td></tr>
                  <tr><th>No. Handphone</th><td> $row[no_hp]</td></tr>
                  <tr><th>Email</th><td> $row[email]</td></tr>
                  <tr><th>Pendidikan Terakhir</th><td> $row[pend_terakhir]</td></tr>
                  <tr><th>Pekerjaan</th><td> $row[pekerjaan]</td></tr>
                  <tr><th>Usaha yang Diminati</th><td> $row[usaha_diminati]</td></tr>
                  <tr><th>KTP</th><td> <img style='border:1px solid #cecece' height='200px' class='' src='".base_url()."theme/images/foto_users/$row[foto_ktp]'></tr>
                  <tr><th>Foto Diri</th><td> <img style='border:1px solid #cecece' height='200px' class='' src='".base_url()."theme/images/foto_users/$row[foto_pas]'></tr>";
                      $no++;
          }
        ?>
        <!-- Disable dari echo -->
        <!-- <tr><th>NPWP</th><td> <img style='border:1px solid #cecece' height='200px' class='' src='".base_url()."theme/images/foto_users/$row[foto_npwp]'></tr>
        <tr><th>SKU</th><td> <img style='border:1px solid #cecece' height='200px' class='' src='".base_url()."theme/images/foto_users/$row[foto_sku]'></tr>
        <tr><th>Partnership Agreement</th><td> <img style='border:1px solid #cecece' height='200px' class='' src='".base_url()."theme/images/foto_users/$row[partnership_agreement]'></tr> -->
      </table>
    </div>
    
  </div>
</section>