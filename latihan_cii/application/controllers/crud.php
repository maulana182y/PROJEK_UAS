<?php 
 
 
class Crud extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
		$this->load->model('model_data');
		$this->load->helper('url');
 
	}
 
	function member(){
		$this->load->model('model_data');
		$data['member'] = $this->model_data->list_data()->result();
		$this->load->view('v_tampil', $data);
	}
 
	function tambah(){
		$this->load->view('landing');
	}
 

	function tambah_aksi()
	{
		$data_akun = array
		(
		'm_nama' => $this->input->post('m_nama'),
		'm_email' => $this->input->post('m_email'),
		'm_no_tlp' => $this->input->post('m_no_tlp'),
		'm_alamat' => $this->input->post('m_alamat'),
 		);
 		$this->db->insert ('member',$data_akun);
		redirect ('');

		//$data = array(
			
			//'m_nama' => $m_nama,
			//'m_email' => $m_email,
			//'m_no_tlp' => $m_no_tlp,
			//'m_
			//alamat' => $m_alamat,
			//);
		//$this->m_data->input_data($data,'member');
		//redirect('crud/index');
	}
 
}
