<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ekonomioutlook extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
	$this->load->model('Model_utama');
	$this->load->model('M_pelatihan');
    /* memanggil function dari masing2 model yang akan digunakan */

  }



public function ekonomi_singel($id){


			$query = $this->Model_utama->view_where('tbl_ekonomi_outlook',array('judul_eo_seo' => $this->uri->segment(3)),'id_eo','DESC',0,1);
			if ($query->num_rows()<=0){
				redirect('main');
			}else{

				$row = $query->row_array();
				$data['title'] = cetak($row['judul_eo']);
				$data['description'] = cetak_meta($row['deskripsi_eo'],0,400);
				$data['rows'] = $row;

				 $data['eo_detail']            = $this->M_ekonomi->get_by_id_ekonomi($id);
 			 	$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1")->result();


				$this->load->view('frontend/ekonomi_outlook_singel', $data);
			}
		}







}
