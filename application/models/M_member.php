<?php
class M_member extends CI_Model{
	public $table = 'tbl_member';
	public $id    = 'id_member';
	public $order = 'DESC';

	function get_all_member(){
		$hsl=$this->db->query("SELECT tbl_member.*,DATE_FORMAT(created_at,'%d %M %Y') AS tanggal FROM tbl_member ORDER BY id_member DESC");
		return $hsl;
	}

    public function insert($table,$data){
        return $this->db->insert($table, $data);
    }


	function simpan_file($nama,$alamat,$file){
		$hsl=$this->db->query("INSERT INTO tbl_member(nama,alamat,foto_ktp) VALUES ('$nama','$alamat','$file')");
		return $hsl;
	}

	function get_by_id($id) {
	    $this->db->where($this->id, $id);
	    return $this->db->get('tbl_member')->result_array();
	}

	function deactive_member($id){
		$hsl=$this->db->query("UPDATE tbl_member SET id_status='0' WHERE id='".$id."'");
		return $hsl;
	}
}