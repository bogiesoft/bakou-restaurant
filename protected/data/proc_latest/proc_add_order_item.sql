DELIMITER $$

USE `bakou_pos_restaurant`$$

DROP PROCEDURE IF EXISTS `proc_add_order_item`$$

CREATE DEFINER=`sys`@`%` PROCEDURE `proc_add_order_item`(i_item_id INT(11),i_item_number VARCHAR(10),i_desk_id INT(11),i_group_id INT(11),i_client_id INT(11),i_employee_id INT(11),i_quantity DOUBLE(15,2),i_price_tier_id INT(11),i_item_parent_id INT(11),i_location_id INT(11))
BEGIN
DECLARE p_sale_id INT(11);
DECLARE p_price DOUBLE(15,4);
DECLARE p_sale_time DATETIME;
DECLARE p_count SMALLINT;
DECLARE p_item_id INT(11);
DECLARE p_status TINYINT DEFAULT 1;
   
START TRANSACTION;   
SELECT 'hi';
SET p_sale_time:=DATE_ADD(NOW(), INTERVAL 0 HOUR);
SET p_item_id=i_item_id;
SELECT COUNT(*) INTO p_count FROM item WHERE item_number=i_item_number;
IF p_count>0 THEN
   SELECT id INTO p_item_id FROM item WHERE item_number=i_item_number;
END IF;
-- We only perform the rest unless there is an Item ID exist in DB
IF p_item_id >0 THEN  
            
	SELECT 
	    CASE WHEN ipt.`price` IS NOT NULL THEN ipt.`price`
		ELSE i.`unit_price`
	    END INTO p_price
	FROM `item` i LEFT JOIN item_price_tier ipt ON ipt.`item_id`=i_item_id
	    AND ipt.`price_tier_id`=i_price_tier_id
	WHERE i.id=p_item_id;
	
	SELECT COUNT(*) INTO p_count 
	FROM sale_order 
	WHERE desk_id=i_desk_id
	AND group_id=i_group_id
	AND location_id=i_location_id
	AND `status`=p_status;
	
	IF p_count=0 THEN 
	
		INSERT INTO sale_order (sale_time,desk_id,group_id,client_id,employee_id,location_id)
		VALUES(p_sale_time, i_desk_id,i_group_id, i_client_id,i_employee_id,i_location_id)
		ON DUPLICATE  KEY UPDATE id=LAST_INSERT_ID(id),employee_id=i_employee_id;
		
		SELECT LAST_INSERT_ID() INTO p_sale_id;
	
	ELSE 
		SELECT id INTO p_sale_id 
		FROM sale_order 
		WHERE desk_id=i_desk_id
		AND group_id=i_group_id
		AND location_id=i_location_id
		AND `status`=p_status; 
	
	END IF;
	
	-- Always update the sale_time and employee_id to the latest execute transaction - consider to create another column modified date instead
	UPDATE sale_order 
	SET empty_flag=1,
	    sale_time=p_sale_time,
	    employee_id=i_employee_id
	WHERE id=p_sale_id
	AND location_id=i_location_id;
	
	UPDATE desk SET occupied=p_status WHERE id=i_desk_id;
	
	INSERT INTO sale_order_item(sale_id,item_id,quantity,price,modified_date,item_parent_id,location_id)
	VALUES(p_sale_id,p_item_id,i_quantity,p_price,p_sale_time,i_item_parent_id,i_location_id)
	ON DUPLICATE KEY UPDATE quantity=quantity+i_quantity,price=p_price;
	
	COMMIT;
	
END IF;
	
END$$

DELIMITER ;