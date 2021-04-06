<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Member extends CI_Controller {

	public function __construct(){
        parent::__construct();
        check_login_user();
       $this->load->model('common_model');
       $this->load->model('login_model');
       
    }


    public function index()
    {
        $data = array();
        $data['page_title'] = 'Member';
        $data['country'] = $this->common_model->select('country');
        $data['power'] = $this->common_model->get_all_power('user_power');
        $data['main_content'] = $this->load->view('admin/member/add', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- add new member by admin
    public function add()
    {   
        if ($_POST) {

            $config['upload_path'] = './theme/images/foto_register/member/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|PNG';
            $config['max_size'] = '1000000'; // kb
            $this->load->library('upload', $config);
           

           
            $this->upload->do_upload('foto_ktp');
            $hasil1 = $this->upload->data();
            
            $this->upload->do_upload('foto_npwp');
            $hasil2 = $this->upload->data();
            
            $this->upload->do_upload('foto_pas');
            $hasil3 = $this->upload->data();
            
            
            $ktp = $hasil1['file_name'];
            $npwp = $hasil2['file_name'];
            $pas = $hasil3['file_name'];

           

            $data = array(
                'nama' => $_POST['nama'],
                'alamat' => $_POST['alamat'],
                'email' => $_POST['email'],
                'password' => md5($_POST['password']),
                'no_hp' => $_POST['no_hp'],
                'pekerjaan' => $_POST['pekerjaan'],
                'pend_terakhir' => $_POST['pend_terakhir'],
                'usaha_diminati' => $_POST['usaha_diminati'],
                'foto_ktp' => $ktp,
                'foto_pas' => $pas,
                'foto_npwp' => $npwp,
                'status_keanggotaan' => $_POST['role'],
                'created_at' => current_datetime()
            );

            // $data = $this->security->xss_clean($data);
            
            //-- check duplicate email
            $email = $this->common_model->check_email($_POST['email']);

            if (empty($email)) {
                $user_id = $this->common_model->insert($data, 'tbl_member');
            
                if ($this->input->post('role') == "mitra") {
                    $actions = $this->input->post('role_action');
                    foreach ($actions as $value) {
                        $role_data = array(
                            'user_id' => $user_id,
                            'action' => $value
                        ); 
                       $role_data = $this->security->xss_clean($role_data);
                       $this->common_model->insert($role_data, 'user_role');
                    }
                }
                $this->session->set_flashdata('msg', 'Member added Successfully');
                redirect(base_url('admin/member/all_member_list'));
            } else {
                $this->session->set_flashdata('error_msg', 'Email already exist, try another email');
                redirect(base_url('admin/member'));
            }
            
            
            

        }     




    }
    
 




    public function all_member_list()
    {
        $data['members'] = $this->common_model->get_all_member();
        $data['country'] = $this->common_model->select('country');
        $data['count'] = $this->common_model->get_member_total();
        $data['main_content'] = $this->load->view('admin/member/members', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- update members info
    public function update($id)
    {
        if ($_POST) {

            $data = array(
                'first_name' => $_POST['first_name'],
                'last_name' => $_POST['last_name'],
                'mobile' => $_POST['mobile'],
                'country' => $_POST['country'],
                'role' => $_POST['role']
            );
            $data = $this->security->xss_clean($data);

            $powers = $this->input->post('role_action');
            if (!empty($powers)) {
                $this->common_model->delete_member_role($id, 'member_role');
                foreach ($powers as $value) {
                   $role_data = array(
                        'member_id' => $id,
                        'action' => $value
                    ); 
                   $role_data = $this->security->xss_clean($role_data);
                   $this->common_model->insert($role_data, 'member_role');
                }
            }

            $this->common_model->edit_option($data, $id, 'member');
            $this->session->set_flashdata('msg', 'Information Updated Successfully');
            redirect(base_url('admin/member/all_member_list'));

        }

        $data['member'] = $this->common_model->get_single_member_info($id);
        $data['member_role'] = $this->common_model->get_member_role($id);
        $data['power'] = $this->common_model->select('member_power');
        $data['country'] = $this->common_model->select('country');
        $data['main_content'] = $this->load->view('admin/member/edit_member', $data, TRUE);
        $this->load->view('admin/index', $data);
        
    }

     //-- update members info
     public function profile($id)
     {
         if ($_POST) {
 
             $data = array(
                 'first_name' => $_POST['first_name'],
                 'last_name' => $_POST['last_name'],
                 'mobile' => $_POST['mobile'],
                 'country' => $_POST['country'],
                 'role' => $_POST['role']
             );
             $data = $this->security->xss_clean($data);
 
             $powers = $this->input->post('role_action');
             if (!empty($powers)) {
                 $this->common_model->delete_member_role($id, 'member_role');
                 foreach ($powers as $value) {
                    $role_data = array(
                         'member_id' => $id,
                         'action' => $value
                     ); 
                    $role_data = $this->security->xss_clean($role_data);
                    $this->common_model->insert($role_data, 'member_role');
                 }
             }
 
             $this->common_model->edit_option($data, $id, 'member');
             $this->session->set_flashdata('msg', 'Information Updated Successfully');
             redirect(base_url('admin/member/all_member_list'));
 
         }
 
         $data['member'] = $this->common_model->get_single_member_info($id);
         $data['member_role'] = $this->common_model->get_member_role($id);
         $data['power'] = $this->common_model->select('user_power');
         $data['country'] = $this->common_model->select('country');
         $data['main_content'] = $this->load->view('admin/member/profile_member', $data, TRUE);
         $this->load->view('admin/index', $data);
         
     }
    

    
    //-- active member
    public function active($id) 
    {
        $data = array(
            'status' => 1
        );
        $data = $this->security->xss_clean($data);
        $this->common_model->update($data, $id,'member');
        $this->session->set_flashdata('msg', 'member active Successfully');
        redirect(base_url('admin/member/all_member_list'));
    }

    //-- deactive member
    public function deactive($id) 
    {
        $data = array(
            'status' => 0
        );
        $data = $this->security->xss_clean($data);
        $this->common_model->update($data, $id,'member');
        $this->session->set_flashdata('msg', 'member deactive Successfully');
        redirect(base_url('admin/member/all_member_list'));
    }

    //-- delete member
    public function delete($id)
    {
        $this->common_model->delete($id,'member'); 
        $this->session->set_flashdata('msg', 'member deleted Successfully');
        redirect(base_url('admin/member/all_member_list'));
    }


    public function power()
    {   
        $data['powers'] = $this->common_model->get_all_power('user_power');
        $data['main_content'] = $this->load->view('admin/member/member_power', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- add member power
    public function add_power()
    {   
        if (isset($_POST)) {
            $data = array(
                'name' => $_POST['name'],
                'power_id' => $_POST['power_id']
            );
            $data = $this->security->xss_clean($data);
            
            //-- check duplicate power id
            $power = $this->common_model->check_exist_power($_POST['power_id']);
            if (empty($power)) {
                $member_id = $this->common_model->insert($data, 'member_power');
                $this->session->set_flashdata('msg', 'Power added Successfully');
            } else {
                $this->session->set_flashdata('error_msg', 'Power id already exist, try another one');
            }
            redirect(base_url('admin/member/power'));
        }
        
    }

    //--update member power
    public function update_power()
    {   
        if (isset($_POST)) {
            $data = array(
                'name' => $_POST['name']
            );
            $data = $this->security->xss_clean($data);
            
            $this->session->set_flashdata('msg', 'Power updated Successfully');
            $member_id = $this->common_model->edit_option($data, $_POST['id'], 'member_power');
            redirect(base_url('admin/member/power'));
        }
        
    }

    public function delete_power($id)
    {
        $this->common_model->delete($id,'member_power'); 
        $this->session->set_flashdata('msg', 'Power deleted Successfully');
        redirect(base_url('admin/member/power'));
    }


}