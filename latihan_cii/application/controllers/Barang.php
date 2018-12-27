<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller{


   public function index()
   {
   $this->load->model('tampil_barang');
   $data['barang'] = $this->tampil_barang->list_barang()->result();
   $this->load->view('view_barang',$data);
   }

public function tambah_data(){
	$this->load->view('data');
}


public function simpan_data(){
	$data_barang = array (
		'id_barang' => $this->input->post('id'),
		'nama_barang' => $this->input->post('nama'),
		'harga' => $this->input->post('harga'),
		'ket' => $this->input->post('ket')
	);

	$this->db->insert('barang',$data_barang);
	redirect('barang/index');
}
}

?>