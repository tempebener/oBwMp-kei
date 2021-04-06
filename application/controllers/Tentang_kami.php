<?php
class Tentang_kami extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_main');
	}

	// KEI
	function visi_misi(){

		$this->load->view('frontend/tk_visi_misi');
	}
	function struktur_organisasi(){

		$this->load->view('frontend/tk_struktur_organisasi');
	}
	function program_kegiatan(){

		$this->load->view('frontend/tk_program_kegiatan');
	}

	// Joglo Tumiyono
	function profil(){

		$this->load->view('frontend/tk_profil');
	}
	function pengembangan_seni_budaya(){

		$this->load->view('frontend/tk_pengembangan_seni_budaya');
	}
	function pesantren_entrepreneur(){

		$this->load->view('frontend/tk_pesantren_entrepreneur');
	}

	// Unit Bisnis
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