DELIMITER $$

USE `bakou_pos_restaurant`$$

DROP PROCEDURE IF EXISTS `proc_del_item_cart`$$

CREATE DEFINER=`sys`@`%` PROCEDURE `proc_del_item_cart`(i_item_id INT(11),i_item_parent_id INT(11),i_desk_id INT(11),i_group_id INT(11),i_location_id INT(11))
BEGIN
	DECLARE p_sale_order_id INT(11);
	DECLARE p_count INT(11);
	DECLARE p_status TINYINT DEFAULT 1;
	
	SELECT 'hi';	
	
	SELECT id INTO p_sale_order_id FROM sale_order 
	WHERE desk_id=i_desk_id 
	AND group_id=i_group_id 
	AND location_id=i_location_id 
	AND `status`=p_status;
	
	DELETE 
	FROM sale_order_item 
	WHERE sale_id=p_sale_order_id 
	AND location_id=i_location_id
	AND item_id=i_item_id 
	AND item_parent_id=i_item_parent_id;
	
	SELECT COUNT(*) INTO p_count 
	FROM sale_order_item 
	WHERE sale_id=p_sale_order_id
	AND location_id=i_location_id;
	
	IF p_count=0 THEN
	  
	    -- Freeing up desk status
	    UPDATE desk
	    SET occupied=0
	    WHERE id=i_desk_id
	    AND id NOT IN (SELECT DISTINCT desk_id 
			   FROM sale_order 
			   WHERE desk_id=i_desk_id 
			   AND group_id<>i_group_id 
			   AND location_id=i_location_id 
			   AND `status`=p_status
			   AND id IN (SELECT sale_id FROM sale_order_item));
	    
	END IF;
	
    END$$

DELIMITER ;