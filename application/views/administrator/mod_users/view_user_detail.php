<?php
$id = $this->uri->segment(3);
$sql = "select * from users where id_users = $id";
$a = $this->db->query($sql)->result();
$a = $a[0];
?>

<section class='invoice'>
      <!-- title row -->
      <div class='row'>
         <div class='row invoice-info'>
        <div class='col-sm-4 invoice-col'>
          <table width='100%' border='0' cellspacing='0' cellpadding='4'>
              <tr>
                  <td width='25%'>Nama</td>
                  <td width='5%'>:</td>
                  <td width='70%'><?php echo $a->nama_lengkap;?></td>
              </tr>
              <tr>
                  <td>Username</td>
                  <td>:</td>
                  <td width='70%'><?php echo $a->username;?></td>
              </tr>
              <tr>
                  <td>Email</td>
                  <td>:</td>
                  <td width='70%'><?php echo $a->email;?></td>
              </tr>
              <tr>
                  <td>No Telp</td>
                  <td>:</td>
                  <td width='70%'><?php echo $a->no_telp;?></td>
              </tr>
          </table>
        </div>

        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> DETAIL PENDAPATAN & PERHITUNGAN VIEW 
            <small class='pull-right'></small>
          </h2>
         </div>
        <!-- /.col -->
    

<?php for($i = 1;$i <= 12;$i++) { ?>
  <div class="col-md-5 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-purple"><i class="fa fa-dollar"></i></span>
      <div class="info-box-content">
        <span class="info-box-text"><?php echo date("M-Y", strtotime(date("Y") . "-" . $i . "-01"));?>  </span>
        <?php
        $sql = "select count(*)  as total from view_berita where month(tgl_view) = $i and year(tgl_view) = year(current_date) and  id_berita in (select id_berita from berita where id_users = $id)";
        $a = $this->db->query($sql)->row()->total;
        
        $sql = "select count(*)  as total from view_novel where month(tgl_view) = $i and year(tgl_view) = year(current_date) and  id_cerbung in (select id_cerbung_bab from cerbung_bab_db b  where id_users = $id)";
        $b = $this->db->query($sql)->row()->total;
        if(!$a) $a = 0;
        if(!$b) $b = 0;
         $cnt = $a + $b;
         $harga = 0;
            $sql = "select sum(harga)  as total from view_novel where month(tgl_view) = $i and year(tgl_view) = year(current_date) and  id_cerbung in (select id_cerbung_bab from cerbung_bab_db b  where id_users = $id)";
           $total = $this->db->query($sql)->row()->total;
            $sql = "select sum(harga)  as total from view_berita where month(tgl_view) = $i and year(tgl_view) = year(current_date) and  id_berita in (select id_berita from berita where id_users = $id)";
           $total += $this->db->query($sql)->row()->total;
        ?>
        Rp. <?php echo number_format($total);?>
        <span class="info-box-text">Total View <?php
        
        
       
        echo number_format($cnt);
        
        ?></span>
        <span class="info-box-text">Status Withdraw : <?php
            $sql = "select * from payment where bulan = $i and tahun = year(current_date) and id_user = $id";
            $a = $this->db->query($sql)->result();
            if(count($a) == 0)
            {
               echo "<span class='badge badge-danger'>Belum dibayar</span>";
            ?>
                <form method="post" action="<?php echo base_url("administrator/bayar");?>">
                    <input type="hidden" name="bulan" value="<?php echo $i;?>"/>
                    <input type="hidden" name="user" value="<?php echo $id;?>"/>
                    
                    <button type="submit" onclick="return confirm('Anda yakin?')" class="btn btn-xs btn-primary"'>BAYAR</button>
                </form>
                
            <?php }
            else {
                echo "<span class='badge badge-success' >Sudah dibayar</span>";
            }
        
        ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
 <?php } ?>
 
 
 
 
 