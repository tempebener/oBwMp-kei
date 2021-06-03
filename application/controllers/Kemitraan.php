<?php
class Kemitraan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	function pengembangan_kemitraan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_pengembangan_kemitraan',$data);
	}

	function proyeksi_kemitraan(){
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_proyeksi_kemitraan',$data);
	}

	function budidaya_ayam_layer(){
		$data['ayam_layer'] = $this->db->query("select * from tbl_skema_kemitraan  ORDER BY  id_skema_kemitraan = '1' desc limit 1
						")->result();
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_budidaya_ayam_layer',$data);
	}

	function budidaya_ayam_broiler(){
		$data['ayam_broiler'] = $this->db->query("select * from tbl_skema_kemitraan  ORDER BY  id_skema_kemitraan = '2' desc limit 1
						")->result();
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_budidaya_ayam_broiler',$data);
	}

	function penggemukan_sapi(){
		$data['penggemukan_sapi'] = $this->db->query("select * from tbl_skema_kemitraan  ORDER BY  id_skema_kemitraan = '3' desc limit 1
						")->result();
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_penggemukan_sapi',$data);
	}

	function budidaya_jagung_padi(){
		$data['budidaya_jagung_padi'] = $this->db->query("select * from tbl_skema_kemitraan  ORDER BY  id_skema_kemitraan = '4' desc limit 1
						")->result();
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_budidaya_jagung_padi',$data);
	}

	function umkm_produk_olahan(){
		$data['umkm_produk_olahan'] = $this->db->query("select * from tbl_skema_kemitraan  ORDER BY  id_skema_kemitraan = '5' desc limit 1
						")->result();
		$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
						")->result();
		$this->load->view('frontend/k_umkm_produk_olahan',$data);
	}
}
