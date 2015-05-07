<style>
.btn-group {
  display: flex !important;
}
</style>

<?php
$this->breadcrumbs=array(
	'Item'=>array('admin'),
	'Manage',
);
?>
<div class="row" id="item_cart">
<div class="col-xs-12 widget-container-col ui-sortable">
    
<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','form.item.admin.header_title'),
              'headerIcon' => 'ace-icon fa fa-list',
              'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),
)); ?>

<?php
Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('item-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo TbHtml::linkButton(Yii::t('app','Search'),array('class'=>'search-button btn','size'=>TbHtml::BUTTON_SIZE_SMALL,'icon'=>'ace-icon fa fa-search',)); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget( 'ext.modaldlg.EModalDlg' ); ?>

<?php /* echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'ace-icon fa fa-plus white',
        'url'=>$this->createUrl('create'),
        'class'=>'update-dialog-open-link',
        'data-refresh-grid-id'=>'item-grid',
        'data-update-dialog-title' => Yii::t('app','form.item._form.header_create'),
        
)); */?>

<?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'ace-icon fa fa-plus white',
        'url'=>$this->createUrl('createImage'),
)); ?>

<?php echo TbHtml::linkButton(Yii::t( 'app', 'New Category' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'glyphicon-briefcase white',
        'url'=>$this->createUrl('category/create'),
        'class'=>'update-dialog-open-link',
        'data-update-dialog-title' => Yii::t('app','form.category._form.header_create'),
)); ?>

<?php echo TbHtml::linkButton(Yii::t( 'app', 'form.category.admin.header_title' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'glyphicon-list white',
        'url'=>$this->createUrl('category/admin'),
)); ?>

<?php if(Yii::app()->user->hasFlash('success')):?>
    <?php $this->widget('bootstrap.widgets.TbAlert'); ?>
<?php endif; ?>  


<?php $this->widget('yiiwheels.widgets.grid.WhGridView',array(
	'id'=>'item-grid',
        'fixedHeader' => true,
        'type' => TbHtml::GRID_TYPE_HOVER,
        //'headerOffset' => 40,
        //'responsiveTable' => true,
        'htmlOptions'=>array('class'=>'table-responsive panel'),
	'dataProvider'=>$model->search(),
	'columns'=>array(
                 /*
		array('name'=>'id',
                      'value'=>'CHtml::link(CHtml::image(Yii::app()->controller->createUrl("loadImage", array("id"=>$data->primaryKey))),array(Yii::app()->controller->createUrl("loadImage", array("id"=>$data->primaryKey))),array("data-rel"=>"colorbox"));',
                      'type'=>'raw',
                ),
                  * 
                */
		array('name'=>'item_number',
                      //'headerHtmlOptions'=>array('class'=>'hidden-480 hidden-xs'),
                      //'htmlOptions'=>array('class' => 'hidden-480 hidden-xs'),
                ),  
                array('name'=>'name',
                     'value' => 'CHtml::link($data->name, Yii::app()->createUrl("item/UpdateImage",array("id"=>$data->primaryKey)))',
                     'type'  => 'raw',   
                ), /*
                array('name'=>'description',
                      'headerHtmlOptions'=>array('class'=>'hidden-480 hidden-xs'),
                      'htmlOptions'=>array('class' => 'hidden-480 hidden-xs'),
                ),
                 * 
                */
                array('name'=>'topping',
                      'header'=>'Type',
                      'value'=>'($data->topping==0)? "Main-Menu" : "Topping" ',
                ),
		array('name' => 'category_id',
                      'value' => '$data->category_id==null? " " : $data->category->name',
                ), 
                'unit_price',
                array('name'=>'status',
                    'type'=>'raw',
                    'value'=>'$data->status==1 ? TbHtml::labelTb("Active", array("color" => TbHtml::LABEL_COLOR_SUCCESS)) : TbHtml::labelTb("De-Activated", array("color" => TbHtml::LABEL_COLOR_WARNING))', 
                ),
                array('class'=>'bootstrap.widgets.TbButtonColumn',
                      'header'=> Yii::t('app','Edit'),
                      //'template'=>'<div class="hidden-sm hidden-xs btn-group">{detail}{cost}{price}{delete}{update}</div>',
                      'template'=>'{delete}{undeleted}{update}</div>',
                      //'htmlOptions'=>array('class'=>'hidden-sm hidden-xs btn-group'),
                      'buttons' => array(
                          'delete' => array(
                            'label'=>Yii::t('app','Delete Item'),
                            //'icon'=>'bigger-120 glyphicon-trash',
                            'options' => array(
                                'data-update-dialog-title' => Yii::t('app','form.item._form.header_update'),
                                'titile'=>'Edit Item',
                                'class'=>'btn btn-xs btn-danger',
                             ), 
                             'visible'=>'$data->status=="1" && Yii::app()->user->checkAccess("item.delete")',  
                          ),
                          'undeleted' => array(
                            'label'=>Yii::t('app','Undo Delete Item'),
                            'url'=>'Yii::app()->createUrl("Item/UndoDelete", array("id"=>$data->id))',
                            'icon'=>'bigger-120 glyphicon-refresh',
                            'options' => array(
                                'class'=>'btn btn-xs btn-warning btn-undodelete',
                            ), 
                            'visible'=>'$data->status=="0" && Yii::app()->user->checkAccess("item.delete")',
                           ),
                          'update' => array(
                            'url'=>'Yii::app()->createUrl("Item/UpdateImage", array("id"=>$data->id))',  
                            'label'=>Yii::t('app','Edit Item'),
                            'icon'=>'ace-icon fa fa-edit',
                            'options' => array(
                                'data-update-dialog-title' => Yii::t('app','form.item._form.header_update'),
                                'titile'=>'Edit Item',
                                //'data-refresh-grid-id'=>'item-grid',
                                'class'=>'btn btn-xs btn-info',
                             ), 
                             'visible'=>'Yii::app()->user->checkAccess("item.create") || Yii::app()->user->checkAccess("item.update")', 
                         ),
                       ),
                 ), 

	),
)); ?>

<?php $this->endWidget(); ?>
</div>
</div>

<script>
$(document).ready(function () {
 
window.setTimeout(function() {
    $(".alert").fadeTo(1500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 2000);
 
});
</script>

<?php 
    Yii::app()->clientScript->registerScript( 'undoDelete', "
        jQuery( function($){
            $('div#item_cart').on('click','a.btn-undodelete',function(e) {
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
                            $.fn.yiiGridView.update('item-grid');
                            return false;
                          }
                    });
                });
        });
      ");
 ?>  


<div class="waiting"><!-- Place at bottom of page --></div>