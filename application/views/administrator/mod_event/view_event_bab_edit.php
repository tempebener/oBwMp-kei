<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/event_bab_edit',$attributes);
              if ($rows['gambar']==''){ $foto = 'users.gif'; }else{ $foto = $rows['gambar']; }
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_event_detail]'>
                    <tr><th scope='row'>Judul</th>
                    <td><input type='text' class='form-control' name='judul_event_detail' value='$rows[judul_event_detail]'></td>
                    </tr>
                    <tr><th scope='row'>Tanggal Event</th>
                    <td><input type='date' class='form-control' name='date_event_detail' value='$rows[date_event_detail]'></td>
                    </tr>
                    <tr><th scope='row'>Waktu Event Mulai</th>
                    <td><input type='time' class='form-control' name='time_event_detail' value='$rows[time_event_detail]'></td>
                    </tr>
                    <tr><th scope='row'>Waktu Event Selesai</th>
                    <td><input type='time' class='form-control' name='time_event_detail_end' value='$rows[time_event_detail_end]'></td>
                    </tr>
                    <tr><th scope='row'>Tempat</th>
                    <td><input type='text' class='form-control' name='tempat_event_detail' value='$rows[tempat_event_detail]'></td>
                    </tr>
                    <tr><th scope='row'>Deskripsi</th>
                    <td><textarea id='editor1' class='form-control' name='deskripsi_event_detail' style='height:260px'>$rows[deskripsi_event_detail]</textarea></td></tr>
                    <tr>
                      <th scope='row'>Ganti Foto</th>
                      <td><input type='file' class='form-control' name='gambar'><hr style='margin:5px'>";
                        if ($rows['gambar'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_event/event_detail/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                      </td>
                    </tr>
                    <tr>
                      <th scope='row'>Ganti PDF</th>
                      <td><input type='file' class='form-control' name='download_pdf'><hr style='margin:5px'>";
                        if ($rows['download_pdf'] != ''){ echo "<i style='color:red'>Foto Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_event/event_detail/$rows[download_pdf]'>$rows[download_pdf]</a>"; } echo "</td></tr>
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
