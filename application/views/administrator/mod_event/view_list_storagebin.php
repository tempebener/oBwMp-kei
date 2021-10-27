            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Daftar Event Sampah</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>admin/administrator/event_list'><span class='glyphicon glyphicon-tasks'></span></a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Judul Event</th>
                        <th>Foto</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    $no = 1;





                    foreach ($record as $row){


                    if ($row['foto_event'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto_event']; }
                    echo "<tr><td>$no</td>
                              <td>$row[judul_event]</td>
                              <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_event/$foto'></td>

                              <td><center>
                                <a class='btn btn-warning btn-xs' title='Kembalikan Data' href='".base_url()."admin/administrator/event_restore/$row[id_event]' onclick=\"return confirm('Apa anda yakin untuk mengembalikan Data ini?')\"><span class='glyphicon glyphicon-repeat'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."admin/administrator/event_hapus/$row[id_event]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini secara permanen?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>
