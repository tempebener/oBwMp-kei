<style type="text/css">
  .anu tbody td {
    padding:3px !important;
    border:1px solid #e3e3e3;
  }
</style>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>ADD Purchase Order</h3>
                </div>
              <div class='box-body'><div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='150px' scope='row'>PO No</th>    <td><input type='text' style='width:40%; display:inline-block' class='form-control' id='pembelian' name='a' value='' readonly='on'>
                                                                                <label generated='true' class='error' id='message'></label></td></tr>
                    <tr><th width='150px' scope='row'>PO Date</th>    <td><input type='text'  class='form-control' name='g' value='<?php echo date("Y-m-d");?>' readonly='on' required></td></tr>

                    <tr><th scope='row'>Vendor</th>    <td><select name='d' class='combobox form-control' >
                                                              <option value='' selected>Search Vendor</option>
                                                                 <?php

																$sql = "select * from  	cam_purchase_order_vendor ";
																$a = $this->db->query($sql)->result();
																foreach($a as $row)
																{
																	?><option value="<?php echo $row->account_vendor;?>"><?php echo $row->name_vendor;?></option><?php } ?>
                                                                </select></td></tr>
                  <tr><th width='150px' scope='row'>Expected Date</th>    <td><input type='date'  class='form-control' name='g' value=''  required></td></tr>

                  </tbody>
                  </table>
                </div>

                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th scope='row'>Req No</th>    <td><select name='d' id='d' class='combobox form-control' >
                                                              <option value='' selected>Search Req No</option>
                                                                <?php

																$sql = "select * from  	cam_purchase_requisition ";
																$a = $this->db->query($sql)->result();
																foreach($a as $row)
																{
																	?><option value="<?php echo $row->account_pr;?>"><?php echo $row->no_pr;?></option><?php } ?>
                                                                </select></td></tr>
                  <tr><th width='150px' scope='row'>Group material</th>    <td><input type='text' id='group_material'  class='form-control' name='g' value='' readonly='on' required></td></tr>
                  <tr><th width='150px' scope='row'>Send To Ship</th>    <td><input type='text'  class='form-control' name='g' value='' readonly='on' required></td></tr>
                  <tr><th scope='row'>Currency</th>    <td><select name='d' class='combobox form-control' >
                                                            <option value='' selected>Search Currency</option>
                                                             <option value='IDR'>IDR</option>
                                                              </select></td></tr>
                  <tr><th scope='row'>Est. Freight</th>    <td><select name='d' class='combobox form-control' >
                                                    <option value='' selected>Search Freight</option>
                                                    <?php foreach($lokasi as $row) { ?><option value="<?php echo $row->account_cp;?>"><?php echo $row->account_cp;?> | <?php echo $row->name_cp;?> | <?php echo $row->address_1;?> <?php echo $row->address_2;?>, <?php echo $row->city_cp;?></option><?php } ?>
                                                  </select></td></tr>
                  </tbody>
                  </table>
                </div>

                <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#e3e3e3'>
                          <th width='20px'>No</th>
                          <th>Material Product</th>
                          <th>Required Date	</th>
                          <th width='80px'>qty</th>
                          <th width='80px'>Unit</th>
                          <th>Price	</th>
                          <th>Disc	</th>
                          <th>Tax	</th>
                          <th>Amount	</th>
                          <th style='width:50px'>Action</th>
                        </tr>

                        <tr>
                          <td></td>
                          <td><input class='form-control' type='text' name='bb' readonly='on'></td>
                          <td><input class='form-control' type='text' name='bb' readonly='on'></td>
                          <td><input class='form-control' type='text' name='bb' readonly='on'></td>
                          <td><input class='form-control' type='text' name='bb' readonly='on'></td>
                          <td><input class='form-control' type='text' name='cc'> </td>
                            <td><input class='form-control' type='text' name='bb'></td>
                            <td><input class='form-control' type='text' name='bb'></td>
                            <td><input class='form-control' type='text' name='bb' readonly='on'></td>
                          <td><button type='submit' name='submit' class='btn btn-success'><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></button></td>
                        </tr>
                        </thead>
                      <tbody id="tx"><tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>

                                <td align=center><a href='".base_url()."administrator/delete_purchase_detail/$r[id_pembelian_detail]' class='text-danger'><span class='' aria-hidden='true'></span></a></td>
                              </tr>
                            </tbody>
                      <tr >
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td  colspan='2' align=right>Sub Total :</td>
                          <td class='alert alert-danger'></td>
                          <td ></td>
                      </tr>
                      <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td colspan='2' align=right>Total Disc :</td>
                          <td class='alert alert-danger'></td>
                          <td></td>
                      </tr>
                      <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td colspan='2' align=right>Estimated Freight :</td>
                          <td class='alert alert-danger'></td>
                          <td></td>
                      </tr>
                      <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td colspan='2' align=right>Total Paid :</td>
                          <td class='alert alert-danger'></td>
                          <td></td>
                      </tr>
                  </table>

              </div>
              <div class='box-footer'>
                    <a href='".base_url()."administrator/purchase'><button type='button' class='btn btn-info'>Proses dan Selesai</button></a>
                    <a href='".base_url()."administrator/delete_pembelian/".$this->session->id_pembelian."'><button type='button' class='btn btn-default'>Batal</button></a>
                  </div>
            </div></form>

<script type="text/javascript">

  $(document).ready(function()
  {
		$("#d").change(function()
		{
			var val = $(this).val();
			$("#group_material").val("");
			$("#tx").empty();
			if(val != "")
			{
				$.ajax({
					url:"<?php echo base_url();?>/administrator/lookup_pr",
					method:"GET",
					data:{
						data:val
					},
					success:function(data)
					{
						$("#group_material").val(data);
					}
				});


				$.ajax({
					url:"<?php echo base_url();?>/administrator/lookup_pr2",
					method:"GET",
					data:{
						data:val
					},
					success:function(data)
					{
						$("#tx").html(data);
					}
				});
			}
		});

		$("#d").trigger("change");
  });
</script>
