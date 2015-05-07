<?php
/* 
 * All common functions will be listed here
 * 
 */
Class Common 
{
    public static function Discount($discount) {
        if (substr($discount, 0, 1) == '$') {
            $discount_amount = substr($discount, 1);
            $discount_type = '$';
        } else {
            $discount_amount = $discount;
            $discount_type = '%';
        }
        
        return array($discount_amount, $discount_type);
    }
    
    public static function GroupAlias($group_id) {
        switch ($group_id) {
            case 1:
                $group_name='A';
                break;
            case 2:
                $group_name='B';
                break;
            case 3:
                $group_name='C';
                break;
            case 4:
                $group_name='D';
                break;
            case 5:
                $group_name='E';
                break; 
        }
        
        return $group_name;
    }
    
}

?>

