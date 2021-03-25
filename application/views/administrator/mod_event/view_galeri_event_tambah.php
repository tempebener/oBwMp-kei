<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data User</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_galerievent',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>



                    <tr><th scope='row'>Nama Event</th>               <td><select name='a' class='combobox form-control' required>
                                                                            <option value='' selected>- Pilih level -</option>";
                                                                            foreach ($sans as $row){
                                                                                echo "<option value='$row[id]'>$row[title]</option>";
                                                                            }
                    echo "</td></tr>
                    <tr><th scope='row'>Upload Foto</th>              <td><input type='file' class='form-control' name='f'></td></tr>

                  </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
