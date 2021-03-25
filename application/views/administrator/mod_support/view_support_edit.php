<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data </h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_support',$attributes);
              if ($rows['foto']==''){ $foto = 'users.gif'; }else{ $foto = $rows['foto']; }
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_support]'>
                    <tr><th scope='row'>Judul</th>             <td><input type='text' class='form-control' name='a' value='$rows[judul_support]'></td></tr>
                    <tr><th scope='row'>Lokasi</th>             <td><textarea type='text' class='form-control' name='c' value='$rows[lokasi]'>$rows[lokasi]</textarea></td></tr>
                    <tr><th scope='row'>Telepone</th>             <td><input type='text' class='form-control' name='d' value='$rows[telepone]'></td></tr>
                    <tr><th scope='row'>Handpone</th>             <td><input type='text' class='form-control' name='e' value='$rows[handpone]'></td></tr>
                    <tr><th scope='row'>Peta Embed</th>             <td><input type='text' class='form-control' name='g' value='$rows[peta]'></td></tr>
                      <tr><th scope='row'>Description</th>                    <td><textarea id='editor1'type='text' class='form-control ' name='b' >$rows[deskripsi_support]</textarea></td></tr>

                    <tr><th scope='row'>Ganti Foto</th>                     <td><input type='file' class='form-control' name='f'><hr style='margin:5px'>";
                                                                                 if ($rows['foto'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_support/$rows[foto]'>$rows[foto]</a>"; } echo "</td></tr></td></tr>
                                                                                 </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
