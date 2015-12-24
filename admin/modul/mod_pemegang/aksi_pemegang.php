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

// Hapus pemegang
if ($module=='pemegang' AND $act=='hapus'){
  mysql_query("DELETE FROM pemegang WHERE id='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input pemegang
elseif ($module=='pemegang' AND $act=='input'){
  $nama_pemegang=mysql_real_escape_string($_POST['nama_pemegang']);
  $no_telp=mysql_real_escape_string($_POST['no_telp']);

    $sql="INSERT INTO `pemegang` (`nama_pemegang`, `no_telp`) VALUES ('$nama_pemegang', '$no_telp')";
    //echo "$sql <br>";
    mysql_query($sql);

  header('location:../../media.php?module='.$module);
}
}
?>
