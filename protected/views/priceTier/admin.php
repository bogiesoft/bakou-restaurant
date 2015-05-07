<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','Price Tier'),
              'headerIcon' => 'ace-icon fa fa-list',
              'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),
)); ?>

<?php
/* @var $this PriceTierController */
/* @var $model PriceTier */

$this->breadcrumbs=array(
	'Price Tier'=>array('admin'),
	'Manage',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#price-tier-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


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
        'icon'=>'ace-icon fa fa-plus white',
        'url'=>$this->createUrl('create'),
        'class'=>'update-dialog-open-link',
        'data-refresh-grid-id'=>'price-tier-grid',
        'data-update-dialog-title' => Yii::t('app','New Price Tier'),
        
)); ?>

<?php $this->widget('yiiwheels.widgets.grid.WhGridView',array(
	'id'=>'price-tier-grid',
        'type' => TbHtml::GRID_TYPE_HOVER,
        'fixedHeader' => true,
        //'responsiveTable' => true,
	'dataProvider'=>$model->search(),
	//'filter'=>$model,
	'columns'=>array(
		'id',
		'tier_name',
		'modified_date',
		//'deleted',
		array(
                    'class'=>'bootstrap.widgets.TbButtonColumn',
                    'header'=> Yii::t('app','Edit'),
                    'template'=>'<div class="btn-group">{update}{delete}</div>',
                    //'htmlOptions'=>array('class'=>'btn-group'),
                    'buttons' => array(
                        'update' => array(
                          'click' => 'updateDialogOpen',
                          'label'=>'Update Price Tier',
                          'icon'=>'ace-icon fa fa-edit',  
                          'options' => array(
                              'data-update-dialog-title' => Yii::t('app','Update Price Tier'),
                              'data-refresh-grid-id'=>'supplier-grid',
                              'class'=>'btn btn-xs btn-info',
                            ), 
                        ),
                        'delete' => array(
                            'label'=>Yii::t('app','Delete Price Tier'),
                            'options' => array(
                                'data-update-dialog-title' => Yii::t('app','form.item._form.header_update'),
                                'titile'=>'Edit Item',
                                'class'=>'btn btn-xs btn-danger',
                             ), 
                        ),
                     ),
		),
	),
)); ?>

<?php $this->endWidget(); ?>