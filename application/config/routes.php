<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['kei/(:any)'] = "admin/administrator";
// Tentang Kami
$route['visi_misi']='tentang_kami/visi_misi';
$route['profil']='tentang_kami/profil';
$route['struktur_organisasi']='tentang_kami/struktur_organisasi';
$route['pengembangan_seni_budaya']='tentang_kami/pengembangan_seni_budaya';
$route['program_kegiatan']='tentang_kami/program_kegiatan';
$route['pesantren_entrepreneur']='tentang_kami/pesantren_entrepreneur';
$route['livestock']='tentang_kami/livestock';
$route['meat']='tentang_kami/meat';
$route['food']='tentang_kami/food';
$route['poultry']='tentang_kami/poultry';
// Kemitraan
$route['pengembangan_kemitraan']='kemitraan/pengembangan_kemitraan';
$route['proyeksi_kemitraan']='kemitraan/proyeksi_kemitraan';
$route['budidaya_ayam_layer']='kemitraan/budidaya_ayam_layer';
$route['budidaya_ayam_broiler']='kemitraan/budidaya_ayam_broiler';
$route['penggemukan_sapi']='kemitraan/penggemukan_sapi';
$route['budidaya_jagung_padi']='kemitraan/budidaya_jagung_padi';
$route['umkm_produk_olahan']='kemitraan/umkm_produk_olahan';
// Akses Permodalan
$route['kur']='akses_permodalan/kur';
$route['lpdb_kumkm']='akses_permodalan/lpdb_kumkm';
$route['pkbl_bumn']='akses_permodalan/pkbl_bumn';
$route['pnm']='akses_permodalan/pnm';
// Inkubator Bisnis
$route['tentang_inkubator_bisnis']='inkubator_bisnis/tentang_inkubator_bisnis';
$route['Konsultasi-online']='inkubator_bisnis/Konsultasi_online';

$route['inkubator_area']='inkubator_bisnis/inkubator_area';

// Agropreneur Update
$route['berita'] = "artikel/index";
$route['detail/(:num)/(:any)'] = "artikel/detail/$1/$2";
$route['pelatihan/(:num)/(:any)'] = "pelatihan/detail_pelatihan/$1/$2";
$route['pelatihan/isi/(:num)/(:any)'] = "pelatihan/detail_isi_pelatihan/$1/$2";
//Event
$route['event_detail/(:num)/(:any)'] = "event/detail_event_utama/$1/$2";
$route['event/(:num)/(:any)'] = "event/detail_event/$1/$2";
// Register
$route['register_member']='register/add_member';
$route['register_mitra']='register/add_mitra';
// Foto Galeri
$route['gallery'] = "fotogaleri/index";
// Agropreneur Update
$route['ekonomioutlook/(:num)/(:any)'] = "ekonomioutlook/ekonomi_singel/$1/$2";

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


$route['admin'] = 'auth';

$route['admin/slider'] = 'admin/slider/all_slider_list';
$route['admin/slider/add_new'] = 'admin/slider/index';

$route['admin/member'] = 'admin/member/all_member_list';
$route['admin/member/add_new'] = 'admin/member/index';

$route['admin/berita'] = 'admin/berita/all_berita_list';
$route['admin/berita/add'] = 'admin/berita/index';

$route['admin/user'] = 'admin/user/all_user_list';
$route['admin/user/add_new'] = 'admin/user/index';

$route['admin/slider'] = 'admin/slider/all_slider_list';
$route['admin/slider/add'] = 'admin/slider/index';
