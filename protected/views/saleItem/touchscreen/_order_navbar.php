<div class="navbar-buttons navbar-header pull-right" role="navigation" id="navigation_bar">
    <ul class="nav ace-nav">

        <!-- #section:basics/navbar.user_menu -->
        <li class="grey">
            <a href="<?php echo Yii::app()->createUrl('dashboard/view') ?>">
                <i class="glyphicon glyphicon-off"></i>
                <small>Exit</small>
            </a>
        </li>

        <li class="purple" id="navbar_new_order">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="ace-icon fa fa-globe"></i>
                <span class="badge badge-important"><?php echo $sale_order->countNewOrder(); ?></span>
            </a>

            <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                <li class="dropdown-header">
                    <i class="ace-icon fa fa-exclamation-triangle"></i>
                    <?php echo $sale_order->countNewOrder(); ?> New Orders
                </li>

                <li class="dropdown-content">
                    <ul class="dropdown-menu dropdown-navbar navbar-pink">
                        <?php foreach ($new_orders as $new_order) : ?>
                            <li>
                                <a href="<?php echo Yii::app()->createUrl('saleItem/SetTable/',array('table_id'=>$new_order['desk_id'])); ?>">
                                    <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders - Table <b><?php echo $new_order["desk_name"]; ?></b>
													</span>
                                        <span class="pull-right badge badge-success"><?php echo $new_order["sale_time"]; ?></span>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </li>

                <li class="dropdown-footer">
                    <a href="#">
                        See all orders
                        <i class="ace-icon fa fa-arrow-right"></i>
                    </a>
                </li>
            </ul>
        </li>


        <li class="green">
            <a href="#"><?php echo Yii::app()->settings->get('site', 'companyName'); ?>
                <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                <span class="label label-xlg label-important"><?php echo Yii::app()->getsetSession->getLocationName(); //Yii::app()->session['location_name']; ?></span>
            </a>
        </li>
        <li class="white">
            <i class="glyphicon glyphicon-time"></i>
                            <span class="">
                                <?php  echo date("H:i j M Y"); ?>
                            </span>
        </li>
        <li class="light-blue">
            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                <!-- <img class="nav-user-photo" alt="Jasos Photo" src="<?php //echo Yii::app()->theme->baseUrl . '/avatars/user.jpg'; ?>" /> -->
                                    <span class="user-info">
                                            <small>Welcome,</small>
                                        <?php echo CHtml::encode(ucwords(Yii::app()->user->name)); ?>
                                    </span>
                <i class="ace-icon fa fa-caret-down"></i>
            </a>

            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                <li>
                    <a href="<?php echo Yii::app()->urlManager->createUrl('Employee/View', array('id' => Yii::app()->session['employeeid'])); ?>">
                        <i class="ace-icon fa fa-user"></i>
                        Profile
                    </a>
                </li>
                <li>
                    <a href="<?php echo Yii::app()->urlManager->createUrl('RbacUser/Update', array('id' => Yii::app()->user->id)); ?>">
                        <i class="ace-icon fa fa-key"></i>
                        Change Password
                    </a>
                </li>

                <li class="divider"></li>

                <li>
                    <a href="<?php echo Yii::app()->createUrl('site/logout'); ?>">
                        <i class="ace-icon fa fa-power-off"></i>
                        Logout
                    </a>
                </li>
            </ul>
        </li>

        <!-- /section:basics/navbar.user_menu -->
    </ul>
</div>