<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_pemegang/aksi_pemegang.php";
switch($_GET[act]){
  // Tampil Pemegang Tiket
  default:
    echo "<h2>Pemegang Tiket</h2>
          <input type=button value='Tambah Pemegang Tiket' onclick=location.href='?module=pemegang&act=tambahpemegang'>
          <table class='list'><thead>
          <tr>
          <td class='left'>no</td>
          <td class='left'>Nama Pemegang</td>
          <td class='left'>No Telepon</td>
          <td class='center'>aksi</td>
          </tr></thead><tbody>";

    $p      = new Paging;
    $batas  = 15;
    $posisi = $p->cariPosisi($batas);

    if ($_SESSION[leveluser]=='admin'){
      $tampil=mysql_query("SELECT * FROM `pemegang` LIMIT $posisi,$batas");
    }

    $no = $posisi+1;
    while ($r=mysql_fetch_array($tampil)){
      echo "<tr><td class='left' width='25'>$no</td>
                <td class='left'>$r[nama_pemegang]</td>
                <td class='left'>$r[no_telp]</td>       
                <td class='center'  width='85'>
	                  <a href=$aksi?module=pemegang&act=hapus&id=$r[id]><img src='images/del.png' border='0' title='hapus' /></a></td>
		        </tr>";
      $no++;
    }
    echo "</tbody></table>";

    if ($_SESSION[leveluser]=='admin'){
      $jmldata = mysql_num_rows(mysql_query("SELECT * FROM pemegang"));
    }
    else{
      $jmldata = mysql_num_rows(mysql_query("SELECT * FROM pemegang WHERE username='$_SESSION[namauser]'"));
    }  
    $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div class=\"pagination\"> $linkHalaman</div>";

    break;

  
  case "tambahpemegang":
    echo "<h2>Tambah Pemegang Tiket</h2>
          <form method=POST action='$aksi?module=pemegang&act=input'>
          <table class='list'><tbody>
          <tr><td class='left'>Nama Pemegang Tiket</td>      <td> : <input type=text name='nama_pemegang' size=50></td></tr>
          <tr><td class='left'>Nomor Telepon</td>      <td> : <input type=text name='no_telp' size=20> </td></tr>
          <tr><td class='left' colspan=2><input type=submit value=Simpan>
          <input type=button value=Batal onclick=self.history.back()></td></tr>
          </tbody></table></form>";
    break;
  

  case "editpemegang":
    if ($_SESSION[leveluser]=='admin'){
      $edit = mysql_query("SELECT * FROM pemegang WHERE id='$_GET[id]'");
    }
    else{
      $edit = mysql_query("SELECT * FROM pemegang WHERE id='$_GET[id]' AND username='$_SESSION[namauser]'");
    }
    
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Pemegang Tiket</h2>
          <form method=POST action=$aksi?module=pemegang&act=update>
          <input type=hidden name=id value=$r[id]>
          <table class='list'><tbody>
          <tr><td class='left'>Tema</td>      <td> : <input type=text name='tema' size=60 value='$r[tema]'></td></tr>
          <tr><td class='left'>Isi Pemegang Tiket</td>  <td> <textarea name='isi_pemegang' id='loko' style='width: 600px; height: 150px;'>$r[isi_pemegang]</textarea></td></tr>
          <tr><td class='left'Tempat</td>    <td> : <input type=text name='tempat' size=40 value='$r[tempat]'></td></tr>
          <tr><td class='left'>Pukul</td>    <td> : <input type=text name='jam' size=40 value='$r[jam]'></td></tr>
          <tr><td class='left'>Tgl Mulai</td><td> : ";    
          $get_tgl=substr("$r[tgl_mulai]",8,2);
          combotgl(1,31,'tgl_mulai',$get_tgl);
          $get_bln=substr("$r[tgl_mulai]",5,2);
          combonamabln(1,12,'bln_mulai',$get_bln);
          $get_thn=substr("$r[tgl_mulai]",0,4);
          $thn_skrg=date("Y");
          combothn($thn_sekarang-2,$thn_sekarang+2,'thn_mulai',$get_thn);

    echo "</td></tr>
          <tr><td class='left'>Tgl Selesai</td><td> : ";    
          $get_tgl2=substr("$r[tgl_selesai]",8,2);
          combotgl(1,31,'tgl_selesai',$get_tgl2);
          $get_bln2=substr("$r[tgl_selesai]",5,2);
          combonamabln(1,12,'bln_selesai',$get_bln2);
          $get_thn2=substr("$r[tgl_selesai]",0,4);
          combothn($thn_sekarang-2,$thn_sekarang+2,'thn_selesai',$get_thn2);

    echo "</td></tr>
          <tr><td class='left'>Pengirim</td>    <td> : <input type=text name='pengirim' size=40 value='$r[pengirim]'></td></tr>
          <tr><td class='left' colspan=2><input type=submit value=Update>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </tbody></table></form>";
    break;  
}
}
?>
