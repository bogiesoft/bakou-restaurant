<?php
/* @var $this GiftcardController */
/* @var $model Giftcard */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form=$this->beginWidget('\TbActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
        'layout'=>TbHtml::FORM_LAYOUT_HORIZONTAL,
)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'giftcard_number',array('span'=>5,'maxlength'=>60)); ?>

                    <?php echo $form->textFieldControlGroup($model,'discount_amount',array('span'=>5,'maxlength'=>15)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'discount_type',array('span'=>5,'maxlength'=>2)); ?>

                    <?php //echo $form->textFieldControlGroup($model,'status',array('span'=>5,'maxlength'=>1)); ?>

                    <?php echo $form->textFieldControlGroup($model,'client_id',array('span'=>5)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton('Search',  array('color' => TbHtml::BUTTON_COLOR_PRIMARY,));?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->