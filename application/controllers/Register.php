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
            $config['upload_path'] = 'theme/images/foto_register/mitra/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|jpeg|pdf|PDF';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('foto_ktp');
            $hasil=$this->upload->data();
            $this->upload->do_upload('foto_npwp');
            $hasil2=$this->upload->data();
            $this->upload->do_upload('foto_pas');
            $hasil3=$this->upload->data();
            $this->upload->do_upload('foto_sku');
            $hasil4=$this->upload->data();
            $this->upload->do_upload('partnership_agreement');
            $hasil5=$this->upload->data();

            // $config['source_image'] = $upload_path.'ktp/'.$hasil['file_name'];
            $no_induk    = $this->m_main->create_no_transaction();

            if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''|$hasil4['file_name']==''|$hasil5['file_name']==''){
                $data_user = array('first_name'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'email'=>$this->input->post('email'),
                                'password' => md5($this->input->post('password')),
                                // 'password' => md5('mitra123'),
                                'status'=>'0',
                                'group'=>'Mitra',
                                'role'=>'user',
                                'created_at'=>date('Y-m-d H:i:s'));
                $data_member = array('nama'=>$this->input->post('nama'),
                                'id_user' => $no_induk,
                                'alamat'=>$this->input->post('alamat'),
                                'no_hp'=>$this->input->post('no_hp'),
                                'email'=>$this->input->post('email'),
                                'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                'pekerjaan'=>$this->input->post('pekerjaan'),
                                'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                'id_status'=>'1',
                                'status_keanggotaan' => 'Mitra',
                                'created_by'=>$this->session->id_users,
                                'created_at'=>date('Y-m-d H:i:s'));
            }else{
                $data_user = array('first_name'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'email'=>$this->input->post('email'),
                                'password' => md5($this->input->post('password')),
                                // 'password' => md5('mitra123'),
                                'status'=>'0',
                                'group'=>'Mitra',
                                'role'=>'user',
                                'created_at'=>date('Y-m-d H:i:s'));
                $data_member = array('nama'=>$this->input->post('nama'),
                                'id_user' => $no_induk,
                                'alamat'=>$this->input->post('alamat'),
                                'no_hp'=>$this->input->post('no_hp'),
                                'email'=>$this->input->post('email'),
                                'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                'pekerjaan'=>$this->input->post('pekerjaan'),
                                'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                'id_status'=>'1',
                                'status_keanggotaan' => 'Mitra',
                                'created_by'=>$this->session->id_users,
                                'created_at'=>date('Y-m-d H:i:s'),
                                'foto_ktp'=>$hasil['file_name'],
                                'foto_npwp'=>$hasil2['file_name'],
                                'foto_pas'=>$hasil3['file_name'],
                                'foto_sku'=>$hasil4['file_name'],
                                'partnership_agreement'=>$hasil5['file_name']);
            }
            $this->m_main->multi_insert_member('user',$data_user,'tbl_member',$data_member);
            redirect('register');
        }else{
			$this->load->view('frontend/register/mitra');
        }
	}
  
    public function add_member(){
        if (isset($_POST['submit'])){
            $config['upload_path'] = 'theme/images/foto_users/member/';
            $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('foto_ktp');
            $hasil=$this->upload->data();
            // $this->upload->do_upload('foto_npwp');
            // $hasil2=$this->upload->data();
            $this->upload->do_upload('foto_pas');
            $hasil3=$this->upload->data();
            // $this->upload->do_upload('foto_sku');
            // $hasil4=$this->upload->data();
            // $this->upload->do_upload('partnership_agreement');
            // $hasil5=$this->upload->data();

            $this->form_validation->set_rules('email','Email','required');
 
            if($this->form_validation->run() == FALSE){
                $message = validation_errors();
            }else{
                echo "Form validation oke";
            }

            $no_induk    = $this->m_main->create_no_transaction();
            $email = $this->input->post('email');

            // if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''|$hasil4['file_name']==''|$hasil5['file_name']==''){
            if ($hasil['file_name']==''|$hasil3['file_name']==''){
                $data_user = array('nama_lengkap'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'email'=>$this->input->post('email'),
                                'password' => md5($this->input->post('password')),
                                // 'password' => md5('mitra123'),
                                'blokir'=>'Y',
                                'level'=>'member');
                $data_member = array('nama'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'alamat'=>$this->input->post('alamat'),
                                'no_hp'=>$this->input->post('no_hp'),
                                'email'=>$this->input->post('email'),
                                'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                'pekerjaan'=>$this->input->post('pekerjaan'),
                                'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                'id_status'=>'1',
                                'status_keanggotaan' => 'Member',
                                'created_by'=>$this->session->id_users,
                                'created_at'=>date('Y-m-d H:i:s'));
            }else{
                $data_user = array('nama_lengkap'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'email'=>$this->input->post('email'),
                                'password' => md5($this->input->post('password')),
                                // 'password' => md5('mitra123'),
                                'blokir'=>'Y',
                                'level'=>'member');
                $data_member = array('nama'=>$this->input->post('nama'),
                                'no_induk' => $no_induk,
                                'alamat'=>$this->input->post('alamat'),
                                'no_hp'=>$this->input->post('no_hp'),
                                'email'=>$this->input->post('email'),
                                'pend_terakhir'=>$this->input->post('pend_terakhir'),
                                'pekerjaan'=>$this->input->post('pekerjaan'),
                                'usaha_diminati'=>$this->input->post('usaha_diminati'),
                                'id_status'=>'1',
                                'status_keanggotaan' => 'Member',
                                'created_by'=>$this->session->id_users,
                                'created_at'=>date('Y-m-d H:i:s'),
                                'foto_ktp'=>$hasil['file_name'],
                                // 'foto_npwp'=>$hasil2['file_name'],
                                'foto_pas'=>$hasil3['file_name']);
                                // 'foto_sku'=>$hasil4['file_name'],
                                // 'partnership_agreement'=>$hasil5['file_name']);
            }
            
            $result = $this->m_main->checkEmail($email);
            if(empty($result)) {
                $this->m_main->multi_insert_member('users',$data_user,'tbl_member',$data_member);
                $msg = "Data Insert Successfully";
            }else {
                $msg = "Email Already Exists";
            }
            $this->session->set_flashdata('msg', $msg);

            redirect('register');
        }else{
            $this->load->view('frontend/register/member');
        }
    }

}