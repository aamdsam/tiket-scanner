<?php
ob_start();
session_start();


include "config/koneksi.php";
include "config/library.php";
include "config/fungsi_indotgl.php";
include "config/selisi_waktu.php";


$status='';
if ($_SERVER['REQUEST_METHOD']=='POST'){
	$kd_barcode=mysql_real_escape_string($_POST['q']);
	$query=mysql_query("SELECT * FROM `barcode` WHERE `kd_barcode` = '$kd_barcode'");
	

	if (mysql_num_rows($query)>0){	
		$pesan3= "Ticket No: $kd_barcode is valid";
	}else{
		$pesan3= "<span style='color:red'>Ticket No: $kd_barcode is not valid</span>";
	}
	
}
?>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CEK TIKET</title>
    <style type="text/css">
        *{font-family:arial,sans-serif;}
		body{
			background:url(img/1.jpg);
		}
        input{
            border: 1px solid #999;
            border-top-color: #ccc;
            border-left-color: #ccc;
        }
        .wrap{
			margin:0 auto;
			padding:20px;
			width:850px;
			}
        .btn {
            font-size: 16px;
            border: 0;
            color: black;
            cursor: pointer;
            height: 34px;
            margin: 0;
            vertical-align: top;
            font-weight:bold
        }
        span {cursor:pointer}
        .h{font-weight:bold;color:#333}
        #bottom a{color:#888;text-decoration:none}
		#tpesan{
			border:2px solid #3CF;
			font-size:24px;
			margin:30px;
			color:#000;
			background-color:#CCC;
			
		}
		
    </style>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.onload=function(){
            dq=document.getElementById('q');
            if(!dq.value){dq.focus();}
        }

        $(function(){
            $('span').click(function(){
                $('.h').removeClass('h');
                $(this).addClass('h');
            });

        })

    </script>
</head><body style="margin:0">

    <div style="height:30px"></div>
    <div class="wrap" style="margin-top:10px;" align="center">
    <h1>TICKET VALID FOR ONE 1 (ONE) PERSONE</h1>
    <br><br>
        
       
        <div style="padding-left:10px">
        
<form method="post">
		<img style="height: 68px;margin-top: -16px;" src="img/magalu.png" alt=""><br>
        <input type="text" style="width:300px;height:30px;line-height:30px;padding-left:5px;font-family:arial;font-size:14px;color:#555;outline:none; margin-bottom:10px" name="q" id="q">
        
</form>

<?php
if ($_SERVER['REQUEST_METHOD']=='POST'){
	echo "$pesan1";
}
?> 


      </div>
 
    </div>
<div style="margin-top:30px; padding-right:30px;text-align:center;font-size:120%">
<?php
if ($_SERVER['REQUEST_METHOD']=='POST'){
	echo "$pesan3";
}
?> 
</div>
<div style="text-align:center; ">
<img style="height: 250px;margin-top: 70px;" src="img/tiket.jpg" alt="">
</div>
<div style="float:right; padding-top:40px">
<?php
if ($_SERVER['REQUEST_METHOD']=='POST'){
	echo "$pesan2";
}
?> 
</div>
</body></html>
