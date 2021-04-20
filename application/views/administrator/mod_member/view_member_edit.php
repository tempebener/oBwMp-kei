<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Member</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/edit_member',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_member]'>
                    <tr><th width='120px' scope='row'>Nama</th>
                      <td><input type='text' class='form-control' name='nama' value='$rows[nama]' disabled></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Alamat</th>
                      <td><input type='text' class='form-control' name='alamat' value='$rows[alamat]' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>No. Handphone</th>
                      <td><input type='number' class='form-control' name='no_hp' value='$rows[no_hp]' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Email</th>
                      <td><input type='email' class='form-control' name='email' value='$rows[email]' disabled></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Pendidikan Terakhir</th>
                      <td><input type='text' class='form-control' name='pend_terakhir' value='$rows[pend_terakhir]' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Pekerjaan</th>
                      <td><input type='text' class='form-control' name='pekerjaan' value='$rows[pekerjaan]' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Usaha yang Diminati</th>
                      <td><input type='text' class='form-control' name='usaha_diminati' value='$rows[usaha_diminati]' required></td>
                    </tr>

                    <tr><th scope='row'>KTP</th>
                      <td><input type='file' class='form-control' name='foto_ktp'>";
                        if ($rows['foto_ktp'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_users/member/ktp/$rows[foto_ktp]'>$rows[foto_ktp]</a>"; } echo "</td>
                    </tr>

                    <tr><th scope='row'>NPWP</th>
                      <td><input type='file' class='form-control' name='foto_npwp'>";
                        if ($rows['foto_npwp'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_users/member/npwp/$rows[foto_npwp]'>$rows[foto_npwp]</a>"; } echo "</td>
                    </tr>

                    <tr><th scope='row'>Foto Diri</th>
                      <td><input type='file' class='form-control' name='foto_pas'>";
                        if ($rows['foto_pas'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_users/member/foto_diri/$rows[foto_pas]'>$rows[foto_pas]</a>"; } echo "</td>
                    </tr>

                    <tr><th scope='row'>SKU</th>
                      <td><input type='file' class='form-control' name='foto_sku'>";
                        if ($rows['foto_sku'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_users/member/sku/$rows[foto_sku]'>$rows[foto_sku]</a>"; } echo "</td>
                    </tr>

                    <tr><th scope='row'>Partnership Agreement</th>
                      <td><input type='file' class='form-control' name='partnership_agreement'>";
                        if ($rows['partnership_agreement'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."theme/images/foto_users/member/partnership/$rows[partnership_agreement]'>$rows[partnership_agreement]</a>"; } echo "</td>
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
