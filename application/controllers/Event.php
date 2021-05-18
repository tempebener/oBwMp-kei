<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Event extends CI_Controller {

	function __construct()
  {
    parent::__construct();
		    /* memanggil model untuk ditampilkan pada masing2 modul */
			$this->load->model('Model_utama');
			$this->load->model('M_event');
		    /* memanggil function dari masing2 model yang akan digunakan */

  }
	public function detail_event($id){


				$query = $this->Model_utama->view_where('tbl_event',array('judul_event_seo' => $this->uri->segment(3)),'id_event','DESC',0,1);
				if ($query->num_rows()<=0){
					redirect('main');
				}else{

					$row = $query->row_array();
					$data['rows'] = $row;
					 $data['event_detail']            = $this->M_event->get_by_id_event($id);
					 $data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
			 						")->result();
					$this->load->view('frontend/modul_event_singel', $data);
				}
			}
	public function detail_event_utama($id){

						$page1 = 'Y';
						$query = $this->Model_utama->view_where('tbl_event_detail',array('judul_event_detail_seo' => $this->uri->segment(3)),'id_event_detail','DESC',0,1);
						if ($query->num_rows()<=0){
							redirect('main');
						}else{
							$row = $query->row_array();
							$data['rows'] = $row;
							$data['event_terbaru'] = $this->db->query("select * from tbl_event_detail  ORDER BY  date_event_detail desc limit 1
											")->result();
							$this->load->view('frontend/modul_event_singel_utama', $data);
						}
		}

}
