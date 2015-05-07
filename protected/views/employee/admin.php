<div class="row" id="employee_cart">
   <div class="col-xs-12 widget-container-col ui-sortable">
<?php $box = $this->beginWidget('yiiwheels.widgets.box.WhBox', array(
              'title' => Yii::t('app','form.employee.admin.header_title'),
              'headerIcon' => 'ace-icon fa fa-users',
              'htmlHeaderOptions'=>array('class'=>'widget-header-flat widget-header-small'),
));?> 

<?php 
$this->breadcrumbs=array(
	Yii::t('menu','Employee')=>array('admin'),
	Yii::t('app','Manage'),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('employee-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo CHtml::link(Yii::t('app','Advanced Search'),'#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php echo TbHtml::linkButton(Yii::t( 'app', 'form.button.addnew' ),array(
        'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
        'size'=>TbHtml::BUTTON_SIZE_SMALL,
        'icon'=>'glyphicon-plus white',
        'url'=>$this->createUrl('create'),
)); ?>

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'employee-grid',
	'dataProvider'=>$model->search(),
	'htmlOptions'=>array('class'=>'table-responsive panel'),
	'columns'=>array(
		//'id',
                array('name'=>'login_id',
                      'header'=> 'Login ID',
                      'value' =>array($this,"gridLoginIDColumn"),
                ),
		'first_name',
		'last_name',
		array('name'=>'mobile_no',
                      'headerHtmlOptions'=>array('class'=>'hidden-480'),
                      'htmlOptions'=>array('class' => 'hidden-480'),
                ),    
                array('name'=>'adddress1',
                      'headerHtmlOptions'=>array('class'=>'hidden-480 hidden-xs'),
                      'htmlOptions'=>array('class' => 'hidden-480 hidden-xs'),
                ), 
                array('name'=>'address2',
                      'headerHtmlOptions'=>array('class'=>'hidden-480 hidden-xs'),
                      'htmlOptions'=>array('class' => 'hidden-480 hidden-xs'),
                ),
                array('name'=>'status',
                    'type'=>'raw',
                    'value'=>'$data->status==1 ? TbHtml::labelTb("Activated", array("color" => TbHtml::LABEL_COLOR_SUCCESS)) : TbHtml::labelTb("De-Activated", array("color" => TbHtml::LABEL_COLOR_WARNING))', 
                ),
		/*
		'city_id',
		'country_code',
		'email',
		'notes',
		*/
		array('class'=>'bootstrap.widgets.TbButtonColumn',
                    'template'=>'{view}{update}{delete}{undeleted}',  
                    'htmlOptions'=>array('class'=>'nowrap'),
                    'buttons' => array(
                        'view' => array(
                          //'url'=>'Yii::app()->createUrl("client/delete/",array("id"=>$data->id))',
                          'options' => array(
                              'class'=>'btn btn-xs btn-success',
                            ),   
                        ),
                        'update' => array(
                          'icon' => 'ace-icon fa fa-edit',
                          'options' => array(
                              'class'=>'btn btn-xs btn-info',
                            ), 
                        ),   
                        'delete' => array(
                           'label'=>'Delete',
                           //'url'=>'Yii::app()->createUrl("sale/Invoice/",array("client_id"=>$data->id))',
                           'options' => array(
                              'class'=>'btn btn-xs btn-danger',
                            ), 
                            'visible'=>'$data->status=="1" && Yii::app()->user->checkAccess("employee.delete")',
                        ),
                        'undeleted' => array(
                            'label'=>Yii::t('app','Undo Delete Item'),
                            'url'=>'Yii::app()->createUrl("employee/UndoDelete", array("id"=>$data->id))',
                            'icon'=>'bigger-120 glyphicon-refresh',
                            'options' => array(
                                'class'=>'btn btn-xs btn-warning btn-undodelete',
                            ), 
                            'visible'=>'$data->status=="0" && Yii::app()->user->checkAccess("employee.delete")',
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
            $('div#employee_cart').on('click','a.btn-undodelete',function(e) {
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
                            $.fn.yiiGridView.update('employee-grid');
                            return false;
                          }
                    });
                });
        });
      ");
 ?>  


<div class="waiting"><!-- Place at bottom of page --></div>