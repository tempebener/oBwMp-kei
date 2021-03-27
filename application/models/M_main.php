<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_main extends CI_Model
{

	function get_all_slider($status)
	  {
	    $this->db->limit(5);
	    $this->db->where('tbl_slider.id_slider_s',$status);
	    $this->db->order_by('id_slider','desc' );
	    $this->db->join('tbl_slider_s', 'tbl_slider_s.id_slider_s = tbl_slider.id_slider_s','inner');
	    return $this->db->get('tbl_slider')->result();
	  }

	function get_all_tutors($status)
	{
	    $this->db->limit(12);
	    $this->db->where('tbl_tutor.id_tutor_s',$status);
	    $this->db->order_by('id_tutor','asc' );
	    $this->db->join('tbl_slider_s', 'tbl_slider_s.id_slider_s = tbl_tutor.id_tutor_s','inner');
	    return $this->db->get('tbl_tutor')->result();
	}

	function get_all_bod($status)
	{
	    // $this->db->limit(6);
	    $this->db->where('tbl_bod.id_status',$status);
	    $this->db->order_by('id_bod','asc' );
	    $this->db->join('tbl_slider_s', 'tbl_slider_s.id_slider_s = tbl_bod.id_status','inner');
	    return $this->db->get('tbl_bod')->result();
	}
 
}
