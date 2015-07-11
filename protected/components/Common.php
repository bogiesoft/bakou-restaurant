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

    public static function timeAgo($date,$granularity=2) {
        $retval = '';
        $date = strtotime($date);
        $difference = time() - $date;
        $periods = array('decade' => 315360000,
            'year' => 31536000,
            'month' => 2628000,
            'week' => 604800,
            'day' => 86400,
            'hour' => 3600,
            'min' => 60,
            'sec' => 1);
        if ($difference < 5) { // less than 5 seconds ago, let's say "just now"
            $retval = "Just now";
            return $retval;
        } else {
            foreach ($periods as $key => $value) {
                if ($difference >= $value) {
                    $time = floor($difference/$value);
                    $difference %= $value;
                    $retval .= ($retval ? ' ' : '').$time.' ';
                    $retval .= (($time > 1) ? $key.'s' : $key);
                    $granularity--;
                }
                if ($granularity == '0') { break; }
            }
            return $retval.' ago';
        }
    }
    
}


