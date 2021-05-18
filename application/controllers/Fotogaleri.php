<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fotogaleri extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
	$this->load->model('Model_utama');
    /* memanggil function dari masing2 model yang akan digunakan */

  }

	public function index()
	{
		$jumlah= $this->Model_utama->views_row('tbl_fotogaleri','status_fotogaleri','id_fotogaleri','DESC');
		$config['total_rows'] = $jumlah;
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$config['per_page'] = 30;
			$data['posts_galeri']= $this->Model_utama->view_one_limit('tbl_fotogaleri','status_fotogaleri','id_fotogaleri','desc',$dari,$config['per_page']);
			$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						 ")->result();
		}else{
			redirect('main');
		}
			$this->load->view('frontend/fotogaleri_all',$data);

	}








}
