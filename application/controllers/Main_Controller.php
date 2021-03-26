<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main_Controller extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	     $this->load->helper('url');
	     $this->load->helper('security');
	     $this->load->library('form_validation');
	     $this->load->library('pagination');
			 $this->load->model('Model_main');
	}





	public function index()
	{
		$page1 = '1';
			$data['post_slider'] 						= $this->Model_main->get_all_slider($page1);
			$data['about'] = $this->Model_main->get_all_about()->result();

			 $data['modul_pelatihan'] = $this->db->query("select * from modul_pelatihan  ORDER BY  id_modul_pelatihan desc ")->result();
		$this->load->view('frontend/index',$data);
	}
	
}
