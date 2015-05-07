DELETE FROM sale_order;

DELETE FROM sale_order_item;

DELETE FROM sale;

DELETE FROM sale_item;

DELETE FROM sale_payment;

DELETE FROM sale_order_item_print;

UPDATE desk SET occupied=0;

DELETE FROM desk;

DELETE FROM item;

DELETE FROM zone;

DELETE FROM price_tier;

DELETE FROM `category`;

DELETE FROM `price_tier_zone`;

DELETE FROM employee_location WHERE employee_id NOT IN (37,38);

DELETE FROM employee_location WHERE employee_id NOT IN (37,38);

DELETE FROM employee WHERE id NOT IN (37,38);

DELETE FROM location WHERE id<>3;

DELETE FROM rbac_user WHERE id NOT IN (2,3);

ALTER TABLE sale_order AUTO_INCREMENT=1;	

ALTER TABLE sale_payment AUTO_INCREMENT=1;

ALTER TABLE desk AUTO_INCREMENT=1;	

ALTER TABLE zone AUTO_INCREMENT=1;	

ALTER TABLE price_tier AUTO_INCREMENT=1;

ALTER TABLE item AUTO_INCREMENT=1;

ALTER TABLE catetory AUTO_INCREMENT=1;

TRUNCATE TABLE `sale_order_audit_log`;

DELETE FROM rbac_user WHERE id NOT IN (2,3);
