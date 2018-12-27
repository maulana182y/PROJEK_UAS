<?php
 
class User_model extends CI_Model {
 
  function __construct()
  {
    parent::__construct();
  }
  function SaveForm($form_data)
  {
    $this->db->insert('user', $form_data);
 
    if ($this->db->affected_rows() == '1')
    {
      return TRUE;
    }
 
    return FALSE;
  }
  
     public function cek_login($email, $password){
           $this->db->select('*');
           $this->db->from('user');
           $this->db->where('email', $email);
           $this->db->where('password',$password);

           return $this->db->get()->num_rows(); 
      }

}
?>