
INSERT INTO AuthItem(NAME,TYPE,description,bizrule,DATA)
SELECT
   REPLACE(`name`,'client','zone') NAME,
  `type`,
   REPLACE(`description`,'Client','Zone') description,
  `bizrule`,
  `data`
FROM `AuthItem`
WHERE `name` LIKE 'client%' 