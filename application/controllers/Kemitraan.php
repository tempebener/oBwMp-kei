<?php
class Kemitraan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	function pengembangan_kemitraan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_pengembangan_kemitraan',$data);
	}

	function proyeksi_kemitraan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_proyeksi_kemitraan',$data);
	}

	function budidaya_ayam_layer(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_budidaya_ayam_layer',$data);
	}

	function budidaya_ayam_broiler(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_budidaya_ayam_broiler',$data);
	}

	function penggemukan_sapi(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_penggemukan_sapi',$data);
	}

	function budidaya_jagung_padi(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_budidaya_jagung_padi',$data);
	}

	function umkm_produk_olahan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  id_event_detail desc
						")->result();
		$this->load->view('frontend/k_umkm_produk_olahan',$data);
	}
}
