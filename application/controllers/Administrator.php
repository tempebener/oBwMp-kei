<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Administrator extends CI_Controller {
	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
$this->load->helper('dropdown');
$this->load->helper('format_all');
$this->load->model('Model_purchase');
    /* memanggil function dari masing2 model yang akan digunakan */

  }


  function index(){
  		if (isset($_POST['submit'])){
  			$username = $this->input->post('a');
  			$password = hash("sha512", md5($this->input->post('b')));
  			$cek = $this->model_app->cek_login($username,$password,'users');
  		    $row = $cek->row_array();
  		    $total = $cek->num_rows();
  			if ($total > 0){
  				$this->session->set_userdata('upload_image_file_manager',true);
  				$this->session->set_userdata(array('username'=>$row['username'],
  								   'level'=>$row['level'],
                                     'id_session'=>$row['id_session']));

  				redirect('administrator/home');
  			}else{
  				$data['title'] = 'Username atau Password salah!';
  				$this->load->view('administrator/view_login',$data);
  			}
  		}else{
  			$data['title'] = 'Administrator &rsaquo; Log In';
  			$this->load->view('administrator/view_login',$data);
  		}
  	}
    function home(){
        if ($this->session->level=='admin'){
      $this->template->load('administrator/template','administrator/view_home');
        }else{
          $data['users'] = $this->model_app->view_where('users',array('username'=>$this->session->username))->row_array();
          $data['modul'] = $this->model_app->view_join_one('users','users_modul','id_session','id_umod','DESC');
          $this->template->load('administrator/template','administrator/view_home_users',$data);
        }
  }

  function manajemenuser(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('users','username','level_users','nama_level','DESC');
		$this->template->load('administrator/template','administrator/mod_users/view_users',$data);
	}

	function tambah_manajemenuser(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$id = $this->session->username;
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
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
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
                                    'level'=>$this->db->escape_str($this->input->post('g')),

                                    'blokir'=>'N',
                                    'id_session'=>md5($this->input->post('a')).'-'.date('YmdHis'));
            }else{
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
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

			redirect('administrator/manajemenuser');
		}else{

				$data['asu'] = $this->model_app->view_ordering('level_users','id_level','DESC');
             $data['record'] = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
			$this->template->load('administrator/template','administrator/mod_users/view_users_tambah',$data);
		}
	}

	function edit_manajemenuser(){
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
																		'alamat'=>$this->db->escape_str($this->input->post('z')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }
            $where = array('username' => $this->input->post('id'));
            $this->model_app->update('users', $data, $where);

              $mod=count($this->input->post('modul'));
              $modul=$this->input->post('modul');
              for($i=0;$i<$mod;$i++){
                $datam = array('id_session'=>$this->input->post('ids'),
                              'id_modul'=>$modul[$i]);
                $this->model_app->insert('users_modul',$datam);
              }

			redirect('administrator/edit_manajemenuser/'.$this->input->post('id'));
		}else{
            if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
                $proses = $this->model_app->edit('users', array('username' => $id))->row_array();
                $akses = $this->model_app->view_join_where('users_modul','modul','id_modul', array('id_session' => $proses['id_session']),'id_umod','DESC');
                $modul = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
                $data = array('rows' => $proses, 'record' => $modul, 'akses' => $akses);
    			$this->template->load('administrator/template','administrator/mod_users/view_users_edit',$data);
            }else{

                redirect('administrator/edit_manajemenuser/'.$this->session->username);
            }
		}
	}

	function delete_manajemenuser(){
        cek_session_akses('manajemenuser',$this->session->id_session);
		$id = array('username' => $this->uri->segment(3));
        $this->model_app->delete('users',$id);
		redirect('administrator/manajemenuser');
	}

    function delete_akses(){
        cek_session_admin();
        $id = array('id_umod' => $this->uri->segment(3));
        $this->model_app->delete('users_modul',$id);
        redirect('administrator/edit_manajemenuser/'.$this->uri->segment(4));
    }


  function logout(){
    $this->session->sess_destroy();
    redirect('');
  }

	function sliderlist(){
		$data['record'] = $this->db->query("select * from slider x join slider_s y on x.id_slider_s = y.id_slider_s  where id_slider

			")->result_array();
		$this->template->load('administrator/template','administrator/mod_slider/view_slider',$data);
	}
	function tambah_slider(){
		cek_session_akses('slider',$this->session->id_session);
		$id = $this->session->username;
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_slider/';
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
																		'jdl_2'=>$this->db->escape_str($this->input->post('b')),
																		'id_slider_s'=>1,
																		'foto'=>$hasil['file_name'],
																		'link'=>$this->db->escape_str($this->input->post('c')));

						}
						$this->model_app->insert('slider',$data);



			redirect('administrator/sliderlist');
		}else{

				$data['asu'] = $this->model_app->view_ordering('level_users','id_level','DESC');
						 $data['record'] = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
			$this->template->load('administrator/template','administrator/mod_slider/view_slider_tambah',$data);
		}
	}
	function edit_slider(){
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_slider/';
						$config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
						$config['max_size'] = '500000'; // kb
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
						$this->model_app->update('slider', $data, $where);



			redirect('administrator/edit_slider/'.$this->input->post('id'));
		}else{
						if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
								$proses = $this->model_app->edit('slider', array('id_slider' => $id))->row_array();

								$data = array('rows' => $proses);
					$this->template->load('administrator/template','administrator/mod_slider/view_slider_edit',$data);
						}else{

								redirect('administrator/edit_slider/');
						}
		}
	}

	function slider_aktif(){
	       $id = array('id_slider' => $this->uri->segment(3));
		  $this->db->query("update slider set id_slider_s = '1'
		  where id_slider = '" . $this->uri->segment(3) . "'");


			redirect($_SERVER['HTTP_REFERER']);
		}

			function slider_noaktif(){
	       $id = array('id_slider' => $this->uri->segment(3));
		  $this->db->query("update slider set id_slider_s = '2'
		  where id_slider = '" . $this->uri->segment(3) . "'")
		  ;


			redirect($_SERVER['HTTP_REFERER']);
		}

		function edit_about(){
			$id = $this->uri->segment(3);
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_about/';
							$config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
							$config['max_size'] = '5000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
											$data = array('jdl_about_1'=>$this->db->escape_str($this->input->post('a')),
																			'jdl_about_2'=>$this->db->escape_str($this->input->post('b')),
																			'description'=>$this->input->post('c'));
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
											$data = array('jdl_about_1'=>$this->db->escape_str($this->input->post('a')),
																			'jdl_about_2'=>$this->db->escape_str($this->input->post('b')),
																			'foto'=>$hasil['file_name'],
																			'description'=>$this->input->post('c'));
							}elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
											$data = array('jdl_about_1'=>$this->db->escape_str($this->input->post('a')),
																			'jdl_about_2'=>$this->db->escape_str($this->input->post('b')),
																			'description'=>$this->input->post('c'));
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
											$data = array('jdl_about_1'=>$this->db->escape_str($this->input->post('a')),
																			'jdl_about_2'=>$this->db->escape_str($this->input->post('b')),
																			'foto'=>$hasil['file_name'],
																			'description'=>$this->input->post('c'));
							}
							$where = array('id_about' => $this->input->post('id'));
							$this->model_app->update('about', $data, $where);



				redirect('administrator/edit_about/'.$this->input->post('id'));
			}else{
							if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
									$proses = $this->model_app->edit('about', array('id_about' => $id))->row_array();

									$data = array('rows' => $proses);
						$this->template->load('administrator/template','administrator/mod_about/view_about_edit',$data);
							}else{

									redirect('administrator/edit_about/');
							}
			}
		}
		function edit_support(){
			$id = $this->uri->segment(3);
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_support/';
							$config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
							$config['max_size'] = '5000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']=='' AND $this->input->post('v') ==''){
											$data = array('judul_support'=>$this->db->escape_str($this->input->post('a')),
																			'deskripsi_support'=>$this->input->post('b'),
																			'lokasi'=>$this->db->escape_str($this->input->post('c')),
																			'telepone'=>$this->db->escape_str($this->input->post('d')),
																			'handpone'=>$this->db->escape_str($this->input->post('e')),
																			'peta'=>$this->db->escape_str($this->input->post('g'))
																			);
							}elseif ($hasil['file_name']!='' AND $this->input->post('v') ==''){
											$data = array('judul_support'=>$this->db->escape_str($this->input->post('a')),
																			'deskripsi_support'=>$this->input->post('b'),
																			'lokasi'=>$this->db->escape_str($this->input->post('c')),
																			'telepone'=>$this->db->escape_str($this->input->post('d')),
																			'handpone'=>$this->db->escape_str($this->input->post('e')),
																			'peta'=>$this->db->escape_str($this->input->post('g')),
																			'foto'=>$hasil['file_name']
																			);
							}elseif ($hasil['file_name']=='' AND $this->input->post('v') !=''){
											$data = array('judul_support'=>$this->db->escape_str($this->input->post('a')),
																			'deskripsi_support'=>$this->input->post('b'),
																			'lokasi'=>$this->db->escape_str($this->input->post('c')),
																			'telepone'=>$this->db->escape_str($this->input->post('d')),
																			'handpone'=>$this->db->escape_str($this->input->post('e')),
																			'peta'=>$this->db->escape_str($this->input->post('g'))
																		);
							}elseif ($hasil['file_name']!='' AND $this->input->post('v') !=''){
											$data = array('judul_support'=>$this->db->escape_str($this->input->post('a')),
																			'deskripsi_support'=>$this->input->post('b'),
																			'lokasi'=>$this->db->escape_str($this->input->post('c')),
																			'telepone'=>$this->db->escape_str($this->input->post('d')),
																			'handpone'=>$this->db->escape_str($this->input->post('e')),
																			'peta'=>$this->db->escape_str($this->input->post('g')),
																			'foto'=>$hasil['file_name']
																			);
							}
							$where = array('id_support' => $this->input->post('id'));
							$this->model_app->update('support', $data, $where);



				redirect('administrator/edit_support/'.$this->input->post('id'));
			}else{
							if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
									$proses = $this->model_app->edit('support', array('id_support' => $id))->row_array();

									$data = array('rows' => $proses);
						$this->template->load('administrator/template','administrator/mod_support/view_support_edit',$data);
							}else{

									redirect('administrator/edit_support/');
							}
			}
		}
		function edit_footer(){
			$id = $this->uri->segment(3);
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_about/';
							$config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
							$config['max_size'] = '5000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
											$data = array('tentang_kami'=>$this->input->post('a'),
																			'alamat'=>$this->input->post('b'),
																			'telepone'=>$this->db->escape_str($this->input->post('c')),
																			'handpone'=>$this->db->escape_str($this->input->post('d')),
																			'email'=>$this->db->escape_str($this->input->post('e')),
																			'keterangan'=>$this->input->post('f')
																		);
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
											$data = array('tentang_kami'=>$this->input->post('a'),
																			'alamat'=>$this->input->post('b'),
																			'telepone'=>$this->db->escape_str($this->input->post('c')),
																			'handpone'=>$this->db->escape_str($this->input->post('d')),
																			'email'=>$this->db->escape_str($this->input->post('e')),
																			'foto'=>$hasil['file_name'],
																			'keterangan'=>$this->input->post('f')
																		);
							}elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
											$data = array('tentang_kami'=>$this->input->post('a'),
																			'alamat'=>$this->input->post('b'),
																			'telepone'=>$this->db->escape_str($this->input->post('c')),
																			'handpone'=>$this->db->escape_str($this->input->post('d')),
																			'email'=>$this->db->escape_str($this->input->post('e')),
																			'keterangan'=>$this->input->post('f')
																		);
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
											$data = array('tentang_kami'=>$this->input->post('a'),
																			'alamat'=>$this->input->post('b'),
																			'telepone'=>$this->db->escape_str($this->input->post('c')),
																			'handpone'=>$this->db->escape_str($this->input->post('d')),
																			'email'=>$this->db->escape_str($this->input->post('e')),
																			'foto'=>$hasil['file_name'],
																				'keterangan'=>$this->input->post('f')
																			);
							}
							$where = array('id_footer' => $this->input->post('id'));
							$this->model_app->update('footer', $data, $where);



				redirect('administrator/edit_footer/'.$this->input->post('id'));
			}else{
							if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
									$proses = $this->model_app->edit('footer', array('id_footer' => $id))->row_array();

									$data = array('rows' => $proses);
						$this->template->load('administrator/template','administrator/mod_footer/view_footer_edit',$data);
							}else{

									redirect('administrator/edit_footer/');
							}
			}
		}

		function eventlist(){
			$data['record'] = $this->db->query("select * from event   where id

				")->result_array();
			$this->template->load('administrator/template','administrator/mod_event/view_event',$data);
		}

		function tambah_event(){
			$id = $this->session->username;
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_event/';
							$config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
							$config['max_size'] = '10000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']==''){
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'time'=>date('Y-m-d H:i:s'),
																			'deskripsi'=>$this->input->post('c'));




							}else{
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'time'=>date('Y-m-d H:i:s'),
																			'foto'=>$hasil['file_name'],
																			'deskripsi'=>$this->input->post('c'));

							}
							$this->model_app->insert('event',$data);



				redirect('administrator/eventlist');
			}else{


				$this->template->load('administrator/template','administrator/mod_event/view_event_tambah');
			}
		}

		function edit_event(){
			$id = $this->uri->segment(3);
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_event/';
							$config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
							$config['max_size'] = '10000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'deskripsi'=>$this->input->post('c'));
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'foto'=>$hasil['file_name'],
																			'deskripsi'=>$this->input->post('c'));
							}elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'deskripsi'=>$this->input->post('c'));
							}elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
											$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																			'lokasi'=>$this->db->escape_str($this->input->post('b')),
																			'foto'=>$hasil['file_name'],
																			'deskripsi'=>$this->input->post('c'));
							}
							$where = array('id' => $this->input->post('id'));
							$this->model_app->update('event', $data, $where);



				redirect('administrator/edit_event/'.$this->input->post('id'));
			}else{
							if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
									$proses = $this->model_app->edit('event', array('id' => $id))->row_array();

									$data = array('rows' => $proses);
						$this->template->load('administrator/template','administrator/mod_event/view_event_edit',$data);
							}else{

									redirect('administrator/edit_event/');
							}
			}
		}
		function delete_event(){
       $id = array('id' => $this->uri->segment(3));
        $this->model_app->delete('event',$id);
		redirect('administrator/eventlist');
	}

	function projectlist(){
		$data['record'] = $this->db->query("select * from projects   where id_projects

			")->result_array();
		$this->template->load('administrator/template','administrator/mod_project/view_project',$data);
	}

	function tambah_project(){
		$id = $this->session->username;
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_projek/';
						$config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
						$config['max_size'] = '5000'; // kb
						$this->load->library('upload', $config);
						$this->upload->do_upload('f');
						$hasil=$this->upload->data();
						if ($hasil['file_name']==''){
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'time'=>date('Y-m-d H:i:s'),
																		'deskripsi'=>$this->input->post('c'));




						}else{
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'time'=>date('Y-m-d H:i:s'),
																		'foto'=>$hasil['file_name'],
																		'deskripsi'=>$this->input->post('c'));

						}
						$this->model_app->insert('projects',$data);



			redirect('administrator/projectlist');
		}else{


			$this->template->load('administrator/template','administrator/mod_project/view_project_tambah');
		}
	}

	function edit_project(){
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_projek/';
						$config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
						$config['max_size'] = '5000'; // kb
						$this->load->library('upload', $config);
						$this->upload->do_upload('f');
						$hasil=$this->upload->data();
						if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'deskripsi'=>$this->input->post('c'));
						}elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'foto'=>$hasil['file_name'],
																		'deskripsi'=>$this->input->post('c'));
						}elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'deskripsi'=>$this->input->post('c'));
						}elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
										$data = array('title'=>$this->db->escape_str($this->input->post('a')),
																		'lokasi'=>$this->db->escape_str($this->input->post('b')),
																		'kategori'=>$this->db->escape_str($this->input->post('z')),
																		'kontak'=>$this->db->escape_str($this->input->post('g')),
																		'peta'=>$this->db->escape_str($this->input->post('h')),
																		'foto'=>$hasil['file_name'],
																		'deskripsi'=>$this->input->post('c'));
						}
						$where = array('id_projects' => $this->input->post('id'));
						$this->model_app->update('projects', $data, $where);



			redirect('administrator/projectlist/'.$this->input->post('id'));
		}else{
						if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
								$proses = $this->model_app->edit('projects', array('id_projects' => $id))->row_array();
								$record = $this->model_app->view_ordering('projects','id_projects','DESC');

								$data = array('rows' => $proses,'record' => $record);
					$this->template->load('administrator/template','administrator/mod_project/view_project_edit',$data);
						}else{

								redirect('administrator/projectlist/');
						}
		}
	}
	function delete_project(){
					$id = array('id_projects' => $this->uri->segment(3));

			$this->model_app->delete('projects',$id);
			redirect('administrator/projectlist');
	}

	function listberita(){
		cek_session_akses('listberita',$this->session->id_session);
        if ($this->session->level=='admin'){
            $data['record'] = $this->model_app->view_ordering('berita','id_berita','ASC');
        }else{
            $data['record'] = $this->model_app->view_where_ordering('berita',array('username'=>$this->session->username),'id_berita','DESC');
        }


		$this->template->load('administrator/template','administrator/mod_berita/view_berita',$data);
	}

	function tambah_berita(){

		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_berita/';
	        $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
	        $config['max_size'] = '3000'; // kb
	        $this->load->library('upload', $config);
	        $this->upload->do_upload('k');
	        $hasil=$this->upload->data();

            $config['source_image'] = 'asset/foto_berita/'.$hasil['file_name'];

            $this->load->library('image_lib',$config);
            $this->image_lib->watermark();

            if ($this->session->level == 'kontributor'){ $status = 'y'; }else{ $status = 'Y'; }

            if ($hasil['file_name']==''){
                    $data = array(
                                    'username'=>$this->session->username,
                                    'judul'=>$this->input->post('b'),
                                    'judul_seo'=>seo_title($this->input->post('b')),
                                    'isi_berita'=>$this->input->post('h'),
																		'link_berita'=>$this->input->post('z'),
                                    'hari'=>hari_ini(date('w')),
                                    'tanggal'=>date('Y-m-d'),
                                    'jam'=>date('H:i:s'),
                                    'dibaca'=>'0',

                                    'status'=>$status);
            }else{
                    $data = array(
                                    'username'=>$this->session->username,
                                    'judul'=>$this->input->post('b'),
                                    'judul_seo'=>seo_title($this->input->post('b')),
                                    'headline'=>$this->db->escape_str($this->input->post('e')),
                                    'isi_berita'=>$this->input->post('h'),
																		'link_berita'=>$this->input->post('z'),
                                    'hari'=>hari_ini(date('w')),
                                    'tanggal'=>date('Y-m-d'),
                                    'jam'=>date('H:i:s'),
                                    'gambar'=>$hasil['file_name'],
                                    'dibaca'=>'0',

                                    'status'=>$status);
            }
            $this->model_app->insert('berita',$data);
			redirect('administrator/listberita');
		}else{
			$this->template->load('administrator/template','administrator/mod_berita/view_berita_tambah');
		}
	}
	function edit_berita(){
			cek_session_akses('listberita',$this->session->id_session);
			$id = $this->uri->segment(3);
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_berita/';
		        $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
		        $config['max_size'] = '3000'; // kb
		        $this->load->library('upload', $config);
		        $this->upload->do_upload('k');
		        $hasil=$this->upload->data();

	            $config['source_image'] = 'asset/foto_berita/'.$hasil['file_name'];

	            $this->load->library('image_lib',$config);
	            $this->image_lib->watermark();

	            if ($this->session->level == 'kontributor'){ $status = 'y'; }else{ $status = 'Y'; }


	            if ($hasil['file_name']==''){
	                    $data = array(
	                                    'username'=>$this->session->username,
	                                    'judul'=>$this->input->post('b'),
																			'judul_seo'=>seo_title($this->input->post('b')),
	                                    'isi_berita'=>$this->input->post('h'),
																			'link_berita'=>$this->input->post('z'),
	                                    'dibaca'=>'0',
	                                    'status'=>$status);
	            }else{
	                    $data = array(
	                                    'username'=>$this->session->username,
	                                    'judul'=>$this->input->post('b'),
	                                    'judul_seo'=>seo_title($this->input->post('b')),
	                                    'isi_berita'=>$this->input->post('h'),
																			'link_berita'=>$this->input->post('z'),
	                                    'gambar'=>$hasil['file_name'],
	                                    'dibaca'=>'0',

	                                    'status'=>$status);
	            }
	            $where = array('id_berita' => $this->input->post('id'));
				$this->model_app->update('berita', $data, $where);
				redirect('administrator/listberita');
			}else{
	            if ($this->session->level=='admin'){
	                 $proses = $this->model_app->edit('berita', array('id_berita' => $id))->row_array();
	            }else{
	                $proses = $this->model_app->edit('berita', array('id_berita' => $id, 'username' => $this->session->username))->row_array();
	            }
				$data = array('rows' => $proses);
				$this->template->load('administrator/template','administrator/mod_berita/view_berita_edit',$data);
			}
		}
		function delete_berita(){
        if ($this->session->level=='admin'){
    		$id = array('id_berita' => $this->uri->segment(3));
        }else{
            $id = array('id_berita' => $this->uri->segment(3), 'username'=>$this->session->username);
        }
		$this->model_app->delete('berita',$id);
		redirect('administrator/listberita');
	}

	function videolist(){
        if ($this->session->level=='admin'){
              $data['record'] = $this->model_app->view_ordering('video','id_video','ASC');
        }else{
            $data['record'] = $this->model_app->view_join_where('video','playlist','id_playlist',array('video.username'=>$this->session->username),'id_video','DESC');
        }
        $this->template->load('administrator/template','administrator/mod_video/view_video',$data);
    }

		function tambah_video(){
        if (isset($_POST['submit'])){
            $config['upload_path'] = 'asset/foto_video/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '3000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('d');
            $hasil=$this->upload->data();



            if ($hasil['file_name']==''){
                $data = array(
                            'username'=>$this->session->username,
                            'jdl_video'=>$this->input->post('b'),
                            'video_seo'=>seo_title($this->input->post('b')),
                            'keterangan'=>$this->input->post('c'),
                            'video'=>'',
                            'youtube'=>$this->input->post('e'),
                            'dilihat'=>'0',
                            'hari'=>hari_ini(date('w')),
                            'tanggal'=>date('Y-m-d'),
                            'jam'=>date('H:i:s'));
            }else{
                $data = array(
                            'username'=>$this->session->username,
                            'jdl_video'=>$this->input->post('b'),
                            'video_seo'=>seo_title($this->input->post('b')),
                            'keterangan'=>$this->input->post('c'),
                            'gbr_video'=>$hasil['file_name'],
                            'video'=>'',
                            'youtube'=>$this->input->post('e'),
                            'dilihat'=>'0',
                            'hari'=>hari_ini(date('w')),
                            'tanggal'=>date('Y-m-d'),
                            'jam'=>date('H:i:s'));
            }
            $this->model_app->insert('video',$data);
            redirect('administrator/videolist');
        }else{
            $this->template->load('administrator/template','administrator/mod_video/view_video_tambah');
        }
    }
		function edit_video(){
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])){
            $config['upload_path'] = 'asset/foto_video/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('d');
            $hasil=$this->upload->data();



            if ($hasil['file_name']==''){
                $data = array(
                            'username'=>$this->session->username,
                            'jdl_video'=>$this->input->post('b'),
                            'video_seo'=>seo_title($this->input->post('b')),
                            'keterangan'=>$this->input->post('c'),
                            'video'=>'',
                            'youtube'=>$this->input->post('e'));
            }else{
                $data = array(
                            'username'=>$this->session->username,
                            'jdl_video'=>$this->input->post('b'),
                            'video_seo'=>seo_title($this->input->post('b')),
                            'keterangan'=>$this->input->post('c'),
                            'gbr_video'=>$hasil['file_name'],
                            'video'=>'',
                            'youtube'=>$this->input->post('e'));
            }

            $where = array('id_video' => $this->input->post('id'));
            $this->model_app->update('video', $data, $where);
            redirect('administrator/videolist');
        }else{
            if ($this->session->level=='admin'){
                $proses = $this->model_app->edit('video', array('id_video' => $id))->row_array();
            }else{
                $proses = $this->model_app->edit('video', array('id_video' => $id, 'username' => $this->session->username))->row_array();
            }

            $data = array('rows' => $proses);
            $this->template->load('administrator/template','administrator/mod_video/view_video_edit',$data);
        }
    }

    function delete_video(){
        if ($this->session->level=='admin'){
            $id = array('id_video' => $this->uri->segment(3));
        }else{
            $id = array('id_video' => $this->uri->segment(3), 'username'=>$this->session->username);
        }
        $this->model_app->delete('video',$id);
        redirect('administrator/videolist');
    }
		function emaillist(){
			$data['record'] = $this->db->query("select * from email   where id_email

				")->result_array();
			$this->template->load('administrator/template','administrator/mod_email/view_email',$data);
		}
		function tambah_email(){
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_projek/';
							$config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
							$config['max_size'] = '5000'; // kb
							$this->load->library('upload', $config);
							$this->upload->do_upload('f');
							$hasil=$this->upload->data();
							if ($hasil['file_name']==''){
											$data = array('nama'=>$this->db->escape_str($this->input->post('a')),
																			'email'=>$this->input->post('b'),
																			'time'=>date('Y-m-d H:i:s'));




							}else{
											$data = array('nama'=>$this->db->escape_str($this->input->post('a')),
																			'email'=>$this->input->post('b'),
																			'time'=>date('Y-m-d H:i:s'));

							}
							$this->model_app->insert('email',$data);



				redirect('administrator/emaillist');
			}else{


				$this->template->load('administrator/template','administrator/mod_email/view_email_tambah');
			}
		}

		function delete_email(){
        if ($this->session->level=='admin'){
            $id = array('id_email' => $this->uri->segment(3));
        }else{
            $id = array('id_email' => $this->uri->segment(3));
        }
        $this->model_app->delete('email',$id);
        redirect('administrator/emaillist');
    }

		function tambah_galeriprojek(){
			$id = $this->session->username;
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_projek/galeri/';
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
	            $config['max_size'] = '5000'; // kb
	            $this->load->library('upload', $config);
	            $this->upload->do_upload('f');
	            $hasil=$this->upload->data();
	            if ($hasil['file_name']==''){
	                    $data = array('id_projects'=>$this->input->post('a'),
	                                    'times'=>date('Y-m-d H:i:s'));

	            }else{
	                    $data = array('id_projects'=>$this->input->post('a'),

	                                    'foto_galeri'=>$hasil['file_name'],
	                                    'times'=>date('Y-m-d H:i:s'));
	            }
	            $this->model_app->insert('gallery_projects',$data);





				redirect('administrator/galerilist');
			}else{

					$data['sans'] = $this->model_app->view_ordering('projects','id_projects','DESC');
				$this->template->load('administrator/template','administrator/mod_project/view_galeri_tambah',$data);
			}
		}
		function galerilist(){
			$data['record'] = $this->db->query("select * from gallery_projects x join projects y on x.id_projects = y.id_projects   where id_gp

				")->result_array();
			$this->template->load('administrator/template','administrator/mod_project/view_galeri',$data);
		}
		function delete_gp(){
        if ($this->session->level=='admin'){
            $id = array('id_gp' => $this->uri->segment(3));
        }else{
            $id = array('id_gp' => $this->uri->segment(3));
        }
        $this->model_app->delete('gallery_projects',$id);
        redirect('administrator/galerilist');
    }

		function tambah_galerievent(){
			$id = $this->session->username;
			if (isset($_POST['submit'])){
				$config['upload_path'] = 'asset/foto_event/galeri/';
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG';
	            $config['max_size'] = '5000'; // kb
	            $this->load->library('upload', $config);
	            $this->upload->do_upload('f');
	            $hasil=$this->upload->data();
	            if ($hasil['file_name']==''){
	                    $data = array('id'=>$this->input->post('a'),
	                                    'times'=>date('Y-m-d H:i:s'));

	            }else{
	                    $data = array('id'=>$this->input->post('a'),

	                                    'foto_ge'=>$hasil['file_name'],
	                                    'times'=>date('Y-m-d H:i:s'));
	            }
	            $this->model_app->insert('gallery_event',$data);





				redirect('administrator/gelist');
			}else{

					$data['sans'] = $this->model_app->view_ordering('event','id','DESC');
				$this->template->load('administrator/template','administrator/mod_event/view_galeri_event_tambah',$data);
			}
		}
		function gelist(){
			$data['record'] = $this->db->query("select * from gallery_event x join event y on x.id = y.id   where id_ge

				")->result_array();
			$this->template->load('administrator/template','administrator/mod_event/view_galeri_event',$data);
		}
		function delete_ge(){
        if ($this->session->level=='admin'){
            $id = array('id_ge' => $this->uri->segment(3));
        }else{
            $id = array('id_ge' => $this->uri->segment(3));
        }
        $this->model_app->delete('gallery_event',$id);
        redirect('administrator/gelist');
    }
}
