<?php
class Model_purchase extends CI_model{

  function get_combo_mc() {
$this->db->select('*');
$this->db->from('cam_material_category');
$query = $this->db->get();
return $query->result();
}

function get_combo_lokasi() {
$this->db->select('*');
$this->db->from('cam_company_plant');
$query = $this->db->get();
return $query->result();
}

function get_by_id_purchasereq($id)
{
  $this->db->where('account_pr', $id);
  $this->db->or_where('no_pr', $id);
  $this->db->join('cam_material_category', 'cam_material_category.account_mc = cam_purchase_requisition.account_mc','inner');
  $this->db->join('cam_company_plant', 'cam_company_plant.account_cp = cam_purchase_requisition.account_cp','inner');
  return $this->db->get('cam_purchase_requisition')->row();
}
}
