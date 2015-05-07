<?php
$this->breadcrumbs=array(
        'Employees'=>array('admin'),
	'Create',
);
?>

<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','form.employee._form.header_create'),
              'headerIcon' => 'icon-user',
              'content' => $this->renderPartial('_form', array('model'=>$model,'user'=>$user), true),
 )); ?>  

<?php $this->endWidget(); ?>

<?php //echo $this->renderPartial('_form',array('model'=>$model,'user'=>$user)); ?>


