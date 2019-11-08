<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
 public function __construct() {
 parent::__construct(); 
 }


 	

 public function load() {
		 $data['display_block'] = "";
		 //Gets all the store categories to display
				 
		 
		 $this->load->model('SeeStore_model');
		   
		 
		 $data['query'] = $this->SeeStore_model->get_store_categories();
		 //If no details found
		 if ($data['query']->num_rows() < 1 ) {
		 $display_block = "<p><em>Sorry, no categories to browse.</em></p>";
		 } else {
		//store categories in the associative array $cats
						
		foreach ($data['query']->result_array() as $cats) {
		 $category_id = $cats['cat_id'];
		 $cat_title = strtoupper(stripslashes($cats['cat_title']));
		 $cat_desc = stripslashes($cats['cat_desc']);
		 //Create a link that when clicked calls the method GetCategoryItems in the CategoryItems_controller
		 $tag =
		 '/CI(ShoppingCart)/index.php/CategoryItems_controller/GetCategoryItems/'.$category_id;
		$data['display_block'] .= "<p><strong><a
		 href=".$tag.">".$cat_title."</a></strong><br/>".$cat_desc."</p>";
		 }
		 }
		 //Load the view passing in all the store categories to be displayed
		 $this->load->view('ShowCategories.php', $data);
		 }
}
?>