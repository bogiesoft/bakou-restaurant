<span class="label label-info label-xlg">
    <i class="ace-icon fa fa-coffee"></i>
    <?php if (isset($table_info)) {
        echo yii::t('app','Serving Table').   ': ' .  '<b>' .  $table_info->name  .' - ' . Common::GroupAlias(Yii::app()->orderingCart->getGroupId()) . '</b>';
    } ?>
</span>
<span class="label label-info label-xlg">
    <i class="ace-icon fa fa-clock-o"></i>
    <?= $time_go; ?>
</span>
<?php if (isset($ordering_status)) { ?>
    <span class="<?php echo $ordering_status_span; ?>">
        <i class="<?php echo $ordering_status_icon; ?>"></i>
        <?= $ordering_msg; ?>
    </span>
<?php } ?>
