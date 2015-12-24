<?php
function Romawi($n){
$hasil = "";
$iromawi = array("","I","II","III","IV","V","VI","VII","VIII","IX","X",20=>"XX",30=>"XXX",40=>"XL",50=>"L",
	60=>"LX",70=>"LXX",80=>"LXXX",90=>"XC",100=>"C",200=>"CC",300=>"CCC",400=>"CD",500=>"D",600=>"DC",700=>"DCC",
	800=>"DCCC",900=>"CM",1000=>"M",2000=>"MM",3000=>"MMM");
	if(array_key_exists($n,$iromawi)){
		$hasil = $iromawi[$n];
	}elseif($n >= 11 && $n <= 99){
		$i = $n % 10;
		$hasil = $iromawi[$n-$i] . Romawi($n % 10);
	}elseif($n >= 101 && $n <= 999){
		$i = $n % 100;
		$hasil = $iromawi[$n-$i] . Romawi($n % 100);
	}else{
		$i = $n % 1000;
		$hasil = $iromawi[$n-$i] . Romawi($n % 1000);
	}
return $hasil;
}

function col_excell($n){
	$hasil = "";
	$icol = array("","A","B","C","D","E","F","G","H","I","J","K","L","M","N","0","P","Q","R","S","T","U","V","W","X","Y","Z","AA","AB","AC","AD","AE"
		,"AF","AG","AH","AI","AJ","AK","AL","AM","AN","AO","AP","AQ","AR","AS","AT","AU","AV","AW","AX","AY","AZ");
	if(array_key_exists($n,$icol)){
		$hasil = $icol[$n];
	}
return $hasil;
}

function __convert_date_mysql($tanggal){
    $tanggal = explode('/',$tanggal);
    $tanggal = $tanggal[2] .'-'. $tanggal[0] .'-'. $tanggal[1];
    return $tanggal;
}

function __convert_date_mysql1($tanggal){
    $tanggal = explode('/',$tanggal);
    $tanggal = $tanggal[2] .'-'. $tanggal[1] .'-'. $tanggal[0];
    return $tanggal;
}

function __convert_date_indo($tanggal){
    $tanggal = explode('-',$tanggal);
    $tanggal = $tanggal[2] .'/'. $tanggal[1] .'/'. $tanggal[0];
    return $tanggal;
}

function __convert_time1($time){
	if (!empty($time)){
		$time = explode(':',$time);
	    $time = $time[0] .':'. $time[1];
	    return $time;
	}
    
}

function __get_time1($time){
	if (!empty($time)){
		$time = substr($time,-8,5);
	    return $time;
	}
    
}

//This function is for converting Numbers to Letters that are compatible with Excel, and Excel writter for cell selection
function num_to_letter($num, $uppercase = TRUE)
{
    $num -= 1;
    $letter =   chr(($num % 26) + 97);
    if ($num >= 26) {
        $letter = num_to_letter(floor($num/26),$uppercase).$letter;
    }
    return      ($uppercase ? strtoupper($letter) : $letter); 
}

function getIndoHari($date) {
    // memecah date berdasarkan separator -
    $temp_date = explode("-", $date);
    // membuat format date dengan hari
    // output yang dihasilkan adalah hari dengan bahasa inggris
    $day = date_format(date_create($date), 'D');
    $hari = '';
    // disini kita bikin pengkondisian
    switch ($day) {
        case "Mon": 
            $hari = "Senin";
            break;
        case "Tue":
            $hari = "Selasa";
            break;
        case "Wed":
            $hari = "Rabu";
            break;
        case "Thu":
            $hari = "Kamis";
            break;
        case "Fri":
            $hari =  "Jumat";
            break;
        case "Sat":
            $hari = "Sabtu";
            break;
        case "Sun":
            $hari = "Minggu";
            break;
 	}
 	return $hari;
}

