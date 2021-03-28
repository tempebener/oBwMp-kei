<?php
class M_member extends CI_Model{

	function get_all_member(){
		$hsl=$this->db->query("SELECT tbl_member.*,DATE_FORMAT(created_at,'%d %M %Y') AS tanggal FROM tbl_member ORDER BY id_member DESC");
		return $hsl;
	}

    public function insert($table,$data){
        return $this->db->insert($table, $data);
    }
}