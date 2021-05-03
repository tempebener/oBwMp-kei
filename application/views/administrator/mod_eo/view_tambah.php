<div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Ekonomi Outlook</h3>
                </div>
              <div class="box-body"><?php echo form_open_multipart('admin/administrator/eo_simpan'); ?>
              <div class="col-md-12">
                  <table class="table table-condensed table-bordered">
                  <tbody>
                    <tr><th width="120px" scope="row">Judul</th>    <td><input type="text" class="form-control" name="judul_eo" required></td></tr>
                    <tr><th scope="row">Deskripsi Full</th>             <td><textarea id="editor1" class="form-control" name="deskripsi_eo" style="height:260px" required></textarea></td></tr>
                    <tr><th scope='row'>Gambar</th>                 <td><input type='file' class='form-control' name='foto'></td></tr>
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
