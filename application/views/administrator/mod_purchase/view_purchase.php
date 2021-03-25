            <div class="col-xs-12">
              <div class="box table-responsive padding">

                <div class="box-header">
                  <h3 class="box-title">Purchase List (PO-LIST)</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/add_purchase'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="box-body"><form method="get" action="<?php echo base_url();?>administrator/purchase">
                  <table class="table table-condensed table-bordered" width=100%>
                  <tbody>

                    <th width="12px" scope="row">From </th>    <td width="12px"><input value='<?php echo date("Y-m-d");?>'type="date" class="tanggal" name="transdate1" required></td>

					 <th width="12px" scope="row">To</th>    <td width="12px"><input value='<?php echo date("Y-m-d");?>' type="date" class="tanggal" name="transdate2" required></td>

                    <td><button type="submit" name="submit" class="btn btn-info">Refresh</button></td>


                  </tbody>
                  </table>
                <?php
                  echo "<table id='example1' class='table table-bordered table-striped table-condensed'>
                    <thead>
                      <tr bgcolor='#f39c12'>
                        <th colspan='2'></th>
                        <th colspan='3'><center>DATE</center></th>
                        <th colspan='5'></th>
                      </tr>
                      <tr bgcolor='#00c0ef'>
                        <th style='width:20px'>No</th>
                        <th>No. PO</th>
                        <th width='80px'>Order</th>
                        <th width='80px'>Send</th>
                        <th width='80px'>Arrived</th>
                        <th>Supplier</th>
                        <th>Send Location</th>
                        <th>Price</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>";

                    $no = 1;
                    foreach ($record->result_array() as $row){
                    $tgltrm = $this->db->query("SELECT GROUP_CONCAT(DATE_FORMAT(tanggal_terima, '%d/%m/%Y') SEPARATOR ', ') as tanggal  FROM `mu_pembelian_terima` where id_pembelian='".$row['id_pembelian']."'")->row_array();

                    echo "<tr><td>$no</td>
                              <td>$row[kode_pembelian]</td>
                              <td>".tgl_slash($row['tgl_pembelian'])."</td>
                              <td>".tgl_slash($row['tgl_kirim'])."</td>
                              <td>$tgltrm[tanggal]</td>
                              <td>$row[nama_supplier]</td>
                              <td>$row[nama_lok]</td>
                              <td>".rupiah($row['tbayar'])."</td>
                              <td><center>
                                <a class='btn btn-primary btn-xs' title='Terima Pembelian (PO)' href='".base_url()."administrator/acc_purchase/$row[id_pembelian]'><span class='fa fa-truck'></span></a>
                                <a class='btn btn-info btn-xs' target='_BLANK' title='Cetak / Print' href='".base_url()."administrator/print_pembelian/$row[id_pembelian]'><span class='glyphicon glyphicon-print'></span></a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url()."administrator/edit_pembelian/$row[id_pembelian]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."administrator/delete_pembelian/$row[id_pembelian]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>
