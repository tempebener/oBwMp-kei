<?php
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Artikel Baru ".$this->session->disabled." </h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('admin/administrator/tambah_listberita',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Judul Artikel</th>    <td><input type='text' class='form-control' name='b' required></td></tr>
                   

                    
              <tr class='hidden'><th scope='row'>Headline</th>               <td><input type='radio' name='e' value='Y'> Ya &nbsp; <input type='radio' name='e' value='N' checked> Tidak</td></tr>
                    <tr class='hidden'><th scope='row'>Pilihan</th>               <td><input type='radio' name='pl' value='Y'> Ya &nbsp; <input type='radio' name='pl' value='N' checked> Tidak</td></tr>
                    <tr><th scope='row'>Isi Artikel</th>             <td><textarea id='editor1' class='form-control' name='h' style='height:260px' required></textarea></td></tr>
                    <tr><th scope='row'>Gambar(720x419)</th>                 <td><input type='file' class='form-control' name='k' required></td></tr>
                   <tr> <th scope='row'><td>NOTED: Nama File Foto Tidak boleh mengunakan Spasi. </td></th></tr>
                      
				
                  </tbody>
                  </table>
                </div>

              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Posting</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div></div>";
            echo form_close();

			?>
