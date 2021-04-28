<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Member</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/tambah_member',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                   
                    <tr><th width='120px' scope='row'>Email</th>
                      <td><input type='email' class='form-control' name='email'></td>
                    </tr>

                    <tr><th scope='row'>Password</th>
                      <td><input type='password' class='form-control' name='password' onkeyup=\"nospaces(this)\" required></td>
                    </tr>

                    <tr><th width='120px' scope='row'>Nama</th>
                      <td><input type='text' class='form-control' name='nama'></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Alamat</th>
                      <td><input type='text' class='form-control' name='alamat' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>No. Handphone</th>
                      <td><input type='number' class='form-control' name='no_hp' onkeyup=\"nospaces(this)\" required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Pendidikan Terakhir</th>
                      <td><input type='text' class='form-control' name='pend_terakhir' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Pekerjaan</th>
                      <td><input type='text' class='form-control' name='pekerjaan' required></td>
                    </tr>
                   
                    <tr><th width='120px' scope='row'>Usaha yang Diminati</th>
                      <td><input type='text' class='form-control' name='usaha_diminati' required></td>
                    </tr>

                    <tr><th scope='row'>KTP</th>
                      <td><input type='file' class='form-control' name='foto_ktp'></td>
                    </tr>

                    <tr><th scope='row'>NPWP</th>
                      <td><input type='file' class='form-control' name='foto_npwp'></td>
                    </tr>

                    <tr><th scope='row'>Foto Diri</th>
                      <td><input type='file' class='form-control' name='foto_pas'></td>
                    </tr>

                    <tr><th scope='row'>SKU</th>
                      <td><input type='file' class='form-control' name='foto_sku'></td>
                    </tr>

                    <tr><th scope='row'>Partnership Agreement</th>
                      <td><input type='file' class='form-control' name='partnership_agreement'></td>
                    </tr>
                  </tbody>
                  </table></div>
              
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div></div>";
            echo form_close();