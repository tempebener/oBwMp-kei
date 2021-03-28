<?php
class Pendaftaran extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_album');
		$this->load->model('m_slider');
		$this->load->model('m_pengguna');
		$this->load->model('M_member');
		$this->load->library('upload');
	}

	function index(){
		
		$x['data']=$this->M_member->get_all_member();
		$this->load->view('admin/v_pendaftaran',$x);
	}
}