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
			$data['post_slider'] = $this->Model_main->get_all_slider($page1);
			$data['about'] = $this->Model_main->get_all_about()->result();
		$this->load->view('frontend/index',$data);
	}
	public function index2()
	{

		$this->load->view('frontend/tes');
	}

	public function event_detail($id)
		{
			$data['gallery'] = $this->db->select("*")->from("gallery_event")->where("id",$id)->get()->result();
			$data['data'] = $this->db->select("*")->from("event")->where("id",$id)->get()->result();
			$this->load->view('frontend/event_detail',$data);
		}

		public function video_detail($id)
			{
				$data['video'] = $this->db->select("*")->from("video")->where("id_video",$id)->get()->result();
				$data['list'] = $this->db->select("*")->from("video")->get()->result();
				$this->load->view('frontend/video_detail',$data);
			}

			public function projects_detail($id)
				{
					$data['data'] = $this->db->select("*")->from("projects")->where("id_projects",$id)->get()->result();
					$data['gallery'] = $this->db->select("*")->from("gallery_projects")->where("id_projects",$id)->get()->result();
					$this->load->view('frontend/projects_detail',$data);
				}

				public function support()
					{
						$page1 = '1';
							$data['post_sliders'] 						= $this->Model_main->get_all_sliders($page1);
						$this->load->view('frontend/support',$data);
					}
					public function projects()
	{
			$data['projects_sliders'] 						= $this->Model_main->projects_sliders();
		$this->load->view('frontend/projects2',$data);
	}
	public function event()
{
	$this->load->library('pagination');
	/* menghitung jumlah total data */

	// Mengatur base_url
	$config['base_url'] = base_url().'Main_Controller/event/halaman/';
	//menghitung total baris
 $config['total_rows'] = $this->db->count_all('event'); //total row
	//mengatur total data yang tampil per halamannya
	$config['per_page'] = 2;
	// tag pagination bootstrap
	$config['full_tag_open']    = "<ul class='pagination'>";
	$config['full_tag_close']   = "</ul>";
	$config['num_tag_open']     = "<li>";
	$config['num_tag_close']    = "</li>";
	$config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
	$config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
	$config['next_link']        = "Selanjutnya";
	$config['next_tag_open']    = "<li>";
	$config['next_tagl_close']  = "</li>";
	$config['prev_link']        = "Sebelumnya";
	$config['prev_tag_open']    = "<li>";
	$config['prev_tagl_close']  = "</li>";
	$config['first_link']       = "Awal";
	$config['first_tag_open']   = "<li>";
	$config['first_tagl_close'] = "</li>";
	$config['last_link']        = 'Terakhir';
	$config['last_tag_open']    = "<li>";
	$config['last_tagl_close']  = "</li>";


	// mengambil uri segment ke-4
	$dari = $this->uri->segment('4');
	/* memanggil model untuk ditampilkan pada masing2 modul*/


	$data['event_sliders'] 						= $this->Model_main->projects_sliders_event();
	$data['post_terbaru'] 						= $this->Model_main->get_all_event($config['per_page'],$dari);
	$this->pagination->initialize($config);
$this->load->view('frontend/event',$data);
}
public function ourvideo()
	{
		$this->load->library('pagination');
		/* menghitung jumlah total data */

		// Mengatur base_url
		$config['base_url'] = base_url().'Main_Controller/ourvideo/halaman/';
		//menghitung total baris
		 $config['total_rows'] = $this->db->count_all('video'); //total row
		//mengatur total data yang tampil per halamannya
		$config['per_page'] = 6;
		// tag pagination bootstrap
		$config['full_tag_open']    = "<ul class='pagination'>";
		$config['full_tag_close']   = "</ul>";
		$config['num_tag_open']     = "<li>";
		$config['num_tag_close']    = "</li>";
		$config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
		$config['next_link']        = "Selanjutnya";
		$config['next_tag_open']    = "<li>";
		$config['next_tagl_close']  = "</li>";
		$config['prev_link']        = "Sebelumnya";
		$config['prev_tag_open']    = "<li>";
		$config['prev_tagl_close']  = "</li>";
		$config['first_link']       = "Awal";
		$config['first_tag_open']   = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_link']        = 'Terakhir';
		$config['last_tag_open']    = "<li>";
		$config['last_tagl_close']  = "</li>";


		// mengambil uri segment ke-4
		$dari = $this->uri->segment('4');
		/* memanggil model untuk ditampilkan pada masing2 modul*/

		$data['event_sliders'] 						= $this->Model_main->projects_sliders_video();
		$data['post_terbaru'] 						= $this->Model_main->get_all_video($config['per_page'],$dari);
		$this->pagination->initialize($config);
		$this->load->view('frontend/ourvideo',$data);
	}
	public function investor()
	{
		$this->load->view('frontend/investor');
	}
}
