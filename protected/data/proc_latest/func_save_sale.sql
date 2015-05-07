DELIMITER $$

USE `bakou_pos_restaurant`$$

DROP FUNCTION IF EXISTS `func_save_sale`$$

CREATE DEFINER=`sys`@`%` FUNCTION `func_save_sale`(i_desk_id INT(11), i_group_id INT(11),i_location_id INT(11),i_payment_total DOUBLE,i_employee_id INT(11)) RETURNS INT(11)
BEGIN
	
	DECLARE p_sale_order_id INT(11) DEFAULT -1;
	DECLARE p_sale_id INT(11);
	DECLARE p_status TINYINT DEFAULT 1;
	DECLARE p_zero_status TINYINT DEFAULT 0;
	DECLARE p_trans_time DATETIME;
	DECLARE p_count TINYINT DEFAULT 0;
	
	SET p_trans_time:=NOW();
	
	
	-- Check if there is an active ordering in cart
	SELECT COUNT(*) INTO p_count 
	FROM sale_order
	WHERE desk_id=i_desk_id 
	AND group_id=i_group_id 
	AND location_id=i_location_id 
	AND `status`=p_status;
	
	IF p_count>0 THEN
		
		SELECT id INTO p_sale_order_id 
		FROM sale_order 
		WHERE desk_id=i_desk_id 
		AND group_id=i_group_id 
		AND location_id=i_location_id 
		AND `status`=p_status;
		
		SELECT id INTO p_sale_order_id 
		FROM sale_order 
		WHERE desk_id=i_desk_id 
		AND group_id=i_group_id 
		AND location_id=i_location_id 
		AND `status`=p_status;
		
		-- Updating [sub_total] column
		UPDATE sale_order so
		INNER JOIN (SELECT sale_id,location_id,SUM(price*quantity) sub_total
			    FROM sale_order_item
			    WHERE sale_id=p_sale_order_id
			    AND location_id=i_location_id
			    GROUP BY sale_id,location_id
			   ) soi ON soi.sale_id=so.id AND soi.`location_id`=so.`location_id`
		SET so.sub_total=soi.sub_total
		WHERE so.id=p_sale_order_id;
		
		-- Saving the employee who saving the sale i_employee_id - sometime the ordering employee is different
		INSERT INTO sale(id,sale_time,client_id,desk_id,zone_id,group_id,employee_id,location_id,sub_total,payment_type,STATUS,remark,discount_amount,discount_type)
		SELECT id,sale_time,client_id,desk_id,zone_id,group_id,i_employee_id,location_id,sub_total,payment_type,STATUS,remark,discount_amount,discount_type
		FROM sale_order
		WHERE id=p_sale_order_id
		AND location_id=i_location_id
		AND `status`=p_status;
		
		INSERT INTO sale_item(sale_id,item_id,description,line,quantity,cost_price,unit_price,price,discount_amount,discount_type,item_parent_id,path,location_id)
		SELECT sale_id,item_id,description,line,quantity,cost_price,unit_price,price,discount_amount,discount_type,item_parent_id,path,location_id
		FROM sale_order_item
		WHERE sale_id=p_sale_order_id
		AND location_id=i_location_id; 
		
		-- Inserting payment to sale_payment table
		INSERT INTO sale_payment(`sale_id`,`payment_type`,`payment_amount`,`date_paid`,`modified_date`)
		SELECT p_sale_order_id,'Cash' payment_type,i_payment_total,p_trans_time,p_trans_time;
		
		 -- Freeing up table to available by updating [occupied] = 0 
		 UPDATE desk
		 SET occupied=p_zero_status
		 WHERE id=i_desk_id
		 AND id NOT IN (SELECT DISTINCT desk_id 
			   FROM sale_order 
			   WHERE desk_id=i_desk_id 
			   AND group_id<>i_group_id 
			   AND location_id=i_location_id 
			   AND `status`=p_status
			   AND id IN (SELECT sale_id FROM sale_order_item) );
			   
		-- Updating sale_order status to zero - completed
		UPDATE sale_order 
		SET `status`=p_zero_status
		WHERE id=p_sale_order_id
		AND location_id=i_location_id
		AND `status`=p_status;	 
	
	END IF;  
		
	RETURN p_sale_order_id;
    
 END$$

DELIMITER ;