CREATE OR REPLACE VIEW v_order_cart
AS
SELECT s.id sale_id,s.client_id,s.desk_id,s.zone_id,s.employee_id,
oi.item_id,oi.quantity,oi.price,IFNULL(oi.discount_amount,0) discount_amount,oi.discount_type,
i.name,i.quantity qty_in_stock	
FROM sale_order s, sale_order_item oi, item i
WHERE s.id=oi.sale_id AND oi.item_id=i.id

SELECT item_id,`name`,quantity,price,discount_amount discount,
CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
     ELSE price*quantity-discount_amount
END total,
client_id,desk_id,zone_id,employee_id,qty_in_stock
FROM v_order_cart 
WHERE desk_id=2 AND client_id=1 AND zone_id=2

SELECT sale_id
FROM v_order_cart
WHERE desk_id=3

SELECT 
FROM sale_order
WHERE desk_id

SELECT *
FROM sale_order_item oi
WHERE sale_id IN (SELECT id FROM sale_order WHERE desk_id=2 AND client_id=1)
AND item_id=12

SELECT * 
FROM sale_order_item


