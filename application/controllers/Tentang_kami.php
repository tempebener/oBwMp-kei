<?php
class Tentang_kami extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tentang_kami');
	}

	function visi_misi(){

		$this->load->view('frontend/tk_visi_misi');
	}

	function profil(){

		$this->load->view('frontend/tk_profil');
	}

	function pesantren_entrepreneur(){

		$this->load->view('frontend/tk_pesantren_entrepreneur');
	}

	function livestock(){

		$this->load->view('frontend/tk_livestock');
	}

	function meat(){

		$this->load->view('frontend/tk_meat');
	}
	
	function food(){

		$this->load->view('frontend/tk_food');
	}

	function poultry(){

		$this->load->view('frontend/tk_poultry');
	}
}