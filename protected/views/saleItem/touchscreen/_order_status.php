<span class="label label-info label-xlg">
    <i class="fa fa-coffe"></i>
    <?php if (isset($table_info)) {
        echo yii::t('app','Serving Table').   ': ' . '<b>' .  $table_info->name  .' - ' . Common::GroupAlias(Yii::app()->orderingCart->getGroupId()) . '</b>';
    } ?>
</span>
<?php if ($ordering_status=='2') { ?>
    <span class="label label-warning label-xlg">
        <i class="fa fa-spinner fa-spin white"></i>
        <?= $ordering_msg; ?>
    </span>
<?php } ?>
