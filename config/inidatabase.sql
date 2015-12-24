-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pegawai
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absensi`
--

DROP TABLE IF EXISTS `absensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absensi` (
  `id_absensi` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(2) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N',
  `file` varchar(200) DEFAULT NULL,
  `alasan` text,
  PRIMARY KEY (`id_absensi`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absensi`
--

LOCK TABLES `absensi` WRITE;
/*!40000 ALTER TABLE `absensi` DISABLE KEYS */;
INSERT INTO `absensi` VALUES (116,'64','2013-07-21','00:00:00','00:00:00','N','N','S','N','728851qushay.xlsx','deman'),(113,'63','2013-07-21','18:58:29','18:58:44','Y','Y','NA','Y',NULL,NULL),(114,'49','2013-07-21','00:00:00','00:00:00','N','N','I','N','7171hasil rapat.docx','Pergi Ke Surabaya'),(115,'64','2013-07-21','19:56:34','19:56:45','Y','Y','NA','Y',NULL,NULL),(111,'1','2013-07-21','18:11:04','18:11:35','Y','Y','NA','Y',NULL,NULL);
/*!40000 ALTER TABLE `absensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agama`
--

DROP TABLE IF EXISTS `agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agama` (
  `agama_ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`agama_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agama`
--

LOCK TABLES `agama` WRITE;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` VALUES (1,'ISLAM','Y'),(2,'KRISTEN KATOLIK','Y'),(3,'KRISTEN PROTESTAN','Y'),(4,'BUDHA','Y'),(5,'HINDU','Y'),(6,'LAIN-LAIN','Y');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akses`
--

DROP TABLE IF EXISTS `akses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akses` (
  `id_grup` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `id_user` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akses`
--

LOCK TABLES `akses` WRITE;
/*!40000 ALTER TABLE `akses` DISABLE KEYS */;
INSERT INTO `akses` VALUES ('1','65'),('4','65');
/*!40000 ALTER TABLE `akses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bagian`
--

DROP TABLE IF EXISTS `bagian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bagian` (
  `id_bag` varchar(4) NOT NULL,
  `n_bag` varchar(25) NOT NULL,
  PRIMARY KEY (`id_bag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bagian`
--

LOCK TABLES `bagian` WRITE;
/*!40000 ALTER TABLE `bagian` DISABLE KEYS */;
INSERT INTO `bagian` VALUES ('B001','Dosen'),('B002','Staff'),('B003','Office Boy'),('B004','Security'),('B005','perpustakaan');
/*!40000 ALTER TABLE `bagian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdownsystem`
--

DROP TABLE IF EXISTS `dropdownsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropdownsystem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL,
  `id_group` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `menu_order` int(10) NOT NULL,
  `keterangan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdownsystem`
--

LOCK TABLES `dropdownsystem` WRITE;
/*!40000 ALTER TABLE `dropdownsystem` DISABLE KEYS */;
INSERT INTO `dropdownsystem` VALUES (182,10,'','01 Manajemen Modul','media.php?module=modul',2,'Modul','Y'),(183,7,'','01 Data Pegawai','?module=pegawai',1,'Data Pegawai','Y'),(191,7,'','03 Absen Masuk','absen1.php\' target=\'_blank',3,'','Y'),(181,0,'7','Pegawai','',7,'',''),(10,0,'10','System','',13,'',''),(51,10,'','02 Manajemen User','?module=mUser',2,'','Y'),(184,7,'','02 Lihat Absen Pegawai','?module=absensi',2,'','Y'),(194,13,'','04 Laporan Data Pelatihan','media.php?module=lap_data_pelatihan',4,'','Y'),(189,13,'','02 Report Data Pegawai','?module=lap_data_pegawai',2,'','Y'),(190,13,'','03 Report RKJE','?module=report_rkja',3,'','Y'),(197,14,'','02 Lihat Absen','media.php?module=absensi',2,'','Y'),(198,14,'','03 Input RKJE','media.php?module=rkje',3,'','Y'),(199,0,'8','Master','',8,'','Y'),(200,8,'','01 Bagian','media.php?module=bagian',1,'','Y'),(201,8,'','02 Jabatan','media.php?module=jabatan',2,'','Y'),(202,7,'','06 Surat Izin Tidak Masuk','media.php?module=izin',6,'Surat Izin Tidak Masuk Pegawai','Y'),(192,7,'','04 Absen Keluar','absen2.php\' target=\'_blank',4,'','Y'),(193,7,'','05 RKJE','media.php?module=rkje',5,'','Y'),(195,0,'14','Data Pegawai','',14,'','Y'),(196,14,'','01 Lihat Data Pegawai','media.php?module=pegawai',1,'','Y'),(203,10,'','03 Group','media.php?module=group',3,'','Y'),(204,0,'15','ESBED','',15,'','Y'),(205,0,'','','',0,'','Y'),(206,15,'','Ekspor Ke ESBED','?module=eksporKeEsbed',1,'',''),(207,15,'','Lihat Tabel Esbed','media.php?module=lihatTabelEsbed',2,'','');
/*!40000 ALTER TABLE `dropdownsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupmodul`
--

DROP TABLE IF EXISTS `groupmodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupmodul` (
  `id_group` int(10) NOT NULL AUTO_INCREMENT,
  `relasi_modul` int(10) NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupmodul`
--

LOCK TABLES `groupmodul` WRITE;
/*!40000 ALTER TABLE `groupmodul` DISABLE KEYS */;
INSERT INTO `groupmodul` VALUES (13,13,'Report '),(64,7,'Pegawai'),(10,10,'System'),(67,8,'Master'),(66,14,'Data Pegawai'),(68,15,'ESBED');
/*!40000 ALTER TABLE `groupmodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grup`
--

DROP TABLE IF EXISTS `grup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grup` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `ket` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grup`
--

LOCK TABLES `grup` WRITE;
/*!40000 ALTER TABLE `grup` DISABLE KEYS */;
INSERT INTO `grup` VALUES (1,'admin','master'),(2,'akademik','akademik'),(3,'Dosen','Input Nilai'),(4,'Epsbed','view epsbed'),(5,'Laporan Mahasiswa','Data Laporan mahasiswa'),(6,'Laporan Aset','laporan aset'),(7,'Laporan Pegawai','laporan pegawai');
/*!40000 ALTER TABLE `grup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_jabatan`
--

DROP TABLE IF EXISTS `h_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_jabatan` (
  `idh` int(11) NOT NULL AUTO_INCREMENT,
  `idkjb` varchar(4) NOT NULL,
  `jab_old` varchar(20) NOT NULL,
  `tgl_ajb` date NOT NULL,
  `jabatan_baru` varchar(20) NOT NULL,
  `tgl_kjb` date NOT NULL,
  PRIMARY KEY (`idh`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_jabatan`
--

LOCK TABLES `h_jabatan` WRITE;
/*!40000 ALTER TABLE `h_jabatan` DISABLE KEYS */;
INSERT INTO `h_jabatan` VALUES (10,'KJ01','Rekom','2009-01-16','Kepala Rekom','2013-01-16'),(11,'KJ01','Kepala Rekom','2009-01-16','Mgr.Rekom','2013-01-16');
/*!40000 ALTER TABLE `h_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakakses`
--

DROP TABLE IF EXISTS `hakakses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakakses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `report` text COLLATE latin1_general_ci NOT NULL,
  `aset` text COLLATE latin1_general_ci NOT NULL,
  `keuangan` text COLLATE latin1_general_ci NOT NULL,
  `mahasiswa` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakakses`
--

LOCK TABLES `hakakses` WRITE;
/*!40000 ALTER TABLE `hakakses` DISABLE KEYS */;
INSERT INTO `hakakses` VALUES (2,'1','1,2,3,4,','1,2,3,4,5,6','1','1');
/*!40000 ALTER TABLE `hakakses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakmodul`
--

DROP TABLE IF EXISTS `hakmodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakmodul` (
  `id_level` int(2) NOT NULL,
  `id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakmodul`
--

LOCK TABLES `hakmodul` WRITE;
/*!40000 ALTER TABLE `hakmodul` DISABLE KEYS */;
INSERT INTO `hakmodul` VALUES (4,110),(4,31),(4,35),(4,32),(4,36),(4,152),(4,33),(3,110),(3,157),(3,159),(2,110),(1,110),(1,51),(1,166),(1,41),(1,53),(0,110),(0,33),(3,162),(2,137),(2,136),(1,147),(2,134),(2,4),(1,144),(4,137),(4,136),(4,134),(1,145),(1,148),(1,146),(1,149),(1,150),(1,155),(1,135),(1,141),(1,22),(1,153),(1,20),(1,23),(1,143),(1,134),(1,10),(1,2),(1,7),(4,4),(0,35),(0,31),(3,165),(0,36),(3,160),(2,7),(0,136),(1,8),(3,163),(3,158),(3,161),(3,164),(3,134),(3,1),(0,137),(0,134),(4,168),(0,168),(0,170),(4,170),(3,173),(1,173),(3,174),(1,13),(2,13),(3,14),(8,13);
/*!40000 ALTER TABLE `hakmodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitas`
--

DROP TABLE IF EXISTS `identitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Identitas_ID` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `KodeHukum` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Nama_Identitas` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `TglMulai` date NOT NULL DEFAULT '0000-00-00',
  `Alamat1` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NoAkta` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglAkta` date DEFAULT NULL,
  `NoSah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSah` date DEFAULT NULL,
  `Aktif` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (24,'091004','','Universitas Muhammadiyah Makasar','1963-06-19','Jalan Sultan Alauddin No 259','Makassar','','','','fadly@flash.co.id','www.unismuh.ac.id','','0000-00-00','','0000-00-00','Y');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatan` (
  `id_jab` varchar(4) NOT NULL,
  `n_jab` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES ('J001','Dekan'),('J002','Wadek I'),('J003','Wadek II'),('J004','Wadek III'),('J005','Sekertaris'),('J006','Dosen Kontrak'),('J007','Dosen Tetap'),('J008','Staff');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatandikti`
--

DROP TABLE IF EXISTS `jabatandikti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatandikti` (
  `JabatanDikti_ID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JabatanDikti_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatandikti`
--

LOCK TABLES `jabatandikti` WRITE;
/*!40000 ALTER TABLE `jabatandikti` DISABLE KEYS */;
INSERT INTO `jabatandikti` VALUES ('01','AAM','N','N'),('02','AA','N','N'),('03','LMu','N','N'),('04','LMa','N','N'),('05','L','N','N'),('06','LKM','N','N'),('07','LK','N','N'),('08','GBM','N','N'),('09','GB','N','N');
/*!40000 ALTER TABLE `jabatandikti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenjang`
--

DROP TABLE IF EXISTS `jenjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenjang` (
  `Jenjang_ID` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Jenjang_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenjang`
--

LOCK TABLES `jenjang` WRITE;
/*!40000 ALTER TABLE `jenjang` DISABLE KEYS */;
INSERT INTO `jenjang` VALUES ('A','S3','Strata Tiga','N','N'),('B','S2','Strata Dua','N','N'),('C','S1','Strata Satu','N','N'),('D','D4','Diploma 4','N','N'),('E','D3','Diploma 3','N','N'),('F','D2','Diploma 2','N','N'),('G','D1','Diploma 1','N','N'),('H','SP-1','Spesialis Satu','N','N'),('I','SP-2','Spesialis Dua','N','N'),('J','Profesi','Profesi','N','N');
/*!40000 ALTER TABLE `jenjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `jurusan_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Identitas_ID` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `kode_jurusan` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `nama_jurusan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jenjang` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `Akreditasi` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `NoSKDikti` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKDikti` date DEFAULT NULL,
  `NoSKBAN` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKBAN` date DEFAULT NULL,
  `Aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES (7,'091004','11201','Pendidikan Dokter','S1','B','2422/D/T/2008','2008-07-29','2422/D/T/2008','2008-07-29','Y');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_jabatan`
--

DROP TABLE IF EXISTS `k_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_jabatan` (
  `idkjb` varchar(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `masa_kerja` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`idkjb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_jabatan`
--

LOCK TABLES `k_jabatan` WRITE;
/*!40000 ALTER TABLE `k_jabatan` DISABLE KEYS */;
INSERT INTO `k_jabatan` VALUES ('KJ01','1234',4,'dsda');
/*!40000 ALTER TABLE `k_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kampus`
--

DROP TABLE IF EXISTS `kampus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kampus` (
  `Kampus_ID` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Identitas_ID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Aktif` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`Kampus_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kampus`
--

LOCK TABLES `kampus` WRITE;
/*!40000 ALTER TABLE `kampus` DISABLE KEYS */;
INSERT INTO `kampus` VALUES ('K1','KAMPUS 1','Jalan Sultan Alauddin No 259 Makassar 90221 ','Makassar','091004','0411 866972','0411 865588','Y');
/*!40000 ALTER TABLE `kampus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kegiatan`
--

DROP TABLE IF EXISTS `kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_unsur` smallint(6) DEFAULT NULL,
  `kd_sub_unsur` smallint(6) DEFAULT NULL,
  `kd_kegiatan` smallint(6) DEFAULT NULL,
  `nm_kegiatan` text,
  `satuan_hasil` varchar(100) DEFAULT NULL,
  `angka_kredit` float(6,2) DEFAULT NULL,
  `pelaksanaan_kegiatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kegiatan`
--

LOCK TABLES `kegiatan` WRITE;
/*!40000 ALTER TABLE `kegiatan` DISABLE KEYS */;
INSERT INTO `kegiatan` VALUES (1,1,1,1,'Doktor (S3)','Ijazah',200.00,'Semua Jenjang'),(6,1,1,2,'Megister (S2)','Ijazah',150.00,'Semua Jenjang'),(7,1,2,3,'Diklat prajabatan golongan III','Setiap sertifikat',2.00,'AK Pertama'),(11,2,3,4,'Melaksanakan perkuliahan/tutorial dan membimbing, menguji serta menyelenggarakan pendidikan di laboratorium, praktik keguruan bengkel/studio/kebun pada fakultas/sekolah tinggi/akademik/politeknik sendiri, pada fakultas lain dalam lingkungan Universitas/institut sendiri, maupun diluar perguruan tinggi sendiri secara melembaga tiap sks (maksimum 12 sks)per semester','10 sks pertama',0.50,'Asisten Ahli ke atas'),(12,2,3,5,'Melaksanakan perkuliahan/tutorial dan membimbing, menguji serta menyelenggarakan pendidikan di laboratorium, praktik keguruan bengkel/studio/kebun pada fakultas/sekolah tinggi/akademik/politeknik sendiri, pada fakultas lain dalam lingkungan Universitas/institut sendiri, maupun diluar perguruan tinggi sendiri secara melembaga tiap sks (maksimum 12 sks)per semester','2 sks berikutnya',0.25,'Asisten Ahli ke atas'),(13,2,3,6,'Melaksanakan perkuliahan/tutorial dan membimbing, menguji serta menyelenggarakan pendidikan di laboratorium, praktik keguruan bengkel/studio/kebun pada fakultas/sekolah tinggi/akademik/politeknik sendiri, pada fakultas lain dalam lingkungan Universitas/institut sendiri, maupun diluar perguruan tinggi sendiri secara melembaga tiap sks (maksimum 12 sks)per semester','10 sks pertama',1.00,'Lektor ke atas'),(15,2,3,7,'Melaksanakan perkuliahan/tutorial dan membimbing, menguji serta menyelenggarakan pendidikan di laboratorium, praktik keguruan bengkel/studio/kebun pada fakultas/sekolah tinggi/akademik/politeknik sendiri, pada fakultas lain dalam lingkungan Universitas/institut sendiri, maupun diluar perguruan tinggi sendiri secara melembaga tiap sks (maksimum 12 sks)per semester','2 sks berikutnya',0.50,'Lektor ke atas'),(16,2,4,8,'Membimbing mahasiswa seminar','Tiap semester',1.00,'Semua Jenjang'),(17,2,5,9,'Membimbing mahasiswa kuliah kerja nyata, praktek kerja nyata, prektek kerja lapangan','Tiap semester',1.00,'Semua Jenjang'),(20,2,6,10,'Pembimbing Utama Disertasi','Stiap',8.00,'Semua Jenjang'),(21,2,6,11,'Pembimbing Utama Thesis','Stiap',3.00,'Semua Jenjang'),(22,2,6,12,'Pembimbing Utama Skripsi','Stiap',1.00,'Semua Jenjang'),(23,2,6,13,'Pembimbing Utama Laporan Akhir','Stiap',1.00,'Semua Jenjang'),(24,2,6,14,'Pembimbing pendamping/pembantu Disertasi','Stiap',6.00,'Semua Jenjang'),(25,2,6,15,'Pembimbing pendamping/pembantu Thesis','Stiap',2.00,'Semua Jenjang'),(26,2,6,16,'Pembimbing pendamping/pembantu Skripsi','Stiap',0.50,'Semua Jenjang'),(27,2,6,17,'Pembimbing pendamping/pembantu laporan Akhir','Stiap',0.50,'Semua Jenjang'),(28,2,7,18,'Ketua penguji','Setiap mahasiswa',1.00,'Semua Jenjang'),(29,2,7,19,'Anggota penguji','Setiap mahasiswa',0.50,'Semua Jenjang'),(30,2,8,20,'Melakukan kegiatan pembinaan kegiatan mahasiswa di bidang akademik dan kemahasiswaan','setiap semester',2.00,'Semua Jenjang'),(31,2,9,21,'Melakuakan kegiatan pengembangan program kuliah','setiap mata kuliah',2.00,'Semua Jenjang'),(32,2,10,22,'Buku ajar','Setiap buku',20.00,'Semua Jenjang'),(33,2,10,23,'Diklat, modul, petunjuk praktikum, model, alat bantu, audio visual, naskah tutorial','Setiap naskah',5.00,'Semua Jenjang'),(34,2,11,24,'Melakukan kegiatan orasi ilmiah pada perguruan tinggi tiap tahun','Setiap orasi',5.00,'Semua Jenjang'),(35,2,12,25,'Rektor','setiap semester',6.00,'Semua Jenjang'),(36,2,12,26,'Pembantu rektor/dekan/direktur program pasca sarjana','setiap semester',5.00,'Semua Jenjang'),(39,2,12,27,'Ketua sekolah tinggi/pembantu dekan/asisten direktur program pasca sarjana/direktur politeknik','setiap semester',4.00,'Semua Jenjang'),(40,2,12,28,'Pembantu ketua sekolah tinggi/pembantu direktur politeknik','setiap semester',4.00,'Semua Jenjang'),(41,2,12,29,'Direktur akademi','setiap semester',4.00,'Semua Jenjang'),(42,2,12,30,'Pembantu direktur akademi/ketua jurusan/bagian pada Universitas/institut/sekolah tinggi','setiap semester',3.00,'Semua Jenjang'),(43,2,12,31,'Ketua jurusan pada politeknik/akademi/sekretaris jurusan/bagian pada universitas/institut/sekolah tinggi','setiap semester',3.00,'Semua Jenjang'),(44,2,12,32,'sekertaris jurusan pada politeknik/akademik dan kepala laboratorium universitas/institut/sekolah tinggi/akademi','setiap semester',3.00,'Semua Jenjang'),(45,2,13,33,'Pembimbing pencangkokan','setiap semester',2.00,'Semua Jenjang'),(46,2,13,34,'Reguler','setiap semester',1.00,'Semua Jenjang'),(47,2,14,35,'Detasering','setiap semester',5.00,'Semua Jenjang'),(48,2,14,36,'Pencangkokan','setiap semester',4.00,'Semua Jenjang'),(49,4,15,37,'Hasil penelitian atau pemikiran yang dipublikasikan dalam bentuk Monografi','Setiap monografi',20.00,'Semua Jenjang'),(50,4,15,38,'Hasil penelitian atau pemikiran yang dipublikasikan &nbsp;dalam bentuk Buku Referensi','Setiap buku',40.00,'Semua Jenjang'),(51,4,15,39,'Hasil penelitian atau pemikiran yang dipublikasikan majalah ilmiah Internasional','Setiap majalah',40.00,'Semua Jenjang'),(52,4,15,40,'Hasil penelitian atau pemikiran yang di publikasikan majalah ilmiah Nasional Terakreditasi','Setiap majalah',25.00,'Semua Jenjang'),(53,4,15,41,'Hasil penelitian atau pemikiran yang dipublikasikan majalah ilmiah Nasional tidak terakreditasi','Setiap majalah',10.00,'Semua Jenjang'),(54,4,15,42,'Hasil penelitian atau pemikiran yang dipublikasikan Seminar disajikan Internasional','Setiap makalah',15.00,'Semua Jenjang'),(55,4,15,43,'Hasil penelitian atau pemikiran yang dipublikasikan Seminar disajikan Nasional','Setiap makalah',10.00,'Semua Jenjang'),(56,4,15,44,'Hasil penelitian atau pemikiran yang dipublikasikan Seminar poster Internasional','Setiap poster',10.00,'Semua Jenjang'),(57,4,15,45,'Hasil penelitian atau pemikiran yang dipublikasikan Seminar poster Nasional','Setiap poster',5.00,'Semua Jenjang'),(58,4,15,46,'Hasil penelitian atau pemikiran yang tidak dipublikasikan ( tersimpan di perpustakaan perguruan tinggi )','Setiap hasil penelitian',3.00,'Semua Jenjang'),(59,4,16,47,'Diterbitkan dan diedarkan secara nasional','Setiap buku',15.00,'Semua Jenjang'),(60,4,17,48,'Diterbitkan dan diedarkan secara nasional','Setiap buku',10.00,'Semua Jenjang'),(61,4,18,49,'Internasional','Setiap rancangan',80.00,'Semua Jenjang'),(62,4,18,50,'Nasional','Setiap rancangan',40.00,'Semua Jenjang'),(63,4,19,51,'Tingkat Internasional','Setiap rancangan',20.00,'Semua Jenjang'),(64,4,19,52,'Tingkat Nasional','Setiap rancangan',15.00,'Semua Jenjang'),(65,4,19,53,'Tingkat Lokal','Setiap rancangan',10.00,'Semua Jenjang'),(66,5,20,54,'Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya','setiap semester',5.50,'Semua Jenjang'),(67,5,21,55,'Melaksanakan pengembangan hasil pendidikan dan penelitian yang dapat dimanfaatkan oleh masyarakat','Setiap program',3.00,'Semua Jenjang'),(68,5,22,56,'Terjadwal/terprogram dalam satu semester atau lebih di Tingkat Internasional','Setiap program',4.00,'Semua Jenjang'),(69,8,26,75,'sebagai ketua/wakil ketua merangkap anggota','setiap tahun',3.00,'semua jenjang'),(70,5,22,57,'Terjadwal/terprogram dalam satu semester atau lebih di Tingkat Nasional','Setiap program',3.00,'Semua Jenjang'),(71,8,26,76,'Sebagai anggota&nbsp;','setiap tahun',2.00,'semua jenjang'),(72,5,22,58,'Terjadwal/terprogram dalam satu semester atau lebih di Tingkat Lokal','Setiap program',2.00,'Semua Jenjang'),(73,8,27,77,'Panitia pusat ketua/wakil ketua&nbsp;','setiap kepanitiaan',3.00,'semua jenjang'),(75,8,26,78,'panitia pusat anggota','setiap kepanitiaan',2.00,'semua jenjang'),(76,5,22,59,'Terjadwal/terprogram kurang dari satu semester dan minimal satu bulan di Tingkat Internasional','Setiap program',3.00,'Semua Jenjang'),(77,8,27,79,'Panitia daerah ketua/wakil ketua','setiap kepanitiaan',3.00,'semua jenjang'),(78,5,22,60,'Terjadwal/terprogram kurang dari satu semester dan minimal satu bulan di Tingkat Nasional','Setiap program',2.00,'Semua Jenjang'),(79,8,27,80,'Panitia daerah anggota<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>','setiap kepanitiaan',1.00,'semua jenjang'),(80,8,28,81,'Tingkat internasional pengurus&nbsp;','setiap priode jabatan',2.00,'semua jenjang'),(81,8,28,82,'Tingkat internasional anggota atas permintaan&nbsp;','setiap priode jabatan',1.00,'semua jenjang'),(82,8,28,83,'Tingkat internasional anggota&nbsp;','setiap priode jabatan',0.50,'semua jenjang'),(83,8,28,84,'Tingkat nasional pengurus','setiap priode jabatan',1.00,'semua jenjang'),(84,8,28,85,'Tingkat nasional anggota atas permintaan','setiap priode jabatan',1.00,'semua jenjang'),(85,8,28,86,'Tingkat nasional anggota','setiap priode jabatan',0.50,'semua jenjang'),(87,8,29,87,'mewakili pengurus tinggi/lembaga pemerintah duduk dalam panitia antar lembaga','setiap kepanitiaan',1.00,'semua jenjang'),(88,5,22,61,'Terjadwal/terprogram kurang dari satu semester dan minimal satu bulan di Tingkat Lokal','Setiap program',1.00,'Semua Jenjang'),(90,5,22,62,'Insidental','Setiap program',1.00,'Semua Jenjang'),(91,8,30,88,'Sebagai ketua delegasi','setiap kegiatan ',3.00,'semua jenjang'),(92,8,30,89,'Sebagai anggota delegasi','setiap kegiatan ',2.00,'semua jenjang'),(93,8,31,90,'Tinggkat internasional/nasional/regional sebagai : ketua','setiap kegiatan ',3.00,'semua jenjang'),(95,8,31,91,'Tinggkat internasional/nasional/regional sebagai : anggota&nbsp;','setiap kegiatan ',2.00,'semua jenjang'),(96,5,23,63,'Berdasarkan bidang keahlian','Setiap program',1.50,'Semua Jenjang'),(97,8,31,92,'Di lingkungan pengurus tinggi sebagai : ketua&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>','setiap kegiatan ',2.00,'semua jenjang'),(98,5,23,64,'Berdasarkan penugasan lembaga perguruan tinggi','Setiap program',1.00,'Semua Jenjang'),(100,8,31,93,'Di lingkungan pengurus tinggi sebagai : anggota','setiap kegiatan ',1.00,'semua jenjang'),(101,5,23,65,'Berdasarkan fungsi/jabatan','Setiap program',0.50,'Semua Jenjang'),(102,5,24,66,'Membuat/menulis karya pengabdian pada masyarakat yang tidak dipublikasikan','Setiap karya',3.00,'Semua Jenjang'),(103,8,32,94,'Penghargaan/tanda jasa satya lencana karya satya : 30 (tiga puluh) tahun','tanda jasa',3.00,'semua jenjang'),(104,6,25,67,'Lamanya lebih dari 960 jam','Setiap sertifikat',15.00,'Semua Jenjang'),(105,8,32,95,'Penghargaan/tanda jasa satya lencana karya satya : 20 (dua puluh) tahun','tanda jasa',2.00,'semua jenjang'),(106,8,32,96,'Penghargaan/tanda jasa satya lencana karya satya : 10 (sepuluh) tahun','tanda jasa',1.00,'semua jenjang'),(108,8,32,97,'Memperoleh penghargaan lainnya : tinggkat internasional','tanda jasa',5.00,'semua jenjang'),(109,8,32,98,'Memperoleh penghargaan lainnya : tingkat nasional','tanda jasa',3.00,'semua jenjang'),(110,8,32,99,'Memperoleh penghargaan lainnya : provinsi','tanda jasa',1.00,'semua jenjang'),(111,6,25,68,'Lamanya 641-960 jam','Setiap sertifikat',9.00,'Semua Jenjang'),(112,6,25,69,'Lamanya 481-640 jam','Setiap sertifikat',6.00,'Semua Jenjang'),(115,6,25,70,'Lamanya 161-480 jam','Setiap sertifikat',3.00,'Semua Jenjang'),(117,6,25,71,'Lamanya 81-160 jam','Setiap sertifikat',2.00,'Semua Jenjang'),(118,6,25,72,'Lamanya 31-80 jam','Setiap sertifikat',1.00,'Semua Jenjang'),(119,6,25,73,'Lamanya 10-30 jam','Setiap sertifikat',0.50,'Semua Jenjang'),(121,8,33,100,'Buku SMTA atau setingkat','setiap buku',5.00,'semua jenjang'),(122,8,33,101,'Buku SMTA atau setingkat','setiap buku',5.00,'semua jenjang'),(123,8,33,102,'Buku SD atau setingkat','setiap buku',5.00,'semua jenjang'),(124,8,34,103,'Tinggkat internasional','tiap piagam/mendali',5.00,'semua jenjang'),(125,8,34,104,'Tinggkat nasional&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>','tiap piagam/mendali',3.00,'semua jenjang'),(126,8,34,105,'Tinggkat daerah/lokal','tiap piagam/mendali',1.00,'semua jenjang'),(127,8,35,106,'Tingkat nasional sebagai : pengurus aktif','tahun',1.00,'semua jenjang'),(128,8,35,107,'Tingkat nasional sebagai : anggota aktif','tahun',0.75,'semua jenjang'),(129,8,35,108,'Tingkat provinsi/kabupaten/kota sebagai : pengurus aktif','tahun',0.50,'semua jenjang'),(130,8,35,109,'Tingkat provinsi/kabupaten/kota sebagai : anggota aktif','tahun',0.25,'semua jenjang');
/*!40000 ALTER TABLE `kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_aset`
--

DROP TABLE IF EXISTS `level_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_aset` (
  `id` int(10) NOT NULL,
  `id_pegawai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_aset`
--

LOCK TABLES `level_aset` WRITE;
/*!40000 ALTER TABLE `level_aset` DISABLE KEYS */;
INSERT INTO `level_aset` VALUES (0,'1','super admin');
/*!40000 ALTER TABLE `level_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(3) NOT NULL,
  `tgl` date NOT NULL,
  `time` time NOT NULL,
  `log` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (99,'65','2013-11-23','08:45:50','0'),(100,'65','2013-11-23','08:45:59','1'),(101,'55','2013-11-23','08:46:39','1'),(102,'','2013-11-23','08:47:07','0'),(103,'65','2013-11-23','08:47:21','1'),(104,'','2013-11-23','08:47:53','0'),(105,'65','2013-11-23','08:48:11','1'),(106,'','2013-11-23','08:48:24','0'),(107,'55','2013-11-23','08:48:28','1'),(108,'','2013-11-23','08:48:38','0'),(109,'55','2013-11-23','08:48:42','1'),(110,'','2013-11-23','08:49:01','0'),(111,'55','2013-11-23','08:49:05','1'),(112,'','2013-11-23','08:49:15','0'),(113,'','2013-11-23','08:49:26','0'),(114,'55','2013-11-23','08:49:36','1'),(115,'65','2013-11-23','08:49:41','1'),(116,'','2013-11-23','08:49:58','0'),(117,'','2013-11-23','08:51:22','0'),(118,'55','2013-11-23','08:51:27','1'),(119,'','2013-11-23','08:51:47','0'),(120,'55','2013-11-23','08:51:52','1'),(121,'','2013-11-23','08:52:08','0'),(122,'55','2013-11-23','08:53:01','1'),(123,'','2013-11-23','08:55:02','0'),(124,'55','2013-11-23','08:55:06','1'),(125,'','2013-11-23','08:55:31','0'),(126,'55','2013-11-23','08:55:36','1'),(127,'','2013-11-23','08:56:22','0'),(128,'65','2013-11-23','09:15:06','1'),(129,'','2013-11-23','09:15:23','0'),(130,'65','2013-11-23','09:19:39','1'),(131,'','2013-11-23','09:20:19','0'),(132,'65','2013-11-23','09:20:34','1'),(133,'','2013-11-23','09:21:02','0'),(134,'65','2013-11-23','09:21:54','1'),(135,'65','2013-11-23','09:33:14','0'),(136,'55','2013-11-23','09:33:23','1'),(137,'55','2013-11-23','09:34:13','0'),(138,'65','2013-11-23','09:34:29','1'),(139,'65','2013-11-23','10:03:25','0'),(140,'55','2013-11-23','10:04:32','1'),(141,'55','2013-11-23','10:04:48','0'),(142,'65','2013-11-23','10:05:02','1'),(143,'55','2013-11-23','10:06:08','1'),(144,'55','2013-11-23','10:07:07','0'),(145,'55','2013-11-23','10:07:19','1'),(146,'65','2013-11-23','10:07:32','0'),(147,'55','2013-11-23','10:07:33','0'),(148,'','2013-11-23','10:07:48','0'),(149,'65','2013-11-23','10:08:34','1'),(150,'65','2013-11-23','10:09:09','0'),(151,'25','2013-11-23','10:09:16','1'),(152,'25','2013-11-23','10:09:30','0'),(153,'65','2013-11-23','10:09:42','1'),(154,'55','2013-11-23','10:12:14','1'),(155,'65','2013-11-23','10:12:23','0'),(156,'','2013-11-23','10:12:35','0'),(157,'55','2013-11-23','10:12:54','0'),(158,'65','2013-11-23','10:13:32','1'),(159,'55','2013-11-23','10:48:19','1'),(160,'','2013-11-23','10:49:46','0'),(161,'65','2013-11-23','10:50:02','1'),(162,'55','2013-11-23','10:54:04','0'),(163,'55','2013-11-23','10:54:14','1'),(164,'55','2013-11-23','10:54:22','0'),(165,'65','2013-11-23','10:57:57','0'),(166,'65','2013-11-23','13:31:43','1'),(167,'51','2013-11-23','13:38:38','1'),(168,'51','2013-11-23','13:42:32','0'),(169,'65','2013-11-25','10:45:07','1'),(170,'65','2013-11-25','10:46:03','0'),(171,'65','2013-11-25','10:46:03','0'),(172,'65','2013-11-25','11:09:39','1'),(173,'','2013-11-25','11:15:33','0'),(174,'65','2013-11-25','11:15:41','1'),(175,'','2013-11-25','11:21:59','0'),(176,'65','2013-11-25','11:22:06','1'),(177,'65','2013-11-25','13:21:18','1'),(178,'65','2013-11-25','13:22:04','0'),(179,'65','2013-11-25','13:23:58','1'),(180,'65','2013-11-25','13:26:46','0'),(181,'65','2013-11-25','13:26:46','0'),(182,'32','2013-11-25','13:26:53','1'),(183,'','2013-11-25','15:59:43','0'),(184,'','2013-11-25','16:02:31','0'),(185,'32','2013-11-25','16:04:21','1'),(186,'65','2013-11-26','09:48:21','1'),(187,'32','2013-11-26','10:15:41','1'),(188,'32','2013-11-26','10:26:54','0'),(189,'65','2013-11-26','10:27:04','1'),(190,'65','2013-11-26','11:56:17','0'),(191,'65','2013-11-26','12:07:26','1'),(192,'65','2013-11-26','12:09:02','0'),(193,'65','2013-11-26','12:14:09','1'),(194,'65','2013-11-26','12:27:38','0'),(195,'65','2013-11-26','12:28:27','1'),(196,'65','2013-11-26','14:08:49','0'),(197,'51','2013-11-26','14:09:49','1'),(198,'15','2013-11-26','14:11:01','1'),(199,'65','2013-11-26','14:17:19','1'),(200,'65','2013-11-26','14:19:29','0'),(201,'25','2013-11-26','14:19:39','1'),(202,'25','2013-11-26','14:21:07','0'),(203,'65','2013-11-26','14:21:21','1'),(204,'65','2013-11-26','14:25:00','0'),(205,'65','2013-11-26','14:28:56','1'),(206,'15','2013-11-26','14:30:10','0'),(207,'65','2013-11-26','14:30:19','1'),(208,'65','2013-11-26','14:31:45','0'),(209,'25','2013-11-26','14:31:51','1'),(210,'65','2013-11-26','14:34:13','0'),(211,'25','2013-11-26','14:34:18','1'),(212,'25','2013-11-26','14:36:41','0'),(213,'65','2013-11-26','14:36:49','1'),(214,'25','2013-11-26','14:41:39','0'),(215,'65','2013-11-26','14:41:50','1'),(216,'65','2013-11-26','14:59:58','0'),(217,'25','2013-11-26','15:04:18','1'),(218,'65','2013-11-26','15:11:39','1'),(219,'65','2013-11-26','15:13:29','0'),(220,'65','2013-11-26','15:15:50','1'),(221,'65','2013-11-26','15:31:23','0'),(222,'65','2013-11-26','15:32:40','1'),(223,'15','2013-11-26','21:30:14','1'),(224,'15','2013-11-26','21:46:35','0'),(225,'25','2013-11-26','21:46:42','1'),(226,'25','2013-11-26','22:16:36','0'),(227,'41','2013-11-26','22:18:48','1'),(228,'41','2013-11-26','22:20:03','0'),(229,'51','2013-11-26','22:20:21','1'),(230,'65','2013-12-03','14:13:21','1'),(231,'65','2013-12-03','14:18:25','0'),(232,'15','2013-12-03','14:18:35','1'),(233,'15','2013-12-03','14:18:47','0'),(234,'65','2013-12-03','14:19:16','1'),(235,'65','2013-12-03','14:21:24','0'),(236,'15','2013-12-03','14:21:31','1'),(237,'15','2013-12-03','14:34:07','0'),(238,'65','2013-12-03','14:34:17','1'),(239,'','2013-12-03','17:37:01','0'),(684,'65','2014-02-01','10:06:03','1'),(685,'65','2014-02-01','10:08:12','0'),(686,'15','2014-02-02','19:40:55','1'),(687,'15','2014-02-02','19:56:57','1'),(688,'15','2014-02-02','20:00:55','1'),(689,'65','2014-02-03','01:46:06','1'),(690,'65','2014-02-03','02:33:31','0'),(691,'65','2014-02-03','14:00:19','1'),(692,'65','2014-02-03','14:21:09','1'),(693,'65','2014-02-03','14:41:02','1'),(694,'','2014-02-03','15:18:49','0'),(695,'65','2014-02-03','15:19:10','1'),(696,'','2014-02-03','16:11:25','0'),(697,'65','2014-02-03','17:58:02','1'),(698,'65','2014-02-03','18:24:46','1'),(699,'65','2014-02-03','18:47:56','0'),(700,'65','2014-02-03','18:49:05','1'),(701,'15','2014-02-03','20:09:56','1'),(702,'65','2014-02-03','21:45:35','0');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_level`
--

DROP TABLE IF EXISTS `master_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_level` varchar(3) DEFAULT NULL,
  `nm_level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_level`
--

LOCK TABLES `master_level` WRITE;
/*!40000 ALTER TABLE `master_level` DISABLE KEYS */;
INSERT INTO `master_level` VALUES (1,'1','superadmin'),(2,'2','admin'),(3,'3','pegawai'),(4,'4','user'),(5,'5','dosen'),(6,'6','mahasiswa'),(7,'7','tamu'),(8,'8','pimpinan');
/*!40000 ALTER TABLE `master_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mastermodul`
--

DROP TABLE IF EXISTS `mastermodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mastermodul` (
  `id` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `id_menu` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `id_pegawai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `class` text COLLATE latin1_general_ci NOT NULL,
  `url` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mastermodul`
--

LOCK TABLES `mastermodul` WRITE;
/*!40000 ALTER TABLE `mastermodul` DISABLE KEYS */;
INSERT INTO `mastermodul` VALUES ('1','1','Laporan Pegawai','1','Y','i-documents-1',''),('2','2','Laporan Mahasiswa','1','N','i-documents-1',''),('3','3','Laporan Keuangan','1','Y','i-documents-1',''),('4','4','Laporan Aset','1','Y','i-documents-1',''),('5','5','SET','1','Y','i-tools',''),('6','6','Akademik','1','N','i-globe-2',''),('7','1','Laporan Pegawai','5','Y','',''),('','2','Laporan Mahasiswa','5','N','i-documents-1',''),('','3','Laporan Keuangan','5','Y','i-documents-1',''),('','4','Laporan Aset','5','Y','i-documents-1','');
/*!40000 ALTER TABLE `mastermodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_user`
--

DROP TABLE IF EXISTS `online_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_user`
--

LOCK TABLES `online_user` WRITE;
/*!40000 ALTER TABLE `online_user` DISABLE KEYS */;
INSERT INTO `online_user` VALUES (769,'65brpd2l0258l8ev91kon1rs3sg0'),(770,'65ddsa0jgeugbjqkpfl1qkt87du5'),(771,'65ard0ut8o21dclaoobcrvre5p64'),(773,'656jerl3r819urgnhssg9ujur0k0'),(774,'15cn5jdib6i63dk2nnht0a1703p5');
/*!40000 ALTER TABLE `online_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameter_pembayaran`
--

DROP TABLE IF EXISTS `parameter_pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameter_pembayaran` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `jenis_pembayaran` text NOT NULL,
  `kode_tagihan` varchar(4) NOT NULL,
  `rek_giro` varchar(15) NOT NULL,
  `tipe_pembayaran` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter_pembayaran`
--

LOCK TABLES `parameter_pembayaran` WRITE;
/*!40000 ALTER TABLE `parameter_pembayaran` DISABLE KEYS */;
INSERT INTO `parameter_pembayaran` VALUES (3,'BPP S1 Smstr 3','03','8200001046','Full Payment','H2H'),(2,'BPP S1 Smstr 2','02','8200001046','Full Payment','H2H'),(1,'BPP S1 Smstr 1','01','8200001046','Full Payment','H2H'),(4,'BPP S1 Smstr 4','04','8200001046','Full Payment','H2H'),(5,'BPP S1 Smstr 5','05','8200001046','Full Payment','H2H'),(6,'BPP S1 Smstr 6','06','8200001046','Full Payment','H2H'),(7,'BPP S1 Smstr 7','07','8200001046','Full Payment','H2H'),(8,'BPP S1 Smstr 8','08','8200001046','Full Payment','H2H'),(9,'BPP S1 Smstr 9','09','8200001046','Full Payment','H2H'),(10,'BPP S1 Smstr 10','10','8200001046','Full Payment','H2H'),(11,'BPP S1 Smstr 11','11','8200001046','Full Payment','H2H'),(12,'BPP S1 Smstr 12','12','8200001046','Full Payment','H2H'),(13,'BPP S1 Smstr 13','13','8200001046','Full Payment','H2H'),(14,'BPP S1 Smstr 14','14','8200001046','Full Payment','H2H'),(15,'BPP S1 Smstr 15','15','8200001046','Full Payment','H2H'),(16,'BPP S1 Smstr 16','16','8200001046','Full Payment','H2H'),(17,'BPP S1 Smstr 17','17','8200001046','Full Payment','H2H'),(18,'BPP S1 Smstr 18','18','8200001046','Full Payment','H2H'),(19,'BPP S1 Smstr 19','19','8200001046','Full Payment','H2H'),(20,'BPP S1 Smstr 20','20','8200001046','Full Payment','H2H'),(21,'BPP Profesi Smstr 1','21','8200001046','Full Payment','H2H'),(22,'BPP Profesi Smstr 2','22','8200001046','Full Payment','H2H'),(23,'BPP Profesi Smstr 3','23','8200001046','Full Payment','H2H'),(24,'BPP Profesi Smstr 4','24','8200001046','Full Payment','H2H'),(25,'BPP Profesi Smstr 5','25','8200001046','Full Payment','H2H'),(26,'BPP Profesi Smstr 6','26','8200001046','Full Payment','H2H'),(27,'BPP Profesi Smstr 7','27','8200001046','Full Payment','H2H'),(28,'BPP Profesi Smstr 8','28','8200001046','Full Payment','H2H'),(29,'BPP Profesi Smstr 9','29','8200001046','Full Payment','H2H'),(30,'BPP Profesi Smstr 10','30','8200001046','Full Payment','H2H'),(31,'Uang Pembangunan (SPP)','33','8200001046','Partial Payment','H2H'),(32,'Uang Pesantren','44','8200001046','Full Payment','H2H'),(33,'Uang Herregistrasi','55','8200001046','Full Payment','H2H'),(34,'Uang Infaq,Kesehatan','66','8200001046','Full Payment','H2H'),(35,'Uang Infaq Muktamar','77','8200001046','Full Payment','H2H'),(36,'Uang Tunggakan','88','8200001046','Partial Payment','H2H');
/*!40000 ALTER TABLE `parameter_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tmpt_lahir` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_bag` varchar(4) NOT NULL,
  `id_jab` varchar(4) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `telpon` varchar(10) NOT NULL,
  `hp` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `programstudi` varchar(50) NOT NULL,
  `gelar` varchar(15) NOT NULL,
  `KTP` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Propinsi` varchar(50) DEFAULT NULL,
  `Negara` varchar(50) DEFAULT NULL,
  `Homebase` varchar(50) DEFAULT NULL,
  `jurusan_ID` varchar(50) DEFAULT NULL,
  `Jenjang_ID` varchar(50) DEFAULT NULL,
  `Jabatan_ID` varchar(50) DEFAULT NULL,
  `JabatanDikti_ID` varchar(2) NOT NULL,
  `InstitusiInduk` varchar(50) DEFAULT NULL,
  `StatusDosen_ID` varchar(50) DEFAULT NULL,
  `StatusKerja_ID` varchar(50) DEFAULT NULL,
  `Aktif` enum('Y','N') NOT NULL,
  `Keilmuan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES (1,'','Indra Adhe Hidayat','ujung pandang','1989-06-18','L','jln Sultan Alauddin Aspol Tabes Pa\' baeng2','2011-06-01','B002','J008','297149DSC_9794.JPG','ISLAM','0411','085299229914','adhe.hidayat89@gmail.com','091004','11201','S.Kom','737',NULL,'Makassar','Sulawesi Selatan','Indonesia','-',NULL,'C','A','08','091004','A','E','Y','Teknik Komputer'),(4,'','Irwan Ashari','Tosora','1986-02-02','L','','2011-04-01','B001','J007','','ISLAM','','085255366466','irwanashari@gmail.com','091004','11201','dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(5,'','Mahmud Ghaznawie','Jogja','1965-10-29','L','','2012-01-01','B001','J001','842365Dekan_Kedok_634496744.jpg','ISLAM','','','','091004','11201','Dr, PhD, SpPA','',NULL,'','','','',NULL,'0','0','0','091004','0','0','Y',''),(13,'','Dr. Wiwiek Dewiyanti Habar','-','1945-01-10','P','','2000-01-01','B001','J002','','ISLAM','','-','','--PILIH IDENTITAS--','11201','Sp.KK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(14,'','Dr. Rahasiah Taufik','-','1945-01-01','P','','2000-01-01','B001','J008','','ISLAM','','-','','--PILIH IDENTITAS--','11201','Sp.M (K)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(15,'0919088202','Dr. Ummu Kalzum Malik','ujung pandang','1982-08-19','P','jl. dg. tata lama no. 31, kel. pandsng-pandang, kec. somba opu','2008-03-01','B001','J003','','ISLAM','','081343509847','ummuathifah1304@gmail.com','','11201','dokter','',NULL,'gowa','sulawesi selatan','indonesia','pendidikan dokter',NULL,'J','A','0','091004','A','A','Y','dokter umum'),(16,'','Dr. A. Tenri Padad','-','1945-01-01','P','','2000-01-01','B001','J007','694274DSC03321.JPG','ISLAM','','-','','091004','11201','-','',NULL,'','','','',NULL,'0','0','0','091004','0','0','Y',''),(18,'','Dr. H. Nurdin Perdana','-','1950-03-05','L','','2005-05-05','B001','J007','','ISLAM','','-','','091004','11201','M.Kes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(19,'','Amy Febriza','-','1951-03-09','L','','2004-06-07','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(20,'','Prof. Syarifuddin Wahid','-','1945-02-02','L','','2000-02-02','B001','J007','','ISLAM','','-','','091004','11201','Sp.PA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(21,'','A. Salsa Anggeraini','-','1949-04-05','P','','2005-05-04','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(22,'','Sabriani','-','1950-06-07','P','','2009-04-04','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(23,'','Nelly','-','1950-05-05','P','','2002-03-04','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(24,'','Dr. Femmy','-','1946-02-02','P','','2001-02-02','B001','J007','','ISLAM','','-','','091004','11201','Sp.PD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(25,'','Dara Ugi','-','1949-05-04','L','','2003-05-10','B001','J007','','ISLAM','','081342734601','','091004','11201','-','',NULL,'','','','',NULL,'0',NULL,'0','091004','0','0','Y',''),(26,'','Dr. Sitti Rafiah','-','1945-02-02','P','','2001-02-01','B001','J007','','ISLAM','','-','','091004','11201','M.Kes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(27,'','Nurmila','-','1948-03-03','P','','2005-05-05','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(28,'','Dr. Nur Faidah','-','1945-01-01','P','','2000-01-01','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(29,'','St Nurul Rezki Wahyuni','-','1950-04-03','P','','2004-05-06','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(30,'','Dr. Irda Astuty Rajatang','-','1945-02-02','P','','2000-02-02','B001','J007','','ISLAM','','-','','091004','11201','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(32,'','Samsani','-','1949-04-02','L','','2010-08-17','B001','J007','','ISLAM','','-','','091004','','-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(35,'','Haikal','manado','1974-03-18','','','0000-00-00','B001','J008','','ISLAM','','','','091004','11201','ST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(34,'','Ikha P','-','1945-02-02','L','','2000-02-01','B001','J001','560821297149DSC_9794.JPG','ISLAM','','-','','091004','11201','-','',NULL,'','','','',NULL,'0','0','0','091004','0','0','Y',''),(36,'904028502','Dr. Ami Febriza','ujung pandang','1985-02-04','','jl. Bau mangga no 26','2010-01-01','B001','J007','786577img1383404376980.jpg','ISLAM','','085256655987','amifebrizaachmad@gmail.com','091004','11201','M.Kes','7371094402850002',NULL,'makassar','sulsel','indonesia','pen didikan dokter',NULL,'C','A','0','091004','A','A','Y','Fisiologi'),(37,'19921998','Ismail','Ujung Pandang','1979-11-07','L','Jl. Cendrawasih no. 395 A','2009-01-04','B001','J007','','ISLAM','0417336887','08884320910','mellonk928@yahoo.com','091004','101','S.Kom','',NULL,'Makassar','Sulawesi Selatan','Indonesia','Ekonomi',NULL,'B','D','07','091004','A','A','Y','Informatika'),(38,'1057380808','Darul Salam, Se','Sungguminasa','1989-08-08','L','','2012-02-01','B002','J008','','ISLAM','','082187119818','ak1_08@yahoo.com','091004','','','',NULL,'','','','',NULL,'0','0','0','091004','0','0','Y',''),(39,'','Fauziah Alwi','ujung pandang','1978-01-25','P','Tamalate I Jl. Tidung V No. 14','2008-08-01','B002','J008','811293DSC00619.JPG','ISLAM','','085299981110','fauziah2501@gmail.com','091004','11201','Amd','',NULL,'Makassar','Sulawesi Selatan','Indonesia','',NULL,'0','0','0','091004','A','0','Y',''),(40,'1057302649','Nur Akbar Maulana Ishar','Bukit Harapan','1994-03-02','L','Amaliyah Recidence B. E1/07','2012-11-25','B002','J008','','ISLAM','','089694981064','nurakbar_xiiips@yahoo.co.id','091004','','','',NULL,'Gowa','Sulwesi Selatan','Indonesia','',NULL,'0','0','0','091004','0','0','Y',''),(41,'','Nurlina','Bulukumba','1986-08-30','P','Jl. Sultan Alauddin','2009-11-15','B002','J008','961193DSC07167 - Copy.JPG','ISLAM','0411840199','08599992265','nur.mm09@ymail.com','091004','11201','SE','',NULL,'Makassar','Sulawesi Selatan','Indonesia','',NULL,'B','0','0','091004','A','E','Y','Manajemen Keuangan'),(64,'111','Pegawai Fk Unismuh','Makassar','2000-11-03','L','','2010-01-01','B002','J008','','ISLAM','','085398364590','','091004','11201','S.Pd.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(44,'831500','Waris','sinjai','1976-11-10','L','','2012-09-01','B002','J008','133819Winter.jpg','ISLAM','','085398880604','','--PILIH IDENTITAS--','','','',NULL,'','','','',NULL,'0','0','0','--PILIH IDENTITAS--','0','0','Y',''),(45,'0910018002','Andi Tenri Padad','makassar','1980-01-10','P','','2008-06-05','B001','J004','','ISLAM','','081342946888','','091004','11201','dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(46,'','Nurmila','Kolaka','1984-12-07','P','jl.Parumpa Perum.Daya Residence Blok.D no:8','2010-12-07','B001','J007','','ISLAM','0411','085242403336','nurmilaalim@gmail.com','091004','11201','dr','',NULL,'Makassar','Sulawesi Selatan','Arab saudi','Kedokteran',NULL,'C','A','0','091004','A','A','Y','Pendidikan Dokter'),(47,'','As Ari Asad','bulukumba','1985-07-07','L','jl.minasasari blok b.11 no.1','2013-03-01','B001','J006','','ISLAM','0411549070','085255640707','aribulukumba@ymail.com','091004','11201','dr','',NULL,'makassar','sul-sel','indonesia','MEU',NULL,'C','A','0','091004','A','E','Y','kedokteran'),(48,'','Wida Astriyana','Ujung Pandang','1986-05-27','P','','2010-12-01','B002','J008','','ISLAM','','087841907926','','091004','11201','SE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(49,'','A.tenri Syahriani','Makassar','2013-09-17','P','','2011-11-11','B002','J008','','ISLAM','','081343691958','','091004','','S.Pd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(50,'12345','Wida Astriyana','Ujung Pandang','1986-05-27','P','jln. Biring Romng dlm X No.2/99 Blok 1.','2010-12-01','B002','J008','','ISLAM','0878419079','085242808480','wida_2786@yahoo.co.id','091004','11201','SE','',NULL,'Makassar','Sulawesi Selatan','Indonesia','',NULL,'C','0','0','091004','0','0','Y','Ekonomi Manajemen'),(51,'','Hariani','Ujung Pandang','1990-10-31','P','','2008-08-25','B002','J008','','ISLAM','','081342557338','anhie_unismuh@yahoo.co.id','091004','','SE','',NULL,'','','','',NULL,'C','0','0','091004','0','0','Y',''),(52,'','Andi Pudya Hanum Pratiwi','Ujung Pandang','1987-12-28','P','Komp. Pesona Taman Dahlia Blok B No.15','2013-03-01','B001','J006','','ISLAM','','085255789957','pudya.hanum.pratiwi@gmail.com','091004','11201','dr','737107 681287 0005',NULL,'Makassar','Sulawesi Selatan','Indonesia','',NULL,'C','0','0','091004','A','E','Y','Pendidikan Dokter'),(53,'1086529','Asri Jaya','JENEPONTO','1983-08-26','L','','2007-12-26','B002','J008','835images.jpg','ISLAM','0411840199','085255887997','asriunismuh@gmail.com','091004','11201','SE, MM','',NULL,'','','','pendidikan dokter',NULL,'B','0','0','091004','A','A','Y','manajemen'),(55,'113','Muhammad Muammar','Rembang','1990-11-03','L','Jl. Dg. tata raya No. 60 Makassar','2000-01-01','B002','J008','402587aam.jpg','ISLAM','','085398364590','','--PILIH IDENTITAS--','','S.Kom','',NULL,'Makassar','Sulawesi Selatan','Indonesia','',NULL,'0','0','0','--PILIH IDENTITAS--','0','0','Y',''),(62,'','Administrasi Pegawai','','1913-01-01','L','','1913-01-01','B002','J008','655059539215no foto.jpg','ISLAM','','','','091004','11201','','',NULL,'','','','',NULL,'0','0','0','091004','0','0','Y',''),(63,'111','Aryo','Jakarta','1914-02-02','L','','1913-02-05','B002','J008','384552655059539215no foto.jpg','ISLAM','0909','085398364590','aldijoy26@yahoo.co.id','091004','11201','s.kom','',NULL,'','','','',NULL,'0',NULL,'03','091004','A','A','Y',''),(65,'','Super Admin Fk Unismuh','Rembang','1913-01-01','L','','1913-01-01','B002','J008','907853singapura.JPG','ISLAM','','082191101213','','091004','11201','','',NULL,'','','','',NULL,'C',NULL,'0','091004','0','0','Y',''),(66,'','Pimpinan FK Unismuh','','0000-00-00','L','','0000-00-00','B002','J008','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(68,'27-09-1981','Daraugi','ujung pandang','1981-09-27','P','','2009-11-01','B001','J007','','ISLAM','','081342734601','','091004','11201','dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(69,'','Adriyanti Adam','makassar','1987-11-17','P','','0000-00-00','B001','J006','','ISLAM','','085299898177','','091004','11201','dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(70,'','Nur Faidah','Ujung Pandang','1988-01-14','P','','2010-09-04','B001','J007','','ISLAM','','085242862826','','091004','11201','dr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(76,'','Yasser Ahmad Fananie bin Ahmad Fananie','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(75,'','ict','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(77,'','andi arwinny asmasary','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(78,'','','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(79,'','andi salsa anggeraini','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(80,'','arif kamaruddin','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(81,'','andi salsa anggeraini','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(82,'','A. Salsa Anggeraini','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(83,'','st. nurul reski wahyuni','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(84,'','samsani','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(85,'','samsani','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(86,'','Wiwiek Dewiyanti','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(87,'','Juliani Ibrahim','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(88,'','as ari as ad','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(89,'','irwan ashari ','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(90,'','irwan ashari','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL),(91,'','Rima January Putri Ridwan Gani','UjungPandang','1988-01-05','L','Pavilion Green Kav C/D komp IDI Pettarani blok GA 11','1914-01-01','B001','J006','','ISLAM','','085299619535','dr.rimajanuary@gmail.com','091004','11201','dokter','7371094501880010',NULL,'makasar','Sulawesi selatan','Indonesia','fakultas kedokteran',NULL,'C',NULL,'0','091004','A','E','Y',''),(92,'','dr.rima','','0000-00-00','L','','0000-00-00','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'Y',NULL);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelatihan`
--

DROP TABLE IF EXISTS `pelatihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelatihan` (
  `id_pelatihan` int(4) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tgl_pelatihan` varchar(255) NOT NULL,
  `topik_pelatihan` varchar(100) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `hasil_pelatihan` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelatihan`
--

LOCK TABLES `pelatihan` WRITE;
/*!40000 ALTER TABLE `pelatihan` DISABLE KEYS */;
INSERT INTO `pelatihan` VALUES (4,'1','','2013-06-18','Sertifikat PHP','PHPid','PENAMBAH WAWASAN','sertifikat/PHP for web.jpg'),(5,'41','','2013-9-17','Computerised Accounting','Binus Centre Bandung','Melalui pemanfaatan sistem informasi akuntansi khususnya program komputer akuntansi dapat meningkatkan efektivitas dan efisiensi pelaksanaan pekerjaan bidang akuntansi.','sertifikat/images.jpg');
/*!40000 ALTER TABLE `pelatihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendidikan`
--

DROP TABLE IF EXISTS `pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pendidikan` (
  `idp` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `t_pdk` varchar(20) NOT NULL,
  `d_pdk` text NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendidikan`
--

LOCK TABLES `pendidikan` WRITE;
/*!40000 ALTER TABLE `pendidikan` DISABLE KEYS */;
INSERT INTO `pendidikan` VALUES (1,'1234','2000 - 2006','SD Negeri 2 Palembang','Formal'),(2,'1234','2006 - 2007','SMP Negeri 3 Palembang','Formal'),(3,'1234','2007 - 2010','SMA 1 Negeri Palembang','Formal'),(16,'37','1986-1992','SD Neg. 62 Manimpahoai Kecamatan Sinjai Tengah Kab. Sinjai','Formal'),(17,'37','1992-1995','SMP','Formal'),(18,'37','1995-1998','SMA','Formal'),(19,'37','1998-2003','S1','Formal'),(20,'39','','SD Kalukuan V. Makassar','Formal'),(21,'38','2008-2012','S1 Unismuh Makassar Fakultas Ekonomi Jurusan Akuntansi','Formal'),(30,'15','1988-1994','SD INP Mangasa Kab. Gowa','Formal'),(31,'15','1994-1997','SMP 2 Sungguminasa Kab. Gowa','Formal'),(25,'39','','SMP Wiyatamandala. Jakarta','Formal'),(27,'15','1986-1988','TK Pertiwi Kec. Gowa','Formal'),(29,'39','','SMA Wiyatamandala. Jakarta','Formal'),(32,'15','1997-2000','SMU Neg. 5 Makassar','Formal'),(33,'15','2000-2007','S1 Fakultas Kedokteran Unhas','Formal'),(34,'44','','','Formal'),(35,'15','2008-sekarang','S2 Medical Education UGM','Formal'),(36,'41','1992-1998','SD Negeri 030 Rupat Bengkalis - Riau','Formal'),(37,'41','1998-2001','MTs Ar-Ridho Rupat Bengkalis - Riau','Formal'),(38,'41','2001-2004','MAN Ar-Ridho  Rupat Bengkalis-Riau','Formal'),(39,'41','2005-2009','S1 (Ekonomi-Manajemen)\r\nUniversitas Muhammadiyah Makassar','Formal'),(40,'41','2010 - Sekarang','S2 Konsentrasi Manajemen Keuangan\r\nProgram Magister Manajemen\r\nUniversitas Muhammadiyah Makassar','Formal'),(41,'39','','D3  ASMI Fakultas Ilmu Administrasi dan Sekretari','Formal'),(42,'47','2003-2010','2003 masuk kedokteran dan selesai profesi dokter pada tahun 2010','Formal'),(49,'36','2003-2009','Fakultas Kedokteran Unhas  Makassar','Formal'),(44,'36','1992-1997','SD Negeri Sudirman I Makassar','Formal'),(45,'36','1997-2000','SLTP Negeri VI Makassar','Formal'),(46,'53','1990 - 1996','SDN TANAMMAWANG JENEPONTO','Formal'),(47,'36','2000-2003','SMA Negeri I Makassar','Formal'),(48,'52','1993-1999','SD Negeri 2 Bulukumba','Formal'),(50,'53','1996-1999','MTS BABUSSALAM KASSI JENEPONTO','Formal'),(51,'52','1999-2002','SLTP Negeri 1 Bulukumba','Formal'),(52,'53','1999-2002','SMAN 1 TAMALATEA JENEPONTO','Formal'),(53,'52','2002-2005','SMA Negeri 17 Makassar','Formal'),(54,'44','1982 - 1988','SD NNo54 Batuleppa','Formal'),(55,'36','2011-2013','Magister Biomedik Pascasarjana Unhas Makassar','Formal'),(56,'53','2002-2006','S1 MANAJEMEN UNISMUH MAKASSAR','Formal'),(57,'52','2005-2011','Fakultas Kedokteran Universitas Hasanuddin','Formal'),(58,'53','2007 - 2010','S2 MANAJEMEN KEUANGAN UNISMUH MAKASSAR','Formal'),(59,'46','1990 - 1996','Sekolah Dasar Negeri 8 Kolaka','Formal'),(60,'44','1989 - 1991','SMP Negeri Talle','Formal'),(61,'53','2011','PELATIHAN SISTEM KEARSIPAN TERPADU DILAKSANAKAN OLEH UMY JOGJAKARTA','NonFormal'),(62,'44','1991 - 1994','SMA Negeri Bikeru ','Formal'),(63,'53','2009','PELATIHAN SISTEM ANALISIS REVIEWER SOAL','NonFormal'),(64,'44','1994 - 2001','Universitas Negeri Makassar','Formal'),(65,'53','2012','PELATIHAN SISTEM KOMPUTERISASI AKUNTANSI DI BINUS BANDUNG','NonFormal'),(66,'53','2012','PELATIHAN SISTEM PERBENDAHARAAN PIMPINAN PUSAT MUHAMMADIYAH','NonFormal'),(67,'46','1996 - 1999','Pon-Pest MTs Darul Arqam Gombara Makassar','Formal'),(71,'46','1999 - 2002','Pon-Pest MA Darul Arqam Muhammadiyah Gombara','Formal'),(73,'46','2003 - 2009','Fakultas Kedokteran Universitas Muslim Indonesia','Formal'),(74,'46','2011 - 2013','S2 Magister Biomedik Universitas Hasanuddin Makassar','Formal'),(76,'53','1990 - 1996','sd','Formal'),(82,'70','1993-1999','SD Inpres Perumnas Antang II','Formal'),(83,'70','1999-2002','SMP Muhammadiyah I Disamakan Makassar','Formal'),(84,'70','2002-2005','SMA Negeri 17 Makassar','Formal'),(85,'70','2005-2008','Pendidikan Dokter Umum Fakultas Kedokteran Universitas Hasanuddin','Formal'),(86,'70','2008-2010','Profesi Dokter Fakultas Kedokteran Universitas Hasanuddin','Formal');
/*!40000 ALTER TABLE `pendidikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengalaman_kerja`
--

DROP TABLE IF EXISTS `pengalaman_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengalaman_kerja` (
  `id_peker` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `nm_pekerjaan` varchar(50) NOT NULL,
  `d_pekerjaan` text NOT NULL,
  PRIMARY KEY (`id_peker`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengalaman_kerja`
--

LOCK TABLES `pengalaman_kerja` WRITE;
/*!40000 ALTER TABLE `pengalaman_kerja` DISABLE KEYS */;
INSERT INTO `pengalaman_kerja` VALUES (1,'1234','Freelance Networking ','Rancang bangun jaringan untuk warnet.'),(2,'1234','Freelance Web Programmer','- Merancang Aplikasi Berbasis Web untuk keperluan TA/Skripsi mahasiswa.\r\n- Merancang dan membangun website toko online, Personal, Akademik dan Company profile.\r\n'),(5,'admin','gvfdg','gdfg'),(8,'1','adad','adad'),(9,'37','Arca Cafe','Owner and Pramusaji, Tahun 2002-2004'),(10,'37','Macro','Stockiest Macro'),(11,'37','P2KP','Asmandat '),(12,'39','Karyawan Kontrak','PT. Delta Santawood Jakarta'),(13,'39','Sekertaris ','RS. Wahidin Sudirohusodo Makassar Bgn Lab Patologi Klinik'),(14,'39','Sekertaris Pimpinan','Universitas Muhammadiyah Makassar. Fakultas Kedokteran'),(15,'52','Dokter Umum','Dokter Internship RS Salewangang Maros dan PKM Lau, Kec.Lau, Maros'),(16,'47','sebagai dokter mitra polda sul-sel dan dokter di r',''),(17,'36','Dosen Kontrak','Dosen Kontrak MEU FK Unhas (2009)'),(18,'36','Dokter Umum','Dokter Praktek umum di Klinik Sehat Pengayoman (2009-sekarang)'),(21,'70','Dokter Jaga','Jaga Klinik');
/*!40000 ALTER TABLE `pengalaman_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkj`
--

DROP TABLE IF EXISTS `rkj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rkj` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(12) DEFAULT NULL,
  `kd_unsur` smallint(6) DEFAULT NULL,
  `kd_sub_unsur` smallint(6) DEFAULT NULL,
  `kd_kegiatan` smallint(6) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkj`
--

LOCK TABLES `rkj` WRITE;
/*!40000 ALTER TABLE `rkj` DISABLE KEYS */;
INSERT INTO `rkj` VALUES (27,'5',1,1,1,NULL),(28,'5',1,2,3,NULL),(29,'5',2,3,4,NULL),(30,'5',2,3,5,NULL),(31,'5',2,3,6,NULL),(32,'5',2,3,6,NULL),(33,'5',2,4,8,NULL),(35,'16',1,1,2,NULL),(36,'64',4,15,40,NULL),(37,'25',1,1,2,NULL),(38,'25',2,3,4,NULL);
/*!40000 ALTER TABLE `rkj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusaktivitasdsn`
--

DROP TABLE IF EXISTS `statusaktivitasdsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusaktivitasdsn` (
  `StatusAktivDsn_ID` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`StatusAktivDsn_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusaktivitasdsn`
--

LOCK TABLES `statusaktivitasdsn` WRITE;
/*!40000 ALTER TABLE `statusaktivitasdsn` DISABLE KEYS */;
INSERT INTO `statusaktivitasdsn` VALUES ('A','AKTIF MENGAJAR','Y'),('C','CUTI','Y'),('K','KELUAR','Y'),('M','ALMARHUM','Y'),('P','PENSIUN','Y'),('S','STUDI LANJUT','Y'),('T','TUGAS DI INSTANSI LAIN','Y');
/*!40000 ALTER TABLE `statusaktivitasdsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuskerja`
--

DROP TABLE IF EXISTS `statuskerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuskerja` (
  `StatusKerja_ID` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusKerja_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuskerja`
--

LOCK TABLES `statuskerja` WRITE;
/*!40000 ALTER TABLE `statuskerja` DISABLE KEYS */;
INSERT INTO `statuskerja` VALUES ('A','Dosen Tetap','N','N'),('B','Dosen PNS Dipekerjakan','N','N'),('C','Dosen Honorer PTN','N','N'),('D','Dosen Honorer Non PTN','N','N'),('E','Dosen Kontrak','N','N');
/*!40000 ALTER TABLE `statuskerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_unsur`
--

DROP TABLE IF EXISTS `sub_unsur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_unsur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_unsur` int(3) DEFAULT NULL,
  `kd_sub_unsur` int(6) DEFAULT NULL,
  `nm_sub_unsur` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_unsur`
--

LOCK TABLES `sub_unsur` WRITE;
/*!40000 ALTER TABLE `sub_unsur` DISABLE KEYS */;
INSERT INTO `sub_unsur` VALUES (1,1,1,'Pendidikan Formal'),(10,1,2,'Diklat pra jabatan'),(11,2,3,'Melaksanakan perkuliahan/tutorial dan membumbing, menguji serta menyelenggarakan pendidikan di laboratorium, praktek keguruan bengkel/studio/kebun percobaan/teknologi pengajaran dan praktek lapangan'),(13,2,4,'Membimbing seminar'),(14,2,5,'Membimbing kuliah kerja nyata, praktek kerja nyata, praktek kerja lapangan'),(15,2,6,'Membimbing dan ikut membimbing dalam menghasilkan disertai, thesis,skripsi dan laporan akhir studi'),(16,2,7,'Bertugas sebagai penguji pada ujian akhir'),(17,2,8,'Membina kegiatan mahasiswa'),(18,2,9,'Mengembangkan program kuliah'),(19,2,10,'Mengembangkan bahan pengajaran'),(20,2,11,'Menyampaikan orasi ilmiah'),(21,2,12,'Menduduki jabatan pimpinan perguruan tinggi'),(22,2,13,'Membimbing akademik dosen yang lebih rendah jabatannya'),(23,2,14,'Melaksanakan kegiatan Detasering dan pencangkokan akademik dosen'),(24,4,15,'Menghasilkan karya ilmiah'),(25,4,16,'Menerjemahkan/penyaluran buku ilmiah'),(26,4,17,'Mengedit/menyunting karya ilmiah'),(27,4,18,'Membuat rencana dan karya teknologi yang dipatenkan'),(28,4,19,'Membuat rancangan dan karya teknologi, rancangan dan karya seni menumental/seni pertunjukan/karya sastra'),(29,5,20,'Menduduki jabatan pimpinan'),(30,5,21,'melaksanakan pengembangan hasil pendidikan dan penelitian'),(31,5,22,'Memberi latihan/penyuluhan/penataran/ceramah pada masyarakat'),(32,5,23,'Memberi pelayanan kepada masyarakat atau kegiatan lain yang menunjang pelaksanaan tugas umum pemerintah dan pembangunan'),(33,5,24,'Membuat/menulis karya pengabdian'),(34,6,25,'Diklat fungsional'),(35,8,26,'Menjadi anggota dalam suatu panitia/badan pada perguruan tinggi'),(36,8,27,'Menjadi anggota panitia/badan pada lembaga pemerintah'),(37,8,28,'Menjadi anggota organisasi profesi'),(38,8,29,'Mewakili perguruan tinggi/lembaga pemerintah'),(39,8,30,'Menjadi anggota delegasi nasional ke pertemuan internasional'),(40,8,31,'Berperan serta aktif dalam pertamuan ilmiah'),(41,8,32,'Mendapat penghargaan/tanda jasa'),(42,8,33,'Menulis buku pelajaran SMTA ke bawah yang diterbitkan dan diedarkan secara nasional'),(43,8,34,'Mempunyai prestasi di bidang olahraga/humaniora'),(44,8,35,'Keanggotaan dalam organisasi profesi dosen');
/*!40000 ALTER TABLE `sub_unsur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submasmodul`
--

DROP TABLE IF EXISTS `submasmodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submasmodul` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_masmodul` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_pegawai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nama_sub` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'module',
  `lokasi` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `link` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submasmodul`
--

LOCK TABLES `submasmodul` WRITE;
/*!40000 ALTER TABLE `submasmodul` DISABLE KEYS */;
INSERT INTO `submasmodul` VALUES (1,'1','1','module','lap_absensi','Y','modul/report/menu_laporan.php'),(3,'1','1','module','lap_data_pegawai','Y','modul/report/datapegawai.php'),(4,'1','1','module','lap_data_pelatihan','Y','modul/report/laporan_pelatihan.php'),(24,'1','1','module','lap_rkje','Y','modul/report/report_rkja.php'),(25,'','','module','izin','Y','modul/absensi/izin.php');
/*!40000 ALTER TABLE `submasmodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbkod`
--

DROP TABLE IF EXISTS `tbkod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbkod` (
  `KDAPLTBKOD` varchar(2) DEFAULT NULL,
  `KETERTBKOD` varchar(30) DEFAULT NULL,
  `KDKODTBKOD` varchar(1) DEFAULT NULL,
  `NMKODTBKOD` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbkod`
--

LOCK TABLES `tbkod` WRITE;
/*!40000 ALTER TABLE `tbkod` DISABLE KEYS */;
INSERT INTO `tbkod` VALUES ('01','STATUS LOG ','0','LOGOUT'),('01','STATUS LOG','1','LOGIN');
/*!40000 ALTER TABLE `tbkod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsur`
--

DROP TABLE IF EXISTS `unsur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsur` (
  `kd_unsur` int(11) NOT NULL AUTO_INCREMENT,
  `nm_unsur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_unsur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsur`
--

LOCK TABLES `unsur` WRITE;
/*!40000 ALTER TABLE `unsur` DISABLE KEYS */;
INSERT INTO `unsur` VALUES (1,'Pendidikan'),(2,'Pelaksanaan Pendidikan'),(4,'Pelaksanaan Penelitian'),(5,'Pelaksanaan pengabdian kepada masyarakat'),(6,'Pengembangan diri'),(8,'Penunjang kegiatan akademik dosen');
/*!40000 ALTER TABLE `unsur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `passid` varchar(50) NOT NULL,
  `level_user` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `rf_id` varchar(100) NOT NULL,
  `blokir` enum('Y','N') DEFAULT 'N',
  `login_aset` enum('Y','N') DEFAULT 'N',
  `level_aset` int(11) DEFAULT '2',
  `login_simak` enum('Y','N') DEFAULT 'N',
  `level_simak` int(6) DEFAULT '5',
  `tgl_login` date DEFAULT NULL,
  `waktu_login` time DEFAULT NULL,
  `grup_id` text NOT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('13','158d20d2b32a43c3a5d083e4f921e43c',3,'wiwiek','Y','','N','N',2,'N',5,'2013-12-13','15:31:09','.5','13p0pvdhrguuhbr6p16d63p1ce24'),('1','b8e43e7efc23a89302da401111e6d788',8,'adhe','N','1234','N','Y',2,'N',5,'2013-09-02','10:57:51','1',''),('4','bfc91ddf8b245bfacc3c609c2350d126',3,'irga','Y','','N','N',2,'N',5,'2014-01-07','13:24:47','','4tn4io320966pq04tebto8f2970'),('5','02dcf9a59b76546612bd424697a4ce48',8,'ghaznawie','N','7d51c5e7','N','Y',8,'Y',8,'2013-10-28','15:54:56','.5.6.7',''),('14','d4305d7ed2ec97107cd6eb8dd4b6f6b7',3,'taufik','Y','','N','N',2,'N',5,'2013-12-14','17:09:54','','146nq6eorl0v2p3ksvi7v90j7gn6'),('15','8fe34b012b2a77b915c9fa81dd08d1fa',3,'ummu','Y','','N','N',2,'N',5,'2014-02-03','20:09:56','','15cn5jdib6i63dk2nnht0a1703p5'),('16','869ce64f3e4746d7faf5c57cb8d4bbb6',3,'tenri','N','','N','N',2,'N',5,'2013-12-14','12:47:15','','16vg8f51aldsu1aau1shh7sfg465'),('18','7ddbde64a6c6ccadbc53b576fde9e54e',3,'nurdin','N','','N','N',2,'N',5,NULL,NULL,'',''),('19','7771fbb20af6ef10827c593daa3aff7b',3,'amy','N','','N','N',2,'N',5,NULL,NULL,'',''),('20','34326e4ca4bc00dd048a798acc167544',3,'syarifuddin','N','','N','N',2,'N',5,NULL,NULL,'',''),('21','26c756122b54dd7b2ce4fbd36f8e557e',3,'salsa','N','','N','N',2,'N',5,'2014-01-09','16:52:03','','21uruuun0bp5ofnqfubb6ho1qsb7'),('22','0ca66e767b47c126e7721250785e1729',3,'sabriani','N','','N','N',2,'N',5,NULL,NULL,'',''),('23','3a2e8986d4c2bc69a82effbe87e86757',3,'nelly','N','','N','N',2,'N',5,'2014-01-08','14:11:21','','23vthau4v51c7rfah25lva6rsud6'),('24','cff5e5eea71781d42a2286e524236921',3,'femmy','N','','N','N',2,'N',5,NULL,NULL,'',''),('25','f63387536d59c60011ea173793118500',3,'ugi','N','','N','N',2,'N',5,'2014-01-04','10:38:56','','25c9vvev9g5s0vugaaokm0p5rnj4'),('26','29add1d7338c9e3a0133f33c52f5c085',3,'sitti','N','','N','N',2,'N',5,NULL,NULL,'',''),('27','9982815104b749294428b125b2dfce03',3,'nurmila','Y','','N','N',2,'N',5,'2014-01-15','09:31:31','','27djbp6enfni20e1qj3bp11ihuf0'),('28','b55178b011bfb206965f2638d0f87047',3,'nur','N','','N','N',2,'N',5,NULL,NULL,'',''),('29','6968a2c57c3a4fee8fadc79a80355e4d',3,'nurul','N','','N','N',2,'N',5,NULL,NULL,'',''),('30','4606a19a8430c9744580e4d608dbf14c',3,'irda','N','','N','N',2,'N',5,NULL,NULL,'',''),('32','2803b705dd5946ac24c5dc19099da580',3,'samsani','Y','','N','N',2,'N',5,'2014-01-06','11:30:28','','32ann1crbits70qrgcu8ndek6a53'),('34','45eeab56b6b9a205cd497d64a7bde06e',3,'ikha','N','','N','N',2,'N',5,NULL,NULL,'',''),('35','a847b53f9999fc735ca2b6f1419c93d0',3,'haikal','N','','N','N',2,'N',5,NULL,NULL,'',''),('36','6c5b7de29192b42ed9cc6c7f635c92e0',3,'ami','N','','N','N',2,'N',5,'2014-01-16','22:26:00','','36vrm4pbrnvkel9b26t5062rrud6'),('37','3702a8fee71c4dce3e2c1d1b7662f559',3,'Rhivan','N','','N','N',2,'N',5,NULL,NULL,'',''),('38','d863fbb4c21a33596e075067c9e5fea6',3,'Darul','N','','N','N',2,'N',5,NULL,NULL,'',''),('39','a8e404443f4edea9337a04fa3bf192b1',3,'fauziah','N','','N','N',2,'N',5,NULL,NULL,'',''),('40','4f033a0a2bf2fe0b68800a3079545cd1',3,'Akbar','N','','N','N',2,'N',5,NULL,NULL,'',''),('41','f6f4deb7dad1c2e5e0b4d6569dc3c1c5',3,'lina','N','','N','N',2,'N',5,'2013-11-26','22:18:48','','41vmeqnkro8m3lbioscb6irku2q4'),('63','2ec87599180c059aa5444292cd98c5ff',3,'Aryo','N','aryo','N','N',2,'N',5,'2013-07-20','11:16:50','',''),('44','fc292bd7df071858c2d0f955545673c1',3,'waris','N','','N','N',2,'N',5,NULL,NULL,'',''),('45','96d8334e0894a6f3f2f14fc3655e45a9',3,'tenripadad','Y','','N','N',2,'N',5,'2014-01-07','11:42:53','','4550c0cusfraigbhi8dh16d1oal6'),('46','46920da7d9a400abd5045b6dedf66480',3,'Mila','N','','N','N',2,'N',5,NULL,NULL,'',''),('47','af2093f849d88929f689bd1f0b63f133',3,'asad','N','','N','N',2,'N',5,NULL,NULL,'',''),('48','b64cd8a066e1c875722f5c3ef276201b',3,'wydha','N','','N','N',2,'N',5,NULL,NULL,'',''),('49','1feb755e85e3c85f39138e16b2114b0f',3,'noniek','N','','N','N',2,'N',5,NULL,NULL,'',''),('50','b64cd8a066e1c875722f5c3ef276201b',3,'wydha27','N','','N','N',2,'N',5,NULL,NULL,'',''),('51','448f30ec14c518d754ad45e30d1da0c2',3,'anhie','N','','N','N',2,'N',5,'2014-01-16','10:04:18','.2','514o0tkjarjsaugpqtngn8en53q0'),('52','3accd28feabb3bf97b24a0bd2c1aca7d',3,'pudya','N','','N','N',2,'N',5,'2014-01-07','10:53:19','','525jhvbbjt52mkcllgpmlkbupap7'),('53','e172dd95f4feb21412a692e73929961e',3,'asri','Y','','N','N',2,'N',5,'2013-08-29','12:58:01','',''),('55','35c2d90f7c06b623fe763d0a4e5b7ed9',3,'aam','N','','N','Y',2,'Y',2,'2014-01-09','15:40:51','','55lki7unfa8a9jgijsm2c3hcent7'),('56','3f1a34018a7048fcc8bf7027fb0ae6f7',3,'Efan','N','','N','N',2,'N',5,NULL,NULL,'',''),('62','998d8ce73b1fee48619becc1a4c75700',2,'admin','Y','','N','Y',2,'N',2,'2013-11-20','17:56:35','',''),('64','998d8ce73b1fee48619becc1a4c75700',3,'pegawai','Y','pegawai','N','N',2,'N',5,'2013-08-05','12:15:40','',''),('65','998d8ce73b1fee48619becc1a4c75700',1,'superadmin','N','','N','Y',1,'Y',1,'2014-02-03','18:49:05','1.4.2.5.6.7.3','656jerl3r819urgnhssg9ujur0k0'),('66','998d8ce73b1fee48619becc1a4c75700',8,'pimpinan','N','','N','Y',8,'Y',8,'2013-08-05','12:12:34','',''),('68','c22d39072eaddf8c364120e7a03f0ac6',3,'daraugi','N','','N','N',2,'N',5,'2014-01-09','16:08:59','','68klq271h5nnkchnlgamsqcpm026'),('69','1d7c2923c1684726dc23d2901c4d8157',3,'anti','N','','N','N',2,'N',5,'2014-01-04','20:36:41','','69oqbg12c4c39d4qi53rrkd9n7m2'),('70','04d007f23df9f75aa2059f05dd5217a2',3,'ufa','Y','','N','N',2,'N',5,'2014-01-10','11:27:46','','70hatn7flfji9dbfj89riu1cprn2'),('75','ictfkunismuh',3,'ict','N','','N','N',2,'Y',5,'0000-00-00','00:00:00','',''),('76','b7b458bf8b787f6637b8cba7ef93a705',3,'yasseraf','Y','','N','N',2,'N',5,'2014-01-08','11:02:26','','76bfmch5s5ee767c122l0vdhsrd3'),('77','8b08324c0b62a90f3381618d08c9974b',3,'winyarwinny','N','','N','N',2,'N',5,'2014-01-16','06:37:09','','77crj2c99he52ejp1fvbcnql1oe6'),('78','26c756122b54dd7b2ce4fbd36f8e557e',3,'salsa','Y','','N','N',2,'N',5,'2014-01-09','16:52:03','','21uruuun0bp5ofnqfubb6ho1qsb7'),('79','26c756122b54dd7b2ce4fbd36f8e557e',3,'salsa','Y','','N','N',2,'N',5,'2014-01-09','16:52:03','','21uruuun0bp5ofnqfubb6ho1qsb7'),('80','a3f7426c3f18c1a3bc9315f5a065c268',3,'ariefak','N','','N','N',2,'N',5,'2014-01-08','11:56:33','','807pholciaovrqego814pkpa3jc4'),('81','26c756122b54dd7b2ce4fbd36f8e557e',3,'salsa','Y','','N','N',2,'N',5,'2014-01-09','16:52:03','','21uruuun0bp5ofnqfubb6ho1qsb7'),('82','26c756122b54dd7b2ce4fbd36f8e557e',3,'salsa','Y','','N','N',2,'N',5,'2014-01-09','16:52:03','','21uruuun0bp5ofnqfubb6ho1qsb7'),('83','654e4dc5b90b7478671fe6448cab3f32',3,'lulu','Y','','N','N',2,'N',5,'2014-01-09','10:44:51','','83lp8ocigil1idh00h7dfet3gdc5'),('84','a098d70747cd037572ab51c53128519b',3,'sani','N','','N','N',2,'N',5,'0000-00-00','00:00:00','',''),('85','a098d70747cd037572ab51c53128519b',3,'sani','N','','N','N',2,'N',5,'0000-00-00','00:00:00','',''),('86','76e2ccf83a63a9313621e38065f9987e',3,'wiwiek','Y','','N','N',2,'N',5,'2014-01-13','13:58:10','','86gtii3m9ube4sndl3cbljcro6f0'),('87','5937ec75a3466a4d015faa06f3051c50',3,'juli','Y','','N','N',2,'N',5,'2014-01-20','05:40:28','','877dg0fg5mqfstolbm4i2530dp24'),('88','f9538954d32f8c7761f639a570fd0848',3,'arigeger','N','','N','N',2,'N',5,'2014-01-07','13:15:56','','887rr3447dr21fqtfr2j375etmb5'),('89','bfc91ddf8b245bfacc3c609c2350d126',3,'irga','Y','','N','N',2,'N',5,'2014-01-07','13:24:47','','4tn4io320966pq04tebto8f2970'),('90','bfc91ddf8b245bfacc3c609c2350d126',3,'irga','Y','','N','N',2,'N',5,'2014-01-07','13:24:47','','4tn4io320966pq04tebto8f2970'),('91','710fbd54c4617707aacef35b88c5b6da',3,'rima','Y','','N','N',2,'N',5,'2014-01-17','11:30:22','','91njnp4ap9llhg81spi0uu46hi31'),('92','710fbd54c4617707aacef35b88c5b6da',3,'rima','Y','','N','N',2,'N',5,'2014-01-17','11:30:22','','91njnp4ap9llhg81spi0uu46hi31');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-03  9:24:23
