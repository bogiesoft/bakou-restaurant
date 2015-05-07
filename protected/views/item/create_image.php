<?php 
$this->breadcrumbs=array(
	'Items'=>array('admin'),
	'Create',
);
?>

<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','Create Item'),
              'headerIcon' => 'icon-tags',
              'content' => $this->renderPartial('_form_image', array('model'=>$model,'price_tiers'=>$price_tiers), true),
 )); ?>  

<?php $this->endWidget(); ?>
