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
		$this->load->model('M_main');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
		// $x['berita']=$this->m_tulisan->get_berita_home();
		// $x['pengumuman']=$this->m_pengumuman->get_pengumuman_home();
		// $x['agenda']=$this->m_agenda->get_agenda_home();
		// $x['tot_guru']=$this->db->get('tbl_guru')->num_rows();
		// $x['tot_siswa']=$this->db->get('tbl_siswa')->num_rows();
		// $x['tot_files']=$this->db->get('tbl_files')->num_rows();
		// $x['tot_agenda']=$this->db->get('tbl_agenda')->num_rows();
		$status = '1';
		$data['post_slider'] = $this->M_main->get_all_slider($status);
		$data['post_tutors'] = $this->M_main->get_all_tutors($status);
		$data['pelatihan'] = $this->db->query("select * from tbl_pelatihan  ORDER BY  id_pelatihan desc 
			")->result();
		$data['post_bod'] = $this->M_main->get_all_bod($status);
		$data['ekonomi_outlook'] = $this->db->query("select * from tbl_ekonomi_outlook  ORDER BY  id_eo desc 
			")->result();
		$this->load->view('frontend/index',$data);
	}

}
