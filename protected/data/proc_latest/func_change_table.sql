DELIMITER $$

USE `bakou_pos_restaurant`$$

DROP FUNCTION IF EXISTS `func_change_table`$$

CREATE DEFINER=`sys`@`%` FUNCTION `func_change_table`( i_desk_id INT(11),i_new_desk_id INT(11), i_group_id INT(11),i_location_id INT(11),i_price_tier_id INT(11),i_employee_id INT(11)) RETURNS INT(11)
BEGIN
    
    DECLARE p_count SMALLINT;
    DECLARE p_group_id SMALLINT;
    DECLARE p_sale_id INT(11);
    DECLARE p_employee_id INT(11);
    DECLARE p_trans_time DATETIME;
    DECLARE p_status TINYINT DEFAULT 1;
    DECLARE p_remark VARCHAR(15) DEFAULT 'CHTBL';
    
    SET p_trans_time:=NOW();
 
    SELECT id,employee_id INTO p_sale_id,p_employee_id
    FROM sale_order 
    WHERE desk_id=i_desk_id
    AND group_id=i_group_id
    AND location_id=i_location_id
    AND `status`=p_status;	
    
    -- Check if the current table there is an Item in cart
    SELECT COUNT(*) INTO p_count
    FROM sale_order_item
    WHERE sale_id=p_sale_id
    AND location_id=i_location_id;
    
    IF p_count>0 THEN
     
	    -- check if the change / same table existed in Sale Ordering we have to set different group (group_id = group_id +1)
	    SELECT COUNT(*) INTO p_count 
	    FROM sale_order 
	    WHERE desk_id=i_new_desk_id 
	    AND group_id=i_group_id 
	    AND location_id=i_location_id
	    AND `status`=p_status;
	    
	    IF p_count>0 THEN
		SELECT MAX(group_id)+1 INTO p_group_id 
		FROM sale_order 
		WHERE desk_id=i_desk_id 
		AND group_id=i_group_id 
		AND location_id=i_location_id
		AND `status`=p_status;    
	    ELSE
		SET p_group_id=i_group_id;
	    END IF; 
	    
	    -- Update New Table to Sale Ordering
	    UPDATE sale_order 
	    SET desk_id=i_new_desk_id,
		group_id=p_group_id,
		employee_id=i_employee_id
	    WHERE desk_id=i_desk_id 
	    AND group_id=i_group_id 
	    AND location_id=i_location_id
	    AND `status`=p_status;
	    
	    UPDATE sale_order_item t1	
	    JOIN (SELECT i.`id`,
		 CASE WHEN ipt.`price` IS NOT NULL THEN ipt.`price`
		      ELSE i.`unit_price`
		 END unit_price
		FROM `item` i LEFT JOIN item_price_tier ipt ON ipt.`item_id`=i.id
			  AND ipt.`price_tier_id`=i_price_tier_id
		) t2  ON t1.item_id=t2.id
	    SET t1.price=t2.unit_price
	    WHERE t1.sale_id=p_sale_id
	    AND t1.location_id=i_location_id;
	    
	    UPDATE desk
	    SET occupied=p_status
	    WHERE id=i_new_desk_id;
	    
	    -- Freeing up the old desk status and ensure not serving in other group
	    UPDATE desk
	    SET occupied=0
	    WHERE id=i_desk_id
	    AND id NOT IN (SELECT DISTINCT desk_id 
			   FROM sale_order 
			   WHERE desk_id=i_desk_id 
			   AND group_id<>i_group_id 
			   AND location_id=i_location_id 
			   AND `status`=p_status
			   AND id IN (SELECT sale_id FROM sale_order_item) );
			   
	   /**** For auditing purpose to be remove if encounter performance issue ***/
	   INSERT INTO sale_order_audit_log(sale_id,cur_desk_id,new_desk_id,cur_group_id,new_group_id,cur_employee_id,new_employee_id,location_id,remark,modified_date)
	   VALUES(p_sale_id,i_desk_id,i_new_desk_id,i_group_id,p_group_id,p_employee_id,i_employee_id,i_location_id,p_remark,p_trans_time);
			 
    END IF;
    
    RETURN p_group_id;
    
    END$$

DELIMITER ;
