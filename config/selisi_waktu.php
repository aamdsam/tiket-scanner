<?php

/* -------------------------------------------------
 * Fungsi untuk menghitung selisih antara 2 waktu  
 * -------------------------------------------------
 */  
if ( ! function_exists('get_interval_time'))
{
	function get_interval_time($time_1, $time_2)
	{
	    date_default_timezone_set('Asia/Jakarta');
        
		$a = explode(":", $time_1);        
        $b = explode(":", $time_2);           
        
        /* Explode parameter $time_1 */
        $a_hour    = $a[0];
        $a_minutes = $a[1];
        $a_seconds = $a[2];
        
        /* Explode parameter $time_2 */
        $b_hour    = $b[0];
        $b_minutes = $b[1];
        $b_seconds = $b[2];
        
        /* declare result variabel */        
        $c_hour    = NULL;
        $c_minutes = NULL;
        $c_seconds = NULL;
        
       /* -----------------------------------------
        * Pengurangan detik
        * -----------------------------------------
        **/
        if($b_seconds >= $a_seconds)
        {
            $c_seconds = $b_seconds - $a_seconds;
        }
        else
        {
            $c_seconds = ($b_seconds + 60) - $a_seconds;
            $b_minutes--;
        }        
        
       /* -----------------------------------------
        * Pengurangan menit
        * -----------------------------------------
        **/
        if($b_minutes >= $a_minutes)
        {
            $c_minutes = $b_minutes - $a_minutes;
        }
        else
        {
            $c_minutes = ($b_minutes + 60) - $a_minutes;
            $b_hour--;
        }        
        
       /* -----------------------------------------
        * Pengurangan jam
        * -----------------------------------------
        **/
        if($b_hour >= $a_hour)
        {
            $c_hour = $b_hour - $a_hour;
        }
        else
        {
            $c_hour = '-' . ($a_hour - $b_hour);
        }
        
        /* Checking time format */
        if( strlen($c_seconds) == 1) $c_seconds = '0'.$c_seconds;
        if( strlen($c_minutes) == 1) $c_minutes = '0'.$c_minutes;
        if( strlen($c_hour) == 1) $c_hour = '0'.$c_hour;
        
        /* Return result */
        return $c_hour . ':' . $c_minutes . ':' . $c_seconds;
	}
}