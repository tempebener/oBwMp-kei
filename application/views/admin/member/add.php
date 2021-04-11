

<!-- Container fluid  -->

<div class="container-fluid">
    
    <!-- Bread crumb and right sidebar toggle -->
    
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Member</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Add New Member</li>
            </ol>
        </div>
        
    </div>
    
    <!-- End Bread crumb and right sidebar toggle -->
    

    
    <!-- Start Page Content -->

    <div class="row">
        <div class="col-lg-12">

            <?php $error_msg = $this->session->flashdata('error_msg'); ?>
            <?php if (isset($error_msg)): ?>
                <div class="alert alert-danger delete_msg pull" style="width: 100%"> <i class="fa fa-times"></i> <?php echo $error_msg; ?> &nbsp;
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                </div>
            <?php endif ?>
            
            <div class="card card-outline-info">
                <div class="card-header">
                    <h4 class="m-b-0 text-white"> Add New member <a href="<?php echo base_url('admin/member/all_member_list') ?>" class="btn btn-info pull-right"><i class="fa fa-list"></i> All members </a></h4>

                </div>
                <div class="card-body">
                    <form action="<?php echo base_url().'admin/member/add'?>" method="post" enctype="multipart/form-data">
                    
                        <div class="form-body">

                            <h4 class="font-medium m-t-30">Profile</h4>
                            <hr>

                                                                              
                                            
                                            <div class="row">
                                            
                                                <div class="col-sm-4 col-xs-4 b-r"> <strong>Nama</strong>
                                                    
                                                    <input class="form-control"  type="text" name="nama" placeholder="Nama*" data-constraints="@Required">
                                                    
                                                </div>

                                                <div class="col-sm-4 col-xs-4 b-r"> <strong>Email</strong>
                                                    
                                                        <input class="form-control" name="email" type="email" name="email" placeholder="E-mail*" data-constraints="@Email @Required">
                                                       
                                                    
                                                </div>  

                                                <div class="col-sm-4 col-xs-4 b-r"> <strong>Password</strong>
                                                    
                                                    <input class="form-control"  type="password" name="password" placeholder="Password*" data-constraints="@Required">
                                                    
                                                </div>
                                                
                                                   
                                            </div>


                                            <br>


                                           <div class="row">
                                           
                                            <div class="col-sm-4 col-xs-4 b-r"> <strong>Alamat</strong>
                                                    
                                                    <input class="form-control" type="text" name="alamat" placeholder="Alamat*" data-constraints="@Required">
                                                    
                                                </div>

                                                <div class="col-sm-4 col-xs-4 b-r"> <strong>No Handphone</strong>
                                                    
                                                    <input class="form-control" type="text" name="no_hp" placeholder="Nomor Handphone*" data-constraints="@Required">
                                                    
                                                </div>
                                                
                                                <div class="col-sm-4 col-xs-4 b-r"><strong>Pendidikan Trakhir</strong>
                                                    
                                                    <input class="form-control" type="text" name="pend_terakhir" placeholder="Pendidikan Terakhir*" data-constraints="@Required">
                                                    
                                                </div>

                                            </div>    

                                            <br>   
                                            <div class="row">
                                                <div class="col-sm-6 col-xs-4 b-r"><strong>Pekerjaan</strong>
                                                    
                                                    <input class="form-control" type="text" name="pekerjaan" placeholder="Pekerjaan*" data-constraints="@Required">
                                                    
                                                </div>
                                                <div class="col-sm-6 col-xs-4 b-r"><strong>Usaha diminati</strong>
                                                    
                                                    <input class="form-control" type="text" name="usaha_diminati" placeholder="Bidang Usaha yang Diminati*" data-constraints="@Required">
                                                    
                                                </div>
                                   
                                            </div>  
                                            <br>    

                                        <h4 class="font-medium m-t-30">Dokumen</h4>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Upload KTP</strong>
                                                <br>
                                                <input  class="form-control"  type="file" name="foto_ktp" >
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Upload Foto Diri</strong>
                                                <br>
                                                <input class="form-control" type="file" name="foto_pas" placeholder="Upload Foto Diri*">
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Upload NPWP/strong>
                                                <br>
                                                <input class="form-control" type="file" name="foto_npwp" placeholder="Upload NPWP*">
                                            </div>
                                            
                                        </div>

                                        <h4 class="font-medium m-t-30">Keanggotaan</h4>
                                        <hr>
                                            <div class="col-md-4">
                                                <div class="form-group row">
                                                    <label class="control-label text-left col-md-3">Keanggotaan</label>
                                                    <div class="controls">
                                                        <div class="form-check">
                                                            <label class="custom-control custom-radio">
                                                                <input id="member" name="role" type="radio" value="member" class="custom-control-input" required data-validation-required-message="You need to select user role type" aria-invalid="false">
                                                                <span class="custom-control-indicator"></span>
                                                                <span class="custom-control-description">Member</span>
                                                            </label>
                                                            <label class="custom-control custom-radio">
                                                                <input id="mitra" name="role" type="radio" value="mitra" class="custom-control-input" required data-validation-required-message="You need to select user role type" aria-invalid="false">
                                                                <span class="custom-control-indicator"></span>
                                                                <span class="custom-control-description">Mitra</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row user_role_area" style="display: none;">
                                                <div class="col-md-9">
                                                    <div class="form-group row">
                                                        <label class="control-label text-right col-md-3">User Permissions</label>
                                                        <div class="controls">

                                                            <?php foreach ($power as $pw): ?>
                                                                <label class="custom-control custom-checkbox">
                                                                    <input type="checkbox" value="<?php echo $pw['power_id']; ?>" name="role_action[]" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description"><?php echo $pw['name']; ?></span> 
                                                                </label>
                                                            <?php endforeach ?>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                          

                           


                                        <!-- CSRF token -->
                                        <input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>" />

                            
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3"></label>
                                                    <div class="controls">
                                                        <button type="submit" class="btn btn-success">Save member</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                           
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- End Page Content -->

</div>