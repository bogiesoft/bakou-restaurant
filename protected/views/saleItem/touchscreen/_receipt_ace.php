<style>
    body{background-color:#e4e6e9;min-height:100%;padding-bottom:0;font-family:'Arial';font-size:11px !important; font-weight: bold;};
</style>
<div class="row">
<div class="col-sm-10 col-sm-offset-1">
    <!-- #section:pages/invoice -->
    <div class="widget-box transparent">
        
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row">
                        <ul class="list-unstyled">
                            <li>
                                <?php //echo TbHtml::image(Yii::app()->baseUrl . '/images/Vitking_House_Logo.jpg','Company\'s logo',array('width'=>'90')); ?>
                            </li>
                            <li><?php echo Yii::app()->getsetSession->getLocationName() . ' Branch'; ?></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="row">
                        <ul class="list-unstyled">
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','KIRIROM Branch')); ?>
                            </li>
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','023 222 150')); ?>
                            </li>
                             <li>
                                <?php echo TbHtml::encode(Yii::t('app','093 851 111')); ?>
                            </li>
                            <li>
                               <?php echo TbHtml::encode(Yii::t('app','SEAM REAP Branch')); ?>
                            </li>
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','063 760 989')); ?>
                            </li>
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','093 852 222')); ?>
                            </li>
                            <li>
                               <?php echo TbHtml::encode(Yii::t('app','TOUL TOMPUONG Branch')); ?>
                            </li>
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','023 224 170')); ?>
                            </li>
                            <li>
                                <?php echo TbHtml::encode(Yii::t('app','093 853 333')); ?>
                            </li>
                        </ul>
                    </div>
                </div>
        </div>
            
            
            <div class="widget-main">
                <div class="row">
                    <div class="col-sm-6">
                        <ul class="list-unstyled">
                            <li>
                                <?php echo Yii::t('app','Cashier') . " : ". TbHtml::encode(ucwords($employee)); ?>
                            </li>
                            <li>
                                <?php echo Yii::t('app','Table') . " : ". TbHtml::encode(ucwords($table_info->name)); ?>
                                <?php //echo TbHtml::encode(Yii::t('app','Invoice ID') . " : " . $sale_id); ?>
                            </li>
                            <!--
                             <li>
                                <i class="ace-icon fa fa-caret-right blue"></i>
                                 <?php //echo TbHtml::encode(Yii::t('app','Seller') . " : ". $employee); ?>
                            </li>
                            -->
                        </ul>
                    </div>
                    
                    <div class="col-sm-6">
                        <div align="right">
                            <ul class="list-unstyled">
                                <li>
                                    <?php echo TbHtml::encode(Yii::t('app','Invoice ID') . " : "  . $sale_id); ?>
                                </li>
                                <li>
                                    <?php echo TbHtml::encode(Yii::t('app','Date') . " : ". $transaction_date); ?>
                                </li>
                                <li>
                                    <?php echo TbHtml::encode(Yii::t('app','Time') . " : ". $transaction_time); ?>
                                </li>
                            </ul>
                        </div>
                    </div><!-- /.col -->
                   
                </div><!-- /.row -->

                <div class="space-6"></div>

                <div>
                    <table class="table table-striped table-bordered" id="receipt_items">
                        <thead>
                            <tr>
                                <!-- <th class="center"><?php //echo Yii::t('app','#'); ?></th> -->
                                <th><?php echo Yii::t('app','Name'); ?></th>
                                <th class="center"><?php echo Yii::t('app','Price'); ?></th>
                                <th class="center" ><?php echo TbHtml::encode(Yii::t('app','Qty')); ?></th>
                                <th class="<?php echo Yii::app()->settings->get('sale','discount'); ?>">
                                    <?php echo TbHtml::encode(Yii::t('app','Discount')); ?>
                                </th>
                                <th class="center"><?php echo TbHtml::encode(Yii::t('app','Total')); ?></th>
                            </tr>
                        </thead>
                        <tbody id="cart_contents">
                        <?php $i=0; ?>
                        <?php foreach($items as $id=>$item): ?>
                            <?php
                                   $i=$i+1;
                                   $total_item=number_format($item['total'],Yii::app()->shoppingCart->getDecimalPlace());
                                   $item_id=$item['item_id'];
                            ?>
                            <tr>
                                <!-- <td class="center"><?php //echo TbHtml::encode($i); ?></td> -->
                                
                                <?php if ($item['topping']==0) { ?>
                                    <td><?php echo TbHtml::encode($item['name']); ?></td>
                                <?php } else { ?>
                                     <td align="right"><span class="text-info"><?php echo $item['name']; ?></span></td>
                                <?php } ?>
                                <td class="center"><?php echo TbHtml::encode(number_format($item['price'],Yii::app()->shoppingCart->getDecimalPlace())); ?></td>
                                <td class="center"><?php echo TbHtml::encode($item['quantity']); ?></td>
                                <td class="<?php echo Yii::app()->settings->get('sale','discount'); ?>"><?php echo TbHtml::encode($item['discount']); ?></td>
                                <td class="center"><?php echo TbHtml::encode($total_item); ?>
                            </tr>
                        <?php endforeach; ?> <!--/endforeach-->

                        <?php if (Yii::app()->settings->get('sale','discount')=='hidden') { ?> 
                            <tr>
                                <td colspan="3" class="center"><?php echo TbHtml::b(Yii::t('app','Total Quantity')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(number_format($qtytotal,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>
                            <?php if ($gdiscount!==NULL && $gdiscount>0) { ?>
                            <tr>
                                <td colspan="3" class="center"><?php echo TbHtml::b(Yii::t('app','Sub Total')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($sub_total,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>    
                            <tr>
                                <td colspan="3" class="center"><?php echo $giftcard_info; ?> </td>
                                <td colspan="2" class="center"><?php echo Yii::app()->settings->get('site', 'currencySymbol') . $discount_amount; ?></td>
                            </tr>  
                            <?php } ?>
                            <tr>
                                <td colspan="3" class="center"><?php echo TbHtml::b(Yii::t('app','Total')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($total,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>

                            <!--
                            <tr>
                                    <td colspan="3" style='text-align:right;'><?php //echo TbHtml::b(Yii::t('app','Total in KHR')); ?></td>
                                    <td colspan="2" style='text-align:right'><?php //echo TbHtml::b(Yii::app()->numberFormatter->formatCurrency(($total_khr), 'R')); ?></td>
                            </tr>
                            -->
                            
                            <?php //if ($customer_debt!==NULL && $customer_debt>0) { ?>
                                <!--
                                <tr>
                                    <td colspan="4" class="center"><?php //echo TbHtml::b(Yii::t('app','Last Debt')); ?></td>
                                    <td colspan="2" class="center"><?php //echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($customer_debt,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                                </tr>
                                -->
                            <?php //} ?>
                            
                            <?php foreach($payments as $payment_id=>$payment): ?> 
                                <?php //$splitpayment=explode(':',$payment['payment_type']) ?>
                                <tr>
                                    <td colspan="3" class="center"><?php echo TbHtml::b(Yii::t('app','Paid Amount')); //echo TbHtml::b(Yii::t('app',$payment['payment_type'] . ' Receive')); ?></td>
                                    <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($payment['payment_amount'],Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>  
                                </tr>
                            <?php endforeach;?>

                            <!--       
                            <tr>
                                <td colspan="4" class="center">
                                    <?php //echo TbHtml::b(Yii::t('app','Change Due')); ?>
                                </td>
                                <td colspan="2" class="center"><?php //echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($amount_change,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>  
                            </tr>    
                            -->
                            
                        <?php } else { ?>

                            <tr>
                                <td colspan="5" class="center"><?php echo TbHtml::b(Yii::t('app','Total Quantity')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(number_format($qtytotal,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>
                            
                            <?php if ($gdiscount!==NULL && $gdiscount>0) { ?>
                            <tr>
                                <td colspan="5" class="center"><?php echo TbHtml::b(Yii::t('app','Sub Total')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($sub_total,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>    
                            <tr>
                                <td colspan="5" class="center"><?php echo TbHtml::b(number_format($gdiscount,0) . '% ' . Yii::t('app','Discount')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($sub_total/$gdiscount,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>  
                            <?php } ?>

                            <tr>
                                <td colspan="5" class="center"><?php echo TbHtml::b(Yii::t('app','Total')); ?></td>
                                <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($total,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>
                            </tr>

                            <!--
                            <tr>
                                <td colspan="5" style='text-align:right;'><?php //echo TbHtml::b(Yii::t('app','Total in KHR')); ?></td>
                                <td colspan="2" style='text-align:right'><?php //echo TbHtml::b(Yii::app()->numberFormatter->formatCurrency(($total_khr), 'R')); ?></td>
                            </tr>
                            -->

                            <?php foreach($payments as $payment_id=>$payment): ?> 
                                <?php //$splitpayment=explode(':',$payment['payment_type']) ?>
                                <tr>
                                    <td colspan="5" class="center"><?php echo TbHtml::b(Yii::t('app','Paid Amount')); //echo TbHtml::b(Yii::t('app',$payment['payment_type'] . ' Receive')); ?></td>
                                    <td colspan="2" class="center"><?php echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($payment['payment_amount'],Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>  
                                </tr>
                            <?php endforeach;?>

                            <!--    
                            <tr>
                                <td colspan="5" class="center">
                                    <?php //echo TbHtml::b(Yii::t('app','Change Due')); ?>    
                                </td>
                                <td colspan="2" class="center"><?php //echo TbHtml::b(Yii::app()->settings->get('site', 'currencySymbol') .number_format($amount_change,Yii::app()->shoppingCart->getDecimalPlace(), '.', ',')); ?></td>  
                            </tr> 
                            -->

                        <?php } ?>    
                    </tbody>

                    </table>                        
                </div>

                <div class="space-6"></div>
                <div class="center">
                    <?php echo TbHtml::b(Yii::t('app',Yii::app()->settings->get('site', 'returnPolicy'))); ?>
                </div>

                <?php if (Yii::app()->settings->get('receipt', 'printSignature')==='1') { ?> 
                    <div class="space-6"></div>
                    <div class="hr hr8 hr-double hr-dotted"></div>
                    <div class="row">
                        <div class="col-sm-5 pull-right">
                            <div class="pull-right">
                                <?php echo CHtml::encode(Yii::t('app','Customers')); ?> 
                            </div>
                        </div>
                        <div class="col-sm-7 pull-left"> <?php echo CHtml::encode(Yii::t('app','Cashier')); ?></div>
                    </div>
                <?php } ?>
            </div>
        </div>
  </div>
  <!-- /section:pages/invoice -->
</div>
</div>

<script>
function printpage()
{
    setTimeout(window.location.href='index',500);
    window.print();
    return true;
}
//window.onload=printpage();
</script>