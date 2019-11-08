DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategories`()
    NO SQL
BEGIN
SELECT cat_id, cat_title 
FROM store_categories;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getItems`(IN `p_cat_id` INT)
    NO SQL
BEGIN
SELECT item_id, item_title, item_desc, item_price, item_image 
FROM store_items
WHERE cat_id = p_cat_id;
END$$
DELIMITER ;
