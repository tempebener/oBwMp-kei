<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Slider</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_event',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th scope='row'>Judul</th>             <td><input type='text' class='form-control' name='a' autocomplete='off'required></td></tr>
                    <tr><th scope='row'>lokasi</th>             <td><input type='text' class='form-control' name='b' autocomplete='off' required></td></tr>
                    <tr><th scope='row'>Description</th>             <td><textarea  id='editor1'type='text' class='form-control  textarea' name='c' autocomplete='off' required></textarea></td></tr>
                    <tr><th scope='row'>Upload Foto</th>              <td><input type='file' class='form-control' name='f'></td></tr>



                  </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
