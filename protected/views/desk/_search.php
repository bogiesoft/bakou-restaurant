<?php
/* @var $this DeskController */
/* @var $model Desk */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form=$this->beginWidget('\TbActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
        'layout'=>TbHtml::FORM_LAYOUT_HORIZONTAL,
)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'name',array('span'=>5,'maxlength'=>15)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'zone_id',array('span'=>5)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'sort_order',array('span'=>5)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'modified_date',array('span'=>5)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton('Search',  array('color' => TbHtml::BUTTON_COLOR_PRIMARY,));?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->