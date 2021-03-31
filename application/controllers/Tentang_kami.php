<?php
class Tentang_kami extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tentang_kami');
	}

	function profil(){

		$this->load->view('frontend/profil_index');
	}

	function livestock(){

		$this->load->view('frontend/tk_livestock');
	}

}
