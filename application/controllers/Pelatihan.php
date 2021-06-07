<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelatihan extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
	$this->load->model('Model_utama');
	$this->load->model('M_pelatihan');
    /* memanggil function dari masing2 model yang akan digunakan */

  }



public function detail_pelatihan($id){


			$query = $this->Model_utama->view_where('tbl_pelatihan',array('judul_pelatihan_seo' => $this->uri->segment(3)),'id_pelatihan','DESC',0,1);
			if ($query->num_rows()<=0){
				redirect('main');
			}else{

				$row = $query->row_array();
				$data['title'] = cetak($row['judul_pelatihan']);
				$data['description'] = cetak_meta($row['deskripsi_singkat'],0,400);
				$data['rows'] = $row;

				 $data['pelatihan_detail']            = $this->M_pelatihan->get_by_id_pelatihan($id);
				 $data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1")->result();


				$this->load->view('frontend/modul_pelatihan_singel', $data);
			}
		}

public function detail_isi_pelatihan($id){


			$query = $this->Model_utama->view_join_one('tbl_pelatihan_detail','tbl_pelatihan','id_pelatihan',array('judul_pelatihan_detail_seo' => $this->uri->segment(4)),'id_pelatihan_detail','DESC',0,1);
			if ($query->num_rows()<=0)
			{

				redirect('main');

			}else{
					$row = $query->row_array();
				
					if($row['status_lang_news'] == 'Y')
				{
				      $daftar = "<a href='". base_url('member/index') . "'>daftar</a>";
				    if(!$this->session->id_users)
				    {
				    	 $_SESSION['langganan'] = "Untuk membaca konten ini diharuskan berlangganan dahulu. Bila belum mempunyai akun $daftar & bila sudah silakan login";
				       redirect('register');          
				        return;
				    }

				$row = $query->row_array();
				$data['title'] = cetak($row['judul_pelatihan_detail']);
				$data['description'] = cetak_meta($row['deskripsi_pelatihan_singkat'],0,400);
				$data['rows'] = $row;

				 $data['pelatihan_isi_detail']            = $this->M_pelatihan->get_by_id_pelatihan($id);
				 $data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1")->result();


				$this->load->view('frontend/modul_pelatihan_singel_detail', $data);
			}
		}
	}





}
