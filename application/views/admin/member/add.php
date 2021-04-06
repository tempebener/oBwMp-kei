

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
                    <form method="post" action="<?php echo base_url('admin/member/add') ?>" class="form-horizontal" novalidate>
                        <div class="form-body">
                            <br>
                            <div class="row row-30">
                                <div class="col-md-12">
                                
                                    <div class="row row-30">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" name="email" type="email" name="email" placeholder="E-mail*" data-constraints="@Email @Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control"  type="password" name="password" placeholder="Password*" data-constraints="@Required">
                                            </div>
                                        </div>
                                        <hr style="width:100%;text-align:left;margin-left:12px;margin-right:12px;">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control"  type="text" name="nama" placeholder="Nama*" data-constraints="@Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" type="text" name="alamat" placeholder="Alamat*" data-constraints="@Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" type="text" name="no_hp" placeholder="Nomor Handphone*" data-constraints="@Numeric @Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" type="text" name="pend_terakhir" placeholder="Pendidikan Terakhir*" data-constraints="@Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" type="text" name="pekerjaan" placeholder="Pekerjaan*" data-constraints="@Required">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <input class="form-control" type="text" name="usaha_diminati" placeholder="Bidang Usaha yang Diminati*" data-constraints="@Required">
                                            </div>
                                        </div>
                                    <!-- <div class="col-md-6">
                                        <div class="form-group">
                                        <input class="form-control" type="text" name="subject" placeholder="Subject">
                                        </div>
                                    </div> -->
                                    <!-- <div class="col-12">
                                        <div class="form-group">
                                        <textarea class="form-control" name="textarea" placeholder="Message"></textarea>
                                        </div>
                                    </div> -->
                                    </div>

                                    <div class="row row-30">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="post-title h6">Upload KTP</label>
                                        <input class="form-control" type="file" name="foto_ktp" placeholder="Upload KTP*" data-constraints="@Required">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="post-title h6">Upload Foto Diri</label>
                                        <input class="form-control" type="file" name="foto_pas" placeholder="Upload Foto Diri*">
                                        </div>
                                    </div>
                                
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="post-title h6">Upload NPWP</label>
                                        <input class="form-control" type="file" name="foto_npwp" placeholder="Upload NPWP*">
                                        </div>
                                    </div>                                   


                                    </div>

                                    <div class="row member_role_area" style="display: yes;">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="control-label text-right col-md-3">member Permissions</label>
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
                                    <br/>
                                   
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