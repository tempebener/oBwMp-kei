<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Semua Berita</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/tambah_berita'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul Berita</th>
            <th>Link Berita</th>
            <th>Isi Berita</th>
            <th>Foto</th>
            <th>Tanggal</th>

            <th style='width:75px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){
        $tgl_posting = tgl_indo($row['tanggal']);
        if ($row['gambar'] == ''){ $foto ='blank.png'; }else{ $foto = $row['gambar']; }
        if ($row['status']=='Y'){ $status = '<span style="color:green">Published</span>'; }else{ $status = '<span style="color:red">Unpublished</span>'; }
        echo "<tr><td>$no</td>
                  <td>$row[judul]</td>
                  <td>$row[link_berita]</td>
                  <td>$row[isi_berita]</td>
                  <td><center><img style='border:1px solid #cecece' width='150px'  src='".base_url()."asset/foto_berita/$foto'></center></td>
                  <td>$tgl_posting</td>

                  <td><center>
                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."administrator/edit_berita/$row[id_berita]'><span class='glyphicon glyphicon-edit'></span></a>
                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."administrator/delete_berita/$row[id_berita]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                  </center></td>
              </tr>";
          $no++;
        }
      ?>
      </tbody>
    </table>
  </div>
