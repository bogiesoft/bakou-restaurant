<div id="sale_monthly_profit">
   
<?php $this->widget('yiiwheels.widgets.grid.WhGridView',array(
        'id'=>'sale-monthly-profit-grid',
        'fixedHeader' => true,
        'responsiveTable' => true,
        'type'=>TbHtml::GRID_TYPE_BORDERED,
	'dataProvider'=>$report->salemonthlyprofit(),
        'summaryText' => '<p class="text-info" align="left">' . Yii::t('app','Monthly Profit') .  '</p>',
	'columns'=>array(
		array('name'=>'YMT',
                      'header'=>Yii::t('app','Year Month'), 
                      'value'=>'$data["YMT"]',
                ),
                array('name'=>'amount',
                      'header'=>Yii::t('app','Amount'),
                      'value' =>'Yii::app()->numberFormatter->formatCurrency($data["amount"],"")',
                      'htmlOptions'=>array('style' => 'text-align: right;'),
                      'headerHtmlOptions'=>array('style' => 'text-align: right;'),
                      'footer'=>Yii::app()->settings->get('site', 'currencySymbol') . number_format($report->saleMonthlyProfitTotalAmount(),Yii::app()->shoppingCart->getDecimalPlace(), ".", ","),
                      'footerHtmlOptions'=>array('style' => 'text-align: right;'),
                ),
		array('name'=>'profit',
                      'header'=>Yii::t('app','Profit'), 
                      'htmlOptions'=>array('style' => 'text-align: right;'),
                      'headerHtmlOptions'=>array('style' => 'text-align: right;'),
                      'value' =>'Yii::app()->numberFormatter->formatCurrency($data["profit"],"")',
                      'footer'=>Yii::app()->settings->get('site', 'currencySymbol') . number_format($report->saleMonthlyProfitTotalProfit(),Yii::app()->shoppingCart->getDecimalPlace(), ".", ","),
                      'footerHtmlOptions'=>array('style' => 'text-align: right;'),
                ),
                array('name'=>'margin',
                      'header'=>Yii::t('app','Margin'),
                      'htmlOptions'=>array('style' => 'text-align: right;'),
                      'headerHtmlOptions'=>array('style' => 'text-align: right;'),  
                      'value'=>'$data["margin"] . "%"',
                      //'footer'=>Yii::app()->getNumberFormatter()->formatCurrency($report->saleDailyTotalAmount(),''),
                ),
	),
)); ?>
    
</div>