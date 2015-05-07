SELECT IFNULL(`name`,'Total Food & Beverage'),total,total_flag
FROM (
SELECT 
     IFNULL(vs.`name`,c.name) `name`,
     IFNULL(vs.`name`,'1') total_flag,
     SUM(vs.quantity) qty,SUM(vs.price) price,SUM(vs.quantity*vs.price) total
FROM v_sale_cart vs LEFT JOIN category c ON c.id=vs.category_id
WHERE DATE(sale_time)=CURDATE()
AND employee_id=38
GROUP BY c.`name`,vs.`name`
WITH ROLLUP
) AS t

ORDER BY quantity,category_id DESC

SELECT * FROM category

SELECT SUM(sub_total) sub_total,
      SUM(sub_total*discount_amount/100) discount_amount,
      SUM(sub_total)-SUM(sub_total*discount_amount/100) total
FROM sale
WHERE DATE(sale_time)=CURDATE()
AND employee_id=38
AND location_id=:locatin_id
