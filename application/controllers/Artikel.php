<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
	$this->load->model('Model_utama');
    /* memanggil function dari masing2 model yang akan digunakan */

  }

	public function index()
	{
   
			$this->load->view('frontend/berita_singel');
	

	
}

public function detail(){

			$page1 = 'Y';
			$query = $this->Model_utama->view_where('tbl_berita',array('judul_seo' => $this->uri->segment(3)),'id_berita','DESC',0,1);
			if ($query->num_rows()<=0){
				redirect('main');
			}else{

				$row = $query->row_array();
				$data['title'] = cetak($row['judul']);
				$data['description'] = cetak_meta($row['isi_berita'],0,400);
				$data['rows'] = $row;
				 
				  

				$this->load->view('frontend/berita_singel', $data);
			}
		}



	
	
    

}