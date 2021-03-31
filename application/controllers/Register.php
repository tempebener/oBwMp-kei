<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Register extends CI_Controller {
	 function __construct()
  {
    parent::__construct();
	$this->load->model('m_main');
  }
  
	public function index(){	
	
		$this->load->view('frontend/register/index');
	}
  
	public function add_mitra(){
		if (isset($_POST['submit'])){
            $upload_path = 'theme/images/foto_register/mitra/';
            $config['upload_path'] = 'theme/images/foto_register/mitra/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|jpeg';
            $config['max_size'] = '3000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('foto_ktp','foto_npwp','foto_pas','foto_sku','partnership_agreement');
            $hasil=$this->upload->data();

            $config['source_image'] = $upload_path.'ktp/'.$hasil['file_name'];

            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($hasil['file_name']==''){
                    $data = array('nama'=>$this->input->post('nama'),
                                    'alamat'=>$this->input->post('alamat'),
                                    'no_hp'=>$this->input->post('no_hp'),
                                    'email'=>$this->input->post('email'),
                                    'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                    'pekerjaan'=>$this->input->post('pekerjaan'),
                                    'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                    'id_status'=>'1',
                                    'created_by'=>$this->session->id_users,
                                    'created_at'=>date('Y-m-d H:i:s'));
            }else{
                    $data = array('nama'=>$this->input->post('nama'),
                                    'alamat'=>$this->input->post('alamat'),
                                    'no_hp'=>$this->input->post('no_hp'),
                                    'email'=>$this->input->post('email'),
                                    'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                    'pekerjaan'=>$this->input->post('pekerjaan'),
                                    'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                    'id_status'=>'1',
                                    'created_by'=>$this->session->id_users,
                                    'created_at'=>date('Y-m-d H:i:s'),
                                    'foto_ktp'=>$hasil['file_name'],
                                    'foto_npwp'=>$hasil['file_name'],
                                    'foto_pas'=>$hasil['file_name'],
                                    'foto_sku'=>$hasil['file_name'],
                                    'partnership_agreement'=>$hasil['file_name']);
            }
            $this->m_main->insert('tbl_member',$data);
            redirect('register');
        }else{
			$this->load->view('frontend/register/mitra');
        }
	}
  
    public function add_member(){
        if (isset($_POST['submit'])){
            $upload_path = 'theme/images/foto_register/member/';
            $config['upload_path'] = 'theme/images/foto_register/member/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|jpeg';
            $config['max_size'] = '3000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('foto_ktp','foto_npwp','foto_pas','foto_sku','partnership_agreement');
            $hasil=$this->upload->data();

            $config['source_image'] = $upload_path.'ktp/'.$hasil['file_name'];

            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($hasil['file_name']==''){
                    $data = array('nama'=>$this->input->post('nama'),
                                    'alamat'=>$this->input->post('alamat'),
                                    'no_hp'=>$this->input->post('no_hp'),
                                    'email'=>$this->input->post('email'),
                                    'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                    'pekerjaan'=>$this->input->post('pekerjaan'),
                                    'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                    'id_status'=>'1',
                                    'created_by'=>$this->session->id_users,
                                    'created_at'=>date('Y-m-d H:i:s'));
            }else{
                    $data = array('nama'=>$this->input->post('nama'),
                                    'alamat'=>$this->input->post('alamat'),
                                    'no_hp'=>$this->input->post('no_hp'),
                                    'email'=>$this->input->post('email'),
                                    'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                    'pekerjaan'=>$this->input->post('pekerjaan'),
                                    'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                    'id_status'=>'1',
                                    'created_by'=>$this->session->id_users,
                                    'created_at'=>date('Y-m-d H:i:s'),
                                    'foto_ktp'=>$hasil['file_name'],
                                    'foto_npwp'=>$hasil['file_name'],
                                    'foto_pas'=>$hasil['file_name'],
                                    'foto_sku'=>$hasil['file_name'],
                                    'partnership_agreement'=>$hasil['file_name']);
            }
            $this->m_main->insert('tbl_member',$data);
            redirect('register');
        }else{
            $this->load->view('frontend/register/member');
        }
    }

}