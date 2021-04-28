<div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">TAMBAH PELATIHAN</h3>
                </div>
              <div class="box-body"><?php echo form_open_multipart('admin/administrator/pelatihan_simpan'); ?>
              <div class="col-md-12">
                  <table class="table table-condensed table-bordered">
                  <tbody>
                    <tr><th width="120px" scope="row">Judul</th>    <td><input type="text" class="form-control" name="judul_pelatihan" required></td></tr>
                    <tr><th width="120px" scope="row">Deskripsi Singkat</th>    <td><input type="text" class="form-control" name="deskripsi_singkat" required></td></tr>
                    <tr><th scope="row">Deskripsi Full</th>             <td><textarea id="editor1" class="form-control" name="deskirpsi_full" style="height:260px" required></textarea></td></tr>
                    <tr><th scope='row'>Gambar</th>                 <td><input type='file' class='form-control' name='foto' required></td></tr>
                  </tbody>
                  </table>
                </div>

              <div class="box-footer">
                    <button type="submit" name="submit" class="btn btn-info">Tambahkan</button>
                    <a href="listpelatihan"><button type="button" class="btn btn-default pull-right">Batal</button></a>
                    <?php echo form_close() ?>
                  </div>
            </div></div></div>


<script>
    jQuery(document).ready(function () {
        jQuery('#submit_button').click(function () {
            jQuery('#submit_button').attr('disabled','disabled');

       document.getElementById("myform").submit();
      return true;
           });
    });
</script>
