<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tampil_barang extends CI_model

 {

	public function list_barang()
	{
		return $this->db->get('barang');
	}
}
