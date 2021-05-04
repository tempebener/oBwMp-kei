<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/eo_bab_edit',$attributes);
              if ($rows['gambar']==''){ $foto = 'users.gif'; }else{ $foto = $rows['gambar']; }
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_eo_detail]'>
                    <tr><th scope='row'>Judul</th>
                    <td><input type='text' class='form-control' name='judul_eo_detail' value='$rows[judul_eo_detail]'></td></tr>
                    <tr><th scope='row'>Deskripsi</th>
                    <td><textarea id='editor1' class='form-control' name='deskripsi_eo_detail' style='height:260px'>$rows[deskripsi_eo_detail]</textarea></td></tr>
                    <tr>
                      <th scope='row'>Ganti Foto</th>
                      <td><input type='file' class='form-control' name='gambar'><hr style='margin:5px'>";
                        if ($rows['gambar'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_ekonomi/ekonomi_detail/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                      </td>
                    </tr>
                    <tr>
                      <th scope='row'>Ganti PDF</th>
                      <td><input type='file' class='form-control' name='download_pdf'><hr style='margin:5px'>";
                        if ($rows['download_pdf'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_ekonomi/ekonomi_detail/$rows[download_pdf]'>$rows[download_pdf]</a>"; } echo "</td></tr>
                      </td>
                    </tr>
                    <tr><th scope='row'>LINK Video Youtube</th>
                    <td><input type='text' class='form-control' name='video' value='$rows[video]'></td></tr>
                  </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='../listpelatihan'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
