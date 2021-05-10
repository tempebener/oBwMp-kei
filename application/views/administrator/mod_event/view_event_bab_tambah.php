<div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Bab Event</h3>
                </div>
              <div class="box-body"><?php echo form_open_multipart('admin/administrator/simpan_bab_event', array('id' => 'myform')); ?>
              <div class="col-md-12">
                  <table class="table table-condensed table-bordered">
                  <tbody>
                    <input type="hidden" name="id_event" value="<?php echo $event->id_event;?>"/>
                    <tr><th width="120px" scope="row">Nama Event</th>    <td><input type="text" class="form-control" name="judul_event_detail" required></td></tr>
                    <tr><th width="120px" scope="row">Tanggal Event</th>    <td><input type="date" class="form-control" name="date_event_detail" required></td></tr>
                    <tr><th width="120px" scope="row">Waktu Event</th>    <td><input type="time" class="form-control" name="time_event_detail" required></td></tr>
                    <tr><th scope="row">Deskripsi</th>             <td><textarea id="editor1" class="form-control" name="deskripsi_event_detail" style="height:260px" required></textarea></td></tr>
                    <tr><th scope='row'>Gambar</th>                 <td><input type='file' class='form-control' name='gambar'></td></tr>

                    <tr><th scope='row'>File PDF</th>                 <td><input type='file' class='form-control' name='download_pdf'></td></tr>
                   <tr> <th scope='row'><td>NOTED: Nama File PDF Tidak boleh mengunakan Spasi. </td></th></tr>
                    <tr><th width="120px" scope="row">LINK Video Youtube</th>    <td><input type="text" class="form-control" name="video"></td></tr>
                  </tbody>
                  </table>
                </div>

              <div class="box-footer">
                    <button type="submit" name="submit" class="btn btn-info">Posting</button>
                    <a href="index.php"><button type="button" class="btn btn-default pull-right">Cancel</button></a>
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
