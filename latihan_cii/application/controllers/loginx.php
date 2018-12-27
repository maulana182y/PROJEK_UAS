<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('user_model');	
		}

	public function index()
	{
    	 $this->load->view('login');
  } 
	public function home()
	{
		$this->load->view('home');
	}
	public function register()
	{ 
    $this->load->view('register');
    }
 	public function simpan_user()
 	{
 	$this->form_validation->set_rules('firstName','First name','trim|required');
 	$this->form_validation->set_rules('lastName','Last name','trim|required');
 	$this->form_validation->set_rules('inputEmail','Email','trim|required|valid_email');
 	$this->form_validation->set_rules('inputPassword','password','required');
 	$this->form_validation->set_rules('confirmPassword','Confirm password','required|matches[inputPassword]');
    
     $data = array (
    'firstName' => $this->input->post('firstName'),
    'lastName' => $this->input->post('lastName'),
    'email' => $this->input->post('email'),
    'password' => $this->input->post('password')
  );

     $insert = $this->user_model->simpan_user($data);

     if ($insert) {

     	echo 'resgistrasi sukses';
     } else {
     	echo 'registrasi failed';
     }
     //redirect('login');
 }
}