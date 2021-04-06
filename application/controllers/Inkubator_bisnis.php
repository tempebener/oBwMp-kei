<?php
class Inkubator_bisnis extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// Tentang Inkubator Bisnis
	function tentang_inkubator_bisnis(){

		$this->load->view('frontend/ib_tentang_inkubator_bisnis');
	}

	// Konsultasi Online
	function peternakan(){

		$this->load->view('frontend/ib_peternakan');
	}
	function pertanian(){

		$this->load->view('frontend/ib_pertanian');
	}
	function lainnya(){

		$this->load->view('frontend/ib_lainnya');
	}
	
	// Inkubator Area
	function inkubator_area(){

		$this->load->view('frontend/ib_inkubator_area');
	}
}