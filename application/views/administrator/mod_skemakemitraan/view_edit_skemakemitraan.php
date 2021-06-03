<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Event</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/skemakemitraan_edit',$attributes);
              if ($rows['foto']==''){ $foto = 'users.gif'; }else{ $foto = $rows['foto']; }
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_skema_kemitraan]'>
                    <tr><th scope='row'>Judul</th>             <td><input type='text' class='form-control' name='judul_skema_kemitraan' value='$rows[judul_skema_kemitraan]'></td></tr>
                    <tr><th scope='row'>Deskripsi</th>             <td><textarea id='editor1' class='form-control' name='deskripsi_skema_kemitraan' style='height:260px'>$rows[deskripsi_skema_kemitraan]</textarea></td></tr>
                     <tr><th scope='row'>Deskripsi</th>             <td><textarea id='editor2' class='form-control' name='keterangan_skema_kemitraan' style='height:260px'>$rows[keterangan_skema_kemitraan]</textarea></td></tr>
                    <tr><th scope='row'>Ganti Foto</th>                     <td><input type='file' class='form-control' name='foto'><hr style='margin:5px'>";
                                                                                 if ($rows['foto'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/skema_kemitraan/$rows[foto]'>$rows[foto]</a>"; } echo "</td></tr></td></tr>
                                                                                 </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='../listpelatihan'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
