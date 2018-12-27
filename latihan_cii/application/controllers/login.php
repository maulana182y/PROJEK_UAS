<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->database();
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('user_model');
    } 
     public function index(){
        $this->load->view('login');
    } 
   
	public function home()
  {
    $this->load->view('home');
  }

  public function table1()
  {
    $this->load->view('tabels');
  }

  public function table2()
  {
    $this->load->view('t_frame');
  }

  public function table3()
  {
    $this->load->view('t_baju');
  }

  public function landing()
  {
    $this->load->view('landing');
  }

   public function tampil()
  {
    $this->data['hasil'] = $this->model_data->getUser('member');
    $this->load->view('v_tampil', $this->data);
   
  }
   public function jadi()
  {
     $this->data['kirim'] = $this->model_data->getUser('member');
    $this->load->view('v_jadi', $this->data);
    
  }
  

   function proses(){
         $email = $this->input->post('email');
         $password = $this->input->post('password');
         
         if ($this->user_model->cek_login($email, $password)== TRUE)
         {
             redirect('login/home');
         }else{
              redirect('login');
         }}

    function register()
    {           
        $this->form_validation->set_rules('firstname', 'Firstname', 'required|max_length[20]');           
        $this->form_validation->set_rules('lastname', 'Lastname', 'required|max_length[80]');           
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|max_length[100]');         
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('confirmpassword', 'Confirmpassword', 'required|matches[password]');
        $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
 
        if ($this->form_validation->run() == FALSE) 
        {
            $this->load->view('register');
        }
        else
        {   
            $form_data = array(
                            'firstname' => set_value('firstname'),
                            'lastname' => set_value('lastname'),
                            'email' => set_value('email'),
                            'password' => set_value('password')
                        );
 
            if ($this->user_model->SaveForm($form_data) == TRUE) 
            {
                redirect('login');
            }
            else
            {
            redirect('login/register');
            }
        }
 } 
 		
 }
	