<?php
class M_event extends CI_Model{
 public $table = 'tbl_event';
  public $id    = 'id_event';
  public $order = 'DESC';


	function get_by_id_ekonomi($id)
  {
  $this->db->where('tbl_event_detail.id_event', $id);
  $this->db->join('tbl_event', 'tbl_event.id_event = tbl_event_detail.id_event','inner');
  return $this->db->get('tbl_event_detail')->result();
  }

  function get_by_id2($id)
   {
     $this->db->where($this->id, $id);
     $this->db->or_where('judul_event_seo', $id);
     // $this->db->join('users', 'users.id_users = tbl_pelatihan.id_users','inner');
     return $this->db->get('tbl_event')->result_array();
   }
   function get_by_id3($id)
   {
     $this->db->where('tbl_event_detail.id_event', $id);
     $this->db->join('tbl_event', 'tbl_event.id_event = tbl_event_detail.id_event','inner');
     return $this->db->get('tbl_event_detail')->result_array();
   }

   function get_by_id_add($id)
  {
    $this->db->where('id_event', $id);
    $this->db->or_where('id_event', $id);

    return $this->db->get('tbl_event')->row();
  }
  function insert_bab($data)
  {
    $this->db->insert('tbl_event_detail', $data);
  }

  function get_by_id_event($id)
  {
  $this->db->where('tbl_event_detail.id_event', $id);
  $this->db->join('tbl_event', 'tbl_event.id_event = tbl_event_detail.id_event','inner');
  return $this->db->get('tbl_event_detail')->result();
  }

}
