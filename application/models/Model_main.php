<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_main extends CI_Model
{

function get_all_slider($page1)
  {
    $this->db->limit(5);
    $this->db->where('slider.id_slider_s',$page1);
    $this->db->order_by('id_slider','desc' );
    $this->db->join('slider_s', 'slider_s.id_slider_s = slider.id_slider_s','inner');
    return $this->db->get('slider')->result();
  }
  function get_all_sliders($page1)
    {
      $this->db->limit(1);
      $this->db->where('slider.id_slider_s',$page1);
      $this->db->order_by('id_slider','random' );
      $this->db->join('slider_s', 'slider_s.id_slider_s = slider.id_slider_s','inner');
      return $this->db->get('slider')->result();
    }
    function projects_sliders()
      {
        $this->db->limit(1);
        $this->db->order_by('id_slider','random' );
        return $this->db->get('projects')->result();
      }
      function projects_sliders_event()
        {
          $this->db->limit(1);
          $this->db->order_by('id','random' );
          return $this->db->get('event')->result();
        }
  function get_all_about(){
return $this->db->get('about');
}
function get_all_event($per_page,$dari)
  {
    $this->db->order_by('id', 'DESC');
    $query = $this->db->get('event',$per_page,$dari);
    return $query->result();
  }
  function get_all_video($per_page,$dari)
    {
      $this->db->order_by('id_video', 'DESC');
      $query = $this->db->get('video',$per_page,$dari);
      return $query->result();
    }
    function projects_sliders_video()
      {
        $this->db->limit(1);
        $this->db->order_by('id_video','random' );
        return $this->db->get('video')->result();
      }
  function total_rows() {
  return $this->db->get('event')->num_rows();
}
}
