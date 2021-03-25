<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Contact extends CI_Controller {

 public function __construct() {
 parent::__construct();
 $this->load->library('form_validation');
 $this->load->library('email');
 }

 public function index() {
 $this->load->view('contact_view');
 }

 public function sendmail()
 {
     
 $this->form_validation->set_rules('email', 'email', 'required');
 $this->form_validation->set_rules('nama', 'nama', 'required');
 $this->form_validation->set_rules('phone', 'phone', 'required');
 $this->form_validation->set_rules('wa', 'wa', 'required');
 $this->form_validation->set_rules('kontak', 'kontak', 'required');
 if ($this->form_validation->run() === TRUE)
 {
$this->load->config('email');
$this->load->library('email');

 $from = $this->config->item('smtp_user');
 $email = $this->input->post('email');
 $nama = $this->input->post('nama');
 $phone = $this->input->post('phone');
 $wa = $this->input->post('wa');
 $kontak = $this->input->post('kontak');

 $message='';
              $ss = 'Bersedia kontak dengan video atau chat ?';
              $bodyMsg = '<p style="font-size:14px;font-weight:normal;margin-bottom:10px;margin-top:0;">'.'Bersedia kontak dengan video atau chat ? '.$kontak.'</p>';
              $delimeter = 'nama : '.$nama."<br>".'Phone : '.$phone."<br>".'Wa : '.$wa."<br>".'Email : '.$email;
              $dataMail = array('topMsg'=>'Hi LMP', 'bodyMsg'=>$bodyMsg, 'thanksMsg'=>'', 'delimeter'=> $delimeter);





 $this->email->from($from);
 $this->email->to('sales@langgengland.co.id');
 $this->email->subject('Contact form');
 $message = $this->load->view('frontend/contactForm', $dataMail, TRUE);
 $this->email->message($message);
 $this->email->send();
 $this->session->set_flashdata('pesan', 'Pesan berhasil dikirim, Pesan Anda akan segera kami respon secepatnya! Terima kasih atas partisipasinya');
 redirect('support');
 }
 else
 {
 //show_error($this->email->print_debugger());
 $this->session->set_flashdata('pesan', 'Pesan Gagal dikirim! Semua form harus diisi');
 redirect('support');
 }
 }
 public function subcribe()
 {
 $this->form_validation->set_rules('email', 'email', 'required');
 $this->form_validation->set_rules('nama', 'nama', 'required');
 $this->form_validation->set_rules('phone', 'phone', 'required');
 if ($this->form_validation->run() === TRUE)
 {
     $this->load->config('email');
     $this->load->library('email');
     
 $from = $this->config->item('smtp_user');
 $email = $this->input->post('email');
 $nama = $this->input->post('nama');
 $phone = $this->input->post('phone');

 $message='';
              $ss = 'Bersedia kontak dengan video atau chat ?';
              $bodyMsg = '<p style="font-size:14px;font-weight:normal;margin-bottom:10px;margin-top:0;">'.'Saya Bersedia menerima informasi lebih lanjut'.'</p>';
              $delimeter = 'nama : '.$nama."<br>".'Phone : '.$phone."<br>".'Email : '.$email;
              $dataMail = array('topMsg'=>'Hi LMP', 'bodyMsg'=>$bodyMsg, 'thanksMsg'=>'', 'delimeter'=> $delimeter);


 $this->email->from($from);
 $this->email->to('sales@langgengland.co.id');
 $this->email->subject('SUBSCRIBES');
 $message = $this->load->view('frontend/contactForm', $dataMail, TRUE);
 $this->email->message($message);
 $this->email->send();
 $this->session->set_flashdata('pesan', 'Pesan berhasil dikirim, Pesan Anda akan segera kami respon secepatnya! Terima kasih atas partisipasinya');
 redirect('');
 }
 else
 {
 //show_error($this->email->print_debugger());
 $this->session->set_flashdata('pesan', 'Pesan Gagal dikirim! Semua form harus diisi');
 redirect('');
 }
 }
}
