<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

include "../../../config/koneksi.php";
include "../../../config/library.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus barcode
if ($module=='check_in' AND $act=='batal'){
  echo "dsdsds";
  mysql_query("UPDATE `barcode` SET `check_in`='N' WHERE `id`='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input barcode
elseif ($module=='check_in' AND $act=='input'){
  $kd_barcode=mysql_real_escape_string($_POST['kd_barcode']);
  $b1=$_POST['b1'];
  $b2=$_POST['b2'];
  $id_pemegang=$_POST['id_pemegang'];
  $keterangan=mysql_real_escape_string($_POST['keterangan']);

  for ($i = $b1; $i <= $b2; $i++) {
    $kd_barcode2=$kd_barcode.$i;
    $sql="INSERT INTO `barcode` (`kd_barcode`, `id_pemegang`, `keterangan`) VALUES ('$kd_barcode2', '$id_pemegang', '$keterangan')";
    //echo "$sql <br>";
    mysql_query($sql);
  }

  header('location:../../media.php?module='.$module);
}
}
?>
