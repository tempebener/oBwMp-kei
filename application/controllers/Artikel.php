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
		$jumlah= $this->Model_utama->views_row('tbl_berita','headline','id_berita','DESC');
		$config['total_rows'] = $jumlah;
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$config['per_page'] = 30;
			$data['posts_berita']= $this->Model_utama->view_one_limit('tbl_berita','headline','id_berita','desc',$dari,$config['per_page']);
			$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc limit 1
						 ")->result();
		}else{
			redirect('main');
		}
			$this->load->view('frontend/berita_all',$data);

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
				$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc limit 1
							 ")->result();

				$this->load->view('frontend/berita_singel', $data);
			}
		}







}
