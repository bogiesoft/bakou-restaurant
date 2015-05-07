CREATE TABLE menugroups(NAME VARCHAR(100),PrintOdr INT);
INSERT INTO menugroups(NAME,PrintOdr) VALUES ('Starters',1),('Deserts',2),('Soups',3);
CREATE TABLE orders(ID VARCHAR(2),NAME VARCHAR(100),MenuGrp VARCHAR(100),TableNo INT,rate DECIMAL(10,2));
INSERT INTO orders(ID,NAME,MenuGrp,TableNo,rate) VALUES
 ('1','Sandwich','Starters',1,3),
 ('1','Sandwich','Starters',1,3),
 ('2','Chips','Starters',1,2),
 ('3','Brownie','Deserts',1,4),
 ('3','Brownie','Deserts',1,4),
 (' ','IceCream','Deserts',1,5),
  (' ','IceCream+','Deserts',1,5),
 ('1','Sandwich','Starters',1,3),
 (' ','Cheese','Starters',1,.50),
 (' ','Chedder','Starters',1,.75),
 ('2','Chips','Starters',1,2);
 (' ','Bee++','Starters',1,2);
 
INSERT INTO  orders(ID,NAME,MenuGrp,TableNo,rate) VALUES (' ','Bee++','Starters',1,2);
 
 SELECT IF(IsTopping, CONCAT("+",t3.Name),t3.Name) AS DisplayName,
 COUNT(*) AS Qty,
 t3.rate,t3.rate * COUNT(*) AS price,
 IF(HasTopping,CONCAT(t3.Name,newId),
 IF(isTopping,CONCAT(t3.Name,newId),CONCAT(t3.Name,ID))) AS newName
FROM
(SELECT *,IF (EXISTS (SELECT 1 FROM
                       (SELECT *,IF (ID = ' ',@newId2,@newId2:=@newId2+1) AS newID,
                                 IF (ID = ' ',1,0) AS isTopping 
                        FROM orders,(SELECT @newId2:=1000)var
                       )t2
                      WHERE t2.newId = t1.newId
                      AND t2.isTopping = 1
                      ) AND isTopping = 0,1,0
             ) AS hasTopping
 FROM (SELECT *,IF (ID = ' ',@newId,@newId:=@newId+1) AS newID,
                IF (ID = ' ',1,0) AS isTopping 
       FROM orders,(SELECT @newId:=1000)var
       )t1
)t3 INNER JOIN menugroups mg ON mg.Name = t3.MenuGrp
GROUP BY DisplayName,NewName,rate
ORDER BY mg.PrintOdr,t3.newId,t3.isTopping;


