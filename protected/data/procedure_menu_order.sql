DELIMITER $$

DROP PROCEDURE IF EXISTS `proc_menu_order`$$

CREATE DEFINER=`sys`@`192.168.56.168` PROCEDURE `proc_menu_order`(i_sale_time DATE, i_desk_id INT, i_client_id INT,i_zone_id INT,i_employee_id INT,i_item_id INT,i_quantity DOUBLE,i_price DOUBLE)
BEGIN
       DECLARE p_sale_id INT;
	
	INSERT INTO sale (sale_time,desk_id,client_id,zone_id,employee_id)
	VALUES(i_sale_time, i_desk_id, i_client_id,i_zone_id,i_employee_id)
	ON DUPLICATE  KEY UPDATE employee_id=i_employee_id;
	
	SELECT LAST_INSERT_ID() INTO p_sale_id;
	
	INSERT INTO sale_item(sale_id,item_id,quantity,price)
	VALUES(p_sale_id,i_item_id,i_quantity,i_price)
	ON DUPLICATE KEY UPDATE quantity=i_quantity,price=i_price;
	
    END$$

DELIMITER ;