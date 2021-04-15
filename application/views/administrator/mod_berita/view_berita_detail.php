<section class='invoice'>
      <!-- title row -->
      <div class='row'>
        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> DETAIL ARTIKEL 
            <small class='pull-right'></small>
          </h2>
          <?php 
                    
                    foreach ($news as $row){
                
                    echo "
           <a class='btn btn-success btn-sm' title='Edit Data' href='".base_url()."admin/administrator/edit_listberita/$row[id_berita]/$row[status]'>Edit</a>
          <a class='btn btn-warning btn-sm' title='Delete Data' href='".base_url()."admin/administrator/delete_listberita/$row[id_berita]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\">Hapus</a>
             ";

          if($this->session->level=='admin') {

            echo "
                                <a class='btn btn-primary btn-sm' title='Edit Data' href='".base_url()."admin/administrator/publish_listberita/$row[id_berita]/$row[status]'>Publish</a>
                                 ";
                                }
              echo "
        ";
                     
                    }
                  ?></div>
        <!-- /.col -->
     

<div class='col-xs-12 table-responsive'>
          <table class='table table-striped'>
          	<?php 
                    $no = 1;
                    foreach ($news as $row){
                 $tgl_posting = tgl_indo($row['tanggal']);
                    
                    if ($row['status']=='Y'){ $status = '<span style="color:blue">Published</span>'; }else{ $status = '<span style="color:red">Unpublished</span>'; }
                    

                   
                    if ($row['foto'] == ''){  $foto = $row['gambar']; }
                    echo "
<tr><th>Judul Artikel</th><td> $row[judul]</td></tr>
<tr><th>Tgl Posting</th><td> $tgl_posting</td></tr>
<tr><th>Status Published</th><td> $status</td></tr>

<tr><th>Isi Artikel</th><td> $row[isi_berita]</td></tr>
<tr><th>Foto</th><td> <img style='border:1px solid #cecece' width='400px' class='' src='".base_url()."theme/images/berita/$row[gambar]'></td></tr>

 ";
                      $no++;
                    }
                  ?>
</table>
</div>
</div>
  </section>