<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data </h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/eo_edit',$attributes);
              if ($rows['foto_eo']==''){ $foto = 'users.gif'; }else{ $foto = $rows['foto_eo']; }
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_eo]'>
                    <tr><th scope='row'>Judul</th>             <td><input type='text' class='form-control' name='judul_eo' value='$rows[judul_eo]'></td></tr>
                    <tr><th scope='row'>Deskripsi Full</th>             <td><textarea id='editor1' class='form-control' name='deskripsi_eo' style='height:260px'>$rows[deskripsi_eo]</textarea></td></tr>
                    <tr><th scope='row'>Ganti Foto</th>                     <td><input type='file' class='form-control' name='foto'><hr style='margin:5px'>";
                                                                                 if ($rows['foto_eo'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_ekonomi/$rows[foto_eo]'>$rows[foto_eo]</a>"; } echo "</td></tr></td></tr>
                                                                                 </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='../listpelatihan'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
