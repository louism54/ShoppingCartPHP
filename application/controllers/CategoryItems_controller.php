<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CategoryItems_controller extends CI_Controller {
 public function GetCategoryItems($cat_id) {

 $data['display_block'] = "";
 $data['display_block'] = $this->SeeStore_model->get_category_items($cat_id);
 //Load the view passing in all the store categories to be displayed
 $this->load->view('ShowCategoryItemDetails', $data);
 }
}

?>