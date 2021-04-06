<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home';
$route['administrator']='admin/login';
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

// Agropreneur Update
$route['detail/(:num)/(:any)'] = "artikel/detail/$1/$2";
$route['pelatihan/(:num)/(:any)'] = "pelatihan/detail_pelatihan/$1/$2";
// Register
$route['register_member']='register/add_member';
$route['register_mitra']='register/add_mitra';


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


$route['admin'] = 'auth';

$route['admin/slider'] = 'admin/slider/all_slider_list';
$route['admin/slider/add'] = 'admin/slider/index';

$route['admin/berita'] = 'admin/berita/index';

$route['admin/user'] = 'admin/user/all_user_list';
$route['admin/user/add'] = 'admin/user/index';




