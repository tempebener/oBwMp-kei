            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Modul Pelatihan</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>admin/administrator/eo_tambah'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Judul Pelatihan</th>
                        <th>Foto</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    $no = 1;





                    foreach ($record as $row){


                    if ($row['foto_eo'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto_eo']; }
                    echo "<tr><td>$no</td>
                              <td>$row[judul_eo]</td>
                              <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_ekonomi/$foto'></td>

                              <td><center>
                                <a class='btn btn-warning btn-xs' title='Detail Data' href='".base_url()."admin/administrator/eo_detail/$row[id_eo]'><span class='glyphicon glyphicon-zoom-in'></span></a>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/eo_edit/$row[id_eo]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."admin/administrator/eo_hapus/$row[id_eo]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>
