<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SeeStore_model extends CI_Controller {

	function get_store_categories() {
		
		$categories = $this->db->query('CALL getCategories()');
		
		return $categories; 
	}
}


?>