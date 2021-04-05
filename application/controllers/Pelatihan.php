<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelatihan extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
	$this->load->model('Model_utama');
    /* memanggil function dari masing2 model yang akan digunakan */

  }

	

public function detail_pelatihan(){

			$page1 = 'Y';
			$query = $this->Model_utama->view_where('tbl_pelatihan',array('judul_pelatihan_seo' => $this->uri->segment(3)),'id_pelatihan','DESC',0,1);
			if ($query->num_rows()<=0){
				redirect('main');
			}else{

				$row = $query->row_array();
				$data['title'] = cetak($row['judul_pelatihan']);
				$data['description'] = cetak_meta($row['deskripsi_singkat'],0,400);
				$data['rows'] = $row;		 
				  

				$this->load->view('frontend/modul_pelatihan_singel', $data);
			}
		}



	
	
    

}