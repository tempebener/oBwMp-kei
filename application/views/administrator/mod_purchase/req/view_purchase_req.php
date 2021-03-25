<div class="col-xs-12">
  <div class="box table-responsive padding">

    <div class="box-header">
      <h3 class="box-title">Purchase Req List (PR-LIST)</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>purchase/add_purchase_request'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body">
      <div class="box-body table-responsive padding"><form method="get" action="<?php echo base_url();?>purchase/purchase_request">
      <table class="table table-condensed table-bordered" width=100%>
      <tbody>

        <th width="12px" scope="row">From </th>    <td width="12px"><input value='<?php echo date("Y-m-d");?>'type="date" class="tanggal" name="transdate1" required></td>

<th width="12px" scope="row">To</th>    <td width="12px"><input value='<?php echo date("Y-m-d");?>' type="date" class="tanggal" name="transdate2" required></td>

        <td><button type="submit" name="submit" class="btn btn-info">Refresh</button></td>


      </tbody>
      </table>
    <table id='example1' class='table table-bordered table-striped table-condensed'>
        <thead>

          <tr bgcolor='#00c0ef'>
            <th style='width:20px'>No</th>
            <th>Req No</th>
            <th>Req Date</th>
            <th>Group Mat</th>
            <th>Account</th>
            <th>Users</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <?php
        $no = 1;
        foreach ($record as $row){
$status = $this->db->query("select * from cam_status where account_status = '" . $row['account_status'] . "'")->result();
$stat = "";
$st = 0;
if(count($status))
{
	$stat = $status[0]->description_status;

}

$level = ($this->session->userdata["level"]);

        echo "<tr><td>$no</td>
                  <td>$row[no_pr]</td>
                  <td>$tgl_posting</td>
                  <td>$row[name_mp]</td>
                  <td></td>
                  <td></td>
                  <td>$stat</td>

                  <td><center>
  				   <a class='btn btn-info btn-xs' title='View Data' href='".base_url()."purchase/detailpurchasereq/" . $row['account_pr'] . "' ><span class='glyphicon glyphicon-eye-open'></span></a>";

  				  if($row['account_status'] == 3)
  					{
                     echo "&nbsp;<a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."purchase/edit_purchase_request/" . $row['account_pr'] . "' onclick=\"return confirm('Apa anda yakin untuk edit Data ini?')\"><span class='glyphicon glyphicon-pencil'></span></a>

  				   ";

  					if($level == "admin") {

  						echo " <a class='btn btn-primary btn-xs' title='Approve Data' href='".base_url()."purchase/approve_purchase_request/" . $row['account_pr'] . "' ><span class='glyphicon glyphicon-ok'></span></a>";
  							echo " <a class='btn btn-danger btn-xs' title='Reject Data' href='".base_url()."purchase/reject_purchase_request/" . $row['account_pr'] . "' ><span class='glyphicon glyphicon-remove'></span></a>&nbsp;";
  					}


                      echo "<a class='btn btn-danger btn-xs hidden' title='Delete Data' href='".base_url()."purchase/delete_purchase_request/" . $row['account_pr'] . "' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-trash'></span></a>
                    </center></td>";
  					}
                echo "</tr>";
            $no++;
          }
        ?>
      </tbody>
    </table>
  </div>
