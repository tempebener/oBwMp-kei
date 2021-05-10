<section class='invoice'>
      <!-- title row -->
      <div class='row'>
        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> Detail Event
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
                    foreach ($event as $row){
                if ($row['foto_event'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto_event']; }
                    echo "
              <tr>
                 <td>Judul</td>
                  <td>:</td>
                  <td>$row[judul_event]</td>
              </tr>
              <tr>
                  <td>Foto</td>
                  <td>:</td>
                  <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_event/$row[foto_event]'></td>
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
            <i class='fa fa-globe'></i> BAB Event
            <small class='pull-right'></small>


          <a class='pull-right btn btn-primary btn-sm'  href='".base_url()."admin/administrator/add_bab_event/$row[id_event]' >Tambah BAB</a>
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
              <th>MULAI PADA</th>
              <th >Action</th>
            </tr>
            </thead>
            <tbody>

                <?php
                    $no = 1;
                    foreach ($eventbab as $row){
                   $tgl_posting = tgl_indo($row['date_event_detail']);

                    echo "
            <tr>
              <td>$no</td>
              <td>$row[judul_event_detail]</td>
              <td>$row[deskripsi_event_detail]</td>

              <td>$row[download_pdf]</td>
              <td> $row[video]</td>
               <td>$tgl_posting</td>
               <td><center>
                 <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/event_bab_edit/$row[id_event_detail]'><span class='glyphicon glyphicon-edit'></span></a>
                 <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."admin/administrator/event_bab_hapus/$row[id_event_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
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
