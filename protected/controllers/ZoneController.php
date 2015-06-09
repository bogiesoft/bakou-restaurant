<?php

class ZoneController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','admin','delete', 'undodelete','SetPrice'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
        
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
            if (Yii::app()->request->isAjaxRequest) {

            Yii::app()->clientScript->scriptMap['*.js'] = false;

            echo CJSON::encode(array(
                'status' => 'render',
                'div' => $this->renderPartial('view', array('model' => $this->loadModel($id)), true, false),
            ));

            Yii::app()->end();
            } else {
                $this->render('view',array(
                        'model'=>$this->loadModel($id),
                ));
            }
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Zone;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                if (Yii::app()->user->checkAccess('zone.create'))
                {
                    if(isset($_POST['Zone']))
                    {
                            $model->attributes=$_POST['Zone'];
                            if($model->validate())
                            {
                                $transaction=Yii::app()->db->beginTransaction();
                                try 
                                {
                                    if($model->save())
                                    { 
                                        $transaction->commit();

                                        Yii::app()->clientScript->scriptMap['jquery.js'] = false;
                                        echo CJSON::encode(array(
                                           'status'=>'success',
                                           'div'=>"<div class=alert alert-info fade in>Successfully added ! </div>",
                                           ));
                                        
                                        
                                        Yii::app()->end();
                                    }
                                }catch (Exception $e)
                                {
                                   $transaction->rollback();
                                } 
                                
                            }
                    }
                }
                else {
                    throw new CHttpException(403, 'You are not authorized to perform this action');
                }

		if(Yii::app()->request->isAjaxRequest)
                {
                    $cs=Yii::app()->clientScript;
                    $cs->scriptMap=array(
                        'jquery.js'=>false,
                        'bootstrap.js'=>false,
                        'jquery.min.js'=>false,
                        'bootstrap.notify.js'=>false,
                        'bootstrap.bootbox.min.js'=>false,
                    );

                    echo CJSON::encode( array(
                        'status' => 'render',
                        'div' => $this->renderPartial( '_form', array('model' => $model),true,false),
                    ));

                    Yii::app()->end();
                }
                else
                {
                    $this->render('create',array('model' => $model)); 
                }

	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                if (Yii::app()->user->checkAccess('zone.update'))
                {
                    if(isset($_POST['Zone']))
                    {
                            $model->attributes=$_POST['Zone'];
                            if ($model->validate())
                            {    
                                $transaction=$model->dbConnection->beginTransaction(); 
                                try
                                {
                                    if ($model->save())
                                    {  
                                        $transaction->commit(); 
                                        Yii::app()->clientScript->scriptMap['jquery.js'] = false;
                                        echo CJSON::encode(array(
                                            'status'=>'success',
                                            'div'=>"<div class=alert alert-info fade in> Successfully updated ! </div>",
                                            ));
                                        Yii::app()->end();

                                    }
                                }catch(Exception $e)
                                {
                                    $transaction->rollback();
                                    print_r($e);
                                } 
                            }
                    }
                }
                else {
                    throw new CHttpException(403, 'You are not authorized to perform this action');
                }

		if(Yii::app()->request->isAjaxRequest)
                {
                    $cs=Yii::app()->clientScript;
                    $cs->scriptMap=array(
                        'jquery.js'=>false,
                        'bootstrap.js'=>false,
                        'jquery.min.js'=>false,
                        'bootstrap.notify.js'=>false,
                        'bootstrap.bootbox.min.js'=>false,
                    );

                    echo CJSON::encode( array(
                        'status' => 'render',
                        'div' => $this->renderPartial( '_form', array('model' => $model),true,false),
                    ));

                    Yii::app()->end();
                }
                else
                {
                    $this->render('update',array('model' => $model)); 
                }
                
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
            if (Yii::app()->user->checkAccess('zone.delete')) {
                if (Yii::app()->request->isPostRequest) {
                    //$this->loadModel($id)->delete();
                    Zone::model()->deleteZone($id);
                    
                    // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
                    if (!isset($_GET['ajax'])) {
                            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
                    }
		} else {
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
		}
            } else {
                throw new CHttpException(403, 'You are not authorized to perform this action');
            }
	}
        
        public function actionUndoDelete($id)
	{
            if (Yii::app()->user->checkAccess('zone.delete')) {
                if (Yii::app()->request->isPostRequest) {
                    //$this->loadModel($id)->delete();
                    Zone::model()->undodeleteZone($id);
                    
                    // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
                    if (!isset($_GET['ajax'])) {
                            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
                    }
		} else {
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
		}
            } else {
                throw new CHttpException(403, 'You are not authorized to perform this action');
            }
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Zone');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
    public function actionAdmin()
    {
        if (Yii::app()->user->checkAccess('zone.index') || Yii::app()->user->checkAccess('zone.update') || Yii::app()->user->checkAccess('zone.create')) {
            $model = new Zone('search');
            $model->unsetAttributes();  // clear any default values
            if (isset($_GET['Zone'])) {
                $model->attributes = $_GET['Zone'];
            }

            $this->render('admin', array(
                'model' => $model,
            ));
        } else {
            throw new CHttpException(403, 'You are not authorized to perform this action');
        }
    }

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Zone the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Zone::model()->findByPk($id);
		if ($model===null) {
			throw new CHttpException(404,'The requested page does not exist.');
		}
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Zone $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if (isset($_POST['ajax']) && $_POST['ajax']==='zone-form') {
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
        
        protected function gridTableColumn($data,$row)
        {
            $model= Desk::model()->count('zone_id=:zoneId', array(':zoneId'=>$data->id));

            echo CHtml::link($model. ' Tables',
                        array('desk/admin','zone_id'=>$data->id)). ' / ' . CHtml::link('Add new',array('desk/create','zone_id'=>$data->id), 
                        array('class'=>'update-dialog-open-link',
                            //'data-refresh-grid-id'=>'zone-grid',
                            'data-update-dialog-title' => Yii::t( 'app', 'New Table' ),
                        )
                  );
          
        } 
        
        protected function gridPriceTierColumn($data,$row)
        {
            $model= PriceTierZone::model()->findByPk($data->id);
            if ($model) {
                $price_tier = PriceTier::model()->findByPk($model->price_tier_id);
                $tier_name = $price_tier !==null ? $price_tier->tier_name : 'N/A';
                echo TbHtml::encode($tier_name);
            } else {
                echo TbHtml::encode(Null);
            }
          
        } 
        
        public function actionSetPrice($id)
	{
		//$model=$this->loadModel($id);
                
                $model = PriceTierZone::model()->findByPk($id);
                
                if (!isset($model)) {
                    $model = new PriceTierZone; 
                }
                
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                if (Yii::app()->user->checkAccess('zone.update'))
                {
                    if(isset($_POST['PriceTierZone']))
                    {
                            $model->attributes=$_POST['PriceTierZone'];
                            if($model->validate())
                            {
                                $transaction=Yii::app()->db->beginTransaction();
                                try 
                                {
                                    if($model->save())
                                    { 
                                        $transaction->commit();

                                        Yii::app()->clientScript->scriptMap['jquery.js'] = false;
                                        echo CJSON::encode(array(
                                           'status'=>'success',
                                           'div'=>"<div class=alert alert-info fade in>Successfully added ! </div>",
                                           ));
                                        
                                        
                                        Yii::app()->end();
                                    }
                                }catch (Exception $e)
                                {
                                   $transaction->rollback();
                                } 
                                
                            }
                    }
                }
                else {
                    throw new CHttpException(403, 'You are not authorized to perform this action');
                }

		if(Yii::app()->request->isAjaxRequest)
                {
                    $cs=Yii::app()->clientScript;
                    $cs->scriptMap=array(
                        'jquery.js'=>false,
                        'bootstrap.js'=>false,
                        'jquery.min.js'=>false,
                        'bootstrap.notify.js'=>false,
                        'bootstrap.bootbox.min.js'=>false,
                    );

                    echo CJSON::encode( array(
                        'status' => 'render',
                        'div' => $this->renderPartial( '_set_price', array('model' => $model),true,false),
                    ));

                    Yii::app()->end();
                }
                else
                {
                    $this->render('_set_price',array('model' => $model)); 
                }

	}
}