

<!-- Container fluid  -->

<div class="container-fluid">
    
    <!-- Bread crumb and right sidebar toggle -->
    
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Member</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">All members</li>
            </ol>
        </div>
        <div class="col-md-7 col-4 align-self-center">
            
            
            <div class="d-flex m-t-10 justify-content-end">
                <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                    <div class="chart-text m-r-10">
                        <h6 class="m-b-0"><small>Active Member</small></h6>
                        <h4 class="m-t-0 text-info"><?php echo $count->active_member; ?></h4>
                    </div>
                </div>
                <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                    <div class="chart-text m-r-10">
                        <h6 class="m-b-0"><small>Inctive Member</small></h6>
                        <h4 class="m-t-0 text-primary"><?php echo $count->inactive_member; ?></h4>
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
                    <a href="<?php echo base_url('admin/Member') ?>" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New Member</a> &nbsp;

                   
                <?php else: ?>
                    <!-- check logged Member role permissions -->

                    <?php if(check_power(1)):?>
                        <a href="<?php echo base_url('admin/Member') ?>" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New Member</a>
                    <?php endif; ?>
                <?php endif ?>
                

                    <div class="table-responsive m-t-40">
                        <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>No.HP</th>
                                    <th>Minat Usaha</th>
                                    <th>Status</th>
                                    <th>Role</th>
                                    <th>Joining Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>No.HP</th>
                                    <th>Minat Usaha</th>
                                    <th>Status</th>
                                    <th>Role</th>
                                    <th>Joining Date</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            
                            <tbody>
                            <?php foreach ($members as $Member): ?>
                                
                                <tr>

                                    <td><?php echo $Member['nama']; ?></td>
                                    <td><?php echo $Member['email']; ?></td>
                                    <td><?php echo $Member['no_hp']; ?></td>
                                    <td><?php echo $Member['usaha_diminati']; ?></td>

                                    <td>
                                        <?php if ($Member['id_status'] == 0): ?>
                                            <div class="label label-table label-danger">Inactive</div>
                                        <?php else: ?>
                                            <div class="label label-table label-success">Active</div>
                                        <?php endif ?>
                                    </td>
                                    <td width="10%">
                                        <?php if ($Member['status_keanggotaan'] == 'member'): ?>
                                            <div class="label label-table label-info"><i class="fa fa-Member"></i> member</div>
                                        <?php else: ?>
                                            <div class="label label-table label-success">Mitra</div>
                                        <?php endif ?>
                                    </td>

                                    <td><?php echo my_date_show_time($Member['created_at']); ?></td>
                                    <td class="text-nowrap">

                                        <?php if ($this->session->userdata('role') == 'admin'): ?>
                                            
                                            <a href="<?php echo base_url('admin/Member/profile/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Detail"> <i class="fa fa-search text-success m-r-10"></i> </a>

                                            <a href="<?php echo base_url('admin/Member/update/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Edit"> <i class="fa fa-pencil text-success m-r-10"></i> </a>

                                            <a id="delete" data-toggle="modal" data-target="#confirm_delete_<?php echo $Member['id_member'];?>" href="#"  data-toggle="tooltip" data-original-title="Delete"> <i class="fa fa-trash text-danger m-r-10"></i> </a>


                                        <?php else: ?>

                                            <!-- check logged Member role permissions -->

                                            <?php if(check_power(2)):?>
                                                <a href="<?php echo base_url('admin/Member/profile/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Detail"> <i class="fa fa-search text-success m-r-10"></i> </a>

                                                <a href="<?php echo base_url('admin/member/update/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Edit"> <i class="fa fa-pencil text-success m-r-10"></i> </a>
                                            <?php endif; ?>
                                            <?php if(check_power(3)):?>
                                                <a href="<?php echo base_url('admin/member/delete/'.$Member['id_member']) ?>" onClick="return doconfirm();" data-toggle="tooltip" data-original-title="Delete"> <i class="fa fa-trash text-danger m-r-10"></i> </a>
                                            <?php endif; ?>

                                        <?php endif ?>

                                        
                                        
                                        <?php if ($Member['id_status'] == 1): ?>
                                            <a href="<?php echo base_url('admin/member/deactive/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Deactive"> <i class="fa fa-close text-danger m-r-10"></i> </a>
                                        <?php else: ?>
                                            <a href="<?php echo base_url('admin/member/active/'.$Member['id_member']) ?>" data-toggle="tooltip" data-original-title="Active"> <i class="fa fa-check text-info m-r-10"></i> </a>
                                        <?php endif ?>
                                        
                                    </td>
                                </tr>

                            <?php endforeach ?>

                            </tbody>


                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- End Page Content -->

</div>



<?php foreach ($members as $Member): ?>
 
<div class="modal fade" id="confirm_delete_<?php echo $Member['id_member'];?>">
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
                <a href="<?php echo base_url('admin/Member/delete/'.$Member['id']) ?>" class="btn btn-danger"> Delete</a>
                
            </div>

      </div>


    </div>
  </div>
</div>


<?php endforeach ?>