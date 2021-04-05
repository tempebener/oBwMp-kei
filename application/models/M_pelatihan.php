<?php 
class M_pelatihan extends CI_Model{

	

	function get_by_id_pelatihan($id)
  {
  $this->db->where('tbl_pelatihan_detail.id_pelatihan', $id);
  $this->db->join('tbl_pelatihan', 'tbl_pelatihan.id_pelatihan = tbl_pelatihan_detail.id_pelatihan','inner');
  return $this->db->get('tbl_pelatihan_detail')->result();
  }
	

}