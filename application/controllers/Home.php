<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_galeri');
		$this->load->model('m_pengumuman');
		$this->load->model('m_agenda');
		$this->load->model('m_files');
		$this->load->model('m_pengunjung');
		$this->load->model('m_main');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
		$status = '1';
		$data['post_slider'] = $this->m_main->get_all_slider($status);
		$data['post_tutors'] = $this->m_main->get_all_tutors($status);
		$data['pelatihan'] = $this->db->query("select * from tbl_pelatihan  ORDER BY  id_pelatihan desc 
			")->result();
		$data['post_bod'] = $this->m_main->get_all_bod($status);
		$data['ekonomi_outlook'] = $this->db->query("select * from tbl_ekonomi_outlook  ORDER BY  id_eo desc 
			")->result();
		$data['berita'] = $this->db->query("select * from tbl_berita where status = 'Y' ORDER BY  id_berita desc limit 1
			")->result();
		$data['berita2'] = $this->db->query("select * from tbl_berita where status = 'Y' ORDER BY  id_berita desc limit 3 offset 1
			")->result();
		$this->load->view('frontend/index',$data);
	}

}