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
 * @property double $sub_total
 * @property string $payment_type
 * @property string $status
 * @property string $remark
 * @property string $discount_amount
 * @property string $discount_type
 *
 * The followings are the available model relations:
 * @property Desk $desk
 * @property SaleOrderItem[] $saleOrderItems
 */
class SaleOrder extends CActiveRecord
{
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
			array('client_id, desk_id, zone_id, group_id, employee_id', 'numerical', 'integerOnly'=>true),
			array('sub_total', 'numerical'),
			array('payment_type', 'length', 'max'=>255),
			array('status', 'length', 'max'=>20),
			array('discount_amount', 'length', 'max'=>15),
			array('discount_type', 'length', 'max'=>2),
                        array('modified_date', 'default','value' => date('Y-m-d H:i:s'), 'setOnEmpty' => true, 'on' => 'insert'),
			array('remark', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, sale_time, client_id, desk_id, zone_id, group_id, employee_id, sub_total, payment_type, status, remark, discount_amount, discount_type, modified_date', 'safe', 'on'=>'search'),
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
			'desk' => array(self::BELONGS_TO, 'Desk', 'desk_id'),
			'saleOrderItems' => array(self::HAS_MANY, 'SaleOrderItem', 'sale_id'),
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
			'sub_total' => 'Sub Total',
			'payment_type' => 'Payment Type',
			'status' => 'Status',
			'remark' => 'Remark',
			'discount_amount' => 'Discount Amount',
			'discount_type' => 'Discount Type',
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
		$criteria->compare('sub_total',$this->sub_total);
		$criteria->compare('payment_type',$this->payment_type,true);
		$criteria->compare('status',$this->status,true);
		$criteria->compare('remark',$this->remark,true);
		$criteria->compare('discount_amount',$this->discount_amount,true);
		$criteria->compare('discount_type',$this->discount_type,true);

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
        
        /*
         * To save ordering item replacing saveItem using PHP session
         */
        public function saveOrderingItem($item_id,$table_id,$group_id,$client_id,$employee_id,$quantity,$price_tier_id,$item_parent_id,$location_id)
        {
            $sql="CALL proc_add_order_item(:item_id,:desk_id,:group_id,:client_id,:employee_id,:quantity,:price_tier_id,:item_parent_id,:location_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':desk_id'=>$table_id,
                          ':group_id'=>$group_id,
                          ':client_id'=>$client_id,
                          ':employee_id'=>$employee_id,
                          ':item_id'=>$item_id,
                          ':quantity'=>$quantity,
                          ':price_tier_id'=>$price_tier_id,
                          ':item_parent_id'=>$item_parent_id,
                          ':location_id'=>$location_id
                        )
            );
        }
        
        public function getOrderCart($desk_id,$group_id,$location_id)
        {
            
            $sql="
                SELECT item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping
                FROM (
                SELECT item_id,`name`,quantity,price,discount_amount discount,
                CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
                     ELSE price*quantity-discount_amount
                END total,
                client_id,desk_id,zone_id,employee_id,qty_in_stock,topping
                FROM v_order_cart 
                WHERE desk_id=:desk_id AND group_id=:group_id
                AND topping=0
                ORDER BY modified_date DESC
                ) AS t1
                UNION ALL
                SELECT item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping
                FROM (
                SELECT item_id,`name`,quantity,price,discount_amount discount,
                CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
                     ELSE price*quantity-discount_amount
                END total,
                client_id,desk_id,zone_id,employee_id,qty_in_stock,topping
                FROM v_order_cart 
                WHERE desk_id=:desk_id AND group_id=:group_id
                AND topping=1
                ORDER BY modified_date DESC
                ) AS t2";
            
            $sql="SELECT item_number,item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id
                FROM (
                SELECT item_number,item_id,`name`,quantity,price,discount_amount discount,
                CASE WHEN discount_type='%' THEN (price*quantity-price*quantity*discount_amount/100) 
                     ELSE price*quantity-discount_amount
                END total,
                client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id
                FROM v_order_cart 
                WHERE desk_id=:desk_id AND group_id=:group_id AND location_id=:location_id
                ORDER BY path,modified_date
                ) AS t1";

            return Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));
        }
        
        public function getOrderToKitchen($desk_id,$group_id,$location_id)
        {   
                $sql="SELECT item_number,item_id,`name`,quantity,price,discount,
                total,client_id,desk_id,zone_id,employee_id,qty_in_stock,topping,item_parent_id
                FROM (
                SELECT t1.item_number,t1.item_id,t1.`name`,(t1.quantity-IFNULL(t2.`quantity`,0)) quantity,t1.price,t1.discount_amount discount,
                CASE WHEN t1.discount_type='%' THEN (t1.price*t1.quantity-t1.price*t1.quantity*t1.discount_amount/100) 
                     ELSE t1.price*t1.quantity-t1.discount_amount
                END total,
                t1.client_id,t1.desk_id,t1.zone_id,t1.employee_id,t1.qty_in_stock,t1.topping,t1.item_parent_id
                FROM v_order_cart t1 LEFT JOIN sale_order_item_print t2
                        ON t2.sale_id=t1.`sale_id`
                        AND t2.item_id=t1.item_id
                        AND t2.item_parent_id=t1.item_parent_id
                WHERE t1.desk_id=:desk_id AND t1.group_id=:group_id and t1.location_id=:location_id
                AND (t1.quantity-IFNULL(t2.quantity,0))>0 
                ORDER BY t1.path,t1.modified_date
                ) AS t1";
            
            return Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));
        }
        
        public function savePrintedToKitchen($desk_id,$group_id,$location_id)
        {
            $sql="CALL pro_save_pkitchen(:desk_id,:group_id,:location_id)";
            Yii::app()->db->createCommand($sql)->queryAll(true, 
                    array(':desk_id' => $desk_id,
                          ':group_id' => $group_id,
                          ':location_id' => $location_id
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
                AND topping=1
                ORDER BY modified_date desc";
            

            return Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));
        }
        
        public function getOrderTotalQty($desk_id,$group_id,$location_id) 
        {
             $sql="SELECT SUM(quantity) quantity
                   FROM v_order_cart 
                   WHERE desk_id=:desk_id AND group_id=:group_id and location_id=:location_id"; 

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));

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
                WHERE so.desk_id=:desk_id AND so.group_id=:group_id and so.location_id=:location_id
                GROUP BY sale_id";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));

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
                    WHERE so.desk_id=:desk_id AND so.group_id=:group_id and so.location_id=:location_id
                    GROUP BY sale_id
                ) as t1";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));

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
                WHERE so.desk_id=:desk_id AND so.group_id=:group_id and so.location_id=:location_id
                GROUP BY sale_id";

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id, ':location_id' => (int) $location_id));

            foreach ($result as $record) {
                $total = $record['discount_amount'];
            }
            return $total;
        }
        
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
            $sql="CALL proc_edit_menu_order(:desk_id,:group_id, :item_id,:quantity,:price,:discount,:item_parent_id,:location_id)";
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
        
        public function changeTable($desk_id,$new_desk_id,$group_id,$location_id)
        {
           //Gotta check if the new table already exists in Sale Order we have to set group_id = group_id +1
           $sql1="select group_id from sale_order where desk_id=:desk_id and group_id=:group_id and location_id=:location_id";
           
           $result=Yii::app()->db->createCommand($sql1)->queryAll(true, array(':desk_id' => $new_desk_id, ':group_id'=>$group_id, ':location_id'=>$location_id));

            if ($result) {
                foreach ($result as $record) {
                    $new_group_id = $record['group_id']+1;
                }
            } else {
                $new_group_id = $group_id;
            }
            
            
           $sql="update sale_order set desk_id=:new_desk_id,group_id=:new_group_id where desk_id=:desk_id and group_id=:group_id and location_id=:location_id";
           $command= Yii::app()->db->createCommand($sql);
           $command->bindParam(":new_desk_id", $new_desk_id, PDO::PARAM_INT);
           $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
           $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
           $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
           $command->bindParam(":new_group_id", $new_group_id, PDO::PARAM_INT);
           $command->execute();
           
           return $new_group_id;
        }
        
        public function delOrder($desk_id,$group_id,$location_id)
        {
           $sql="delete from sale_order where desk_id=:desk_id and group_id=:group_id and location_id=:location_id";
           $command= Yii::app()->db->createCommand($sql);
           $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
           $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
           $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
           $command->execute();
        }
        
        public function setDisGiftcard($desk_id,$group_id,$giftcard_id,$location_id)
        {
            $model=Giftcard::model()->findByPk($giftcard_id);
            $discount_amount=$model->discount_amount;
            $sql="update sale_order 
                  set giftcard_id=:giftcard_id,discount_amount=:discount_amount
                  where desk_id=:desk_id and group_id=:group_id and location_id=:location_id";
            
           $command= Yii::app()->db->createCommand($sql);
           $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
           $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
           $command->bindParam(":location_id", $location_id, PDO::PARAM_INT);
           $command->bindParam(":giftcard_id", $giftcard_id, PDO::PARAM_INT);
           $command->bindParam(":discount_amount", $discount_amount);
           $command->execute();
        }
        
        public function clearDisGiftcard($desk_id,$group_id)
        {
            $sql="update sale_order 
                  set giftcard_id=null,discount_amount=null
                  where desk_id=:desk_id and group_id=:group_id";
            
            $command= Yii::app()->db->createCommand($sql);
            $command->bindParam(":desk_id", $desk_id, PDO::PARAM_INT);
            $command->bindParam(":group_id", $group_id, PDO::PARAM_INT);
            $command->execute();
        }

        public function getDisGiftcard($desk_id,$group_id)
        {
            $sql="SELECT giftcard_id FROM sale_order
                  WHERE desk_id=:desk_id  AND group_id=:group_id"; 

            $result=Yii::app()->db->createCommand($sql)->queryAll(true, array(':desk_id' => (int) $desk_id, ':group_id'=>$group_id));

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
