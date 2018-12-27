<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_data extends CI_Model

{

	public function getUser($table_name)
	{
		$get_user = $this->db->get($table_name);
		return $get_user->result_array();
	}
}
