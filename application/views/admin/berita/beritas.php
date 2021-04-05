

<!-- Container fluid  -->

<div class="container-fluid">
    
    <!-- Bread crumb and right sidebar toggle -->
    
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">berita</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">All berita</li>
            </ol>
        </div>
        <div class="col-md-7 col-4 align-self-center">
            
            
            <div class="d-flex m-t-10 justify-content-end">
                <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                    <div class="chart-text m-r-10">
                        <h6 class="m-b-0"><small>Active berita</small></h6>
                        <h4 class="m-t-0 text-info"><?php echo $count->active_berita; ?></h4>
                    </div>
                </div>
                <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                    <div class="chart-text m-r-10">
                        <h6 class="m-b-0"><small>Inctive berita</small></h6>
                        <h4 class="m-t-0 text-primary"><?php echo $count->inactive_berita; ?></h4>
                    </div>
                </div>
                <div class="">
                    <button class="right-side-toggle waves-effect waves-light btn-success btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- End Bread crumb and right sidebar toggle -->
    

    
    <!-- Start Page Content -->

        <div class="row">
            <div class="col-12">

                <?php $msg = $this->session->flashdata('msg'); ?>
                <?php if (isset($msg)): ?>
                    <div class="alert alert-success delete_msg pull" style="width: 100%"> <i class="fa fa-check-circle"></i> <?php echo $msg; ?> &nbsp;
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                    </div>
                <?php endif ?>

                <?php $error_msg = $this->session->flashdata('error_msg'); ?>
                <?php if (isset($error_msg)): ?>
                    <div class="alert alert-danger delete_msg pull" style="width: 100%"> <i class="fa fa-times"></i> <?php echo $error_msg; ?> &nbsp;
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                    </div>
                <?php endif ?>

                <div class="card">        
                    <div class="card-body">

                        <?php if ($this->session->userdata('role') == 'admin'): ?>
                            <a href="<?php echo base_url('admin/berita/add') ?>" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New berita</a> &nbsp;

                        
                        <?php else: ?>
                            <!-- check logged user role permissions -->

                            <?php if(check_power(1)):?>
                                <a href="<?php echo base_url('admin/berita/add') ?>" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New berita</a>
                            <?php endif; ?>
                        <?php endif ?>
                    

                    
                        <!-- /.box-header -->
                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>Gambar</th>
                                    <th>Judul</th>
                                    <th>Isi Berita</th>          					
                                    <th>SEO</th>
                                    <th>Status</th>
                                    <th style="text-align:right;">Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no=0;
                                    foreach ($berita->result_array() as $i) :
                                        $no++;
                                        $id_berita=$i['id_berita'];
                                        $berita_judul=$i['judul'];
                                        $berita_isi=$i['isi_berita'];
                                        $berita_seo=$i['judul_seo'];
                                        $berita_gambar=$i['gambar'];
                                        $berita_status=$i['status'];
                                        
                                    

                                    ?>
                                <tr>
                                    <td><img src="<?php echo base_url().'theme/images/berita/'.$berita_gambar;?>" style="width:80px;"></td>
                                    <td><?php echo $berita_judul;?></td>
                                    <td><?php echo $berita_isi;?></td>
                                    <td><?php echo $berita_seo;?></td>
                                    <td><?php echo $berita_status;?></td>
                                    <td style="text-align:right;">
                                        <a class="btn" berita-toggle="modal" berita-target="#ModalEdit<?php echo $id_berita;?>"><span class="fa fa-pencil"></span></a>
                                        <a class="btn" berita-toggle="modal" berita-target="#ModalHapus<?php echo $id_berita;?>"><span class="fa fa-trash"></span></a>
                                    </td>
                                </tr>
                                <?php endforeach;?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                        
                        <!-- /.box -->
                    </div>
                </div>    


            </div> 
            <!-- /.col -->



        </div>


    <!-- End Page Content -->

    

</div>

<?php foreach ($data->result_array() as $i) :
             $id_berita=$i['id_berita'];
             $berita_judul=$i['judul'];
             $berita_isi=$i['isi_berita'];
             $berita_seo=$i['judul_seo'];
             $berita_gambar=$i['gambar'];
             $berita_status=$i['status'];
              
            ?>
        <div class="modal fade" id="confirm_delete_<?php echo $id_berita;?>">
        <div class="modal-dialog">
            <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
            
                    <div class="form-body">
                        
                        Are you sure want to delete? <br> <hr>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <a href="<?php echo base_url('admin/berita/delete/'.$id_berita) ?>" class="btn btn-danger"> Delete</a>
                        
                    </div>

            </div>


            </div>
        </div>
        </div>



	<?php endforeach;?>



