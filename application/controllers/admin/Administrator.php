<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Administrator extends CI_Controller {

    function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */

    $this->load->model('M_pelatihan');
    $this->load->model('M_ekonomi');
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
  function logout(){
      $this->session->sess_destroy();
      redirect('');
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
              $config['upload_path'] = 'theme/images/foto_register/profil/';
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
      cek_session_akses ('manajemenuser',$this->session->id_session);
      $id = $this->uri->segment(4);
      $_id = $this->db->get_where('users',['id_users' => $id])->row();
       $query = $this->db->delete('users',['id_users'=>$id]);
      if($query){
               unlink("./theme/images/foto_register/profil/".$_id->foto);
     }
     redirect('admin/administrator/manajemenuser');


    }
  function delete_akses(){
          cek_session_admin();
          $id = array('id_umod' => $this->uri->segment(4));
          $this->model_app->delete('users_modul',$id);
          redirect('admin/administrator/edit_manajemenuser/'.$this->uri->segment(4));
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
  function pelatihan_tambah(){
    $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_tambah');
  }
  function pelatihan_simpan(){
      if (isset($_POST['submit'])){
              $config['upload_path'] = 'theme/images/foto_pelatihan/';
              $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
              $config['max_size'] = '5000'; // kb
              $this->load->library('upload', $config);
              $this->upload->do_upload('foto');
              $hasil=$this->upload->data();
              if ($hasil['file_name']==''){
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                        'judul_pelatihan'=>$this->db->escape_str($this->input->post('judul_pelatihan')),
                                      'deskripsi_singkat'=>$this->db->escape_str($this->input->post('deskripsi_singkat')),
                                      'deskirpsi_full'=>$this->db->escape_str($this->input->post('deskirpsi_full')));
              }else{
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                        'judul_pelatihan'=>$this->db->escape_str($this->input->post('judul_pelatihan')),
                                      'deskripsi_singkat'=>$this->db->escape_str($this->input->post('deskripsi_singkat')),
                                      'deskirpsi_full'=>$this->db->escape_str($this->input->post('deskirpsi_full')),
                                      'foto'=>$hasil['file_name']);
              }
              $this->model_app->insert('tbl_pelatihan',$data);
        redirect('admin/administrator/listpelatihan');
      }else{
        $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_tambah',$data);
      }
  }
  function pelatihan_edit(){
      $id = $this->uri->segment(4);
      if (isset($_POST['submit'])){
              $config['upload_path'] = 'theme/images/foto_pelatihan/';
              $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
              $config['max_size'] = '5000'; // kb
              $this->load->library('upload', $config);
              $this->upload->do_upload('foto');
              $hasil=$this->upload->data();
              if ($hasil['file_name']==''){
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                      'judul_pelatihan'=>$this->db->escape_str($this->input->post('judul_pelatihan')),
                      'deskripsi_singkat'=>$this->input->post('deskripsi_singkat_pelatihan'),
                      'deskirpsi_full'=>$this->input->post('deskirpsi_full_pelatihan'));
                      $where = array('id_pelatihan' => $this->input->post('id'));
											$this->db->update('tbl_pelatihan', $data, $where);
              }else{
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                      'judul_pelatihan'=>$this->db->escape_str($this->input->post('judul_pelatihan')),
                      'deskripsi_singkat'=>$this->input->post('deskripsi_singkat_pelatihan'),
                      'deskirpsi_full'=>$this->input->post('deskirpsi_full_pelatihan'),
                      'foto'=>$hasil['file_name']);
                      $where = array('id_pelatihan' => $this->input->post('id'));
											$_image = $this->db->get_where('tbl_pelatihan',$where)->row();
											$query = $this->db->update('tbl_pelatihan',$data,$where);
											if($query){
												unlink("theme/images/foto_pelatihan/".$_image->foto);
											}
              }
              redirect('admin/administrator/listpelatihan/');
          }else{
              if ($this->session->level=='admin'){
                  $proses = $this->model_app->edit('tbl_pelatihan', array('id_pelatihan' => $id))->row_array();
              }else{
                  $proses = $this->model_app->edit('tbl_pelatihan', array('id_pelatihan' => $id, 'id_users' => $this->session->id_users))->row_array();
              }
              $data = array('rows' => $proses);
              $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_edit',$data);
              }
  }
  function pelatihan_hapus(){

			$id = $this->uri->segment(4);
			$_id = $this->db->get_where('tbl_pelatihan',['id_pelatihan' => $id])->row();
			$query = $this->db->delete('tbl_pelatihan',['id_pelatihan'=> $id]);
			if($query){
							 unlink("./theme/images/foto_pelatihan/".$_id->foto);
		 }
		redirect('admin/administrator/listpelatihan/');
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
  function add_bab_pelatihan($id){
      $pelatihan = $this->M_pelatihan->get_by_id_add($id);
      $data['pelatihan']            = $pelatihan;
      $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_bab_tambah',$data);
  }
  function simpan_pelatihan_bab(){
      if (isset($_POST['submit'])){
        $id = $this->input->post('id_pelatihan');
        $pelatihan = $this->M_pelatihan->get_by_id_add($id);
        $seo = seo_title($this->input->post('judul_pelatihan_detail'));

        $config['upload_path']    = 'theme/images/foto_pelatihan/pelatihan_detail/';
        $config['allowed_types']  = 'jpg|png|JPG|JPEG|jpeg|PDF|pdf|webp';
        $config['max_size']       = '5000'; // kb
        $this->load->library('upload', $config);
        $this->upload->do_upload('gambar');
        $hasil=$this->upload->data();
        $this->upload->do_upload('download_pdf');
        $hasil2=$this->upload->data();

        $data = array('id_pelatihan' =>$id,
                    'judul_pelatihan_detail' =>$this->input->post('judul_pelatihan_detail'),
                    'judul_pelatihan_detail_seo' =>$seo.'-'.date("dmYHis"),
                    'deskripsi_pelatihan_singkat' =>$this->input->post('deskripsi_pelatihan_singkat'),
                    'gambar'=>$hasil['file_name'],
                    'date_time' => date("Y-m-d"),
                    'download_pdf' =>$hasil2['file_name'],
                    'video' =>$this->input->post('video'));

        $this->M_pelatihan->insert_bab($data);
        redirect('admin/administrator/detailspelatihan/' . $id);
      }else{
        $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_bab_tambah');
      }
  }
  function pelatihan_bab_hapus(){

      $id = $this->uri->segment(4);
      $_id = $this->db->get_where('tbl_pelatihan_detail',['id_pelatihan_detail' => $id])->row();
      $query = $this->db->delete('tbl_pelatihan_detail',['id_pelatihan_detail'=> $id]);
      if($query){
               unlink("./theme/images/foto_pelatihan/".$_id->gambar);
     }
    redirect('admin/administrator/listpelatihan/');
  }
  function pelatihan_bab_edit(){
    $id = $this->uri->segment(4);
    if (isset($_POST['submit'])){
            $config['upload_path'] = 'theme/images/foto_pelatihan/pelatihan_detail/';
            $config['allowed_types']  = 'jpg|png|JPG|JPEG|jpeg|PDF|pdf|webp';
            $config['max_size']       = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('gambar');
            $hasil=$this->upload->data();
            $this->upload->do_upload('download_pdf');
            $hasil2=$this->upload->data();
            if ($hasil['file_name']=='' AND $hasil2['file_name']==''){
                    $data = array(
                    'judul_pelatihan_detail' =>$this->input->post('judul_pelatihan_detail'),
                    'judul_pelatihan_detail_seo' =>seo_title($this->input->post('judul_pelatihan_detail')),
                    'deskripsi_pelatihan_singkat' =>$this->input->post('deskripsi_pelatihan_singkat'),
                    'date_time' => date("Y-m-d"));
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $this->db->update('tbl_pelatihan_detail', $data, $where);
            }else if($hasil['file_name']==''){
                    $data = array(
                    'judul_pelatihan_detail' =>$this->input->post('judul_pelatihan_detail'),
                    'judul_pelatihan_detail_seo' =>seo_title($this->input->post('judul_pelatihan_detail')),
                    'deskripsi_pelatihan_singkat' =>$this->input->post('deskripsi_pelatihan_singkat'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'download_pdf'=>$hasil2['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_pelatihan_detail',$where)->row();
                    $query = $this->db->update('tbl_pelatihan_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_pelatihan/pelatihan_detail/".$_image->download_pdf);
                    }
            }else if($hasil2['file_name']==''){
                    $data = array(
                    'judul_pelatihan_detail' =>$this->input->post('judul_pelatihan_detail'),
                    'judul_pelatihan_detail_seo' =>seo_title($this->input->post('judul_pelatihan_detail')),
                    'deskripsi_pelatihan_singkat' =>$this->input->post('deskripsi_pelatihan_singkat'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'gambar'=>$hasil['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_pelatihan_detail',$where)->row();
                    $query = $this->db->update('tbl_pelatihan_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_pelatihan/pelatihan_detail/".$_image->gambar);
                    }
            }else{
                    $data = array(
                    'judul_pelatihan_detail' =>$this->input->post('judul_pelatihan_detail'),
                    'judul_pelatihan_detail_seo' =>seo_title($this->input->post('judul_pelatihan_detail')),
                    'deskripsi_pelatihan_singkat' =>$this->input->post('deskripsi_pelatihan_singkat'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'gambar'=>$hasil['file_name'],
                    'download_pdf'=>$hasil2['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_pelatihan_detail',$where)->row();
                    $query = $this->db->update('tbl_pelatihan_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_pelatihan/pelatihan_detail/".$_image->gambar);
                      unlink("theme/images/foto_pelatihan/pelatihan_detail/".$_image->download_pdf);
                    }
            }
            redirect('admin/administrator/listpelatihan/');
        }else{
            if ($this->session->level=='admin'){
                $proses = $this->model_app->edit('tbl_pelatihan_detail', array('id_pelatihan_detail' => $id))->row_array();
            }else{
                $proses = $this->model_app->edit('tbl_pelatihan_detail', array('id_pelatihan_detail' => $id, 'id_users' => $this->session->id_users))->row_array();
            }
            $data = array('rows' => $proses);
            $this->template->load('administrator/template','administrator/mod_pelatihan/view_pelatihan_bab_edit',$data);
            }

  }

  function eo_list(){
      cek_session_akses('eo_list',$this->session->id_session);
         $data['record'] = $this->model_app->view_ordering('tbl_ekonomi_outlook','id_eo','DESC');


      $this->template->load('administrator/template','administrator/mod_eo/view_list',$data);
  }
  function eo_tambah(){
    $this->template->load('administrator/template','administrator/mod_eo/view_tambah');
  }
  function eo_simpan(){
      if (isset($_POST['submit'])){
              $config['upload_path'] = 'theme/images/foto_ekonomi/';
              $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
              $config['max_size'] = '5000'; // kb
              $this->load->library('upload', $config);
              $this->upload->do_upload('foto');
              $hasil=$this->upload->data();
              if ($hasil['file_name']==''){
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                        'judul_eo'=>$this->db->escape_str($this->input->post('judul_eo')),
                                      'deskripsi_eo'=>$this->input->post('deskripsi_eo'));
              }else{
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                        'judul_eo'=>$this->db->escape_str($this->input->post('judul_eo')),
                                      'deskripsi_eo'=>$this->input->post('deskripsi_eo'),
                                      'foto_eo'=>$hasil['file_name']);
              }
              $this->model_app->insert('tbl_ekonomi_outlook',$data);
        redirect('admin/administrator/eo_list');
      }else{
        $this->template->load('administrator/template','administrator/mod_eo/view_tambah',$data);
      }
  }
  function eo_edit(){
      $id = $this->uri->segment(4);
      if (isset($_POST['submit'])){
              $config['upload_path'] = 'theme/images/foto_ekonomi/';
              $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
              $config['max_size'] = '5000'; // kb
              $this->load->library('upload', $config);
              $this->upload->do_upload('foto');
              $hasil=$this->upload->data();
              if ($hasil['file_name']==''){
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                      'judul_eo'=>$this->db->escape_str($this->input->post('judul_eo')),
                      'deskripsi_eo'=>$this->input->post('deskripsi_eo'));
                      $where = array('id_eo' => $this->input->post('id'));
                      $this->db->update('tbl_ekonomi_outlook', $data, $where);
              }else{
                      $data = array('id_users'=>$this->session->id_users,
                      'date_time'=>date('Y-m-d'),
                      'judul_eo'=>$this->db->escape_str($this->input->post('judul_eo')),
                      'deskripsi_eo'=>$this->input->post('deskripsi_eo'),
                      'foto'=>$hasil['file_name']);
                      $where = array('id_pelatihan' => $this->input->post('id'));
                      $_image = $this->db->get_where('tbl_ekonomi_outlook',$where)->row();
                      $query = $this->db->update('tbl_ekonomi_outlook',$data,$where);
                      if($query){
                        unlink("theme/images/foto_ekonomi/".$_image->foto_eo);
                      }
              }
              redirect('admin/administrator/eo_list/');
          }else{
              if ($this->session->level=='admin'){
                  $proses = $this->model_app->edit('tbl_ekonomi_outlook', array('id_eo' => $id))->row_array();
              }else{
                  $proses = $this->model_app->edit('tbl_ekonomi_outlook', array('id_eo' => $id, 'id_users' => $this->session->id_users))->row_array();
              }
              $data = array('rows' => $proses);
              $this->template->load('administrator/template','administrator/mod_eo/view_edit',$data);
              }
  }
  function eo_hapus(){

      $id = $this->uri->segment(4);
      $_id = $this->db->get_where('tbl_ekonomi_outlook',['id_eo' => $id])->row();
      $query = $this->db->delete('tbl_ekonomi_outlook',['id_eo'=> $id]);
      if($query){
               unlink("./theme/images/foto_ekonomi/".$_id->foto);
     }
    redirect('admin/administrator/eo_list/');
  }
  function eo_detail($id){

      $row = $this->M_ekonomi->get_by_id2($id);
      /* melakukan pengecekan data, apabila ada maka akan ditampilkan */
      if ($row){
      /* memanggil function dari masing2 model yang akan digunakan */
      $eo = $this->M_ekonomi->get_by_id2($id);
      $data['eo']            = $eo;
       $data['eobab']            = $this->M_ekonomi->get_by_id3($id);
      $this->template->load('administrator/template','administrator/mod_eo/view_detail',$data);
      }
  }

  function add_bab_eo($id){
      $eo = $this->M_ekonomi->get_by_id_add($id);
      $data['eo']            = $eo;
      $this->template->load('administrator/template','administrator/mod_eo/view_eo_bab_tambah',$data);
  }
  function simpan_bab_eo(){
      if (isset($_POST['submit'])){
        $id = $this->input->post('id_eo');
        $pelatihan = $this->M_ekonomi->get_by_id_add($id);
        $seo = seo_title($this->input->post('judul_eo_detail'));

        $config['upload_path']    = 'theme/images/foto_ekonomi/ekonomi_detail/';
        $config['allowed_types']  = 'jpg|png|JPG|JPEG|jpeg|PDF|pdf|webp';
        $config['max_size']       = '5000'; // kb
        $this->load->library('upload', $config);
        $this->upload->do_upload('gambar');
        $hasil=$this->upload->data();
        $this->upload->do_upload('download_pdf');
        $hasil2=$this->upload->data();

        $data = array('id_eo' =>$id,
                    'judul_eo_detail' =>$this->input->post('judul_eo_detail'),
                    'judul_eo_detail_seo' =>$seo.'-'.date("dmYHis"),
                    'deskripsi_eo_detail' =>$this->input->post('deskripsi_eo_detail'),
                    'gambar'=>$hasil['file_name'],
                    'date_time' => date("Y-m-d"),
                    'download_pdf' =>$hasil2['file_name'],
                    'video' =>$this->input->post('video'));

        $this->M_ekonomi->insert_bab($data);
        redirect('admin/administrator/eo_detail/' . $id);
      }else{
        $this->template->load('administrator/template','administrator/mod_eo/view_eo_bab_tambah');
      }
  }
  function eo_bab_hapus(){

      $id = $this->uri->segment(4);
      $_id = $this->db->get_where('tbl_ekonomi_outlook_detail',['id_eo_detail' => $id])->row();
      $query = $this->db->delete('tbl_ekonomi_outlook_detail',['id_eo_detail'=> $id]);
      if($query){
               unlink("./theme/images/foto_ekonomi/ekonomi_detail/".$_id->gambar);
     }
    redirect('admin/administrator/eo_list/');
  }
  function eo_bab_edit(){
    $id = $this->uri->segment(4);
    if (isset($_POST['submit'])){
            $config['upload_path'] = 'theme/images/foto_ekonomi/ekonomi_detail/';
            $config['allowed_types']  = 'jpg|png|JPG|JPEG|jpeg|PDF|pdf|webp';
            $config['max_size']       = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('gambar');
            $hasil=$this->upload->data();
            $this->upload->do_upload('download_pdf');
            $hasil2=$this->upload->data();
            if ($hasil['file_name']=='' AND $hasil2['file_name']==''){
                    $data = array(
                    'judul_eo_detail' =>$this->input->post('judul_eo_detail'),
                    'judul_eo_detail_seo' =>seo_title($this->input->post('judul_eo_detail_seo')),
                    'deskripsi_eo_detail' =>$this->input->post('deskripsi_eo_detail'),
                    'date_time' => date("Y-m-d"));
                    $where = array('id_eo_detail' => $this->input->post('id'));
                    $this->db->update('tbl_ekonomi_outlook_detail', $data, $where);
            }else if($hasil['file_name']==''){
                    $data = array(
                      'judul_eo_detail' =>$this->input->post('judul_eo_detail'),
                      'judul_eo_detail_seo' =>seo_title($this->input->post('judul_eo_detail_seo')),
                      'deskripsi_eo_detail' =>$this->input->post('deskripsi_eo_detail'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'download_pdf'=>$hasil2['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_ekonomi_outlook_detail',$where)->row();
                    $query = $this->db->update('tbl_ekonomi_outlook_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_ekonomi/ekonomi_detail/".$_image->download_pdf);
                    }
            }else if($hasil2['file_name']==''){
                    $data = array(
                      'judul_eo_detail' =>$this->input->post('judul_eo_detail'),
                      'judul_eo_detail_seo' =>seo_title($this->input->post('judul_eo_detail_seo')),
                      'deskripsi_eo_detail' =>$this->input->post('deskripsi_eo_detail'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'gambar'=>$hasil['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_ekonomi_outlook_detail',$where)->row();
                    $query = $this->db->update('tbl_ekonomi_outlook_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_ekonomi/ekonomi_detail/".$_image->gambar);
                    }
            }else{
                    $data = array(
                      'judul_eo_detail' =>$this->input->post('judul_eo_detail'),
                      'judul_eo_detail_seo' =>seo_title($this->input->post('judul_eo_detail_seo')),
                      'deskripsi_eo_detail' =>$this->input->post('deskripsi_eo_detail'),
                    'download_pdf'=>$hasil2['file_name'],
                    'date_time' => date("Y-m-d"),
                    'gambar'=>$hasil['file_name'],
                    'download_pdf'=>$hasil2['file_name']);
                    $where = array('id_pelatihan_detail' => $this->input->post('id'));
                    $_image = $this->db->get_where('tbl_ekonomi_outlook_detail',$where)->row();
                    $query = $this->db->update('tbl_ekonomi_outlook_detail',$data,$where);
                    if($query){
                      unlink("theme/images/foto_ekonomi/ekonomi_detail/".$_image->gambar);
                      unlink("theme/images/foto_ekonomi/ekonomi_detail/".$_image->download_pdf);
                    }
            }
            redirect('admin/administrator/eo_list/');
        }else{
            if ($this->session->level=='admin'){
                $proses = $this->model_app->edit('tbl_ekonomi_outlook_detail', array('id_eo_detail' => $id))->row_array();
            }else{
                $proses = $this->model_app->edit('tbl_ekonomi_outlook_detail', array('id_eo_detail' => $id, 'id_users' => $this->session->id_users))->row_array();
            }
            $data = array('rows' => $proses);
            $this->template->load('administrator/template','administrator/mod_eo/view_eo_bab_edit',$data);
            }

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
          $this->upload->do_upload('icon_2');
          $hasil2=$this->upload->data();
          $this->upload->do_upload('icon_3');
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
                          'icon_1'=>$hasil['file_name'],
                          'judul_icon_1'=>$this->input->post('judul_icon_1'),
                          'icon_2'=>$hasil2['file_name'],
                          'judul_icon_2'=>$this->input->post('judul_icon_2'),
                          'icon_3'=>$hasil3['file_name'],
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
    $data['record'] = $this->model_app->view_where_ordering('tbl_member',array('id_status' => '1'),'id_member','DESC');
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
          $config['upload_path'] = 'theme/images/foto_users/member/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
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
                              'password' => hash("sha512", md5($this->input->post('password'))),
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
                              'password' => hash("sha512", md5($this->input->post('password'))),
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
          $config['upload_path'] = 'theme/images/foto_users/member/';
          $config['allowed_types'] = 'jpg|png|JPG|JPEG|jpeg|pdf|PDF';
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

          if ($hasil['file_name']==''|$hasil2['file_name']==''|$hasil3['file_name']==''|$hasil4['file_name']==''|$hasil5['file_name']==''){
              $data = array('nama'=>$this->input->post('nama'),
                              'alamat'=>$this->input->post('alamat'),
                              'no_hp'=>$this->input->post('no_hp'),
                              'pend_terakhir'=>$this->input->post('pend_terakhir'),
                              'pekerjaan'=>$this->input->post('pekerjaan'),
                              'usaha_diminati'=>$this->input->post('usaha_diminati'));
          }else{
              $data = array('nama'=>$this->input->post('nama'),
                              'alamat'=>$this->input->post('alamat'),
                              'no_hp'=>$this->input->post('no_hp'),
                              'pend_terakhir'=>$this->input->post('pend_terakhir'),
                              'pekerjaan'=>$this->input->post('pekerjaan'),
                              'usaha_diminati'=>$this->input->post('usaha_diminati'),
                              'foto_ktp'=>$hasil['file_name'],
                              'foto_npwp'=>$hasil2['file_name'],
                              'foto_pas'=>$hasil3['file_name'],
                              'foto_sku'=>$hasil4['file_name'],
                              'partnership_agreement'=>$hasil5['file_name']);
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
    $id = array('id_member' => $this->uri->segment(4));
    $data = array('id_status' => '0');
    // $this->model_app->delete('tbl_member',$id);
    $this->M_member->deactive_data($id,$data);
    redirect('admin/administrator/listmember');
  }
}
