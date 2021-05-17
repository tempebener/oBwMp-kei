<?php
class Akses_permodalan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// Perbankan
	function kur(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ap_kur',$data);
	}

	// Non Perbankan
	function lpdb_kumkm(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ap_lpdb_kumkm',$data);
	}
	function pkbl_bumn(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ap_pkbl_bumn',$data);
	}
	function pnm(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/ap_pnm',$data);
	}
}
