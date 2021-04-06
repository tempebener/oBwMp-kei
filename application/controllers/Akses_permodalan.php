<?php
class Akses_permodalan extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// Perbankan
	function kur(){

		$this->load->view('frontend/ap_kur');
	}

	// Non Perbankan
	function lpdb_kumkm(){

		$this->load->view('frontend/ap_lpdb_kumkm');
	}
	function pkbl_bumn(){

		$this->load->view('frontend/ap_pkbl_bumn');
	}
	function pnm(){

		$this->load->view('frontend/ap_pnm');
	}
}