<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Event</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/tambah_event'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul</th>
            <th>Description</th>
            <th>Lokasi</th>
            <th>Foto</th>
            <th>Waktu</th>


            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){
        if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }



        echo "<tr><td>$no</td>
                  <td>$row[title]</td>
                  <td>$row[deskripsi]</td>
                  <td>$row[lokasi]</td>
                  <td><center><img style='border:1px solid #cecece' width='150px'  src='".base_url()."asset/foto_event/$foto'></center></td>
                  <td>$row[time]</td>


                  <td><center>

                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."administrator/edit_event/$row[id]'><span class='glyphicon glyphicon-edit'></span></a>
                    <a class='btn btn-danger btn-xs' title='Edit Data' href='".base_url()."administrator/delete_event/$row[id]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove' ></span></a>

              </tr>";
            $no++;
          }
        ?>
      </tbody>
    </table>
  </div>
