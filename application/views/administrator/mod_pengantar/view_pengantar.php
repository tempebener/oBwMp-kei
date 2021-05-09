            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Modul Pengantar</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:10px'>No</th>
                        <th>Judul</th>
                        <th>Icon & Judul | Kiri</th>
                        <th>Deskripsi | Kiri</th>
                        <th>Icon & Judul | Tengah</th>
                        <th>Deskripsi | Tengah</th>
                        <th>Icon & Judul | Kanan</th>
                        <th>Deskripsi | Kanan</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php $no = 1;
                    foreach ($record as $row){
                     
                    if ($row['icon_1'] == ''|$row['icon_2'] == ''|$row['icon_3'] == ''){ 
                      $icon_1 ='blank.png'; $icon_2 ='blank.png'; $icon_3 ='blank.png'; 
                    }else{ 
                      $icon_1 = $row['icon_1']; $icon_2 = $row['icon_2']; $icon_3 = $row['icon_3']; 
                    }
                    echo "<tr><td>$no</td>
                              <td>$row[judul]</td>
                              <td class='font11'><img style='border:1px solid #cecece' width='100px'  src='".base_url()."theme/images/foto_pengantar/$icon_1'> <br/>$row[judul_icon_1]</td>
                              <td>$row[deskripsi1]</td>
                              <td class='font11'><img style='border:1px solid #cecece' width='100px'  src='".base_url()."theme/images/foto_pengantar/$icon_2'> <br/>$row[judul_icon_2]</td>
                              <td>$row[deskripsi2]</td>
                              <td class='font11'><img style='border:1px solid #cecece' width='100px'  src='".base_url()."theme/images/foto_pengantar/$icon_3'> <br/>$row[judul_icon_3]</td>
                              <td>$row[deskripsi3]</td>
                            
                              <td><center>
                              <a class='btn btn-warning btn-xs' title='Detail Data' href='".base_url()."admin/administrator/detailspengantar/$row[id_pengantar]'><span class='glyphicon glyphicon-zoom-in'></span></a>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/edit_pengantar/$row[id_pengantar]'><span class='glyphicon glyphicon-edit'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>