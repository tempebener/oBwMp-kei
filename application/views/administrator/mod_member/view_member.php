<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">List Member</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>admin/administrator/tambah_member'>Tambah Member</a>
    </div><!-- /.box-header -->
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Alamat</th>
            <th>Pend. Terakhir</th>
            <th>Pekerjaan</th>
            <th>Usaha yang Diminati</th>
            <th>Foto</th>
            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php $no = 1;
        foreach ($record as $row){

        if ($row['foto_pas'] == ''){ 
          $foto_pas ='admin.png'; 
        }else{ 
          $foto_pas = $row['foto_pas']; 
        }
        echo "<tr><td>$no</td>
                  <td>$row[nama]</td>
                  <td>$row[email]</td>
                  <td>$row[alamat]</td>
                  <td>$row[pend_terakhir]</td>
                  <td>$row[pekerjaan]</td>
                  <td>$row[usaha_diminati]</td>
                  <td class='div-image'><img class='img-circle' width='45px' style='border:1px solid #cecece' class='img-circle' src='".base_url()."theme/images/foto_users/$foto_pas'></td>
                  <td><center>
                    <a class='btn btn-warning btn-xs' title='Detail Data' href='".base_url()."admin/administrator/detailsmember/$row[id_member]'><span class='glyphicon glyphicon-zoom-in'></span></a>
                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/edit_member/$row[id_member]'><span class='glyphicon glyphicon-edit'></span></a>
                  </center></td>
              </tr>";
          $no++;
        }
      ?>
                    <!-- Disable dari echo -->
                    <!-- <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."admin/administrator/delete_member/$row[id_member]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a> -->
        </tbody>
      </table>
    </div>
  </div>
</div>