<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Administrator extends CI_Controller {

    function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
   
  $this->load->model('M_pelatihan');
    /* memanggil function dari masing2 model yang akan digunakan */

  }

  function index(){
    if (isset($_POST['submit'])){
      $id_users = $this->input->post('a');
      $password = hash("sha512", md5($this->input->post('b')));
      $cek = $this->model_app->cek_login($id_users,$password,'users');
        $row = $cek->row_array();
        $total = $cek->num_rows();
      if ($total > 0){
        $this->session->set_userdata('upload_image_file_manager',true);
        $this->session->set_userdata(array('id_users'=>$row['id_users'],
                   'level'=>$row['level'],
                                   'id_session'=>$row['id_session']));

        redirect('admin/administrator/home');
      }else{
        $data['title'] = 'Email atau Password salah!';
        $this->load->view('administrator/view_login',$data);
      }
    }else{
      $data['title'] = 'Administrator &rsaquo; Log In';
      $this->load->view('administrator/view_login',$data);
    }
  }


function home(){
    
      if(!isset($this->session->level))
      {
          redirect(base_url());
          exit;
      }
     
        if ($this->session->level=='admin'){
      $this->template->load('administrator/template','administrator/view_home_admin');
        }else{
          $data['users'] = $this->model_app->view_where('users',array('id_users'=>$this->session->id_users))->row_array();
          $data['modul'] = $this->model_app->view_join_one('users','users_modul','id_session','id_umod','DESC');
          $this->template->load('administrator/template','administrator/view_home_users',$data);
        }
  }

  function manajemenuser(){
      cek_session_akses('manajemenuser',$this->session->id_session);
      $data['record'] = $this->model_app->view_ordering('users','id_users','DESC');
      $this->template->load('administrator/template','administrator/mod_users/view_users',$data);
  }

  function tambah_manajemenuser(){
      cek_session_akses('manajemenuser',$this->session->id_session);
      $id = $this->session->id_users;
      if (isset($_POST['submit'])){
          $config['upload_path'] = 'theme/images/foto_register/profil';
          $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|jpeg';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('f');
          $hasil=$this->upload->data();
          if ($hasil['file_name']==''){
                  $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                  'password'=>hash("sha512", md5($this->input->post('b'))),
                                  'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                  'email'=>$this->db->escape_str($this->input->post('d')),
                                  'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                  'level'=>$this->db->escape_str($this->input->post('g')),
                                  'blokir'=>'N',
                                  'id_session'=>md5($this->input->post('a')).'-'.date('YmdHis'));
          }else{
                  $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                  'password'=>hash("sha512", md5($this->input->post('b'))),
                                  'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                  'email'=>$this->db->escape_str($this->input->post('d')),
                                  'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                  'foto'=>$hasil['file_name'],
                                  'level'=>$this->db->escape_str($this->input->post('g')),
                                  'blokir'=>'N',
                                  'id_session'=>md5($this->input->post('a')).'-'.date('YmdHis'));
          }
          $this->model_app->insert('users',$data);

            $mod=count($this->input->post('modul'));
            $modul=$this->input->post('modul');
            $sess = md5($this->input->post('a')).'-'.date('YmdHis');
            for($i=0;$i<$mod;$i++){
              $datam = array('id_session'=>$sess,
                            'id_modul'=>$modul[$i]);
              $this->model_app->insert('users_modul',$datam);
            }

          // redirect('administrator/edit_manajemenuser/'.$this->input->post('a'));
          redirect('admin/administrator/manajemenuser');
      }else{
          $proses = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
          $data = array('record' => $proses);
          $this->template->load('administrator/template','administrator/mod_users/view_users_tambah',$data);
      }
  }

  function edit_manajemenuser(){
    $id = $this->uri->segment(4);
    if (isset($_POST['submit'])){
      $config['upload_path'] = 'theme/images/foto_register/profil';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
             if ($hasil['file_name']=='' AND empty($this->input->post('b'))){
                    $data = array(
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND empty($this->input->post('b'))){
                    $data = array(
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']=='' AND !empty($this->input->post('b'))){
                    $data = array(
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND !empty($this->input->post('b'))){
                    $data = array(
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }
            $where = array('id_users' => $this->input->post('id'));
            $this->model_app->update('users', $data, $where);

              $mod=count($this->input->post('modul'));
              $modul=$this->input->post('modul');
              for($i=0;$i<$mod;$i++){
                $datam = array('id_session'=>$this->input->post('ids'),
                              'id_modul'=>$modul[$i]);
                $this->model_app->insert('users_modul',$datam);
              }

      redirect('admin/administrator/edit_manajemenuser/'.$this->input->post('id'));
    }else{
            if ($this->session->id_users==$this->uri->segment(4) OR $this->session->level=='admin'){
                $proses = $this->model_app->edit('users', array('id_users' => $id))->row_array();
                $akses = $this->model_app->view_join_where('users_modul','modul','id_modul', array('id_session' => $proses['id_session']),'id_umod','DESC');
                $modul = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
                $data = array('rows' => $proses, 'record' => $modul, 'akses' => $akses);
          $this->template->load('administrator/template','administrator/mod_users/view_users_edit',$data);
            }else{
                redirect('admin/administrator/edit_manajemenuser/'.$this->session->id_users);
            }
    }
  }

 
  
  function edit_manajemenprofile(){
        $id = $this->uri->segment(4);
        if (isset($_POST['submit'])){
            $config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']=='' AND empty($this->input->post('bw'))){
                    $data = array(
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                   
                                );
            }elseif ($hasil['file_name']!='' AND empty($this->input->post('bw'))){
                    $data = array(
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),

                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                   
                                    'foto'=>$hasil['file_name']
                                );
            }elseif ($hasil['file_name']=='' AND !empty($this->input->post('bw'))){
                    $data = array(
                                    'password'=>hash("sha512", md5($this->input->post('bw'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'pesan_singkat'=>$this->input->post('psn')
                                );
            }elseif ($hasil['file_name']!='' AND !empty($this->input->post('bw'))){
                    $data = array(
                                    'password'=>hash("sha512", md5($this->input->post('bw'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'pesan_singkat'=>$this->input->post('psn'),
                                    'foto'=>$hasil['file_name'],
                                );
            }
            $where = array('id_users' => $this->input->post('id'));
            $this->model_app->update('users', $data, $where);

              $mod=count($this->input->post('modul'));
              $modul=$this->input->post('modul');
              for($i=0;$i<$mod;$i++){
                $datam = array('id_session'=>$this->input->post('ids'),
                              'id_modul'=>$modul[$i]);
                $this->model_app->insert('users_modul',$datam);
              }

            redirect('admin/administrator/edit_manajemenprofile/'.$this->input->post('id'));
        }else{
            if ($this->session->id_users==$this->uri->segment(4) OR $this->session->level=='admin'){
                $proses = $this->model_app->edit('users', array('id_users' => $id))->row_array();
                $akses = $this->model_app->view_join_where('users_modul','modul','id_modul', array('id_session' => $proses['id_session']),'id_umod','DESC');
                $modul = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
                $data = array('rows' => $proses, 'record' => $modul, 'akses' => $akses);
                $this->template->load('administrator/template','administrator/mod_users/view_users_edit_profile',$data);
            }else{
                redirect('admin/administrator/edit_manajemenprofile/'.$this->session->id_users);
            }
        }
    }

  function delete_manajemenuser(){
        cek_session_akses('manajemenuser',$this->session->id_session);
    $id = array('id_users' => $this->uri->segment(4));
        $this->model_app->delete('users',$id);
    redirect('admin/administrator/manajemenuser');
  }

    function delete_akses(){
        cek_session_admin();
        $id = array('id_umod' => $this->uri->segment(4));
        $this->model_app->delete('users_modul',$id);
        redirect('admin/administrator/edit_manajemenuser/'.$this->uri->segment(4));
    }

function logout(){
    $this->session->sess_destroy();
    redirect('');
  }

  function sliderlist(){
    $data['record'] = $this->db->query("select * from tbl_slider x join tbl_slider_s y on x.id_slider_s = y.id_slider_s  where id_slider

      ")->result_array();
    $this->template->load('administrator/template','administrator/mod_slider/view_slider',$data);
}

function slider_aktif(){
         $id = array('id_slider' => $this->uri->segment(4));
      $this->db->query("update tbl_slider set id_slider_s = '1'
      where id_slider = '" . $this->uri->segment(4) . "'");


      redirect($_SERVER['HTTP_REFERER']);
    }

      function slider_noaktif(){
         $id = array('id_slider' => $this->uri->segment(4));
      $this->db->query("update tbl_slider set id_slider_s = '2'
      where id_slider = '" . $this->uri->segment(4) . "'")
      ;


      redirect($_SERVER['HTTP_REFERER']);
    }

    function tambah_slider(){
    if (isset($_POST['submit'])){
      $config['upload_path'] = 'theme/images/foto_slider/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
            
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('b')),
                                    'id_slider_s'=>1,
                                    'link'=>$this->db->escape_str($this->input->post('c')));




            }else{
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('c')),
                                    'id_slider_s'=>1,
                                    'foto'=>$hasil['file_name'],
                                    'link'=>$this->db->escape_str($this->input->post('c')));

            }
            $this->model_app->insert('tbl_slider',$data);



      redirect('admin/administrator/sliderlist');
    }else{

        
             $data['record'] = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
      $this->template->load('administrator/template','administrator/mod_slider/view_slider_tambah',$data);
    }
  }

  function edit_slider(){
    $id = $this->uri->segment(4);
    if (isset($_POST['submit'])){
      $config['upload_path'] = 'theme/images/foto_slider/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('b')),
                                    'id_slider_s'=>1,
                                    'link'=>$this->db->escape_str($this->input->post('c')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('b')),
                                    'id_slider_s'=>1,
                                    'foto'=>$hasil['file_name'],
                                    'link'=>$this->db->escape_str($this->input->post('c')));
            }elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('b')),
                                    'id_slider_s'=>1,
                                    'link'=>$this->db->escape_str($this->input->post('c')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
                    $data = array('jdl_1'=>$this->db->escape_str($this->input->post('a')),
                                    'jdl_2'=>$this->db->escape_str($this->input->post('b')),
                                    'id_slider_s'=>1,
                                    'foto'=>$hasil['file_name'],
                                    'link'=>$this->db->escape_str($this->input->post('c')));
            }
            $where = array('id_slider' => $this->input->post('id'));
            $this->model_app->update('tbl_slider', $data, $where);



      redirect('admin/administrator/edit_slider/'.$this->input->post('id'));
    }else{
            if ($this->session->username==$this->uri->segment(4) OR $this->session->level=='admin'){
                $proses = $this->model_app->edit('tbl_slider', array('id_slider' => $id))->row_array();

                $data = array('rows' => $proses);
          $this->template->load('administrator/template','administrator/mod_slider/view_slider_edit',$data);
            }else{

                redirect('admin/administrator/edit_slider/');
            }
    }
  }

  // Controller Modul List Berita

  function listberita(){
    cek_session_akses('listberita',$this->session->id_session);
       if ($this->session->level=='admin'){
           $data['record'] = $this->model_app->view_join_one('tbl_berita','users','id_users','id_berita','DESC');
        }else{
            $data['record'] = $this->model_app->view_where_ordering('tbl_berita',array('id_users'=>$this->session->id_users),'id_berita','DESC');
        }
        $data['rss'] = $this->model_utama->view_join('tbl_berita','users','id_users','id_berita','DESC',0,10);
       
        
    $this->template->load('administrator/template','administrator/mod_berita/view_berita',$data);
  }

  function detailsberita($id){


        $row = $this->M_berita->get_by_id2($id);
    /* melakukan pengecekan data, apabila ada maka akan ditampilkan */
    if ($row)
    {
    /* memanggil function dari masing2 model yang akan digunakan */
    $news = $this->M_berita->get_by_id2($id);
    $data['news']            = $news;
    
    $this->template->load('administrator/template','administrator/mod_berita/view_berita_detail',$data);
 
}
}

 function tambah_listberita(){
    cek_session_akses('listberita',$this->session->id_session);
    if (isset($_POST['submit'])){
      $config['upload_path'] = 'theme/images/berita/';
          $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
          $config['max_size'] = '3000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('k');
          $hasil=$this->upload->data();

            $config['source_image'] = 'theme/images/berita/'.$hasil['file_name'];

            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($this->session->level == 'kontributor'){ $status = 'N'; }else{ $status = 'Y'; } 
            if ($this->session->level == 'kontributor'){ $status2 = 'Y'; }else{ $status2 = 'Y'; }

          
            if ($hasil['file_name']==''){
                    $data = array(
                                    'id_users'=>$this->session->id_users,
                                    'judul'=>$this->input->post('b'),
                                    'judul_seo'=>seo_title($this->input->post('b')).date('sHi'),
                                    
                                    'isi_berita'=>$this->input->post('h'),
                                    
                                    'hari'=>hari_ini(date('w')),
                                    'tanggal'=>date('Y-m-d'),
                                    'jam'=>date('H:i:s'),
                                   
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
                                   
                                    'status'=>$status);
            }
            $this->model_app->insert('tbl_berita',$data);
      redirect('admin/administrator/listberita');
    }else{
              
            
           
      $this->template->load('administrator/template','administrator/mod_berita/view_berita_tambah');
    }
  }

function edit_listberita(){
    cek_session_akses('listberita',$this->session->id_session);
    $id = $this->uri->segment(4);
    if (isset($_POST['submit'])){
      $config['upload_path'] = 'theme/images/berita/';
          $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
          $config['max_size'] = '3000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('k');
          $hasil=$this->upload->data();

            $config['source_image'] = 'theme/images/berita/'.$hasil['file_name'];

            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($this->session->level == 'kontributor'){ $status = 'y'; }else{ $status = 'Y'; }
             
          
            if ($this->session->level == 'kontributor'){ $status2 = 'Y'; }else{ $status2 = 'Y'; }

            if ($hasil['file_name']==''){
                    $data = array(
                                    'judul'=>$this->input->post('b'),
                                    
                                    'isi_berita'=>$this->input->post('h'),
                                    'keterangan_gambar'=>$this->input->post('ket'),
                                  
                                   );
            }else{
                    $data = array(
                                    'judul'=>$this->input->post('b'),
                                   
                                    'isi_berita'=>$this->input->post('h'),
                                    'keterangan_gambar'=>$this->input->post('ket'),
                                    'gambar'=>$hasil['file_name'],
                                    'dibaca'=>'0',
                                   
                                    );
            }
            $where = array('id_berita' => $this->input->post('id'));
      $this->model_app->update('tbl_berita', $data, $where);
      redirect('admin/administrator/listberita');
    }else{
     
            if ($this->session->level=='admin'){
                 $proses = $this->model_app->edit('tbl_berita', array('id_berita' => $id))->row_array();
            }else{
                $proses = $this->model_app->edit('tbl_berita', array('id_berita' => $id, 'id_users' => $this->session->id_users))->row_array();
            }
      $data = array('rows' => $proses);
      $this->template->load('administrator/template','administrator/mod_berita/view_berita_edit',$data);
    }
  }

function publish_listberita(){
        cek_session_akses('publish',$this->session->id_session);
    if ($this->uri->segment(4)=='Y'){
      $data = array('status'=>'N');
    }else{
      $data = array('status'=>'Y');
    }
        $where = array('id_berita' => $this->uri->segment(4));
    $this->model_app->update('tbl_berita', $data, $where);
    redirect($_SERVER['HTTP_REFERER']);
  }

  function delete_listberita(){
        cek_session_akses('listberita',$this->session->id_session);
        if ($this->session->level=='admin'){
        $id = array('id_berita' => $this->uri->segment(4));
        }else{
            $id = array('id_berita' => $this->uri->segment(4), 'id_users'=>$this->session->id_users);
        }
    $this->model_app->delete('tbl_berita',$id);
    redirect('admin/administrator/listberita');
  }


  // Controller Modul List Pelatihan

  function listpelatihan(){
    cek_session_akses('listpelatihan',$this->session->id_session);
       $data['record'] = $this->model_app->view_ordering('tbl_pelatihan','id_pelatihan','DESC');
       
        
    $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan',$data);
  }

  function detailspelatihan($id){

    $row = $this->M_pelatihan->get_by_id2($id);
    /* melakukan pengecekan data, apabila ada maka akan ditampilkan */
    if ($row){
    /* memanggil function dari masing2 model yang akan digunakan */
    $pelatihan = $this->M_pelatihan->get_by_id2($id);
    $data['pelatihan']            = $pelatihan;
     $data['pelatihanbab']            = $this->M_pelatihan->get_by_id3($id);
    $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_detail',$data);
    }
  }

  function add_bab_pelatihan($id)
    {
        $pelatihan = $this->M_pelatihan->get_by_id_add($id);
        $data['pelatihan']            = $pelatihan;






        $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_bab_tambah',$data);
    }

    public function simpan_pelatihan_bab()
     {
        
        $id = $this->input->post('id_pelatihan');
         $pelatihan = $this->M_pelatihan->get_by_id_add($id);
         
             $seo = seo_title($this->input->post('b'));
             
             $data = array(

                    'judul_pelatihan_detail' =>$this->input->post('b'),
                    'id_cerbung' =>$this->input->post('id_cerbung'),
                     'judul_pelatihan_detail_seo'      =>$seo.'-'.date("dmYHis"),
                     'deskripsi_pelatihan_singkat'         =>$this->input->post('c'),
                     'date_time'         => date("Y-m-d"),
                      'download_pdf' =>$this->input->post('download_pdf'),
                      'video' =>$this->input->post('video')
                    

             );

            
             $this->M_pelatihan->insert_bab($data);
 
            
             redirect('admin/administrator/detailspelatihan/' . $id);

     }


  // Modul Pengantar
  function listpengantar(){
    cek_session_akses('listpengantar',$this->session->id_session);
    $data['record'] = $this->model_app->view_ordering('tbl_pengantar','id_pengantar','DESC');
    $this->template->load('administrator/template','administrator/mod_pengantar/view_pengantar',$data);
  }

  function detailspengantar($id){
    $pengantar = $this->M_pengantar->get_by_id($id);
    $data['pengantar'] = $pengantar;
    $this->template->load('administrator/template','administrator/mod_pengantar/view_pengantar_detail',$data);
  }

  function edit_pengantar(){
      cek_session_akses('listpengantar',$this->session->id_session);
      $id = $this->uri->segment(4);
      if (isset($_POST['submit'])){
          $config['upload_path']    = 'theme/images/foto_pengantar/';
          $config['allowed_types']  = 'gif|jpg|png|PNG|JPG|JPEG|jpeg|webp';
          $config['max_size']       = '500'; // kb
          $config['max_width']      = '100';
          $config['max_height']     = '100';
          $this->load->library('upload', $config);
          $this->upload->do_upload('icon_1');
          $hasil=$this->upload->data();
          $this->upload->do_upload('foto_npwp');
          $hasil2=$this->upload->data();
          $this->upload->do_upload('foto_pas');
          $hasil3=$this->upload->data();
          if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''){
              $data = array('judul'=>$this->input->post('judul'),
                          'deskripsi'=>$this->input->post('deskripsi'),
                          'judul_icon_1'=>$this->input->post('judul_icon_1'),
                          'judul_icon_2'=>$this->input->post('judul_icon_2'),
                          'judul_icon_3'=>$this->input->post('judul_icon_3'));
          }else{
              $data = array('judul'=>$this->input->post('judul'),
                          'deskripsi'=>$this->input->post('deskripsi'),
                          'icon_1'=>$this->input->post('icon_1'),
                          'judul_icon_1'=>$this->input->post('judul_icon_1'),
                          'icon_2'=>$this->input->post('icon_2'),
                          'judul_icon_2'=>$this->input->post('judul_icon_2'),
                          'icon_3'=>$this->input->post('icon_3'),
                          'judul_icon_3'=>$this->input->post('judul_icon_3'));
          }
          $where = array('id_pengantar' => $this->input->post('id'));
          $this->model_app->update('tbl_pengantar', $data, $where);
          redirect('admin/administrator/listpengantar');
      }else{
          if ($this->session->level=='admin'){
              $proses = $this->model_app->edit('tbl_pengantar', array('id_pengantar' => $id))->row_array();
          }else{
              $proses = $this->model_app->edit('tbl_pengantar', array('id_pengantar' => $id, 'id_users' => $this->session->id_users))->row_array();
          }
          $data = array('rows' => $proses);
          $this->template->load('administrator/template','administrator/mod_pengantar/view_pengantar_edit',$data);
      }
  }

  function delete_pengantar(){
      cek_session_akses('listpengantar',$this->session->id_session);
      if ($this->session->level=='admin'){
          $id = array('id_pengantar' => $this->uri->segment(4));
      }else{
          $id = array('id_pengantar' => $this->uri->segment(4), 'id_users'=>$this->session->id_users);
      }
      $this->model_app->delete('tbl_pengantar',$id);
      redirect('admin/administrator/pengantar');
  }

  // Modul Member
  function listmember(){
    cek_session_akses('listmember',$this->session->id_session);
    $data['record'] = $this->model_app->view_ordering('tbl_member','id_member','DESC');
    $this->template->load('administrator/template','administrator/mod_member/view_member',$data);
  }

  function detailsmember($id){
    $member = $this->M_member->get_by_id($id);
    $data['member'] = $member;
    $this->template->load('administrator/template','administrator/mod_member/view_member_detail',$data);
  }

  function tambah_member(){
    cek_session_akses('listmember',$this->session->id_session);
    $id = $this->session->id_users;
    if (isset($_POST['submit'])){
          // Foto KTP
          $config['upload_path'] = 'theme/images/foto_users/member/ktp/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('foto_ktp');
          $hasil=$this->upload->data();

          // Foto NPWP
          $config['upload_path'] = 'theme/images/foto_users/member/npwp/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('foto_npwp');
          $hasil2=$this->upload->data();

          // Foto Diri
          $config['upload_path'] = 'theme/images/foto_users/member/foto_diri/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('foto_pas');
          $hasil3=$this->upload->data();

          // Foto SKU
          $config['upload_path'] = 'theme/images/foto_users/member/sku/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('foto_sku');
          $hasil4=$this->upload->data();

          // Foto Partnership Agreement
          $config['upload_path'] = 'theme/images/foto_users/member/partnership/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
          $config['max_size'] = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('partnership_agreement');
          $hasil5=$this->upload->data();

          $this->form_validation->set_rules('email','Email','required');

          if($this->form_validation->run() == FALSE){
              $message = validation_errors();
          }else{
              echo "Form validation oke";
          }

          $no_induk    = $this->m_main->create_no_transaction();

          if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''|$hasil4['file_name']==''|$hasil5['file_name']==''){
              $data_user = array('nama_lengkap'=>$this->input->post('nama'),
                              'no_induk' => $no_induk,
                              'email'=>$this->input->post('email'),
                              'password' => md5($this->input->post('password')),
                              // 'password' => md5('member123'),
                              'blokir'=>'Y',
                              'level'=>'member');
              $data_member = array('nama'=>$this->input->post('nama'),
                              'id_user' => $no_induk,
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
                              'id_user' => $no_induk,
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
                              'foto_npwp'=>$hasil2['file_name'],
                              'foto_pas'=>$hasil3['file_name'],
                              'foto_sku'=>$hasil4['file_name'],
                              'partnership_agreement'=>$hasil5['file_name']);
          }
          
          $result = $this->m_main->checkEmail($email);
          if(empty($result)) {
              $this->m_main->multi_insert_member('users',$data_user,'tbl_member',$data_member);
              $msg = "Data Insert Successfully";
          }else {
              $msg = "Email Already Exists";
          }
          $this->session->set_flashdata('msg', $msg);

          redirect('admin/administrator/listmember');
      }else{
          // $proses = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_member','DESC');
          // $data = array('record' => $proses);
          $this->template->load('administrator/template','administrator/mod_member/view_member_tambah');
      }
  }

  function edit_member(){
      cek_session_akses('listmember',$this->session->id_session);
      $id = $this->uri->segment(4);
      if (isset($_POST['submit'])){
          $config['upload_path']    = 'theme/images/foto_register/member/';
          $config['allowed_types']  = 'gif|jpg|png|PNG|JPG|JPEG|jpeg|webp|pdf|PDF';
          $config['max_size']       = '1000'; // kb
          $this->load->library('upload', $config);
          $this->upload->do_upload('icon_1');
          $hasil=$this->upload->data();
          $this->upload->do_upload('foto_npwp');
          $hasil2=$this->upload->data();
          $this->upload->do_upload('foto_pas');
          $hasil3=$this->upload->data();
          if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''){
              $data = array('judul'=>$this->input->post('judul'),
                          'deskripsi'=>$this->input->post('deskripsi'),
                          'judul_icon_1'=>$this->input->post('judul_icon_1'),
                          'judul_icon_2'=>$this->input->post('judul_icon_2'),
                          'judul_icon_3'=>$this->input->post('judul_icon_3'));
          }else{
              $data = array('judul'=>$this->input->post('judul'),
                          'deskripsi'=>$this->input->post('deskripsi'),
                          'icon_1'=>$this->input->post('icon_1'),
                          'judul_icon_1'=>$this->input->post('judul_icon_1'),
                          'icon_2'=>$this->input->post('icon_2'),
                          'judul_icon_2'=>$this->input->post('judul_icon_2'),
                          'icon_3'=>$this->input->post('icon_3'),
                          'judul_icon_3'=>$this->input->post('judul_icon_3'));
          }
          $where = array('id_member' => $this->input->post('id'));
          $this->model_app->update('tbl_member', $data, $where);
          redirect('admin/administrator/listmember');
      }else{
          if ($this->session->level=='admin'){
              $proses = $this->model_app->edit('tbl_member', array('id_member' => $id))->row_array();
          }else{
              $proses = $this->model_app->edit('tbl_member', array('id_member' => $id, 'id_users' => $this->session->id_users))->row_array();
          }
          $data = array('rows' => $proses);
          $this->template->load('administrator/template','administrator/mod_member/view_member_edit',$data);
      }
  }

  function delete_member(){
      cek_session_akses('listmember',$this->session->id_session);
      if ($this->session->level=='admin'){
          $id = array('id_member' => $this->uri->segment(4));
      }else{
          $id = array('id_member' => $this->uri->segment(4), 'id_users'=>$this->session->id_users);
      }
      $this->model_app->delete('tbl_member',$id);
      redirect('admin/administrator/member');
  }

}