<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data </h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_footer',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_footer]'>
                    <tr><th scope='row'>Tentang Kami</th>                    <td><textarea id='editor1'type='text' class='form-control ' name='a' >$rows[tentang_kami]</textarea></td></tr>
                    <tr><th scope='row'>Alamat</th>                    <td><textarea type='text' class='form-control' name='b' value='$rows[alamat]'>$rows[alamat]</textarea></td></tr>
                    <tr><th scope='row'>Telepone</th>                    <td><input type='text' class='form-control' name='c' value='$rows[telepone]'></td></tr>
                    <tr><th scope='row'>Handpone</th>                    <td><input type='text' class='form-control' name='d' value='$rows[handpone]'></td></tr>
                    <tr><th scope='row'>Email</th>                    <td><input type='email' class='form-control' name='e' value='$rows[email]'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                    <td><textarea id='editor1'type='text' class='form-control ' name='f' >$rows[keterangan]</textarea></td></tr>



                                                                                 </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
