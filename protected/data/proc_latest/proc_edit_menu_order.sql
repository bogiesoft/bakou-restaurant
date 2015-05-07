DELIMITER $$

USE `bakou_pos_restaurant`$$

DROP PROCEDURE IF EXISTS `proc_edit_menu_order`$$

CREATE DEFINER=`sys`@`192.168.56.168` PROCEDURE `proc_edit_menu_order`(i_desk_id INT, i_group_id INT,i_item_id INT,i_quantity DOUBLE(15,2),i_price DOUBLE(15,2),i_discount DOUBLE(15,2), i_item_parent_id INT(11),i_location_id INT(11))
BEGIN
DECLARE p_sale_id INT(11);
DECLARE p_status TINYINT DEFAULT 1;
   
START TRANSACTION;   
SELECT 'hi';
       
SELECT id INTO p_sale_id 
FROM sale_order 
WHERE desk_id=i_desk_id 
AND group_id=i_group_id 
AND location_id=i_location_id 
AND `status`=p_status;

UPDATE sale_order_item
SET quantity=i_quantity
WHERE sale_id=p_sale_id
AND location_id=i_location_id
AND item_id=i_item_id
AND item_parent_id= i_item_parent_id;

COMMIT;
	
END$$

DELIMITER ;