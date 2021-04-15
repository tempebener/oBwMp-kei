<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Slider</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>admin/administrator/tambah_slider'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body table-responsive padding">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul</th>
            <th>Sub Judul</th>
            <th>Link</th>
            <th>Foto</th>
            <th>Status</th>


            <th style='width:70px'>Action</th>
          </tr>
        </thead>
        <tbody>
      <?php
        $no = 1;
        foreach ($record as $row){
        if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }
        $status = $this->db->query("select * from tbl_slider_s where id_slider_s = '" . $row['id_slider_s'] . "'")->result();
$stat = "";
$st = 0;
if(count($status))
{
  $stat = $status[0]->nama_status;

}


        echo "<tr><td>$no</td>
                  <td>$row[jdl_1]</td>
                  <td>$row[jdl_2]</td>
                  <td>$row[link]</td>
                  <td><center><img style='border:1px solid #cecece' width='150px'  src='".base_url()."theme/images/foto_slider/$foto'></center></td>
                  <td>$stat</td>


                  <td><center>

                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."admin/administrator/edit_slider/$row[id_slider]'><span class='glyphicon glyphicon-edit'></span></a>
                    ";

              if($row['id_slider_s'] == 2)
              {
                       echo "<a class='btn btn-primary btn-xs' title='Approve Data' href='".base_url()."admin/administrator/slider_aktif/" . $row['id_slider'] . "' ><span class='glyphicon glyphicon-ok'></span></a>
                  </center></td>

                  ";
                  }
                  if($row['id_slider_s'] == 1)
                  {
                  echo "<a class='btn btn-danger btn-xs' title='Approve Data' href='".base_url()."admin/administrator/slider_noaktif/" . $row['id_slider'] . "' ><span class='glyphicon glyphicon-remove'></span></a>
             </center></td>";


            }
                echo "

              </tr>";
            $no++;
          }
        ?>
      </tbody>
    </table>
  </div>
