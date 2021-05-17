<?php
class Inkubator_bisnis extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// Tentang Inkubator Bisnis
	function tentang_inkubator_bisnis(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ib_tentang_inkubator_bisnis',$data);
	}

	// Konsultasi Online
	function peternakan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ib_peternakan',$data);
	}
	function pertanian(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ib_pertanian',$data);
	}
	function lainnya(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ib_lainnya',$data);
	}

	// Inkubator Area
	function inkubator_area(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ib_inkubator_area',$data);
	}
}
