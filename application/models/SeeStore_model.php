<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class SeeStore_model extends CI_Controller
{

    function get_store_categories()
    {
        $categories = $this->db->query('CALL getCategories()');
        return $categories;
    }

    function itemsResutSetToHtmlText($itemsResutSet)
    {
        
    }

    function get_category_items($categoryId)
    {
        $sqlCall = 'Call getItems(' . $categoryId . ')';
        echo '<h1>A' . $sqlCall & '</h1>';
        $itemsResutSet = $this->db->query($sqlCall);

        $output = "";
        foreach ($itemsResutSet->result_array() as $item) {
            $output .= $item['item_title'];
            $output .= " ";
            $output .= $item['item_desc'];
            $output .= "</br>";
        }
        return $output;
    }

}

?>