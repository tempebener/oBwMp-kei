

<section class='invoice'>
      <!-- title row -->
      <div class='row'>
        <div class='col-xs-12'>
          <h2 class='page-header'>
            <i class='fa fa-globe'></i> DETAIL NOVEL 
            <small class='pull-right'></small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class='row invoice-info'>
        <div class='col-sm-6 invoice-col'>
          <table width="100%" border="0" cellspacing="0" cellpadding="4">
            <?php 
                    $no = 1;
                    foreach ($pelatihan as $row){
                if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }
                    echo "
              <tr>
                 <td>Judul Pelatihan</td>
                  <td>:</td>
                  <td>$row[judul_pelatihan]</td>
              </tr>
              <tr>
                  <td>Genre Novel</td>
                  <td>:</td>
                  <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_pelatihan/$row[foto]'></td>
              </tr>
            
              
          </table>
        </div>
         <div class='col-sm-6 invoice-col'>
          <table width='100%' border='0' cellspacing='0' cellpadding='0'>
            
             
             
               <tr>
                  <td>Tanggal Posting</td>
                  <td >:</td>
                  <td ></td>
              </tr>
            
            <tr>
                  <td>Cover Novel</td>
                  <td>:</td>
                   <td><img style='border:1px solid #cecece' width='120px'  src='".base_url()."theme/images/foto_pelatihan/$foto'></td>
              </tr>
            
                    </table>
        </div>
       

 
   <!-- /.col -->

        <!-- /.col -->
          
        <!-- /.col -->
      </div>
      <!-- /.row -->
<br>
<br>

 <h2 class='page-header'>
            <i class='fa fa-globe'></i> BAB NOVEL 
            <small class='pull-right'></small> 
            

              <a class='pull-right btn btn-primary btn-sm'  href='".base_url()."administrator/add_bab/>Tulis BAB Novel</a>
          </h2>
           ";
                      $no++;
                    }
                  ?>

</table></div></div></section>