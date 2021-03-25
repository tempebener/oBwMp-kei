<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Project</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/tambah_galeriprojek'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul</th>

            <th>Foto</th>
            <th>Waktu</th>


            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){
        if ($row['foto_galeri'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto_galeri']; }



        echo "<tr><td>$no</td>
                  <td>$row[title]</td>

                  <td><center><img style='border:1px solid #cecece' width='150px'  src='".base_url()."asset/foto_projek/galeri/$foto'></center></td>
                  <td>$row[times]</td>


                  <td><center>

                    <a class='btn btn-danger btn-xs' title='Edit Data' href='".base_url()."administrator/delete_gp/$row[id_gp]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove' ></span></a>

              </tr>";
            $no++;
          }
        ?>
      </tbody>
    </table>
  </div>
