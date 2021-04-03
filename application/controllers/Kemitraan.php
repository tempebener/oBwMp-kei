<?php
class Kemitraan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	function budidaya_ayam_broiler(){

		$this->load->view('frontend/k_budidaya_ayam_broiler');
	}

	function budidaya_jagung_padi(){

		$this->load->view('frontend/k_budidaya_jagung_padi');
	}

	function umkm_produk_olahan(){

		$this->load->view('frontend/k_umkm_produk_olahan');
	}
}