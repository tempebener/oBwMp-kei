<?php (defined('BASEPATH')) OR exit('No direct script access allowed'); ?><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kesatriaan | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
    
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
    <!-- Ionicons -->
    <!-- jvectormap -->
    <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css'?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper ">

    <header class="main-header">
        <a href="<?= site_url(); ?>" class="logo">
            <?php if ($store) { ?>
            <span class="logo-mini"><?= $store->code; ?></span>
            <span class="logo-lg"><?= $store->name == 'Wtouch' ? '<b>WTOUCH</b>' : $store->name; ?></span>
            <?php } else { ?>
            <span class="logo-mini">POS</span>
            <span class="logo-lg"><?= $Settings->site_name == 'Wtouch' ? 'Simple<b>POS</b>' : $Settings->site_name; ?></span>
            <?php } ?>
        </a>
          <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success"><?php echo $jum_pesan;?></span>
                </a>
                <ul class="dropdown-menu">
                <li class="header">Anda memiliki <?php echo $jum_pesan;?> pesan</li>
                <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                    <?php
                        $inbox=$this->db->query("SELECT tbl_inbox.*,DATE_FORMAT(inbox_tanggal,'%d %M %Y') AS tanggal FROM tbl_inbox WHERE inbox_status='1' ORDER BY inbox_id DESC LIMIT 5");
                        foreach ($inbox->result_array() as $in) :
                            $inbox_id=$in['inbox_id'];
                            $inbox_nama=$in['inbox_nama'];
                            $inbox_tgl=$in['tanggal'];
                            $inbox_pesan=$in['inbox_pesan'];
                    ?>
                    <li><!-- start message -->
                        <a href="<?php echo base_url().'admin/inbox'?>">
                        <div class="pull-left">
                            <img src="<?php echo base_url().'assets/images/user_blank.png'?>" class="img-circle" alt="User Image">
                        </div>
                        <h4>
                            <?php echo $inbox_nama;?>
                            <small><i class="fa fa-clock-o"></i> <?php echo $inbox_tgl;?></small>
                        </h4>
                        <p><?php echo $inbox_pesan;?></p>
                        </a>
                    </li>
                    <!-- end message -->
                    <?php endforeach;?>
                    </ul>
                </li>
                <li class="footer"><a href="<?php echo base_url().'admin/inbox'?>">Lihat Semua Pesan</a></li>
                </ul>
            </li>

            <?php
                $id_admin=$this->session->userdata('idadmin');
                $q=$this->db->query("SELECT * FROM tbl_pengguna WHERE pengguna_id='$id_admin'");
                $c=$q->row_array();
            ?>
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<?php echo base_url().'assets/images/'.$c['pengguna_photo'];?>" class="user-image" alt="">
                <span class="hidden-xs"><?php echo $c['pengguna_nama'];?></span>
                </a>
                <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                    <img src="<?php echo base_url().'assets/images/'.$c['pengguna_photo'];?>" class="img-circle" alt="">

                    <p>
                    <?php echo $c['pengguna_nama'];?>
                    <?php if($c['pengguna_level']=='1'):?>
                        <small>Administrator</small>
                    <?php else:?>
                        <small>Author</small>
                    <?php endif;?>
                    </p>
                </li>
                <!-- Menu Body -->

                <!-- Menu Footer-->
                <li class="user-footer">
                    <div class="pull-right">
                    <a href="<?php echo base_url().'admin/login/logout'?>" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                </li>
                </ul>
            </li>
            <!-- Control Sidebar Toggle Button -->
            <li>
                <a href="<?php echo base_url().''?>" target="_blank" title="Lihat Website"><i class="fa fa-globe"></i></a>
            </li>
            </ul>
        </div>

        </nav>
    </header>

    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu">
                <li class="mm_logo">
                        <div class="logo">
                            <a href="<?php echo base_url(); ?>" class="logo-expanded">
                            <img style="border-radius: 5%;display: block;margin-left: auto;margin-right: auto;width: 50%;padding: 5%;" src="<?php echo base_url('themes'); ?>assets/images/favicon.png" width="80%"/>
                            </a>
                        </div>
                    </li>
                <!-- <li class="header"><?= lang('mian_navigation'); ?></li> -->

                <li class="mm_welcome"><a href="<?= site_url(); ?>"><i class="fa fa-dashboard"></i> <span><?= lang('dashboard'); ?></span></a></li>
               
                   

                <li class="treeview mm_products">
                    <a href="#">
                        <i class="fa fa-barcode"></i>
                        <span><?= lang('products'); ?></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li id="products_index"><a href="<?= site_url('products'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_products'); ?></a></li>
                        <li id="products_add"><a href="<?= site_url('products/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_product'); ?></a></li>
                        <li id="products_import"><a href="<?= site_url('products/import'); ?>"><i class="fa fa-circle-o"></i> <?= lang('import_products'); ?></a></li>
                        <li id="products_stok"><a href="<?= site_url('products/stok_opname'); ?>"><i class="fa fa-circle-o"></i> <?= lang('stok_opname'); ?></a></li>
                        <li class="divider"></li>
                        <li id="products_print_barcodes"><a href="<?= site_url('products/print_barcodes'); ?>" data-toggle="ajax"><i class="fa fa-circle-o"></i> <?= lang('print_barcodes'); ?></a></li>
                        <li id="products_print_labels"><a href="<?= site_url('products/print_labels'); ?>" data-toggle="ajax"><i class="fa fa-circle-o"></i> <?= lang('print_labels'); ?></a></li>
                    </ul>
                </li>
                <li class="treeview mm_categories">
                    <a href="#">
                        <i class="fa fa-folder"></i>
                        <span><?= lang('categories'); ?></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li id="categories_index"><a href="<?= site_url('categories'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_categories'); ?></a></li>
                        <li id="categories_add"><a href="<?= site_url('categories/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_category'); ?></a></li>
                        <li id="categories_import"><a href="<?= site_url('categories/import'); ?>"><i class="fa fa-circle-o"></i> <?= lang('import_categories'); ?></a></li>
                    </ul>
                </li>
               


                <li class="treeview mm_gift_cards">
                    <a href="#">
                        <i class="fa fa-credit-card"></i>
                        <span><?= lang('gift_cards'); ?></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li id="gift_cards_index"><a href="<?= site_url('gift_cards'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_gift_cards'); ?></a></li>
                        <li id="gift_cards_add"><a href="<?= site_url('gift_cards/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_gift_card'); ?></a></li>
                    </ul>
                </li>

                

                <li class="treeview mm_auth mm_customers mm_suppliers">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span><?= lang('people'); ?></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li id="auth_users"><a href="<?= site_url('users'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_users'); ?></a></li>
                        <li id="auth_add"><a href="<?= site_url('users/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_user'); ?></a></li>
                        <li class="divider"></li>
                        <li id="customers_index"><a href="<?= site_url('customers'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_customers'); ?></a></li>
                        <li id="customers_add"><a href="<?= site_url('customers/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_customer'); ?></a></li>
                        <li class="divider"></li>
                        <li id="suppliers_index"><a href="<?= site_url('suppliers'); ?>"><i class="fa fa-circle-o"></i> <?= lang('list_suppliers'); ?></a></li>
                        <li id="suppliers_add"><a href="<?= site_url('suppliers/add'); ?>"><i class="fa fa-circle-o"></i> <?= lang('add_supplier'); ?></a></li>
                    </ul>
                </li>

                
            </ul>
        </section>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <h1><?= $page_title; ?></h1>
            <ol class="breadcrumb">
                <li><a href="<?= site_url(); ?>"><i class="fa fa-dashboard"></i> <?= lang('home'); ?></a></li>
                <?php
                foreach ($bc as $b) {
                    if ($b['link'] === '#') {
                        echo '<li class="active">' . $b['page'] . '</li>';
                    } else {
                        echo '<li><a href="' . $b['link'] . '">' . $b['page'] . '</a></li>';
                    }
                }
                ?>
            </ol>
        </section>

        <div class="col-lg-12 alerts">
            <div id="custom-alerts" style="display:none;">
                <div class="alert alert-dismissable">
                    <div class="custom-msg"></div>
                </div>
            </div>
            <?php if ($error)  { ?>
            <div class="alert alert-danger alert-dismissable">
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                <h4><i class="icon fa fa-ban"></i> <?= lang('error'); ?></h4>
                <?= $error; ?>
            </div>
            <?php } if ($warning) { ?>
            <div class="alert alert-warning alert-dismissable">
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                <h4><i class="icon fa fa-warning"></i> <?= lang('warning'); ?></h4>
                <?= $warning; ?>
            </div>
            <?php } if ($message) { ?>
            <div class="alert alert-success alert-dismissable">
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                <h4>    <i class="icon fa fa-check"></i> <?= lang('Success'); ?></h4>
                <?= $message; ?>
            </div>
            <?php } ?>
        </div>
        <div class="clearfix"></div>
