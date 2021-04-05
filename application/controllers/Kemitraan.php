<?php
class Kemitraan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	function pengembangan_kemitraan(){

		$this->load->view('frontend/k_pengembangan_kemitraan');
	}

	function proyeksi_kemitraan(){

		$this->load->view('frontend/k_proyeksi_kemitraan');
	}

	function budidaya_ayam_layer(){

		$this->load->view('frontend/k_budidaya_ayam_layer');
	}

	function budidaya_ayam_broiler(){

		$this->load->view('frontend/k_budidaya_ayam_broiler');
	}

	function penggemukan_sapi(){

		$this->load->view('frontend/k_penggemukan_sapi');
	}

	function budidaya_jagung_padi(){

		$this->load->view('frontend/k_budidaya_jagung_padi');
	}

	function umkm_produk_olahan(){

		$this->load->view('frontend/k_umkm_produk_olahan');
	}
}