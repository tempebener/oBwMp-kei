<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Skema Kemitraan</h3>
    
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul</th>
            <th>Deskripsi</th>
            <th>Ket/Catatan</th>
            <th>Foto</th>


            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){
        if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }
       



        echo "<tr><td>$no</td>
                  <td>$row[judul_skema_kemitraan]</td>
                  <td>$row[deskripsi_skema_kemitraan]</td>
                  <td>$row[keterangan_skema_kemitraan]</td>
                  <td><center><img style='border:1px solid #cecece' width='150px'  src='".base_url()."theme/images/skema_kemitraan/$foto'></center></td>


                  <td><center>
                   <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/skemakemitraan_edit/$row[id_skema_kemitraan]'><span class='glyphicon glyphicon-edit'></span></a>
                   
             </center></td>

              </tr>";
                      $no++;
                    }
                  ?>
      </tbody>
    </table>
  </div>
