<section class='invoice'>
      <!-- title row -->
      <div class='row'>
        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> DETAIL PELATIHAN
            <small class='pull-right'></small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class='row invoice-info'>
        <div class='col-sm-6 invoice-col'>
          <table width="100%" border="0" cellspacing="0" cellpadding="4">
            <?php
                    $no = 1;
                    foreach ($eo as $row){
                if ($row['foto_eo'] == ''){ $foto_eo ='blank.png'; }else{ $foto_eo = $row['foto_eo']; }
                    echo "
              <tr>
                 <td>Judul Pelatihan</td>
                  <td>:</td>
                  <td>$row[judul_eo]</td>
              </tr>
              <tr>
                  <td>Foto</td>
                  <td>:</td>
                  <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_ekonomi/$row[foto_eo]'></td>
              </tr>
          </table>
        </div>
         <div class='col-sm-6 invoice-col'>
          <table width='100%' border='0' cellspacing='0' cellpadding='0'>



               <tr>
                  <td>Tanggal Posting</td>
                  <td >:</td>
                  <td >".tgl_indo($row['date_time'])."</td>
              </tr>



                    </table>
        </div>



   <!-- /.col -->

        <!-- /.col -->

        <!-- /.col -->
      </div>
      <!-- /.row -->
<br>
<br>

 <h2 class='page-header'>
            <i class='fa fa-globe'></i> BAB PELATIHAN
            <small class='pull-right'></small>


          <a class='pull-right btn btn-primary btn-sm'  title='List Data' href='".base_url()."admin/administrator/eo_detail/$row[id_eo]' ><span class='glyphicon glyphicon-tasks'></span></a>
          </h2>
           ";
                      $no++;
                    }
                  ?>

       <div class='row'>
        <div class='col-xs-12 table-responsive'>
          <table class='table table-striped'>
            <thead>

            <tr>
              <th>BAB</th>
              <th>JUDUL</th>
              <th>DESKRIPSI</th>
              <th>PDF</th>
              <th>VIDEO</th>
              <th>Tanggal Posting</th>
              <th >Action</th>
            </tr>
            </thead>
            <tbody>

                <?php
                    $no = 1;
                    foreach ($eobab as $row){
                   $tgl_posting = tgl_indo($row['date_time']);

                    echo "
            <tr>
              <td>$no</td>
              <td>$row[judul_eo_detail]</td>
              <td>$row[deskripsi_eo_detail]</td>
              <td>$row[download_pdf]</td>
              <td> $row[video]</td>
               <td>$tgl_posting</td>
               <td><center>
               <a class='btn btn-warning btn-xs' title='Kembalikan Data' href='".base_url()."admin/administrator/eo_bab_restore/$row[id_eo_detail]' onclick=\"return confirm('Apa anda yakin untuk mengembalikan Data ini?')\"><span class='glyphicon glyphicon-repeat'></span></a>
                 <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."admin/administrator/eo_bab_hapus/$row[id_eo_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
               </center></td>
            </tr>

";
                      $no++;
                    }
                  ?>

            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
    </section>
