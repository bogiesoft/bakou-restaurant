<?php

/**
 * This is the model class for table "zone".
 *
 * The followings are the available columns in table 'zone':
 * @property integer $id
 * @property string $zone_name
 * @property integer $sort_order
 * @property string $status
 * @property string $modified_date
 *
 * The followings are the available model relations:
 * @property Desk[] $desks
 */
class Zone extends CActiveRecord
{
        public $price_tier_id;
        private $zone_active = '1';
        private $zone_inactive = '0'; 
    
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'zone';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('zone_name', 'required'),
			array('sort_order, location_id', 'numerical', 'integerOnly'=>true),
			array('zone_name', 'length', 'max'=>30),
			array('status', 'length', 'max'=>1),
			array('modified_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, zone_name, location_id, sort_order, status, modified_date', 'safe', 'on'=>'search'),
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
			'desks' => array(self::HAS_MANY, 'Desk', 'zone_id'),
                        'location' => array(self::BELONGS_TO, 'Location', 'location_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'zone_name' => 'Zone Name',
                        'location_id' => 'Branch',
			'sort_order' => 'Sort Order',
			'status' => 'Status',
			'modified_date' => 'Modified Date',
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
		$criteria->compare('zone_name',$this->zone_name,true);
		$criteria->compare('sort_order',$this->sort_order);
                $criteria->with = array( 'location' );
                $criteria->compare('location.id', $this->location_id, true );
                
		//$criteria->compare('status',$this->status,true);
		//$criteria->compare('modified_date',$this->modified_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
                        'pagination'=>false,
                        'sort'=>array( 'defaultOrder'=>'name,zone_name')
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Zone the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
        
        public function getAllZone($location_id) {
            //$model=Zone::model()->findAll('location_id=:location_id', array(':location_id'=>$location_id));
            
            $model = Zone::model()->findAll(array(
                            'order'=>'sort_order',
                            'condition'=>'location_id=:location_id',
                            'params'=>array(':location_id'=>$location_id)
                    ));
            return $model;
        }
        
        protected function getZoneInfo()
        {
            $location = Location::model()->findByPk($this->location_id);
            
            return $this->zone_name . ' ( ' . $location->name . ' ) ';
        }
        
        public function getZone()
        {
            $model = Zone::model()->findAll();
            $list = CHtml::listData($model , 'id', 'ZoneInfo');
            return $list;
        }
        
        public function deleteZone($id)
        {
            $this->updateByPk((int)$id,array('status'=>$this->zone_inactive));
        }
        
        public function undodeleteZone($id)
        {
            $this->updateByPk((int)$id,array('status'=>$this->zone_active));
        }
        
}
