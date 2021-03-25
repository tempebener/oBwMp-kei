<style type="text/css">
  .anu tbody td {
    padding:3px !important;
    border:1px solid #e3e3e3;
  }
</style> <?php echo form_open_multipart('administrator/save_purchase_req_edit');?>

<?php

$id = $id['account_pr'];
$sql = "select * from cam_purchase_requisition a join cam_material_category b on b.account_mc = a.account_mc join cam_purchase_requisition_items c on c.no_pr = a.no_pr   where account_pr = '" . $id . "'";
$ax = $this->db->query($sql)->result();
$ax = $ax[0];
?>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Purchase Req</h3>
                </div>
              <div class='box-body'><div class='col-md-6'>

                  <table class='table table-condensed table-bordered'>
                  <tbody id="t1">
                    <input type='hidden' name='id' value=''>
					<input value="<?php echo $ax->no_pr;?>" type='hidden' name="no"/>
          	<input value="<?php echo $ax->no_po;?>" type='hidden' name="no2"/>
                    <tr><th width='150px' scope='row'>Req No</th>    <td><input value="<?php echo $ax->no_pr;?>" type='text' style='width:40%; display:inline-block' class='form-control' id='pembelian' name='a' value='' readonly='on'>
                                                                                <label generated='true' class='error' id='message'></label></td></tr>
                    <tr><th width='150px' scope='row'>Req Date</th>    <td><input type='text'  class='form-control' name='' value="<?php echo tgl_indo($ax->date_request);?>" readonly='on' required></td></tr>
                    <tr class="hidden"><th width='150px' scope='row'>Req Date</th>    <td><input type='text'  class='form-control' name='g' value="<?php echo $ax->date_request;?>" readonly='on' required></td></tr>

                       <tr><th width='150px' scope='row'>Group Material</th>    <td><input type='text'  class='form-control' name='g' value="<?php echo $ax->account_mc;?> - <?php echo $ax->name_mp;?>" readonly='on' required></td></tr>


                  </tbody>
                  </table>
                </div>

                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr class='hidden'><th width='150px' scope='row'>Accepted Date</th>    <td><input type='text' class='form-control' name='h' value='$h' readonly='on'></td></tr>
                      <tr class='hidden'><th width='150px' scope='row'>Send Location</th>    <td><input type='text'  class='form-control' name='g' value="<?php echo $ax->account_mc;?>" readonly='on' required></td></tr></td></tr>

                  </tbody>
                  </table>
                </div>

                <table id="tt" class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#e3e3e3'>
                          <th width='20px'>No</th>
                          <th>Material Product</th>
                          <th>Required Date	</th>
                          <th width='80px'>Qty</th>
                          <th width='80px'>Sat</th>
                          <th>Note	</th>
                          <th style='width:50px'>Action</th>
                        </tr>
</theaD>
<tbody id="tx">
                        <tr>
                          <td class="tnomor"></td>
                          <td><select   id='a'  class='aa comboboxx form-control chosen' onchange=\"changeValue(this.value)\"  autofocus>
                                                                <option value=></option>
																<?php

																$sql = "select * from cam_material_product where account_mc = '$ax->account_mc'";

																$a = $this->db->query($sql)->result();
																foreach($a as $x)
																{
																?>
																<option value="<?php echo $x->account_mp;?>">
																<?php echo trim($x->description);?>
																</option>
																<?php } ?>

																</select></td>
                          <td><input class='form-control' id='b' type='date' ></td>
                          <td><input class='form-control' id='c' type='number' ></td>
                          <td><input class='dd form-control' type='text'   id='satuan' readonly='on'> </td>
                            <td><input class='form-control' id='e' type='text' ></td>
                          <td><button type='button' id="b1" name='submit' class='b1 btn btn-success'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></button>
						  <a href='' class='hide text-danger b2 btn btn-danger'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a>
						  </td>
						    </tr>
						  <?php
						  $sql = "select * from cam_purchase_requisition_items a join cam_material_product b on b.account_mp = a.account_mp where no_pr = '$ax->no_pr'";
						  $aa = $this->db->query($sql)->result();
						  foreach($aa as $xx)
						  {
						  ?>

						   <tr>


                          <td class="tnomor"></td>
                          <td width='250px'  >
						  <input type='hidden' name='aa[]' value='<?php echo $xx->account_mp;?>'/><input type='hidden' name='bb[]' value='<?php echo $xx->required_date;?>'/><input type='hidden' name='cc[]' class='jml' value='<?php echo $xx->qty;?>'/><input type='hidden' name='ee[]' value='<?php echo $xx->note;?>'/>
						  <select disabled readonly name='temp'  id='a'  class='aa  comboboxx form-control ' onchange=\"changeValue(this.value)\"  autofocus>

																<?php

																$sql = "select * from cam_material_product
																where account_mc = '$ax->account_mc'
																";
																$a = $this->db->query($sql)->result();
																foreach($a as $x)
																{
																?>
																<option <?php if($x->account_mp == $xx->account_mp) echo 'selected';?> value="<?php echo $x->account_mp;?>">
																<?php echo trim($x->description);?>
																</option>
																<?php } ?>

																</select></td>
                          <td><input class='form-control' readonly id='b' type='date' value='<?php echo $xx->required_date;?>' ></td>
                          <td><input class='form-control' readonly id='c' type='number' value='<?php echo $xx->qty;?>'></td>
                          <td><input class='dd form-control'  type='text' value='<?php echo $xx->unit_code;?>'  id='satuan' readonly='on'> </td>
                            <td><input class='form-control' readonly value='<?php echo $xx->note;?>' id='e' type='text' ></td>
                          <td>
						  <a href='' class='text-danger b2 btn btn-danger'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a>
						  </td>
						    </tr>

						  <?php } ?>



                            </tbody>
							<tfoot>
                      <tr class='alert alert-danger'>
                          <td colspan='2' align=right>Jumlah Total</td>
                          <td></td>

                          <td><span id="jml">0</span></td>
						   <td></td>
                          <td></td>
                          <td></td>

                      </tr>
					  </tfoot>
                  </table>

              </div>
              <div class='box-footer'>
                    <button type="submit" class='btn btn-info'>Proses dan Selesai</button>
                    <a href='".base_url()."administrator/delete_pembelian/".$this->session->id_pembelian."'><button type='button' class='btn btn-default'>Batal</button></a>
                  </div>
            </div><?php     echo form_close();?>


<script type="text/javascript">



  function changeValue(id){
  alert(prdName[id].name);
    document.getElementById('harga').value = prdName[id].name;
    document.getElementById('satuan').value = prdName[id].desc;
  };
</script>
<script>


 function numberRows() {
    var c = 0;
	var first = true;
	var jml = 0;
    $("#tx").find("tr").each(function(ind, el) {
		{
			if(c != 0)
			{
				var isi = ($(el).find("td:eq(0)").text());
				if(isi == "")
				{



				}
				$(el).find("td:eq(0)").html(ind + ".");

			}
			c++;


		}
    });
	$(".jml").each(function()
	{

		jml+=parseInt($(this).val());
	});
	$("#jml").text(jml);
  }
	$(document).ready(function()
	{
		$(".b1").click(function()
		{

			var $tr    = $(this).closest('tr');
			var $clone = $tr.clone();

			$clone.find('.b1').remove();
			$clone.find('.b2').removeClass('hide');

			$clone.find('select').val($(this).closest("tr").find('select').val());
			$clone.find('input').attr("disabled", "disabled");
			$clone.find('select').attr("disabled", "disabled");

			$tr.after($clone);


			var vala = $("#a").val();

			var valb = $("#b").val();
			var valc = $("#c").val();
			var vale = $("#e").val();
			$clone.find(".b2").before("<input type='hidden' name='aa[]' value='" + vala + "'/><input type='hidden' name='bb[]' value='" + valb + "'/><input type='hidden' name='cc[]' class='jml' value='" + valc + "'/><input type='hidden' name='ee[]' value='" + vale + "'/>");

			$(this).closest("tr").find('input').val('');
			$(this).closest("tr").find('select').val('');
			$(this).closest("tr").find('select').focus();
			numberRows();
		});
		$(document).on('click', '.b2', function(){
			var $tr    = $(this).closest('tr').remove();
			numberRows();
			return false;
		});
		$(document).on('change', '.aa', function(event){
			$.ajax({
				method:"GET",
				url:'<?php echo base_url('administrator/lookup2'); ?>',
				data:{
					id:$(this).val()
				},
				success:function(data)
				{

					$(event.target).closest('tr').find(".dd").val(data);
				}
			});
		});
		$("#d").change(function()
		{
			$(".aa").empty();
			$("#b1").attr("disabled", "disabled");

			if($(this).val() != ""){
				var val = $(this).val();
				$.ajax({
					method:"GET",
					url:'<?php echo base_url('administrator/lookup'); ?>',
					data:{
						id:$(this).val()
					},
					success:function(data)
					{
						$(".aa").html(data);
						$(".aa").trigger("change");
						$("#dx").val(val);

						$("select:first").attr("disabled", "disabled");
						$("#b1").removeAttr("disabled");
					}
				});
			}
		});
		$("#d").trigger("change");
		numberRows();

	});
</script>
