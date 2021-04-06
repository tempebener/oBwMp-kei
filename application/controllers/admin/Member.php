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
        if ($_FILES['foto_ktp']['size'] > 0) {
            $this->load->library('upload');
            $config['upload_path'] = './assets/images/'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya
            $config['max_size']      = $this->allowed_file_size;
            $config['max_width']     = 300;
            $config['max_height']    = 80;
            $config['overwrite']     = false;
            $config['max_filename']  = 25;
            //$config['encrypt_name'] = TRUE;
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('foto_ktp')) {
                $error = $this->upload->display_errors();
                $this->session->set_flashdata('error', $error);
                redirect($_SERVER['HTTP_REFERER']);
            }
            $ktp = $this->upload->file_name;
            // $this->db->update('settings', ['logo' => $site_logo], ['setting_id' => 1]);
        }

        if ($_FILES['foto_pas']['size'] > 0) {
            $this->load->library('upload');
            $config['upload_path'] = './assets/images/'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya
            $config['max_size']      = $this->allowed_file_size;
            $config['max_width']     = 300;
            $config['max_height']    = 80;
            $config['overwrite']     = false;
            $config['max_filename']  = 25;
            //$config['encrypt_name'] = TRUE;
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('foto_pas')) {
                $error = $this->upload->display_errors();
                $this->session->set_flashdata('error', $error);
                redirect($_SERVER['HTTP_REFERER']);
            }
            $foto_pas = $this->upload->file_name;
            // $this->db->update('settings', ['logo2' => $login_logo], ['setting_id' => 1]);
        }


        if ($_FILES['foto_npwp']['size'] > 0) {
            $this->load->library('upload');
            $config['upload_path'] = './assets/images/'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya
            $config['max_size']      = $this->allowed_file_size;
            $config['max_width']     = 300;
            $config['max_height']    = 80;
            $config['overwrite']     = false;
            $config['max_filename']  = 25;
            //$config['encrypt_name'] = TRUE;
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('foto_npwp')) {
                $error = $this->upload->display_errors();
                $this->session->set_flashdata('error', $error);
                redirect($_SERVER['HTTP_REFERER']);
            }
            $photo = $this->upload->file_name;
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