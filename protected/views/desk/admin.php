<?php
/* @var $this DeskController */
/* @var $model Desk */

$this->breadcrumbs=array(
        'Zone'=>array('zone/admin'),
	'Desk'=>array('admin'),
	'Manage',
);


Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#desk-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<div id="desk_cart">

    <?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
                   'title' => Yii::t( 'app', 'List of Table' ),
                   'headerIcon' => 'ace-icon fa fa-beer',
                   'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),
     ));?> 

   <?php echo TbHtml::linkButton(Yii::t('app','Search'),array('class'=>'search-button btn','size'=>TbHtml::BUTTON_SIZE_SMALL,'icon'=>'ace-icon fa fa-search',)); ?>
   <div class="search-form" style="display:none">
   <?php $this->renderPartial('_search',array(
           'model'=>$model,
   )); ?>
   </div><!-- search-form -->

    <?php $this->widget( 'ext.modaldlg.EModalDlg' ); ?>

   <?php if (Yii::app()->user->checkAccess('zone.create')) { ?>
   
        <?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
                'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                'size'=>TbHtml::BUTTON_SIZE_SMALL,
                'icon'=>'glyphicon-plus white',
                'url'=>$this->createUrl('create'),
                'class'=>'update-dialog-open-link',
                'data-update-dialog-title' => Yii::t( 'app', 'New Table' ),
                'data-refresh-grid-id'=>'desk-grid',
        )); ?>
   
   <?php } ?>

   <?php echo TbHtml::linkButton(Yii::t( 'app', 'Back to Zone' ),array(
           'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
           'size'=>TbHtml::BUTTON_SIZE_SMALL,
           'icon'=>'fa-icon fa fa-undo',
           'url'=>$this->createUrl('zone/admin'),
   )); ?>

   <?php $this->widget('\TbGridView',array(
           'id'=>'desk-grid',
           'dataProvider'=>$model->search($zone_id),
           'htmlOptions'=>array('class'=>'table-responsive panel'),
           'columns'=>array(
                   'id',
                   'name',
                   array('name'=>'zone_id',
                         'value'=>'$data->zone->zone_name'
                   ),
                   'sort_order',
                   array('name'=>'status',
                        'type'=>'raw',
                        'value'=>'$data->status==1 ? TbHtml::labelTb("Activated", array("color" => TbHtml::LABEL_COLOR_SUCCESS)) : TbHtml::labelTb("De-Activated", array("color" => TbHtml::LABEL_COLOR_WARNING))', 
                    ),
                   array('class'=>'bootstrap.widgets.TbButtonColumn',
                       'header'=> Yii::t('app','Edit'),  
                       'template'=>'<div class="btn-group">{update}{delete}{undeleted}</div>',  
                       'htmlOptions'=>array('class'=>'nowrap'),
                       'buttons' => array(
                           'update' => array(
                             'click' => 'updateDialogOpen',
                             'icon' => 'ace-icon fa fa-edit',
                             'options' => array(
                                 'data-update-dialog-title' => Yii::t( 'app', 'Update Table' ),
                                 'data-refresh-grid-id'=>'desk-grid',
                                 'class'=>'btn btn-xs btn-info',
                               ), 
                           ),  
                           'delete' => array(
                             'url'=>'Yii::app()->createUrl("desk/delete/",array("id"=>$data->id))',
                             'options' => array(
                                 'class'=>'btn btn-xs btn-danger',
                              ),
                              'visible'=>'$data->status=="1" && Yii::app()->user->checkAccess("zone.delete")',  
                           ),
                          'undeleted' => array(
                            'label'=>Yii::t('app','Undo Delete Item'),
                            'icon'=>'bigger-120 glyphicon-refresh',
                            'url'=>'Yii::app()->createUrl("desk/UndoDelete", array("id"=>$data->id))',
                            'options' => array(
                                'class'=>'btn btn-xs btn-warning btn-undodelete',
                            ), 
                            'visible'=>'$data->status=="0" && Yii::app()->user->checkAccess("zone.delete")',
                           ),
                        ),
                   ),
           ),
   )); ?>

  
   <?php $this->endWidget(); ?>

</div>

<?php 
    Yii::app()->clientScript->registerScript( 'undoDelete', "
        jQuery( function($){
            $('div#desk_cart').on('click','a.btn-undodelete',function(e) {
                e.preventDefault();
                if (!confirm('Are you sure you want to do undo delete this Item?')) {
                    return false;
                }
                var url=$(this).attr('href');
                $.ajax({url:url,
                        type : 'post',
                        beforeSend: function() { $('.waiting').show(); },
                        complete: function() { $('.waiting').hide(); },
                        success : function(data) {
                            $.fn.yiiGridView.update('desk-grid');
                            return false;
                          }
                    });
                });
        });
      ");
 ?>  


<div class="waiting"><!-- Place at bottom of page --></div>