<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Pengantar</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/edit_pengantar',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_pengantar]'>
                    <tr><th width='120px' scope='row'>Judul</th>
                      <td><input type='text' class='form-control' name='judul' value='$rows[judul]' required></td>
                    </tr>
                   
                    <tr><th scope='row'>Deskripsi</th>             <td><textarea id='editor1' class='form-control' name='deskripsi' style='height:260px' required>$rows[deskripsi]</textarea></td>
                    </tr>
                    <tr><th scope='row'>Icon Kiri (100x100)</th>
                      <td><input type='file' class='form-control' name='icon_1'>";
                        if ($rows['icon_1'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_pengantar/$rows[icon_1]'>$rows[icon_1]</a>"; } echo "</td>
                    </tr>
                    <tr><th scope='row'>Judul Kiri</th>
                      <td><input type='text' class='form-control' name='judul_icon_1' value='$rows[judul_icon_1]' required></td>
                    </tr>
                    <tr><th scope='row'>Deskripsi Kiri</th>             <td><textarea id='editor2' class='form-control' name='deskripsi1' style='height:260px'>$rows[deskripsi1]</textarea></td>
                    </tr>

                    <tr><th scope='row'>Icon Tengah (100x100)</th>
                      <td><input type='file' class='form-control' name='icon_2'>";
                        if ($rows['icon_2'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_pengantar/$rows[icon_2]'>$rows[icon_2]</a>"; } echo "</td>
                    </tr>
                    <tr><th scope='row'>Judul Tengah</th>
                      <td><input type='text' class='form-control' name='judul_icon_2' value='$rows[judul_icon_2]' required></td>
                    </tr>
                    <tr><th scope='row'>Deskripsi Tengah</th>             <td><textarea id='editor3' class='form-control' name='deskripsi2' style='height:260px'>$rows[deskripsi2]</textarea></td>
                    </tr>

                    <tr><th scope='row'>Icon Kanan (100x100)</th>
                      <td><input type='file' class='form-control' name='icon_3'>";
                        if ($rows['icon_3'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_pengantar/$rows[icon_3]'>$rows[icon_3]</a>"; } echo "</td>
                    </tr>
                    <tr><th scope='row'>Judul Kanan</th>
                      <td><input type='text' class='form-control' name='judul_icon_3' value='$rows[judul_icon_3]' required></td>
                    </tr>
                    <tr><th scope='row'>Deskripsi Kanan</th>             <td><textarea id='editor4' class='form-control' name='deskripsi3' style='height:260px'>$rows[deskripsi3]</textarea></td>
                    </tr>
                    
                    
				
                  </tbody>
                  </table>
                </div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
