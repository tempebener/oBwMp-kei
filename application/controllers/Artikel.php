<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	function __construct()
  {
    parent::__construct();
    /* memanggil model untuk ditampilkan pada masing2 modul */
    $this->load->model('Berita_model');
	
    /* memanggil function dari masing2 model yang akan digunakan */

  }

	public function index()
	{
   
			$this->load->view('fronts/konten/index');
	

	
}

public function konten(){

			$page1 = 'Y';
			$query = $this->model_utama->view_join_dua2('berita','users','kategori_dua','id_users','id_kategori_dua',array('judul_seo' => $this->uri->segment(3)),'id_berita','DESC',0,1);
			if ($query->num_rows()<=0){
				redirect('main');
			}else{

				$row = $query->row_array();
				$data['title'] = cetak($row['judul']);
				$data['description'] = cetak_meta($row['isi_berita'],0,400);
				$data['keywords'] = cetak($row['tag']);
				$data['rows'] = $row;
				 
				  $data['terbaru'] = $this->db->query("select * from berita a join users b on a.id_users = b.id_users join kategori_dua c on a.id_kategori_dua = c.id_kategori_dua where status = 'Y'  ORDER BY  id_berita desc limit 7
			")->result();
				  $data['iklan_bawah'] = $this->db->query("select * from iklanatas  where id_iklanatas = '44' ORDER BY  id_iklanatas desc limit 1
			")->result();

	     $data['terpopuler2'] = $this->db->query("select * from berita a join users b on a.id_users = b.id_users join kategori_dua c on a.id_kategori_dua = c.id_kategori_dua where status = 'Y' ORDER BY  views desc limit 5
			")->result();
			

					$dataa = array('views'=>$row['views']+1);
				$where = array('id_berita' => $row['id_berita']);
				$this->model_utama->update('berita', $dataa, $where);

				$this->load->view('fronts/konten/index', $data);
			}
		}

	
	
    }
}