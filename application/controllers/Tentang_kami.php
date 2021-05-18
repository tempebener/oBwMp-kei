<?php
class Tentang_kami extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// KEI
	function visi_misi(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_visi_misi',$data);
	}
	function struktur_organisasi(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_struktur_organisasi',$data);
	}
	function program_kegiatan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_program_kegiatan',$data);
	}

	// Joglo Tumiyono
	function profil(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_profil',$data);
	}
	function pengembangan_seni_budaya(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_pengembangan_seni_budaya',$data);
	}
	function pesantren_entrepreneur(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_pesantren_entrepreneur',$data);
	}

	// Unit Bisnis
	function livestock(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_livestock',$data);
	}

	function meat(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_meat',$data);
	}

	function food(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_food',$data);
	}

	function poultry(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/tk_poultry',$data);
	}
}
