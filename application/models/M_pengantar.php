<?php 
class M_pengantar extends CI_Model{
 public $table = 'tbl_pengantar';
  public $id    = 'id_pengantar';
  public $order = 'DESC';
	

	function get_by_id_pengantar($id)
  {
  $this->db->where('tbl_pengantar_detail.id_pengantar', $id);
  $this->db->join('tbl_pengantar', 'tbl_pengantar.id_pengantar = tbl_pengantar_detail.id_pengantar','inner');
  return $this->db->get('tbl_pengantar_detail')->result();
  }
	
 function get_by_id($id)
  {
    $this->db->where($this->id, $id);
    return $this->db->get('tbl_pengantar')->result_array();
  }
}