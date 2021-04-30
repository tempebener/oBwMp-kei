<?php
class M_ekonomi extends CI_Model{
 public $table = 'tbl_ekonomi_outlook';
  public $id    = 'id_eo';
  public $order = 'DESC';


	function get_by_id_ekonomi($id)
  {
  $this->db->where('tbl_ekonomi_outlook_detail.id_eo', $id);
  $this->db->join('tbl_ekonomi_outlook', 'tbl_ekonomi_outlook.id_eo = tbl_ekonomi_outlook_detail.id_eo','inner');
  return $this->db->get('tbl_ekonomi_outlook_detail')->result();
  }

 
}
