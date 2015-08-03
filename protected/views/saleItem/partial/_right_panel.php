<!-- #section:right.panel.layout -->
<div class="col-xs-12 col-sm-7 widget-container-col">
    <?php
    foreach (Yii::app()->user->getFlashes() as $key => $message) {
        echo '<div class="alert alert-' . $key . '">' . $message .
            '<button class="close" data-dismiss="alert" type="button">
                    <i class="ace-icon fa fa-times"></i>
                </button>' .
            "</div>\n";
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

                <?php /* echo TbHtml::linkButton('Merge Order',array(
                            'color'=>TbHtml::BUTTON_COLOR_INVERSE,
                            'size'=>TbHtml::BUTTON_SIZE_MINI,
                            'icon'=>'glyphicon-plus',
                            'url'=>$this->createUrl('Desk/MergeDesk/'),
                            'class'=>'update-dialog-open-link',
                            'data-update-dialog-title' => Yii::t('app','Merging Table'),
                        )); */?>


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
                <div class="row">
                    <div class="col-xs-12 col-sm-4" id="itemlookup" >
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
                                'size'=>'30'
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

                        <?php $this->endWidget(); ?>
                    </div>

                    <div class="col-xs-12 col-sm-8 align-right" id="order_status">
                        <?php $this->renderPartial('partial/_right_status', array(
                            'model' => $model,
                            'table_info' => $table_info,
                            'time_go' => $time_go,
                            'ordering_status' => $ordering_status,
                            'ordering_msg' => $ordering_msg,
                            'ordering_status_span' => $ordering_status_span,
                            'ordering_status_icon' =>  $ordering_status_icon,
                        )); ?>
                    </div>
                </div>

                <br>

                <div class="row">
                    <?php $this->renderPartial('partial/_right_menu', array(
                        'model' => $model,
                        'table_info' => $table_info,
                        'items' => $items,
                        'sub_total' => $sub_total,
                        'amount_due' => $amount_due,
                        'count_payment' => $count_payment,
                        'count_item' => $count_item,
                    )); ?>
                </div>

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

                <?php if($count_payment > 0) { ?>
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
                                <?php /*echo $form->textField($model,'payment_amount',array('class'=>'input-medium numpad','style'=>'text-align: right',
                                        'maxlength'=>10,'id'=>'payment_amount_id','data-url'=>Yii::app()->createUrl('SaleItem/AddPayment/'),
                                        'placeholder'=>Yii::t('app','Payment Amount'),
                            )); */?>
                                <?php echo $form->textField($model, 'payment_amount', array(
                                    //'value' => '', //$amount_change,
                                    'class' => 'input-medium text-right payment-amount-txt numpad',
                                    'id' => 'payment_amount_id',
                                    'data-url' => Yii::app()->createUrl('SaleItem/AddPayment/'),
                                    'placeholder'=>Yii::t('app','Payment Amount') . ' '  . Yii::app()->settings->get('site', 'currencySymbol'),
                                    //'prepend' =>  Yii::app()->settings->get('site', 'currencySymbol'),
                                ));
                                ?>

                            </div>
                            <div class="pull-right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
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
                        <div class="pull-left" id="btn_footer">

                            <div class="btn-group print_kitchen">
                                <button class="btn btn-primary btn-white dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <i class="ace-icon fa fa-print"></i>
                                    <?= Yii::t('app','Printing'); ?>
                                    <i class="ace-icon fa fa-angle-down icon-on-right"></i>
                                </button>
                                <ul class="dropdown-menu">
                                    <!--<li>
                                    <a href="<?/*= Yii::app()->createUrl('SaleItem/PrintKitchen/',array('category_id'=>9)) */?>" class="btn-food"><?/*= Yii::t('app','Food'); */?></a>
                                </li>
                                <li>
                                    <a href="<?/*= Yii::app()->createUrl('SaleItem/PrintKitchen/',array('category_id'=>1)) */?>"><?/*= Yii::t('app','Beverage'); */?></a>
                                </li>-->
                                    <?php foreach ($print_categories as $print_category): ?>
                                        <li>
                                            <a href="<?= Yii::app()->createUrl('SaleItem/PrintKitchen/',array('category_id'=> $print_category['id'])) ?>"><?= Yii::t('app',$print_category['name']); ?></a>
                                        </li>
                                    <?php endforeach; ?>
                                    <li>
                                        <a href="<?= Yii::app()->createUrl('SaleItem/PrintCustomer/') ?>"><?= Yii::t('app','Customer'); ?></a>
                                    </li>
                                </ul>
                            </div>

                            <?php echo TbHtml::linkButton(Yii::t('app','Save Order'),array(
                                'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                                'size'=>TbHtml::BUTTON_SIZE_SMALL,
                                'icon'=>' ace-icon fa fa-floppy-o white',
                                'class' => 'btn-confirm-order',
                                'url'=> Yii::app()->createUrl('SaleItem/confirmOrder'),
                                'title' => Yii::t( 'app', 'Confirm Order' ),
                            )); ?>

                        </div>
                    </div><!--/endtoolbarfooter-->
                <?php } ?>
            </div> <!--/endwiget-main-->
        </div><!--/endwiget-body-->

    </div>

</div>  <!--/end.right.panel-->