<div class="span10" style="float: none;margin-left: auto; margin-right: auto;">
<?php
$this->breadcrumbs=array(
	'Item'=>array('item/admin'),
	'Categories',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('category-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','form.category.admin.header_title'),
              'headerIcon' => 'icon-list',
));?> 

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget( 'ext.modaldlg.EModalDlg' ); ?>

<?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'plus white',
        'url'=>$this->createUrl('create'),
        'class'=>'update-dialog-open-link',
        'data-update-dialog-title' => Yii::t('app','form.category._form.header_create'),
        'data-refresh-grid-id'=>'category-grid',
)); ?>

<?php echo TbHtml::linkButton(Yii::t( 'app', 'Back to Item' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'plus undo',
        'url'=>$this->createUrl('item/admin'),
)); ?>


<?php $this->widget('yiiwheels.widgets.grid.WhGridView',array(
	'id'=>'category-grid',
        'fixedHeader' => true,
        'headerOffset' => 40,
        'responsiveTable' => true,
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'name',
		'created_date',
		'modified_date',
		array('class'=>'bootstrap.widgets.TbButtonColumn',
                      //'template'=>'{update}{delete}{payment}',
                      'buttons' => array(
                          'update' => array(
                            'click' => 'updateDialogOpen',
                            'label'=>'Update Category',
                            'options' => array(
                                'data-update-dialog-title' => Yii::t( 'app', 'form.category._form.header_update' ),
                                'data-refresh-grid-id'=>'category-grid',
                              ), 
                          ),
                       ),
                ),
	),
)); ?>

<?php $this->endWidget(); ?>

</div>
