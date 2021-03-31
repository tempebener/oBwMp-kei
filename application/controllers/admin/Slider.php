<?php
class Slider extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_album');
		$this->load->model('m_slider');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}

	function index(){
		
		$x['data']=$this->m_slider->get_all_slider();
		$x['alb']=$this->m_album->get_all_album();
		$this->load->view('admin/v_slider',$x);
	}
	
	function simpan_slider(){
				$config['upload_path'] = './theme/images/foto_slider/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./theme/images/foto_slider/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 1200;
	                        $config['height']= 584;
	                        $config['new_image']= '.theme/images/foto_slider/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $judul=strip_tags($this->input->post('xjudul'));
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_slider->simpan_slider($judul,$user_id,$user_nama,$gambar);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/slider');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/slider');
	                }
	                 
	            }else{
					redirect('admin/slider');
				}
				
	}
	
	function update_slider(){
				
	            $config['upload_path'] = './theme/images/foto_slider/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./theme/images/foto_slider/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 1200;
	                        $config['height']= 584;
	                        $config['new_image']= './theme/images/foto_slider/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $id_slider=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
							// $album=strip_tags($this->input->post('xalbum'));
							$images=$this->input->post('gambar');
							$path='./theme/images/foto_slider/'.$images;
							unlink($path);
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_slider->update_slider($id_slider,$judul,$user_id,$user_nama,$gambar);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/slider');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/slider');
	                }
	                
	            }else{
							$id_slider=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
							// $album=strip_tags($this->input->post('xalbum'));
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_slider->update_slider_tanpa_img($id_slider,$judul,$user_id,$user_nama);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/slider');
	            } 

	}

	function hapus_slider(){
		$kode=$this->input->post('kode');
		$album=$this->input->post('album');
		$gambar=$this->input->post('gambar');
		$path='./theme/images/foto_slider/'.$gambar;
		unlink($path);
		$this->m_slider->hapus_slider($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/slider');
	}

}