<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

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
		
		$this->load->view('frontend/index',$data);
	}
	}
