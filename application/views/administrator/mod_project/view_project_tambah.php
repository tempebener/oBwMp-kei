<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Projek</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_project',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th scope='row'>Judul</th>             <td><input type='text' class='form-control' name='a' autocomplete='off'required></td></tr>
                    <tr><th scope='row'>lokasi</th>             <td><input type='text' class='form-control' name='b' autocomplete='off' required></td></tr>
                    <tr><th scope='row'>Kategori</th>               <td><select name='z' class='form-control' required>
                                                                            <option value='' selected>- Pilih Kategori -</option>
                                                                            <option value='apartment'>Apartment</option>
                                                                            <option value='perkantoran'>Perkantoran</option>
                                                                            <option value='perumahan'>Perumahan</option>
                                                                            <option value='hotel'>Hotel & Resort</option></td></tr>
                    <tr><th scope='row'>kontak</th>             <td><input type='text' class='form-control' name='g' autocomplete='off' ></td></tr>
                    <tr><th scope='row'>peta</th>             <td><input type='text' class='form-control' name='h' autocomplete='off' ></td></tr>                                                        
                    <tr><th scope='row'>Description</th>             <td><textarea  id='editor1'type='text' class='form-control  textarea' name='c' autocomplete='off' ></textarea></td></tr>
                    <tr><th scope='row'>Upload Foto</th>              <td><input type='file' class='form-control' name='f'></td></tr>



                  </tbody>
                  </table></div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();
