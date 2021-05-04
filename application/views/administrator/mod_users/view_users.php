            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Manajemen Users</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>admin/administrator/tambah_manajemenuser'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <!-- <th>Username</th> -->
                        <th>Nama Lengkap</th>
                        <th>Email</th>
                        <th>Foto</th>
                        <th>Status</th>
                        <th>Level</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                        
                    if ($row['foto'] == ''){ $foto ='admin.png'; }else{ $foto = $row['foto']; } ?>
                        <tr><td><?= $no ?></td>
                          <!-- <td><?= $row['username'] ?></td> -->
                          <td><?= $row['nama_lengkap'] ?></td>
                          <td><?= $row['email'] ?></td>
                          <td class="div-image"><img class="img-circle" width="45px" style="border:1px solid #cecece" class="img-circle" src="<?= base_url('theme/images/foto_users/'.$foto) ?>"></td>
                          <td>
                            <?php
                              if($row['blokir']=="Y"){
                                  echo "<span class='label label-warning fontspecial'>Blokir</span>";
                              }else{
                                  echo "<span class='label label-info fontspecial'>Aktif</span>";
                              }
                            ?>
                          </td>
                          <td><?= $row['level'] ?></td>
                          <td><center>
                            <a class="btn btn-success btn-xs" title="Edit User" href="<?= base_url('admin/administrator/edit_manajemenuser/'.$row['id_users']) ?>"><span class="glyphicon glyphicon-edit"></span></a>

                            <?php
                              if($row['blokir']=="Y"){
                              echo "<a class='btn btn-info btn-xs' title='Aktifkan User' href='".base_url()."admin/administrator/active_manajemenuser/$row[id_users]'><span class='glyphicon glyphicon-ok'></span></a>"; 
                              }else{
                              echo "<a class='btn btn-warning btn-xs' title='Blokir User' href='".base_url()."admin/administrator/deactive_manajemenuser/$row[id_users]' onclick=\"return confirm('Apa anda yakin untuk blokir User ini?')\"><span class='glyphicon glyphicon-ban-circle'></span></a>"; 
                              } ?>

                            <a class="btn btn-danger btn-xs" title="Hapus User" href="<?= base_url('admin/administrator/delete_manajemenuser/'.$row['id_users'].'/'.$row['no_induk']) ?>" onclick="return confirm('Apa anda yakin untuk hapus Data ini?')"><span class="glyphicon glyphicon-remove"></span></a>
                          </center></td>
                      </tr>
                  <?php
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>