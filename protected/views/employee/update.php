<?php
$this->breadcrumbs=array(
        'Employees'=>array('admin'),
	'Update',
);
?>

<?php
    $fullname = ucwords($model->first_name . ' ' . $model->last_name);
?>

<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','form.employee._form.header_update') . ' : ' . '<span class="text-success bigger-120">' . $fullname .'</span>',
              'headerIcon' => 'icon-user',
              'content' => $this->renderPartial('_form', array('model'=>$model,'user'=>$user), true),
 )); ?>  

<?php $this->endWidget(); ?>