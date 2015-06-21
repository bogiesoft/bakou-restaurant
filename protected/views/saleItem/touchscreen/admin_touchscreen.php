<style>
.btn{
    margin-left:10px;
    margin-bottom:12px;
}
</style>

<?php $this->widget( 'ext.modaldlg.EModalDlg' ); ?>

<?php //echo 'Location Session ' .  Yii::app()->getsetSession->getLocationVat(); ?>
<?php //echo 'Debugging ID : ' .  Yii::app()->getsetSession->getLocationId(); ?>
<?php //print_r($payments); ?>

<div id="register_container">

<!-- #section:second.div.layout -->
<div class="col-xs-12 col-sm-5 widget-container-col" id="grid_zone">    
    <div class="widget-box">
        <div class="widget-header widget-header-flat">
            <h5 class="widget-title bigger lighter">Zone</h5>
            <div class="widget-toolbar">
                <a href="#" data-action="collapse">
                    <i class="ace-icon fa fa-chevron-up bigger-125"></i>
                </a>
            </div>
            
            <div class="btn-group"> 
                <?php  foreach ($zones as $zone) { ?> 
                    <?php if ($zone->id==$zone_id) { ?>
                        <?php echo TbHtml::linkButton($zone->zone_name,array(
                            'color'=>TbHtml::BUTTON_COLOR_INFO,
                            'size'=>TbHtml::BUTTON_SIZE_SMALL,
                            'icon'=>'ace-icon fa fa-globe bigger-110 green',
                            'url'=>Yii::app()->createUrl('saleItem/setZone/',array('zone_id'=>$zone->id)),
                            'class'=>'btn btn-white btn-round zone-btn active',
                        )); ?>
                    <?php } else { ?>
                        <?php echo TbHtml::linkButton($zone->zone_name,array(
                            'color'=>TbHtml::BUTTON_COLOR_INFO,
                            'size'=>TbHtml::BUTTON_SIZE_SMALL,
                            'icon'=>'ace-icon fa fa-globe bigger-110 green',
                            'url'=>Yii::app()->createUrl('saleItem/setZone/',array('zone_id'=>$zone->id)),
                            'class'=>'btn btn-white btn-round zone-btn',
                        )); ?>
                    <?php } ?>
                <?php } ?>


                <?php if ($zone_id==-1) { ?>
                    <?php echo TbHtml::linkButton("All",array(
                        'color'=>TbHtml::BUTTON_COLOR_INFO,
                        'size'=>TbHtml::BUTTON_SIZE_SMALL,
                        'icon'=>'ace-icon fa fa-globe bigger-110 green',
                        'url'=>Yii::app()->createUrl('saleItem/setZone/',array('zone_id'=>-1)),
                        'class'=>'btn btn-white btn-round zone-btn active',
                    )); ?>
                <?php } else { ?>
                    <?php echo TbHtml::linkButton("All",array(
                        'color'=>TbHtml::BUTTON_COLOR_INFO,
                        'size'=>TbHtml::BUTTON_SIZE_SMALL,
                        'icon'=>'ace-icon fa fa-globe bigger-110 green',
                        'url'=>Yii::app()->createUrl('saleItem/setZone/',array('zone_id'=>-1)),
                        'class'=>'btn btn-white btn-round zone-btn',
                    )); ?>
                <?php } ?>
            </div>
            
           
        </div>
       
        <div class="widget-body">
            <!-- /section:custom/widget-box.toolbox -->
            <div class="widget-main padding-12">
                
                <?php  foreach ($tables as $table) { ?> 
                    <?php if ($table["id"]==$table_id) { ?>
                      <?php //echo TbHtml::imagePolaroid('holder.js/74x74/tablename/text:' . $table['name']); ?>
                        <?php /* echo TbHtml::linkButton($table['name'],array(
                          'color'=>TbHtml::BUTTON_COLOR_INFO,
                          'size'=>TbHtml::BUTTON_SIZE_LARGE,
                          'icon'=>'ace-icon fa fa-square-o bigger-110 green',
                          'url'=>Yii::app()->createUrl('saleItem/SetTable/',array('table_id'=>$table['id'])),
                          'class'=>'btn btn-green btn-round table-btn',
                        )); */ ?>
                        <?php echo TbHtml::linkButton($table['name'],array(
                          'color'=>TbHtml::BUTTON_COLOR_SUCCESS,
                          'size'=>TbHtml::BUTTON_SIZE_LARGE,
                          'icon'=>'ace-icon fa fa-check-square-o bigger-110 green',
                          'url'=>Yii::app()->createUrl('saleItem/SetTable/',array('table_id'=>$table['id'])),
                          'class'=>'btn btn-white btn-success btn-round table-btn active',
                        )); ?>
                    <?php } elseif ($table["busy_flag"]==0) { ?>
                        <?php //echo $table["busy_flag"]; ?>
                        <?php echo TbHtml::linkButton($table['name'],array(
                          'color'=>TbHtml::BUTTON_COLOR_INFO,
                          'size'=>TbHtml::BUTTON_SIZE_LARGE,
                          'icon'=>'ace-icon fa fa-square-o bigger-110',
                          'url'=>Yii::app()->createUrl('saleItem/SetTable/',array('table_id'=>$table['id'])),
                          'class'=>'btn btn-white btn-info btn-round table-btn',
                        )); ?>
                    <?php } else { ?>
                        <?php echo TbHtml::linkButton($table['name'],array(
                          'color'=>TbHtml::BUTTON_COLOR_WARNING,
                          'size'=>TbHtml::BUTTON_SIZE_LARGE,
                          'icon'=>'ace-icon fa fa-ban bigger-110',
                          'url'=>Yii::app()->createUrl('saleItem/SetTable/',array('table_id'=>$table['id'])),
                          'class'=>'btn-white btn-round table-btn active',
                        )); ?>
                    <?php } ?>
                <?php } ?>
                
            </div>
            
            <div class="widget-toolbox padding-8 clearfix" id="group_cart">
                    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                            'action'=>Yii::app()->createUrl($this->route),
                            'method'=>'get',
                            'layout'=>TbHtml::FORM_LAYOUT_HORIZONTAL,
                    )); ?> 
                        <?php echo $form->dropDownListControlGroup($model,'group',Desk::itemAlias('group'), 
                                    array('class'=>'input-small','id'=>'group_id','options'=>array(Yii::app()->orderingCart->getGroupId()=>array('selected'=>true)),
                            )); ?> 
                    <?php $this->endWidget(); ?>
            </div>
        </div>
    </div>
    
    <i class="ace-icon fa fa-book"></i>
    <?php echo TbHtml::tooltip('Keyboard Shortcuts Help','#',
            '[F2] => Set the focus to "Giftcard #" <br>
             [F1] => Set the focus to "Payment Amount" [Enter] to make payment, Press another [Enter] to Complete Sale',
             array('data-html' => 'true','placement' => TbHtml::TOOLTIP_PLACEMENT_TOP,)
    ); ?>  
</div> <!--/end2nddiv-->  

<div class="col-xs-12 col-sm-7 widget-container-col">
    <div class="message" style="display:none">
            <div class="alert in alert-block fade alert-success">Transaction Failed !</div>
    </div>
    
    <?php
        if (isset($warning)) {
            echo TbHtml::alert(TbHtml::ALERT_COLOR_INFO, $warning);
        }
    ?>

    <div class="grid-view widget-box" id="grid_cart">
        <div class="widget-header widget-header-flat">
                <i class="ace-icon fa fa-shopping-cart"></i>
                <h5 class="widget-title">Ordering Cart</h5>
                <div class="widget-toolbar">
                        
                        <?php echo TbHtml::linkButton(Yii::t('app','Close Register'),array(
                                'color'=>TbHtml::BUTTON_COLOR_DEFAULT,
                                'size'=>TbHtml::BUTTON_SIZE_MINI,
                                'icon'=>'glyphicon-print white',
                                'url'=>Yii::app()->createUrl('SaleItem/PrintCloseSale'),
                                'class'=>'suspend-sale',
                                'title' => Yii::t( 'app', 'Print Report for Closing Sale' ),
                        )); ?> 
                    
                        <div class="badge badge-info">
                            <?php echo Yii::t('app','form.sale.payment_lbl_itemcart') . ' : ' .  $count_item;  ?> 
                        </div>
                    
                        <?php /* echo TbHtml::linkButton('Merge Table',array(
                            'color'=>TbHtml::BUTTON_COLOR_INVERSE,
                            'size'=>TbHtml::BUTTON_SIZE_MINI,
                            'icon'=>'glyphicon-plus',
                            'url'=>$this->createUrl('Desk/MergeDesk/'),
                            'class'=>'update-dialog-open-link',
                            'data-update-dialog-title' => Yii::t('app','Merging Table'),
                        )); */ ?>
                    
                    
                        <?php if (isset($table_info)) { ?>
                        
                            <?php echo TbHtml::linkButton('Change Table',array(
                                'color'=>TbHtml::BUTTON_COLOR_INVERSE,
                                'size'=>TbHtml::BUTTON_SIZE_MINI,
                                'icon'=>'glyphicon-refresh',
                                'url'=>$this->createUrl('Desk/ChangeDesk/',array('location_id'=>$location_id)),
                                'class'=>'update-dialog-open-link',
                                'data-update-dialog-title' => Yii::t('app','Changing Table'),
                            )); ?>
                           
                        <?php } else { ?>
                    
                             <?php echo TbHtml::linkButton('Change Table',array(
                                'color'=>TbHtml::BUTTON_COLOR_INVERSE,
                                'size'=>TbHtml::BUTTON_SIZE_MINI,
                                'icon'=>'glyphicon-refresh',
                                'url'=>$this->createUrl('Desk/ChangeDesk/',array('location_id'=>$location_id)),
                                'class'=>'update-dialog-open-link',
                                'title' => Yii::t( 'app', 'Select a table to change' ),
                                'disabled' => true
                            )); ?> 
                             <?php echo TbHtml::tooltip('<i class="ace-icon fa  fa-info-circle "></i>','#',
                                    'Plz, select a table to change', 
                                     array('data-html' => 'true','placement' => TbHtml::TOOLTIP_PLACEMENT_TOP,)
                             ); ?>  
                    
                        <?php } ?>
                </div>
        </div>
    
        <div class="widget-body">
           <div class="widget-main">
            <div id="itemlookup">   
                <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                         'action'=>Yii::app()->createUrl('saleItem/add'),
                         'method'=>'post',
                         'layout'=>TbHtml::FORM_LAYOUT_INLINE,
                         'id'=>'add_item_form',
                 )); ?>     

                     <?php //if (isset($table_id)) { ?>
                         <?php 
                         $this->widget('zii.widgets.jui.CJuiAutoComplete', array(
                                 'model'=>$model,
                                 'attribute'=>'item_id',
                                 'source'=>$this->createUrl('request/suggestItem'),    
                                 'htmlOptions'=>array(
                                     'size'=>'35'
                                 ),
                                 'options'=>array(
                                     'showAnim'=>'fold',
                                     'minLength'=>'1',
                                     'delay' => 10,
                                     'autoFocus'=> false,
                                     'select'=>'js:function(event, ui) {
                                         event.preventDefault();
                                         $("#SaleItem_item_id").val(ui.item.id);
                                         $("#add_item_form").ajaxSubmit({target: "#register_container", beforeSubmit: salesBeforeSubmit, success: itemScannedSuccess(ui.item.id) });
                                     }',
                                 ),
                             ));
                         ?>
                     <?php //} ?>
                
                     <span class="label label-info label-xlg">
                         <i class="fa fa-coffee"></i>
                         <?php if (isset($table_info)) { 
                             echo yii::t('app','Serving Table').   ': ' . '<b>' .  $table_info->name  .' - ' . Common::GroupAlias(Yii::app()->orderingCart->getGroupId()) . '</b>'; 
                         } ?>
                     </span>
                

                    <?php /* echo TbHtml::linkButton(Yii::t('app','Closing Report'),array(
                            'color'=>TbHtml::BUTTON_COLOR_SUCCESS,
                            'size'=>TbHtml::BUTTON_SIZE_MINI,
                            'icon'=>'glyphicon-print white',
                            'url'=>Yii::app()->createUrl('SaleItem/PrintCloseSale'),
                            'class'=>'suspend-sale pull-right',
                            'title' => Yii::t( 'app', 'Print Report for Closing Sale' ),
                    )); */ ?> 
                
                <?php $this->endWidget(); ?> <!--/endformWidget--> 
            </div>
            
            <br>
               
            <div class="slim-scrol" data-height="400">

                <table class="table table-hover table-condensed">
                    <thead>
                        <tr><th><?php echo Yii::t('model','Item Code'); ?></th>
                            <th><?php echo Yii::t('model','model.saleitem.name'); ?></th>
                            <th><?php echo Yii::t('model','model.saleitem.price'); ?></th>
                            <th><?php echo Yii::t('model','model.saleitem.quantity'); ?></th>
                            <!-- <th class="<?php //echo Yii::app()->settings->get('sale','discount'); ?>"><?php //echo Yii::t('model','model.saleitem.discount_amount'); ?></th> -->
                            <th><?php echo Yii::t('model','model.saleitem.total'); ?></th>
                            <th><?php echo Yii::t('app',''); ?></th>
                        </tr>
                    </thead>
                    <tbody id="cart_contents">
                        <?php foreach($items as $id=>$item): ?>
                            <?php 
                                $total_item=number_format($item['total'],Yii::app()->orderingCart->getDecimalPlace());
                                $item_id=$item['item_id'];
                                $item_parent_id=$item['item_parent_id'];
                                $unit_name=''; 
                            ?>
                                <tr>
                                    <td>
                                        <?php echo TbHtml::linkButton('',array(
                                               'color'=>TbHtml::BUTTON_COLOR_SUCCESS,
                                               'size'=>TbHtml::BUTTON_SIZE_MINI,
                                               'icon'=>'glyphicon-hand-up white',
                                               'url'=>$this->createUrl('Item/SelectItem/',array('item_parent_id'=>$item_id,'category_id'=>$item['category_id'])),
                                               'class'=>'update-dialog-open-link',
                                               'data-update-dialog-title' => Yii::t('app','Select Topping'),
                                           )); ?>
                                        <?php echo $item['item_number']; ?>
                                   </td>
                                    <?php if ($item['topping']==0) { ?>
                                        <td> 
                                           <span class="text-info">
                                            <?php echo $item['name']; ?>
                                           </span>
                                        </td>
                                    <?php } else { ?>
                                        <td align="right"><span class="text-info orange"><?php echo $item['name']; ?></span></td>
                                    <?php } ?>
                                    <td>
                                        <?php echo $form->textField($model,"[$item_id]price",array('value'=>number_format($item['price'],Yii::app()->shoppingCart->getDecimalPlace()),'disabled' => true,'class'=>'input-small alignRight readonly','id'=>"price_$item_id",'placeholder'=>'Price','data-id'=>"$item_id",'maxlength'=>50,'onkeypress'=>'return isNumberKey(event)')); ?>
                                    </td>                               
                                    <td> 
                                        
                                       <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                                                'method'=>'post',
                                                'action' => Yii::app()->createUrl('saleItem/editItem/',array('item_id'=>$item['item_id'],'item_parent_id'=>$item_parent_id)),
                                                'htmlOptions'=>array('class'=>'line_item_form'),
                                            ));
                                        ?>
                                        
                                        <?php echo $form->textField($model,"quantity",array('value'=>$item['quantity'],'class'=>'input-small input-grid alignRight','id'=>"quantity_$item_id",'placeholder'=>'Quantity','data-id'=>"$item_id",'data-parentid'=>"$item_parent_id",'maxlength'=>10)); ?>
                                    
                                        <?php $this->endWidget(); ?>  
                                    </td>
                                    <td>
                                        <?php echo $form->textField($model,"[$item_id]total",array('value'=>$total_item,'disabled' => true,'class'=>'input-small alignRight readonly')); ?></td>
                                        <?php //echo $total_item; ?>
                                    </td>
                                    <td>
                                        <?php echo TbHtml::linkButton('',array(
                                            'color'=>TbHtml::BUTTON_COLOR_DANGER,
                                            'size'=>TbHtml::BUTTON_SIZE_MINI,
                                            'icon'=>'glyphicon-trash',
                                            'url'=>array('DeleteItem','item_id'=>$item_id, 'item_parent_id' => $item['item_parent_id']),
                                            'class'=>'delete-item',
                                            //3'title' => Yii::t( 'app', 'Remove' ),
                                        )); ?>
                                    </td>    
                                </tr>
                            <?php //$this->endWidget(); ?>  <!--/endformWidget-->     
                        <?php endforeach; ?> <!--/endforeach-->
                    </tbody>
                </table>
   
                 <?php if (empty($items)) {
                       echo Yii::t('app','There are no items in the cart');
                 } ?> 

            </div><!--/endslimscrool-->
            
            <div class="row">
                <div class="col-sm-5 pull-right">
                    <h4 class="pull-right">
                        <?php echo Yii::t('app','form.sale.payment_lbl_total'); ?>
                        <span class="label label-xlg label-primary"><?php echo Yii::app()->settings->get('site', 'currencySymbol') .number_format($sub_total,Yii::app()->shoppingCart->getDecimalPlace(), '.', ','); ?></span>
                    </h4>
                </div>
                <div class="col-sm-6 pull-right">
                     <h4 class="pull-right">
                        <?php echo Yii::t('app','Amount to Pay'); ?>
                        <span class="label label-xlg label-important"><?php echo Yii::app()->settings->get('site', 'currencySymbol') .number_format($amount_due,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',');  ?></span>
                    </h4>
                </div>    
            </div>
   
            <?php 
                // Only show this part if there is at least one payment entered.
                if($count_payment > 0)
                {
            ?>
            <table class="table">
               <tbody id="payment_content">
                   <?php foreach($payments as $id=>$payment):  ?>
                   <tr>
                       <td><?php echo $payment['payment_type']; ?></td>
                       <td><?php echo Yii::app()->settings->get('site', 'currencySymbol') . number_format($payment['payment_amount'],Yii::app()->shoppingCart->getDecimalPlace()); ?></td>
                       <td>
                        <?php echo TbHtml::linkButton('',array(
                                'color'=>TbHtml::BUTTON_COLOR_DANGER,
                                'size'=>TbHtml::BUTTON_SIZE_MINI,
                                'icon'=>'glyphicon-remove',
                                'url'=>Yii::app()->createUrl('SaleItem/DeletePayment',array('payment_id'=>$payment['payment_type'])),
                                'class'=>'delete-payment',
                                'title' => Yii::t( 'app', 'Delete Payment' ),
                        )); ?>     
                       </td>
                   </tr>
                   <?php endforeach; ?>
               </tbody>
            </table>
            <?php } ?>

            <?php if ( $count_item<>0 ) { ?> 
            <div class="widget-toolbox padding-8 clearfix" id="payment_footer_cart">
                    <div class="pull-right">
                        <?php if ($count_payment>0 && $amount_due <=0 ) { ?>   
                               <?php echo TbHtml::linkButton(Yii::t('app','Print Receipt'),array(
                                   'id' => 'finish_sale_button',
                                   'color'=>TbHtml::BUTTON_COLOR_INFO,
                                   'size'=>TbHtml::BUTTON_SIZE_SMALL,
                                   'icon'=>'glyphicon-off white',
                                   'url'=>Yii::app()->createUrl('SaleItem/CompleteSale/'),
                                   'class'=>'complete-sale pull-right',
                                   'title' => Yii::t( 'app', 'Complete Sale' ),
                            )); ?>
                        <?php } else { ?>
                        <?php echo TbHtml::linkButton(Yii::t('app','Payment'),array(
                               'color'=>TbHtml::BUTTON_COLOR_SUCCESS,
                               'size'=>TbHtml::BUTTON_SIZE_SMALL,
                               'icon'=>'glyphicon-heart white',
                               'url'=>Yii::app()->createUrl('SaleItem/AddPayment/'),
                               'class'=>'add-payment pull-right',
                               'title' => Yii::t( 'app', 'Add Payment' ),
                        )); ?> 
                        <?php } ?>
                        <div style="display: none;">
                           <?php echo $form->dropDownList($model,'payment_type',InvoiceItem::itemAlias('payment_type'),array('class'=>'span3 pull-right','id'=>'payment_type_id')); ?> 
                        </div>
                        <div class="pull-right">
                        <?php //echo $form->textField($model,'payment_amount',array('value'=>$amount_due,'class'=>'input-small numpad','style'=>'text-align: right','maxlength'=>10,'id'=>'payment_amount_id','data-url'=>Yii::app()->createUrl('SaleItem/AddPayment/'),)); ?>
                        <?php echo $form->textField($model,'payment_amount',array('class'=>'input-medium numpad','style'=>'text-align: right',
                                    'maxlength'=>10,'id'=>'payment_amount_id','data-url'=>Yii::app()->createUrl('SaleItem/AddPayment/'),
                                    'placeholder'=>Yii::t('app','Payment Amount'),
                        )); ?>
                        </div> 
                        <div class="pull-right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                        <div class="pull-right">
                            <?php  
                                if(isset($giftcard_info)) {
                                    $this->renderPartial('touchscreen/_giftcard_selected',array('model'=>$model,'giftcard_info'=>$giftcard_info,'giftcard_id'=>$giftcard_id));
                                } else {
                                    $this->renderPartial('touchscreen/_giftcard',array('model'=>$model)); 
                                }  
                            ?>
                        </div>    
                    </div>
                    <div class="pull-left">
                    <?php  echo TbHtml::linkButton(Yii::t('app','Food'),array(
                            'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                            'size'=>TbHtml::BUTTON_SIZE_SMALL,
                            'icon'=>'glyphicon-print white',
                            'url'=>Yii::app()->createUrl('SaleItem/PrintKitchen/',array('category_id'=>9)),
                            'class'=>'suspend-sale pull-left',
                            'title' => Yii::t( 'app', 'Print Food to Kitchen' ),
                    )); ?>
                    <?php  echo TbHtml::linkButton(Yii::t('app','Beverage'),array(
                            'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                            'size'=>TbHtml::BUTTON_SIZE_SMALL,
                            'icon'=>'glyphicon-print white',
                            'url'=>Yii::app()->createUrl('SaleItem/PrintKitchen/',array('category_id'=>1)),
                            'class'=>'suspend-sale pull-left',
                            'title' => Yii::t( 'app', 'Print Bevwleragel to Kitchen' ),
                    )); ?>    
                    <?php  echo TbHtml::linkButton(Yii::t('app','Customer'),array(
                            'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                            'size'=>TbHtml::BUTTON_SIZE_SMALL,
                            'icon'=>'glyphicon-print white',
                            'url'=>Yii::app()->createUrl('SaleItem/PrintCustomer/'),
                            'class'=>'suspend-sale pull-left',
                            'title' => Yii::t( 'app', 'Print for Customer' ),
                    )); ?>    
                    </div>
            </div><!--/endtoolbarfof oter-->
            <?php } ?>
         </div> <!--/endwiget-main-->
      </div><!--/endwiget-body-->
      
    </div> <!--/endgridcartdiv-->
    
</div>  <!-- #section:first.div.layout -->

<?php $this->renderPartial('touchscreen/_search_touchscreen'); ?>

</div>

<div class="waiting"><!-- Place at bottom of page --></div>


