<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Berita extends CI_Controller {

	public function __construct(){
        parent::__construct();
        check_login_user();
       $this->load->model('common_model');
       $this->load->model('login_model');
       $this->load->model('M_berita');
       $this->load->model('Model_app');
       $this->load->library('upload');
       
    }


    public function index()
    {
        $data['berita'] = $this->M_berita->get_all_berita();
        $data['data'] = $this->M_berita->get_all_berita();
        // $data['country'] = $this->common_model->select('country');
        $data['count'] = $this->M_berita->get_berita_total();
        $data['main_content'] = $this->load->view('admin/berita/add', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- add new user by admin
    public function add2()
    {   
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya


        if ($_POST) {

            $data = array(
                'first_name' => $_POST['first_name'],
                'last_name' => $_POST['last_name'],
                'email' => $_POST['email'],
                'password' => md5($_POST['password']),
                'mobile' => $_POST['mobile'],
                'country' => $_POST['country'],
                'status' => $_POST['status'],
                'role' => $_POST['role'],
                'created_at' => current_datetime()
            );

            $data = $this->security->xss_clean($data);
            
            //-- check duplicate email
            $email = $this->common_model->check_email($_POST['email']);

            if (empty($email)) {
                $user_id = $this->common_model->insert($data, 'user');
            
                if ($this->input->post('role') == "user") {
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
                $this->session->set_flashdata('msg', 'User added Successfully');
                redirect(base_url('admin/user/all_user_list'));
            } else {
                $this->session->set_flashdata('error_msg', 'Email already exist, try another email');
                redirect(base_url('admin/user'));
            }
            
            
            

        }
    }


    function add(){
        $config['upload_path'] = './theme/images/foto_berita/'; //path folder
        $config['allowed_types'] = 'gif|jpg|JPG|JPEG|PNG|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya
        $config['create_thumb']= FALSE;
        $config['maintain_ratio']= FALSE;
        $config['quality']= '60%';
        $config['width']= 500;
        $config['height']= 400;
        $config['new_image']= './theme/images/foto_berita/'.$gbr['file_name'];
        $this->load->library('image_lib', $config);
        $this->image_lib->resize();

        $this->upload->initialize($config);
        if(!empty($_FILES['filefoto']['name']))
        {
            if ($this->upload->do_upload('filefoto'))
            {
                    $gbr = $this->upload->data();
                    $file=$gbr['file_name'];
                    $judul=strip_tags($this->input->post('judul'));
                    $deskripsi=$this->input->post('deskripsi');
                    

                    $this->M_berita->simpan_berita($judul,$deskripsi,$file);
                    echo $this->session->set_flashdata('msg','success');
                    redirect('admin/berita/all_berita_list');
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/berita/all_berita_list');
            }
             
        }else{
            redirect('admin/berita/add');
        }
        
}


    public function all_berita_list()
    {
        $data['berita'] = $this->M_berita->get_all_berita();
        $data['data'] = $this->M_berita->get_all_berita();
        // $data['country'] = $this->common_model->select('country');
        $data['count'] = $this->M_berita->get_berita_total();
        $data['main_content'] = $this->load->view('admin/berita/beritas', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- update users info
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
                $this->common_model->delete_user_role($id, 'user_role');
                foreach ($powers as $value) {
                   $role_data = array(
                        'user_id' => $id,
                        'action' => $value
                    ); 
                   $role_data = $this->security->xss_clean($role_data);
                   $this->common_model->insert($role_data, 'user_role');
                }
            }

            $this->common_model->edit_option($data, $id, 'user');
            $this->session->set_flashdata('msg', 'Information Updated Successfully');
            redirect(base_url('admin/user/all_user_list'));

        }

        $data['user'] = $this->common_model->get_single_user_info($id);
        $data['user_role'] = $this->common_model->get_user_role($id);
        $data['power'] = $this->common_model->select('user_power');
        $data['country'] = $this->common_model->select('country');
        $data['main_content'] = $this->load->view('admin/user/edit_user', $data, TRUE);
        $this->load->view('admin/index', $data);
        
    }

    
    //-- active user
    public function active($id) 
    {
        $data = array(
            'status' => 1
        );
        $data = $this->security->xss_clean($data);
        $this->common_model->update($data, $id,'user');
        $this->session->set_flashdata('msg', 'User active Successfully');
        redirect(base_url('admin/user/all_user_list'));
    }

    //-- deactive user
    public function deactive($id) 
    {
        $data = array(
            'status' => 0
        );
        $data = $this->security->xss_clean($data);
        $this->common_model->update($data, $id,'user');
        $this->session->set_flashdata('msg', 'User deactive Successfully');
        redirect(base_url('admin/user/all_user_list'));
    }

    //-- delete user
    public function delete($id)
    {
        $this->common_model->delete($id,'user'); 
        $this->session->set_flashdata('msg', 'User deleted Successfully');
        redirect(base_url('admin/user/all_user_list'));
    }


    public function power()
    {   
        $data['powers'] = $this->common_model->get_all_power('user_power');
        $data['main_content'] = $this->load->view('admin/user/user_power', $data, TRUE);
        $this->load->view('admin/index', $data);
    }

    //-- add user power
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
                $user_id = $this->common_model->insert($data, 'user_power');
                $this->session->set_flashdata('msg', 'Power added Successfully');
            } else {
                $this->session->set_flashdata('error_msg', 'Power id already exist, try another one');
            }
            redirect(base_url('admin/user/power'));
        }
        
    }

    //--update user power
    public function update_power()
    {   
        if (isset($_POST)) {
            $data = array(
                'name' => $_POST['name']
            );
            $data = $this->security->xss_clean($data);
            
            $this->session->set_flashdata('msg', 'Power updated Successfully');
            $user_id = $this->common_model->edit_option($data, $_POST['id'], 'user_power');
            redirect(base_url('admin/user/power'));
        }
        
    }

    public function delete_power($id)
    {
        $this->common_model->delete($id,'user_power'); 
        $this->session->set_flashdata('msg', 'Power deleted Successfully');
        redirect(base_url('admin/user/power'));
    }

    function tambah_berita(){
         
           
        if (isset($_POST['submit'])){
            $config['upload_path'] = 'asset/foto_berita/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|jpeg';
            $config['max_size'] = '3000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('k');
            $hasil=$this->upload->data();

            $config['source_image'] = 'theme/images/foto_berita/'.$hasil['file_name'];

            if ($this->input->post('j')!=''){
                $tag_seo = $this->input->post('j');
                $tag=implode(',',$tag_seo);
            }else{
                $tag = '';
            }

            $tag = $this->input->post('j');
            $tags = explode(",", $tag);
            $tags2 = array();
            foreach($tags as $t)
            {
            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($this->session->level == 'kontributor'){ $status = 'N'; }else{ $status = 'Y'; } 
            if ($this->session->level == 'kontributor'){ $status2 = 'Y'; }else{ $status2 = 'Y'; }

                $sql = "select * from tag where tag_seo = '" . seo_title($t) . "'";
                $a = $this->db->query($sql)->result_array();
                if(count($a) == 0){
                    $data = array('nama_tag'=>$this->db->escape_str($t),
                            'id_users'=>$this->session->id_users,
                            'tag_seo'=>seo_title($t),
                            'count'=>'0');
                    $this->mojdel_app->insert('tag',$data);
                }
                $tags2[] = seo_title($t);
            }
            $tags = implode(",", $tags2);
            if ($hasil['file_name']==''){
                    $data = array(
                                    'id_users'=>$this->session->id_users,
                                    'judul'=>$this->input->post('b'),
                                    'judul_seo'=>seo_title($this->input->post('b')).date('sHi'),
                                    'isi_berita'=>$this->input->post('h'),
                                    'hari'=>hari_ini(date('w')),
                                    'tanggal'=>date('Y-m-d'),
                                    'jam'=>date('H:i:s'),
                                    'dibaca'=>'0',
                                    'status'=>$status);
            }else{
                    $data = array(
                                    'id_users'=>$this->session->id_users,
                                    'judul'=>$this->input->post('b'),
                                    'judul_seo'=>seo_title($this->input->post('b')).date('sHi'),
                                    'isi_berita'=>$this->input->post('h'),
                                    'hari'=>hari_ini(date('w')),
                                    'tanggal'=>date('Y-m-d'),
                                    'jam'=>date('H:i:s'),
                                    'gambar'=>$hasil['file_name'],
                                    'dibaca'=>'0',
                                    'status'=>$status);
            }
            $this->model_app->insert('tbl_berita',$data);
            redirect('admin/berita');
        }else{
            // $data['get_combo_kategori'] = $this->Kategori_model->get_combo_kategori();
            // $data['tag'] = $this->model_app->view_ordering('tag','id_tag','DESC');
            // // $data['record'] = $this->model_app->view_ordering('kategori','id_kategori','DESC');
            // // $data['record'] = $this->model_app->view_ordering('kategori_dua','id_kategori_dua','DESC');
            //  $data['record'] = $this->model_app->view_ordering('kategori_shita','id_kategori_blog','DESC');
            $data['main_content'] = $this->load->view('admin/berita/add2', TRUE);
        }
    }

}