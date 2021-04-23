<?php 
class M_pelatihan extends CI_Model{
 public $table = 'tbl_pelatihan';
  public $id    = 'id_pelatihan';
  public $order = 'DESC';
	

	function get_by_id_pelatihan($id)
  {
  $this->db->where('tbl_pelatihan_detail.id_pelatihan', $id);
  $this->db->join('tbl_pelatihan', 'tbl_pelatihan.id_pelatihan = tbl_pelatihan_detail.id_pelatihan','inner');
  return $this->db->get('tbl_pelatihan_detail')->result();
  }
	
 function get_by_id2($id)
  {
    $this->db->where($this->id, $id);
    $this->db->or_where('judul_pelatihan_seo', $id);
    // $this->db->join('users', 'users.id_users = tbl_pelatihan.id_users','inner');
    return $this->db->get('tbl_pelatihan')->result_array();
  }
  function get_by_id3($id)
  {
    $this->db->where('tbl_pelatihan_detail.id_pelatihan', $id);
    $this->db->or_where('tbl_pelatihan_detail.id_pelatihan', $id);
    $this->db->join('tbl_pelatihan', 'tbl_pelatihan.id_pelatihan = tbl_pelatihan_detail.id_pelatihan','inner');
    return $this->db->get('tbl_pelatihan_detail')->result_array();
  }

   function get_by_id_add($id)
  {
    $this->db->where('id_pelatihan', $id);
    $this->db->or_where('id_pelatihan', $id);
    
    return $this->db->get('tbl_pelatihan')->row();
  }

  function insert_bab($data)
  {

    $this->db->insert('tbl_pelatihan_detail', $data);
  }
}