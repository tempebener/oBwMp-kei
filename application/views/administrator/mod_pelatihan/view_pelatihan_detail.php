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
                    foreach ($pelatihan as $row){
                if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }
                    echo "
              <tr>
                 <td>Judul Pelatihan</td>
                  <td>:</td>
                  <td>$row[judul_pelatihan]</td>
              </tr>
              <tr>
                  <td>Foto</td>
                  <td>:</td>
                  <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_pelatihan/$row[foto]'></td>
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
            

          <a class='pull-right btn btn-primary btn-sm'  href='".base_url()."admin/administrator/add_bab_pelatihan/$row[id_pelatihan]' >Tambah BAB Pelatihan</a>
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
                    foreach ($pelatihanbab as $row){
                   $tgl_posting = tgl_indo($row['date_time']);

                    echo "
            <tr>
              <td>$no</td>
              <td>$row[judul_pelatihan_detail]</td>
              <td>$row[deskripsi_pelatihan_singkat]</td>
              
              <td>$row[download_pdf]</td>
              <td> $row[video]</td>
               <td>$tgl_posting</td>
               <td></td>
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