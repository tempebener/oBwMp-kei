<div class="col-xs-12">
  <div class="box table-responsive padding">

    <div class="box-header">
      <h3 class="box-title">Purchase Order List (Po-LIST)</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/add_purchase_order'>Tambahkan Data</a>
    </div><!-- /.box-header -->
    <div class="box-body">
      <div class="box-body table-responsive padding"><form method="get" action="<?php echo base_url();?>administrator/purchase">
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
            <th>PO No</th>
            <th>Vendor Name</th>
            <th>Expeted</th>
            <th>Freight</th>
            <th>Amount</th>
            <th>Description</th>
            <th>Currency</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>

      </tbody>
    </table>
  </div>
