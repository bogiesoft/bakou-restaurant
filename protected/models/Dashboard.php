<?php

class Dashboard extends CFormModel
{

    public function grossSaleAmount()
    {
        $sql = "SELECT date_report,amount,lastweek_amount,format((amount-lastweek_amount)/lastweek_amount*100,0) diff_percent
        FROM (
            SELECT DATE(t1.sale_time) date_report,SUM(t2.sub_total) amount,
            (SELECT SUM(sub_total) amount FROM v_sale_order t1 WHERE location_id=:location_id AND DATE(t1.`sale_time`)=CURDATE()-7 AND `status`=0) lastweek_amount
        FROM `v_sale_order` t1 JOIN `v_sale_order_tem_sum` t2
            ON t2.sale_id = t1.id
        WHERE location_id=:location_id
            AND DATE(t1.`sale_time`)= CURDATE()
        GROUP BY DATE(t1.sale_time)
        ) AS t2";

        $sql="SELECT SUM(amount) amount,SUM(lastweek_amount) lastweek_amount, FORMAT((SUM(amount) - SUM(lastweek_amount))/SUM(lastweek_amount)*100,0) diff_percent
                FROM (
                SELECT SUM(t2.sub_total) amount,0 lastweek_amount
                FROM `v_sale_order` t1 JOIN `v_sale_order_tem_sum` t2
                    ON t2.sale_id = t1.id
                WHERE t1.location_id=:location_id
                AND DATE(t1.`sale_time`)= CURDATE()
                UNION ALL
                SELECT 0 amount,SUM(sub_total) lastweek_amount
                FROM v_sale_order t1
                WHERE location_id=:location_id
                AND DATE(t1.`sale_time`)=CURDATE()-7
                AND `status`=0
                ) AS t2";

        return Yii::app()->db->createCommand($sql)->queryAll(true,
            array(':location_id' => Yii::app()->getsetSession->getLocationId()));
    }

    public function saleInvoice2dVsLW()
    {
        $sql = "SELECT SUM(amount) amount,SUM(lastweek_amount) lastweek_amount, FORMAT((SUM(amount) - SUM(lastweek_amount))/SUM(lastweek_amount)*100,0) diff_percent
                FROM (
                 SELECT COUNT(t1.id) amount,0 lastweek_amount
                 FROM v_sale_order t1
                 WHERE location_id=:location_id
                 AND DATE(t1.`sale_time`)=CURDATE()
                 AND `status`=0
                 UNION ALL
                 SELECT 0 amount, COUNT(t1.id) lastweek_amount
                 FROM v_sale_order t1
                 WHERE location_id=:location_id
                 AND DATE(t1.`sale_time`)=CURDATE()-7
                 AND `status`=0
                ) AS t";

        return Yii::app()->db->createCommand($sql)->queryAll(true,
            array(':location_id' => Yii::app()->getsetSession->getLocationId()));
    }

    public function avgInvoice2dVsLW()
    {
       $sql="SELECT SUM(amount) amount,SUM(lastweek_amount) lastweek_amount, FORMAT((SUM(amount) - SUM(lastweek_amount))/SUM(lastweek_amount)*100,0) diff_percent
            FROM (
                SELECT SUM(amount)/COUNT(sale_id) amount, 0 lastweek_amount
                FROM (
                SELECT t2.`sale_id`,SUM(t2.`price`*t2.`quantity`) amount
                FROM sale_order t1 JOIN sale_order_item t2 ON t2.`sale_id`=t1.`id`
                WHERE t1.`location_id`=:location_id
                AND DATE(t1.`sale_time`)= CURDATE()
                GROUP BY t2.`sale_id`
                ) AS t1
                UNION ALL
                SELECT 0 amount,SUM(sub_total)/COUNT(id) lastweek_amount
                FROM sale_order t1
                WHERE t1.`location_id`=:location_id
                AND t1.status=0
                AND DATE(t1.`sale_time`)= CURDATE()-7
            ) AS t1";

        return Yii::app()->db->createCommand($sql)->queryAll(true,
            array(':location_id' => Yii::app()->getsetSession->getLocationId()));
    }


    public function saleDailyChart()
    {
        $sql = "SELECT date_format(s.sale_time,'%d/%m/%y') date,sum(quantity) quantity,
                   SUM(CASE WHEN si.discount_type='%' THEN (quantity*price-(quantity*price*IFNULL(si.discount_amount,0))/100)
                                ELSE (quantity*price)-si.discount_amount
                    END) amount
                   FROM sale s INNER JOIN sale_item si ON si.sale_id=s.id
                   WHERE s.location_id =:location_id
                   AND ( s.sale_time BETWEEN DATE_FORMAT(NOW() ,'%Y-%m-01') AND NOW() )
                   AND s.status=:status
                   GROUP BY date_format(s.sale_time,'%d/%m/%y')
                   ORDER BY 1";

        return Yii::app()->db->createCommand($sql)->queryAll(true, array(
            ':status' => Yii::app()->params['sale_complete_status'],
            ':location_id' => Yii::app()->getsetSession->getLocationId()
        ));
    }

    public function dashtopProduct()
    {

        $sql = "SELECT  @ROW := @ROW + 1 AS rank,item_name,qty,amount
                FROM (
                SELECT (SELECT NAME FROM item i WHERE i.id=si.item_id) item_name,COUNT(*) qty,SUM(price*quantity) amount
                FROM sale_item si INNER JOIN sale s ON s.id=si.sale_id
                     AND s.locatoin_id=:locatoin_id
                     AND sale_time BETWEEN DATE_FORMAT(NOW() ,'%Y') AND NOW()
                     AND s.status=:status
                GROUP BY item_name
                ORDER BY qty DESC LIMIT 10
                ) t1, (SELECT @ROW := 0) r";

        $rawData = Yii::app()->db->createCommand($sql)->queryAll(true, array(
            ':location_id' => Yii::app()->getsetSession->getLocationId(),
            ':status' => Yii::app()->params['sale_complete_status']
        ));

        $dataProvider = new CArrayDataProvider($rawData, array(
            'keyField' => 'rank',
            'sort' => array(
                'attributes' => array(
                    'sale_time',
                ),
            ),
            'pagination' => false,
        ));

        return $dataProvider; // Return as array object
    }

    public function dashtopProductbyAmount()
    {

        $sql = "SELECT  @ROW := @ROW + 1 AS rank,item_name,qty,amount
                FROM (
                SELECT (SELECT NAME FROM item i WHERE i.id=si.item_id) item_name,COUNT(*) qty,SUM(price*quantity) amount
                FROM sale_item si INNER JOIN sale s ON s.id=si.sale_id
                     AND s.locatoin_id=:locatoin_id
                     AND sale_time BETWEEN DATE_FORMAT(NOW() ,'%Y') AND NOW()
                     AND s.status=:status
                GROUP BY item_name
                ORDER BY amount DESC LIMIT 10
                ) t1, (SELECT @ROW := 0) r";

        $rawData = Yii::app()->db->createCommand($sql)->queryAll(true, array(
            ':location_id' => Yii::app()->getsetSession->getLocationId(),
            ':status' => Yii::app()->params['sale_complete_status']
        ));

        $dataProvider = new CArrayDataProvider($rawData, array(
            'keyField' => 'rank',
            'sort' => array(
                'attributes' => array(
                    'sale_time',
                ),
            ),
            'pagination' => false,
        ));

        return $dataProvider; // Return as array object
    }

    public function dashtopFood()
    {
        $sql = "SELECT  @ROW := @ROW + 1 AS rank,item_name,qty,amount
                    FROM (
                    SELECT i.name item_name,SUM(si.quantity) qty,SUM(si.quantity*si.price) amount
                    FROM sale s , sale_item si , item i
                    WHERE s.id=si.sale_id
                    AND si.item_id=i.id
                    AND YEAR(s.sale_time) = YEAR(NOW())
                    AND s.status='1'
                    AND category_id=9
                    GROUP BY i.name
                    ORDER BY qty DESC LIMIT 10
                    ) t1, (SELECT @ROW := 0) r
                ";

        $rawData = Yii::app()->db->createCommand($sql)->queryAll(true);

        $dataProvider = new CArrayDataProvider($rawData, array(
            'keyField' => 'rank',
            'pagination' => false,
        ));

        return $dataProvider;
    }

    public function dashtopBeverage()
    {
        $sql = "SELECT  @ROW := @ROW + 1 AS rank,item_name,qty,amount
                    FROM (
                    SELECT i.name item_name,SUM(si.quantity) qty,SUM(si.quantity*si.price) amount
                    FROM sale s , sale_item si , item i
                    WHERE s.id=si.sale_id
                    AND si.item_id=i.id
                    AND YEAR(s.sale_time) = YEAR(NOW())
                    AND s.status='1'
                    AND category_id=1
                    GROUP BY i.name
                    ORDER BY qty DESC LIMIT 10
                    ) t1, (SELECT @ROW := 0) r
                ";

        $rawData = Yii::app()->db->createCommand($sql)->queryAll(true);

        $dataProvider = new CArrayDataProvider($rawData, array(
            'keyField' => 'rank',
            'pagination' => false,
        ));

        return $dataProvider;
    }

}
