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

  function get_by_id2($id)
   {
     $this->db->where($this->id, $id);
     $this->db->or_where('judul_eo_seo', $id);
     // $this->db->join('users', 'users.id_users = tbl_pelatihan.id_users','inner');
     return $this->db->get('tbl_ekonomi_outlook')->result_array();
   }
   function get_by_eo_detail($id)
   {
     $this->db->where('tbl_ekonomi_outlook_detail.id_eo', $id);
     $this->db->where('status_eo_detail ','publish');
     $this->db->join('tbl_ekonomi_outlook', 'tbl_ekonomi_outlook.id_eo = tbl_ekonomi_outlook_detail.id_eo','inner');
     return $this->db->get('tbl_ekonomi_outlook_detail')->result_array();
   }
  function get_by_eo_detail_storage($id)
   {
     $this->db->where('tbl_ekonomi_outlook_detail.id_eo', $id);
     $this->db->where('status_eo_detail','trash');
     $this->db->join('tbl_ekonomi_outlook', 'tbl_ekonomi_outlook.id_eo = tbl_ekonomi_outlook_detail.id_eo','inner');
     return $this->db->get('tbl_ekonomi_outlook_detail')->result_array();
   }
  function get_by_id3($id)
   {
     $this->db->where('tbl_ekonomi_outlook_detail.id_eo', $id);
     $this->db->join('tbl_ekonomi_outlook', 'tbl_ekonomi_outlook.id_eo = tbl_ekonomi_outlook_detail.id_eo','inner');
     return $this->db->get('tbl_ekonomi_outlook_detail')->result_array();
   }

   function get_by_id_add($id)
  {
    $this->db->where('id_eo', $id);
    $this->db->or_where('id_eo', $id);

    return $this->db->get('tbl_ekonomi_outlook')->row();
  }
  function insert_bab($data)
  {
    $this->db->insert('tbl_ekonomi_outlook_detail', $data);
  }

}
