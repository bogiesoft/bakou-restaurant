DELETE FROM AuthAssignment;

DELETE FROM AuthItem;

DELETE FROM rbac_user;

DELETE FROM sale_order;

DELETE FROM sale_order_old;

DELETE FROM sale_order_item;

DELETE FROM sale;

DELETE FROM sale_item;

DELETE FROM sale_payment;

DELETE FROM sale_order_item_print;

UPDATE desk SET occupied=0;

DELETE FROM price_tier_zone;

DELETE FROM zone;

DELETE FROM desk;

DELETE FROM `giftcard` ;

DELETE FROM `item_price_tier`;

DELETE FROM category;

DELETE FROM item;

DELETE FROM item_price_tier;

DELETE FROM employee_location;

DELETE FROM employee;

DELETE FROM rbac_user;

DELETE FROM location;

DELETE FROM price_tier;

ALTER TABLE sale_order AUTO_INCREMENT=1;	

ALTER TABLE sale_payment AUTO_INCREMENT=1;	

ALTER TABLE desk AUTO_INCREMENT=1;	

ALTER TABLE desk AUTO_INCREMENT=1;

ALTER TABLE item_price_tier AUTO_INCREMENT=1;

ALTER TABLE item AUTO_INCREMENT=1;

ALTER TABLE item_price_tier AUTO_INCREMENT=1;

ALTER TABLE location AUTO_INCREMENT=1;

ALTER TABLE price_tier AUTO_INCREMENT=1;

ALTER TABLE price_tier_zone AUTO_INCREMENT=1;


