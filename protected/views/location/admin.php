<style>
.btn-group {
  display: flex !important;
}
</style>


<?php

$this->breadcrumbs=array(
	'Locations'=>array('admin'),
	'Manage',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#location-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<div class="row" id="location_cart">
<div class="col-xs-12 widget-container-col ui-sortable">
    
    <?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
                  'title' => Yii::t('app','List Of Branch'),
                  'headerIcon' => 'ace-icon fa fa-list',
                  'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),
    )); ?>

    <?php echo TbHtml::linkButton(Yii::t('app','Search'),array('class'=>'search-button btn','size'=>TbHtml::BUTTON_SIZE_SMALL,'icon'=>'ace-icon fa fa-search',)); ?>
    <div class="search-form" style="display:none">
    <?php $this->renderPartial('_search',array(
            'model'=>$model,
    )); ?>
    </div><!-- search-form -->
    
    <?php $this->widget( 'ext.modaldlg.EModalDlg' ); ?>
    
    <?php if (Yii::app()->user->checkAccess('branch.create')) { ?>
    
        <?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
            'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
            'size'=>TbHtml::BUTTON_SIZE_SMALL,
            'icon'=>'ace-icon fa fa-plus white',
            'url'=>$this->createUrl('create'),
        )); ?>
    
     <?php } ?>

    <?php $this->widget('\TbGridView',array(
            'id'=>'location-grid',
            'dataProvider'=>$model->search(),
            'htmlOptions'=>array('class'=>'table-responsive panel'),
            'columns'=>array(
                    'id',
                    'name',
                    'address',
                    'phone',
                    'phone1',
                    array('name'=>'status',
                        'type'=>'raw',
                        'value'=>'$data->status==1 ? TbHtml::labelTb("Activated", array("color" => TbHtml::LABEL_COLOR_SUCCESS)) : TbHtml::labelTb("De-Activated", array("color" => TbHtml::LABEL_COLOR_WARNING))', 
                    ),
                   array('class'=>'bootstrap.widgets.TbButtonColumn',
                       'template'=>'<div class="btn-group">{view}{update}{delete}{undeleted}</div>',  
                       'htmlOptions'=>array('class'=>'nowrap'),
                       'buttons' => array(
                           'view' => array(
                             'click' => 'updateDialogOpen',    
                             'url'=>'Yii::app()->createUrl("location/view/",array("id"=>$data->id))',
                             'options' => array(
                                 'class'=>'btn btn-xs btn-success',
                                 'data-update-dialog-title' => Yii::t( 'app', 'View Zone' ),
                              ),
                              'visible'=>'Yii::app()->user->checkAccess("branch.index")',   
                           ),
                           'update' => array(
                             'icon' => 'ace-icon fa fa-edit',
                             'label'=>'Update Zone',  
                             'options' => array(
                                 'class'=>'btn btn-xs btn-info',
                                  'data-update-dialog-title' => Yii::t( 'app', 'Update Branch' ),
                                  'data-refresh-grid-id'=>'zone-grid',
                              ),
                              'visible'=>'Yii::app()->user->checkAccess("branch.update")',  
                           ),   
                           'delete' => array(
                              'label'=>'Delete',
                              'options' => array(
                                 'class'=>'btn btn-xs btn-danger',
                              ),
                              'visible'=>'$data->status=="1" && Yii::app()->user->checkAccess("branch.delete")', 
                           ),
                           'undeleted' => array(
                            'label'=>Yii::t('app','Undo Delete Item'),
                            'url'=>'Yii::app()->createUrl("location/UndoDelete", array("id"=>$data->id))',
                            'icon'=>'bigger-120 glyphicon-refresh',
                            'options' => array(
                                'class'=>'btn btn-xs btn-warning btn-undodelete',
                            ), 
                            'visible'=>'$data->status=="0" && Yii::app()->user->checkAccess("branch.delete")',
                           ),
                        ),
                   ),
            ),
    )); ?>

    <?php $this->endWidget(); ?>
</div>
</div>

<?php 
    Yii::app()->clientScript->registerScript( 'undoDelete', "
        jQuery( function($){
            $('div#location_cart').on('click','a.btn-undodelete',function(e) {
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
                            $.fn.yiiGridView.update('location-grid');
                            return false;
                          }
                    });
                });
        });
      ");
 ?>  


<div class="waiting"><!-- Place at bottom of page --></div>