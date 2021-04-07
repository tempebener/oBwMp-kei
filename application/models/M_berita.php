<?php
class M_berita extends CI_Model{

	function get_all_berita(){
		$hsl=$this->db->query("SELECT tbl_berita.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal FROM tbl_berita  ORDER BY id_berita DESC");
		return $hsl;
	}
	
    function simpan_berita($judul,$deskripsi,$file){
		$this->db->trans_start();
            $this->db->query("insert into tbl_berita(jdl_1,jdl_2,foto) values ('$judul','$deskripsi','$file')");
            
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}

	 //-- count active, inactive and total berita
	 function get_berita_total(){
        $this->db->select('*');
        $this->db->select('count(*) as total');
        $this->db->select('(SELECT count(tbl_berita.id_berita)
                            FROM tbl_berita 
                            WHERE (tbl_berita.status = 1)
                            )
                            AS active_berita',TRUE);

        $this->db->select('(SELECT count(tbl_berita.id_berita)
                            FROM tbl_berita 
                            WHERE (tbl_berita.status = 0)
                            )
                            AS inactive_berita',TRUE);

        

        $this->db->from('tbl_berita');
        $query = $this->db->get();
        $query = $query->row();  
        return $query;
    }
	
	function update_berita($id_berita,$judul,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("update tbl_berita set jdl_1='$judul',berita_pengguna_id='$user_id',berita_author='$user_nama',foto='$gambar' where id_berita='$id_berita'");
		return $hsl;
	}
	function update_berita_tanpa_img($id_berita,$judul,$user_id,$user_nama){
		$hsl=$this->db->query("update tbl_berita set jdl_1='$judul',berita_pengguna_id='$user_id',berita_author='$user_nama' where id_berita='$id_berita'");
		return $hsl;
	}
	function hapus_berita($kode){
		$this->db->trans_start();
            $this->db->query("update tbl_berita set id_berita_s='0' where id_berita='$kode'");
            // $this->db->query("update tbl_album set album_count=album_count-1 where album_id='$album'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}

	//Front-End
	function get_berita_home(){
		$hsl=$this->db->query("SELECT tbl_berita.*,DATE_FORMAT(berita_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_berita ORDER BY id_berita DESC limit 4");
		return $hsl;
	}

	function get_berita_by_album_id($idalbum){
		$hsl=$this->db->query("SELECT tbl_berita.*,DATE_FORMAT(berita_tanggal,'%d/%m/%Y') AS tanggal,album_nama FROM tbl_berita  ORDER BY id_berita DESC");
		return $hsl;
	}
	

}