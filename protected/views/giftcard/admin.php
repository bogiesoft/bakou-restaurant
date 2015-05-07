<?php
/* @var $this GiftcardController */
/* @var $model Giftcard */


$this->breadcrumbs=array(
	'Giftcards'=>array('admin'),
	'Manage',
);

/*
$this->menu=array(
	array('label'=>'List Giftcard', 'url'=>array('index')),
	array('label'=>'Create Giftcard', 'url'=>array('create')),
);
 * 
*/

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#giftcard-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<div class="row">
  <div class="col-xs-12 widget-container-col ui-sortable">
  
    <?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
                      'title' => Yii::t( 'app', 'Gift Cards' ),
                      'headerIcon' => 'menu-icon fa fa-gift',
                      'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),  
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
                'icon'=>'glyphicon-plus white',
                'url'=>$this->createUrl('create'),
                'class'=>'update-dialog-open-link',
                'data-update-dialog-title' => Yii::t( 'app', 'New Giftcard' ),
                'data-refresh-grid-id'=>'giftcard-grid',
        )); ?>

        <?php $this->widget('\TbGridView',array(
                'id'=>'giftcard-grid',
                'dataProvider'=>$model->search(),
                //'filter'=>$model,
                'columns'=>array(
                        'id',
                        'giftcard_number',
                        'discount_amount',
                        //'discount_type',
                        //'status',
                        'client_id',
                       array('class'=>'bootstrap.widgets.TbButtonColumn',
                            'template'=>'<div class="hidden-sm hidden-xs btn-group">{view}{update}{delete}</div>',  
                            'htmlOptions'=>array('class'=>'nowrap'),
                            'buttons' => array(
                                'view' => array(
                                  'click' => 'updateDialogOpen',    
                                  'url'=>'Yii::app()->createUrl("giftcard/view/",array("id"=>$data->id))',
                                  'options' => array(
                                      'class'=>'btn btn-xs btn-success',
                                      'data-update-dialog-title' => Yii::t( 'app', 'View Giftcard' ),
                                    ),   
                                ),
                                'update' => array(
                                  'icon' => 'ace-icon fa fa-edit',
                                  'click' => 'updateDialogOpen',  
                                  'label'=>'Update Giftcard',  
                                  'options' => array(
                                      'class'=>'btn btn-xs btn-info',
                                       'data-update-dialog-title' => Yii::t( 'app', 'Update Giftcard' ),
                                       'data-refresh-grid-id'=>'giftcard-grid',
                                    ), 
                                ),   
                                'delete' => array(
                                   'label'=>'Delete',
                                   'options' => array(
                                      'class'=>'btn btn-xs btn-danger',
                                    ), 
                                ),
                             ),
                        ),
                        array('class'=>'bootstrap.widgets.TbButtonColumn',
                            'template'=>'<div class="hidden-md hidden-lg"><div class="inline position-relative">
                                            <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto"><i class="ace-icon fa fa-cog icon-only bigger-110"></i></button>
                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                            <li>{view}</li><li>{update}</li><li>{delete}</li>
                                            </ul></div></div>', 
                            'htmlOptions'=>array('class'=>'nowrap'),
                            'buttons' => array(
                                'view' => array(
                                  'click' => 'updateDialogOpen',    
                                  'url'=>'Yii::app()->createUrl("giftcard/view/",array("id"=>$data->id))',
                                  'options' => array(
                                      'class'=>'btn btn-xs btn-success',
                                      'data-update-dialog-title' => Yii::t( 'app', 'View Giftcard' ),
                                    ),   
                                ),
                                'update' => array(
                                  'icon' => 'ace-icon fa fa-edit',
                                  'click' => 'updateDialogOpen',  
                                  'label'=>'Update Giftcard',  
                                  'options' => array(
                                      'class'=>'btn btn-xs btn-info',
                                       'data-update-dialog-title' => Yii::t( 'app', 'Update Giftcard' ),
                                       'data-refresh-grid-id'=>'giftcard-grid',
                                    ), 
                                ),   
                                'delete' => array(
                                   'label'=>'Delete',
                                   'options' => array(
                                      'class'=>'btn btn-xs btn-danger',
                                    ), 
                                ),
                             ),
                        ),
                  ),
        )); ?>
        
         <?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
                'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                'size'=>TbHtml::BUTTON_SIZE_SMALL,
                'icon'=>'glyphicon-plus white',
                'url'=>$this->createUrl('create'),
                'class'=>'update-dialog-open-link',
                'data-update-dialog-title' => Yii::t( 'app', 'New Giftcard' ),
                'data-refresh-grid-id'=>'giftcard-grid',
        )); ?>
     
     <?php $this->endWidget(); ?>
    
  </div>
</div>