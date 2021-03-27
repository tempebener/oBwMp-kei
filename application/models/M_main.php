<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_main extends CI_Model
{

function get_all_slider($page1)
  {
    $this->db->limit(5);
    $this->db->where('tbl_slider.id_slider_s',$page1);
    $this->db->order_by('id_slider','desc' );
    $this->db->join('tbl_slider_s', 'tbl_slider_s.id_slider_s = tbl_slider.id_slider_s','inner');
    return $this->db->get('tbl_slider')->result();
  }
 
}
