<?php
/* @var $this LocationController */
/* @var $model Location */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form=$this->beginWidget('\TbActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
        'layout'=>TbHtml::FORM_LAYOUT_HORIZONTAL,
)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'name',array('span'=>5,'maxlength'=>100)); ?>

                    <?php //echo $form->textAreaControlGroup($model,'address',array('rows'=>6,'span'=>8)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'phone',array('span'=>5,'maxlength'=>20)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'phone1',array('span'=>5,'maxlength'=>20)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'email',array('span'=>5,'maxlength'=>30)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton('Search',  array('color' => TbHtml::BUTTON_COLOR_PRIMARY,));?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->