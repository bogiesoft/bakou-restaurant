<?php

/**
 * This is the model class for table "sale_order".
 *
 * The followings are the available columns in table 'sale_order':
 * @property integer $id
 * @property string $sale_time
 * @property integer $client_id
 * @property integer $desk_id
 * @property integer $zone_id
 * @property integer $group_id
 * @property integer $employee_id
 * @property integer $location_id
 * @property double $sub_total
 * @property string $payment_type
 * @property string $status
 * @property string $remark
 * @property string $discount_amount
 * @property string $discount_type
 * @property integer $giftcard_id
 * @property integer $empty_flag
 */
class SaleOrder extends CActiveRecord
{
        private $active_status=1;
    
        /**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'sale_order';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('sale_time', 'required'),
			array('client_id, desk_id, zone_id, group_id, employee_id, location_id, giftcard_id, empty_flag', 'numerical', 'integerOnly'=>true),
			array('sub_total', 'numerical'),
			array('payment_type', 'length', 'max'=>255),
			array('status', 'length', 'max'=>20),
			array('discount_amount', 'length', 'max'=>15),
			array('discount_type', 'length', 'max'=>2),
			array('remark', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, sale_time, client_id, desk_id, zone_id, group_id, employee_id, location_id, sub_total, payment_type, status, remark, discount_amount, discount_type, giftcard_id, empty_flag', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'sale_time' => 'Sale Time',
			'client_id' => 'Client',
			'desk_id' => 'Desk',
			'zone_id' => 'Zone',
			'group_id' => 'Group',
			'employee_id' => 'Employee',
			'location_id' => 'Location',
			'sub_total' => 'Sub Total',
			'payment_type' => 'Payment Type',
			'status' => 'Status',
			'remark' => 'Remark',
			'discount_amount' => 'Discount Amount',
			'discount_type' => 'Discount Type',
			'giftcard_id' => 'Giftcard',
			'empty_flag' => 'Empty Flag',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('sale_time',$this->sale_time,true);
		$criteria->compare('client_id',$this->client_id);
		$criteria->compare('desk_id',$this->desk_id);
		$criteria->compare('zone_id',$this->zone_id);
		$criteria->compare('group_id',$this->group_id);
		$criteria->compare('employee_id',$this->employee_id);
		$criteria->compare('location_id',$this->location_id);
		$criteria->compare('sub_total',$this->sub_total);
		$criteria->compare('payment_type',$this->payment_type,true);
		$criteria->compare('status',$this->status,true);
		$criteria->compare('remark',$this->remark,true);
		$criteria->compare('discount_amount',$this->discount_amount,true);
		$criteria->compare('discount_type',$this->discount_type,true);
		$criteria->compare('giftcard_id',$this->giftcard_id);
		$criteria->compare('empty_flag',$this->empty_flag);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return SaleOrder the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
        
        public function getOrderCart($desk_id,$group_id,$location_id)
        {   
            $sql="SELECT item_number,item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id,category_id
                FROM (
                SELECT item_number,item_id,`name`,quantity,price,discount_amount discount,
                CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
                     ELSE price*quantity-discount_amount
                END total,
                client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id,category_id
                FROM v_order_cart 
                WHERE desk_id=:desk_id 
                AND group_id=:group_id 
                AND location_id=:location_id
                AND status=:status
                ORDER BY path,modified_date
                ) AS t1";

            return Yii::app()->db->createCommand($sql)->queryAll(true, array(
                    ':desk_id' => $desk_id, 
                    ':group_id'=>$group_id, 
                    ':location_id' => $location_id,
                    ':status'=>$this->active_status)
            );
        }
        
        
        /*
         * To save ordering item replacing saveItem using PHP session
         */
        public function saveOrderingItem($item_id,$table_id,$group_id,$client_id,$employee_id,$quantity,$price_tier_id,$item_parent_id,$location_id)
        {
            $sql="CALL proc_add_order_item(:item_id,:item_number,:desk_id,:group_id,:client_id,:employee_id,:quantity,:price_tier_id,:item_parent_id,:location_id)";
            
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':item_id'=>$item_id, 
                          ':item_number'=>$item_id, 
                          ':desk_id'=>$table_id,
                          ':group_id'=>$group_id,
                          ':client_id'=>$client_id,
                          ':employee_id'=>$employee_id,
                          ':quantity'=>$quantity,
                          ':price_tier_id'=>$price_tier_id,
                          ':item_parent_id'=>$item_parent_id,
                          ':location_id'=>$location_id
                        )
            );
        }
        
        public function getOrderToKitchen($desk_id,$group_id,$location_id,$category_id)
        {   
                $sql="SELECT item_number,item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id
                FROM (
                SELECT t1.item_number,t1.item_id,t1.`name`,(t1.quantity-IFNULL(t2.`quantity`,0)) quantity,t1.price,t1.discount_amount discount,
                CASE WHEN t1.discount_type='%' THEN (t1.price*t1.quantity-t1.price*t1.quantity*t1.discount_amount/100) 
                     ELSE t1.price*t1.quantity-t1.discount_amount
                END total,
                t1.client_id,t1.desk_id,t1.zone_id,t1.employee_id,t1.qty_in_stock,t1.topping,t1.item_parent_id
                FROM v_order_cart t1 LEFT JOIN 
                        (SELECT t2.sale_id,t2.item_id,t2.item_parent_id ,t2.quantity
                         FROM sale_order_item_print t2 , item t3
                         WHERE t3.id=t2.item_id
                         AND t3.category_id=:category_id
                        ) t2
                    ON t2.sale_id=t1.`sale_id`
                    AND t2.item_id=t1.item_id
                    AND t2.item_parent_id=t1.item_parent_id
                WHERE t1.desk_id=:desk_id AND t1.group_id=:group_id and t1.location_id=:location_id
                AND t1.status=:status
                AND (t1.quantity-IFNULL(t2.quantity,0))>0 
                AND t1.category_id=:category_id
                ORDER BY t1.path,t1.modified_date
                ) AS t1";
            
            return Yii::app()->db->createCommand($sql)->queryAll(true, array(
                    ':desk_id' => $desk_id, 
                    ':group_id'=>$group_id, 
                    ':location_id' => $location_id,
                    ':category_id' => $category_id,
                    ':status'=>$this->active_status)
            );
        }
        
        public function savePrintedToKitchen($desk_id,$group_id,$location_id,$category_id)
        {
            $sql="CALL pro_save_pkitchen(:desk_id,:group_id,:location_id,:category_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':desk_id' => $desk_id,
                          ':group_id' => $group_id,
                          ':location_id' => $location_id,
                          ':category_id' => $category_id  
                        )
            );
        }
       
        
        public function getOrderCartTopping($desk_id,$group_id,$location_id)
        {
            $sql="SELECT item_id,`name`,quantity,price,discount_amount discount,
                CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
                     ELSE price*quantity-discount_amount
                END total,
                client_id,desk_id,zone_id,employee_id,qty_in_stock
                FROM v_order_cart 
                WHERE desk_id=:desk_id AND group_id=:group_id and location=:location_id
                AND status=:status
                AND topping=1
                ORDER BY modified_date desc";
            

            return Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => $location_id, ':status'=>$this->active_status));
        }
        
        public function getAllTotal($desk_id,$group_id,$location_id)
        {
            $quantity=0;
            $sub_total=0;
            $total=0;
            $discount_amount=0;
            
            $sql="SELECT sale_id,sum(quantity) quantity,
                    SUM(price*quantity) sub_total,
                    SUM(price*quantity) - (SUM(price*quantity)*IFNULL(so.discount_amount,0)/100) total,
                    SUM(price*quantity)*IFNULL(so.discount_amount,0)/100 discount_amount
                FROM v_order_cart oc JOIN sale_order so
                            ON so.id=oc.sale_id 
                            and so.desk_id=oc.desk_id
                            and so.group_id=oc.group_id
                            and so.location_id=oc.location_id
                WHERE oc.desk_id=:desk_id 
                AND oc.group_id=:group_id 
                AND oc.location_id=:location_id
                and oc.status=:status
                GROUP BY sale_id";
            
            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => $desk_id, ':group_id'=>$group_id, ':location_id' => $location_id,':status'=>$this->active_status));
            if ($result) {
                foreach ($result as $record) {
                    $quantity = $record['quantity'];
                    $sub_total = $record['sub_total'];
                    $total = $record['total'];
                    $discount_amount = $record['discount_amount'];
                }
            } 
            
            return array($quantity, $sub_total, $total, $discount_amount);
        }
        
        /*
        public function getOrderTotalQty($desk_id,$group_id,$location_id) 
        {
             $sql="SELECT SUM(quantity) quantity
                   FROM v_order_cart 
                   WHERE desk_id=:desk_id 
                   AND group_id=:group_id 
                   AND location_id=:location_id
                   AND status=:status"; 

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id,':status'=>$this->active_status));

            foreach ($result as $record) {
                $quantity = $record['quantity'];
            }

            return $quantity;
        }
        
        public function getOrderSubTotal($desk_id,$group_id, $location_id) 
        {
            $sql="SELECT sale_id,SUM(price*quantity) sub_total,
                SUM(price*quantity) - (SUM(price*quantity)*IFNULL(so.discount_amount,0)/100) total
                FROM v_order_cart oc JOIN sale_order so
                        ON so.id=oc.sale_id
                WHERE so.desk_id=:desk_id 
                AND so.group_id=:group_id 
                AND so.location_id=:location_id
                and oc.status=:status
                GROUP BY sale_id";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id,':status'=>$this->active_status));

            if ($result) {
                foreach ($result as $record) {
                    $total = $record['sub_total'];
                }
            } else {
                $total=0;
            }
            
            return $total;
        }
        
        public function getOrderTotal($desk_id,$group_id,$location_id) 
        {
            
            $total=0;
            
            $sql="
                SELECT sale_id,sub_total,
                    CEIL(total/100)*100 total
                FROM (
                    SELECT sale_id,SUM(price*quantity) sub_total,
                    SUM(price*quantity) - (SUM(price*quantity)*IFNULL(so.discount_amount,0)/100) total
                    FROM v_order_cart oc JOIN sale_order so
                            ON so.id=oc.sale_id
                    WHERE so.desk_id=:desk_id 
                    and so.group_id=:group_id 
                    and so.location_id=:location_id
                    and oc.status=:status
                    GROUP BY sale_id
                ) as t1";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id,':status'=>$this->active_status));

            if ($result) {
                foreach ($result as $record) {
                    $total = $record['total'];
                }
            } 
            
            return $total;
        }
        
        public function getOrderDiscount($desk_id,$group_id,$location_id) 
        {
            $total=0;
            
            $sql="SELECT sale_id,
                 SUM(price*quantity)*IFNULL(so.discount_amount,0)/100 discount_amount
                FROM v_order_cart oc JOIN sale_order so
                        ON so.id=oc.sale_id
                WHERE so.desk_id=:desk_id and so.group_id=:group_id 
                and so.location_id=:location_id
                and oc.status=:status
                GROUP BY sale_id";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id,':status'=>$this->active_status));

            foreach ($result as $record) {
                $total = $record['discount_amount'];
            }
            return $total;
        }
         * 
        */
        
        public function delOrderItem($item_id,$item_parent_id,$desk_id,$group_id,$location_id)
        {           
            $sql="CALL proc_del_item_cart(:item_id,:item_parent_id,:desk_id,:group_id,:location_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':item_id' => $item_id,
                          ':item_parent_id' => $item_parent_id,
                          ':desk_id' => $desk_id,
                          ':group_id' => $group_id,
                          ':location_id' => $location_id
                        )
            );
        }
        
        //$item_id,$quantity,$price,$discount,Yii::app()->shoppingCart->getTableId(),1)
        public function editOrderMenu($desk_id,$group_id,$item_id,$quantity,$price,$discount, $item_parent_id,$location_id)
        {
            $sql="CALL proc_edit_menu_order(:desk_id,:group_id,:item_id,:quantity,:price,:discount,:item_parent_id,:location_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':desk_id'=>$desk_id,
                          ':group_id'=>$group_id,
                          ':item_id'=>$item_id,
                          ':quantity'=>$quantity,
                          ':price'=>$price,
                          ':discount'=>$discount,
                          ':item_parent_id'=>$item_parent_id,
                          ':location_id' => $location_id
                        )
            );
        }
        
        public function cancelOrderMenu($desk_id,$group_id,$location_id)
        {
           $sql="delete from sale_order where desk_id=:desk_id and group_id=:group_id and location_id=:location_id ";
           $command= Yii::app()->db->createCommand($sql);
           $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
           $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
           $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
           $command->execute();
        }
        
        public function changeTable($desk_id,$new_desk_id,$group_id,$location_id,$price_tier_id,$employee_id) 
        {
            $sql="SELECT func_change_table(:desk_id,:new_desk_id,:group_id,:location_id,:price_tier_id,:employee_id) group_id";
            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(
                        ':desk_id'=>$desk_id,
                        ':new_desk_id'=>$new_desk_id,
                        ':group_id'=>$group_id, 
                        ':location_id'=>$location_id,
                        ':price_tier_id'=>$price_tier_id,
                        ':employee_id'=>$employee_id
                    )
                );

            foreach ($result as $record) {
                $group_id = $record['group_id'];
            }

            return $group_id;
        }
        
        public function delOrder($desk_id,$group_id,$location_id)
        {
            $sql="CALL proc_del_sale_order(:desk_id,:group_id,:location_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':desk_id'=>$desk_id,
                          ':group_id'=>$group_id,
                          ':location_id' => $location_id
                        )
            );
        }
        
        public function setDisGiftcard($desk_id,$group_id,$giftcard_id,$location_id)
        {
            $model=Giftcard::model()->findByPk($giftcard_id);
            
            if (!$model) {
                $model = Giftcard::model()->find('giftcard_number=:giftcard_number',array(':giftcard_number'=>$giftcard_id));
            }
            
            if (!$model) {
                return false;
            } 
            
            $discount_amount=$model->discount_amount;
            $giftcard_id = $model->id;
            
            $sql="update sale_order 
                  set giftcard_id=:giftcard_id,discount_amount=:discount_amount
                  where desk_id=:desk_id and group_id=:group_id and location_id=:location_id
                  and status=:status";
            
           $command= Yii::app()->db->createCommand($sql);
           $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
           $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
           $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
           $command->bindParam(":giftcard_id", $giftcard_id, PDO::PARAM_INT);
           $command->bindParam(":discount_amount", $discount_amount);
           $command->bindParam(":status", $this->active_status);
           $command->execute();
           
           return true;
        }
        
        public function clearDisGiftcard($desk_id,$group_id,$location_id)
        {
            $sql="update sale_order 
                  set giftcard_id=null,discount_amount=null
                  where desk_id=:desk_id and group_id=:group_id 
                  and location_id=:location_id
                  and status=:status";
            
            $command= Yii::app()->db->createCommand($sql);
            $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
            $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
            $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
            $command->bindParam(":status", $this->active_status);
            $command->execute();
        }

        public function getDisGiftcard($desk_id,$group_id,$location_id)
        {
            $sql="SELECT giftcard_id 
                  FROM sale_order
                  WHERE desk_id=:desk_id AND group_id=:group_id 
                  AND location_id=:location_id
                  and status=:status"; 

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => $desk_id, ':group_id'=>$group_id, ':location_id' => $location_id,':status'=>$this->active_status));

            if ($result) {
                foreach ($result as $record) {
                    $giftcard_id = $record['giftcard_id'];
                }
            } else {
                $giftcard_id=0;
            }
           
            return $giftcard_id;
        }
}
