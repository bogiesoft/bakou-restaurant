DELETE FROM sale_order;

DELETE FROM sale_order_item;

DELETE FROM sale;

DELETE FROM sale_item;

DELETE FROM sale_payment;

DELETE FROM sale_order_item_print;

UPDATE desk SET occupied=0;

ALTER TABLE sale_order AUTO_INCREMENT=1;	

ALTER TABLE sale_payment AUTO_INCREMENT=1;	

TRUNCATE TABLE `sale_order_audit_log`;