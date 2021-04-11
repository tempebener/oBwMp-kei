

<!-- Container fluid  -->

<div class="container-fluid">
    
    <!-- Bread crumb and right sidebar toggle -->
    
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Member</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Edit Member</li>
            </ol>
        </div>
        <div class="col-md-7 col-4 align-self-center">
            <div class="d-flex m-t-10 justify-content-end">

                
            </div>
        </div>
    </div>
    
    <!-- End Bread crumb and right sidebar toggle -->
    

    
    <!-- Start Page Content -->

    <div class="row">
        <div class="col-lg-12">
            <div class="card card-outline-info">
                <div class="card-header">
                    <h4 class="m-b-0 text-white"> Edit member <a href="<?php echo base_url('admin/member/all_member_list') ?>" class="btn btn-info pull-right"><i class="fa fa-list"></i> All members </a></h4>

                </div>
                <div class="card-body">
                   
                    <form action="<?php echo base_url().'admin/member/edit'.$member->id_member?>" method="post" enctype="multipart/form-data">
                        <div class="form-body">
                            <br>
                            <h4 class="font-medium m-t-30">Profile</h4>
                            <hr>

                                        <div class="row">
                                            
                                            <div class="col-sm-4 col-xs-4 b-r"> <strong>Nama</strong>
                                                
                                                <input class="form-control"  type="text" name="nama" value="<?php echo $member->nama; ?>"placeholder="Nama*" data-constraints="@Required">
                                                
                                            </div>

                                            <div class="col-sm-4 col-xs-4 b-r"> <strong>Email</strong>
                                                
                                                    <input class="form-control" name="email" type="email" name="email" value="<?php echo $member->email; ?>"placeholder="E-mail*" data-constraints="@Email @Required">
                                                   
                                                
                                            </div>  

                                            <div class="col-sm-4 col-xs-4 b-r"> <strong>Password</strong>
                                                
                                                <input class="form-control"  type="password" name="password" value="<?php echo $member->password ?>" placeholder="Password*" data-constraints="@Required">
                                                
                                            </div>
                                            
                                               
                                        </div>


                                        <br>


                                       <div class="row">
                                       
                                        <div class="col-sm-4 col-xs-4 b-r"> <strong>Alamat</strong>
                                                
                                                <input class="form-control" type="text" name="alamat" value="<?php echo $member->alamat ?>" placeholder="Alamat*" data-constraints="@Required">
                                                
                                            </div>

                                            <div class="col-sm-4 col-xs-4 b-r"> <strong>No Handphone</strong>
                                                
                                                <input class="form-control" type="text" name="no_hp"value="<?php echo $member->no_hp ?>" placeholder="Nomor Handphone*" data-constraints="@Required">
                                                
                                            </div>
                                            
                                            <div class="col-sm-4 col-xs-4 b-r"><strong>Pendidikan Trakhir</strong>
                                                
                                                <input class="form-control" type="text" name="pend_terakhir" value="<?php echo $member->pend_terakhir ?>" placeholder="Pendidikan Terakhir*" data-constraints="@Required">
                                                
                                            </div>

                                        </div>    

                                        <br>   
                                        <div class="row">
                                            <div class="col-sm-6 col-xs-4 b-r"><strong>Pekerjaan</strong>
                                                
                                                <input class="form-control" type="text" name="pekerjaan" value="<?php echo $member->pekerjaan ?>" placeholder="Pekerjaan*" data-constraints="@Required">
                                                
                                            </div>
                                            <div class="col-sm-6 col-xs-4 b-r"><strong>Usaha diminati</strong>
                                                
                                                <input class="form-control" type="text" name="usaha_diminati" value="<?php echo $member->usaha_diminati ?>" placeholder="Bidang Usaha yang Diminati*" data-constraints="@Required">
                                                
                                            </div>
                               
                                        </div>  
                                        <br>    

                                    <h4 class="font-medium m-t-30">Dokumen</h4>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3 col-xs-6 b-r"> <strong>Upload KTP</strong>
                                            <br>
                                            
                                            <img src="<?php echo base_url().'theme/images/foto_register/member/'.$member->foto_ktp;?>" id="gambar_ktp" width="400" alt="Preview Gambar" src="#" style="width:80px;">
                                            <input  class="form-control"  type="file" name="foto_ktp" id="foto_ktp">
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong>Upload Foto Diri</strong>
                                        <br>
                                            
                                            <img src="<?php echo base_url().'theme/images/foto_register/member/'.$member->foto_pas;?>" id="gambar_pas" width="400" alt="Preview Gambar" src="#" style="width:80px;">
                                            <input  class="form-control"  type="file" name="foto_pas" id="foto_pas">
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong>Upload NPWP/strong>
                                            <img src="<?php echo base_url().'theme/images/foto_register/member/'.$member->foto_npwp?>" id="gambar_npwp" width="400" alt="Preview Gambar" src="#" style="width:80px;">
                                            <input  class="form-control"  type="file" name="foto_npwp" id="foto_npwp">
                                        </div>
                                        
                                    </div>





      <!------------------------------------------------------------------------------------------------------>                      
                           


                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3"></label>
                                        <div class="controls">
                                            <div class="form-check">
                                                <label class="custom-control custom-radio">
                                                    <input <?php if($member->group== "member"){echo "checked";}; ?> id="member" name="role" type="radio" value="member" class="custom-control-input" required data-validation-required-message="You need to select member role type" aria-invalid="false">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">member</span>
                                                </label>
                                                <label class="custom-control custom-radio">
                                                    <input <?php if($member->group== "admin"){echo "checked";}; ?> id="admin" name="role" type="radio" value="admin" class="custom-control-input" required data-validation-required-message="You need to select member role type" aria-invalid="false">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">Admin</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            
                            <?php if ($member->group == "member"): ?>
                                <?php $dis = 'block'; ?>
                            <?php else: ?>
                                <?php $dis = 'none'; ?>
                            <?php endif ?>

                            <div class="row member_role_area" style="display: <?php echo $dis; ?>">
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">member Permission</label>
                                        <div class="controls">

                                            <?php foreach ($power as $pw): ?>

                                                <?php foreach ($member_role as $role){
                                                        if ($role['action'] == $pw['id']) {
                                                            $check = 'checked';
                                                            break;
                                                        }else{
                                                            $check = '';
                                                        }
                                                    }
                                                ?>

                                                <label class="custom-control custom-checkbox">
                                                    <input <?php if(isset($check)) {echo $check;} else {echo "";} ?> type="checkbox" value="<?php echo $pw['power_id'] ?>" name="role_action[]" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description"><?php echo $pw['name'] ?></span> 
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
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3"></label>
                                        <div class="controls">
                                            <button type="submit" class="btn btn-success">Update</button>
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
