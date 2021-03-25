<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Email</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/tambah_email'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Nama</th>
            <th>Email</th>



            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){



        echo "<tr><td>$no</td>
                  <td>$row[nama]</td>
                  <td>$row[email]</td>



                  <td><center>

                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."administrator/edit_email/$row[id_email]'><span class='glyphicon glyphicon-edit'></span></a>
                    <a class='btn btn-danger btn-xs' title='Edit Data' href='".base_url()."administrator/delete_email/$row[id_email]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove' ></span></a>

              </tr>";
            $no++;
          }
        ?>
      </tbody>
    </table>
  </div>
