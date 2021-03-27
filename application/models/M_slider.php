<?php
class M_slider extends CI_Model{

	function get_all_slider(){
		$hsl=$this->db->query("SELECT tbl_slider.*,DATE_FORMAT(slider_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_slider  ORDER BY id_slider DESC");
		return $hsl;
	}
	function simpan_slider($judul,$user_id,$user_nama,$gambar){
		$this->db->trans_start();
            $this->db->query("insert into tbl_slider(jdl_1,slider_pengguna_id,slider_author,foto) values ('$judul','$user_id','$user_nama','$gambar')");
            // $this->db->query("update tbl_album set album_count=album_count+1 where album_id='$album'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}
	
	function update_slider($id_slider,$judul,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("update tbl_slider set jdl_1='$judul',slider_pengguna_id='$user_id',slider_author='$user_nama',foto='$gambar' where id_slider='$id_slider'");
		return $hsl;
	}
	function update_slider_tanpa_img($id_slider,$judul,$user_id,$user_nama){
		$hsl=$this->db->query("update tbl_slider set jdl_1='$judul',slider_pengguna_id='$user_id',slider_author='$user_nama' where id_slider='$id_slider'");
		return $hsl;
	}
	function hapus_slider($kode){
		$this->db->trans_start();
            $this->db->query("update tbl_slider set id_slider_s='0' where id_slider='$kode'");
            // $this->db->query("update tbl_album set album_count=album_count-1 where album_id='$album'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}

	//Front-End
	function get_slider_home(){
		$hsl=$this->db->query("SELECT tbl_slider.*,DATE_FORMAT(slider_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_slider ORDER BY id_slider DESC limit 4");
		return $hsl;
	}

	function get_slider_by_album_id($idalbum){
		$hsl=$this->db->query("SELECT tbl_slider.*,DATE_FORMAT(slider_tanggal,'%d/%m/%Y') AS tanggal,album_nama FROM tbl_slider  ORDER BY id_slider DESC");
		return $hsl;
	}
	

}