-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: akuntansi
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `accountchart`
--

DROP TABLE IF EXISTS `accountchart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountchart` (
  `chartno` int(4) NOT NULL,
  `chartname` varchar(100) NOT NULL,
  PRIMARY KEY (`chartno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountchart`
--

LOCK TABLES `accountchart` WRITE;
/*!40000 ALTER TABLE `accountchart` DISABLE KEYS */;
INSERT INTO `accountchart` VALUES (1000,'Asset'),(1010,'Cash'),(1020,'Bank'),(1030,'Account Recieveable'),(1040,'Inventory'),(1050,'Tax Out'),(1060,'Cost in Advances'),(1061,'Insurance in Advances'),(1070,'Giro Recieveable'),(1100,'Fixed Asset'),(1110,'Vehicle'),(1120,'Building and Land'),(1130,'Machine'),(1140,'Computer'),(2000,'Liability'),(2010,'Bank Credit'),(2020,'Account Payable'),(2030,'Giro Payable'),(2100,'Long Term Liability'),(2110,'Long Term Loan'),(3000,'Capital'),(3010,'Owner Investment'),(3020,'Devidend'),(3030,'Privet'),(3040,'Retained Earning'),(4000,'Sales'),(4010,'Sales Income'),(4020,'Sales Discount'),(4030,'Sales Return'),(5000,'Cost of Good Sold'),(6000,'Operational Expenditure'),(6010,'General Expenditure'),(6011,'Insurance Expenses'),(6012,'Computer Expenses'),(6013,'Vehicle Expenses'),(6020,'Marketing Expenditure'),(6030,'Human Resource Expenditure'),(6031,'Salary Expenses'),(7000,'Others');
/*!40000 ALTER TABLE `accountchart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacustomer`
--

DROP TABLE IF EXISTS `datacustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacustomer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `namacustomer` varchar(1000) DEFAULT NULL,
  `alamatcustomer` varchar(100) DEFAULT NULL,
  `notelpcustomer` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacustomer`
--

LOCK TABLES `datacustomer` WRITE;
/*!40000 ALTER TABLE `datacustomer` DISABLE KEYS */;
INSERT INTO `datacustomer` VALUES (1,'Audian','Jln. Binjai Km 9.1 No.6E','08116552155'),(2,'Lavinia','Jln. Binjai Km 12','082167752018'),(3,'Jovita','Jln. Sei Kera','08510612948'),(4,'Philip','Jln. Timur Baru 2','08116065062');
/*!40000 ALTER TABLE `datacustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasupplier`
--

DROP TABLE IF EXISTS `datasupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasupplier` (
  `idsupplier` int(11) NOT NULL AUTO_INCREMENT,
  `namasupplier` varchar(1000) DEFAULT NULL,
  `alamatsupplier` varchar(100) DEFAULT NULL,
  `notelpsupplier` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idsupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasupplier`
--

LOCK TABLES `datasupplier` WRITE;
/*!40000 ALTER TABLE `datasupplier` DISABLE KEYS */;
INSERT INTO `datasupplier` VALUES (1,'John\"s Co','Jln. Biduk No 34','0614527851'),(2,'CV. Multi Asa Success','Kompleks Taman Alamanada Indah Blok C No.17','06180020933'),(3,'Jaya Mandiri','Jalan Palangkaraya No 70/15 A','081376286936'),(4,'Toko ABC','Jalan Kepribadian No 9','0614519906'),(5,'Palano Jaya','Jalan Melati Raya Helvetia','0618455606');
/*!40000 ALTER TABLE `datasupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskon`
--

DROP TABLE IF EXISTS `diskon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diskon` (
  `kodediskon` varchar(100) DEFAULT NULL,
  `diskon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskon`
--

LOCK TABLES `diskon` WRITE;
/*!40000 ALTER TABLE `diskon` DISABLE KEYS */;
INSERT INTO `diskon` VALUES ('disc5',0.05),('disc10',0.1),('disc20',0.2),('disc0',0);
/*!40000 ALTER TABLE `diskon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_ledger`
--

DROP TABLE IF EXISTS `general_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_ledger` (
  `kode_gl` int(11) NOT NULL AUTO_INCREMENT,
  `chartno` int(11) DEFAULT NULL,
  `kode_jurnal` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`kode_gl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_ledger`
--

LOCK TABLES `general_ledger` WRITE;
/*!40000 ALTER TABLE `general_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurnal`
--

DROP TABLE IF EXISTS `jurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `kode_jurnal` int(11) DEFAULT NULL,
  `chartno` int(11) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurnal`
--

LOCK TABLES `jurnal` WRITE;
/*!40000 ALTER TABLE `jurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pajak`
--

DROP TABLE IF EXISTS `pajak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pajak` (
  `kodepajak` varchar(100) DEFAULT NULL,
  `persen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pajak`
--

LOCK TABLES `pajak` WRITE;
/*!40000 ALTER TABLE `pajak` DISABLE KEYS */;
INSERT INTO `pajak` VALUES ('ppnmasukan',0),('ppnkeluaran',0);
/*!40000 ALTER TABLE `pajak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelian` (
  `tanggalpembelian` date DEFAULT NULL,
  `idpembelian` int(11) NOT NULL AUTO_INCREMENT,
  `idsupplier` int(11) DEFAULT NULL,
  `kode_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `kodediskon` varchar(100) DEFAULT NULL,
  `kodepajak` varchar(100) DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  PRIMARY KEY (`idpembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian`
--

LOCK TABLES `pembelian` WRITE;
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` VALUES ('2017-06-25',1001,1,1001,10,420000,'disc10','ppnmasukan',415800),('2017-06-25',1002,2,1002,10,620000,'disc10','ppnmasukan',613800),('2017-06-25',1003,3,1003,10,850000,'disc10','ppnmasukan',841500),('2017-06-25',1004,4,1004,10,950000,'disc10','ppnmasukan',940500),('2017-06-25',1005,5,1005,10,360000,'disc10','ppnmasukan',356400),('2017-06-25',1006,1,1006,10,160000,'disc10','ppnmasukan',158400),('2017-06-25',1007,2,1007,10,160000,'disc10','ppnmasukan',158400),('2017-06-25',1008,3,1008,10,160000,'disc10','ppnmasukan',158400),('2017-06-25',1009,4,1009,10,210000,'disc10','ppnmasukan',207900),('2017-06-25',1010,5,1010,10,85000,'disc10','ppnmasukan',84150),('2017-06-25',1011,1,1011,10,295000,'disc10','ppnmasukan',292050),('2017-06-25',1012,2,1012,10,475000,'disc10','ppnmasukan',470250),('2017-06-25',1013,3,1013,10,250000,'disc10','ppnmasukan',247500),('2017-06-25',1014,4,1014,10,400000,'disc10','ppnmasukan',396000),('2017-06-25',1015,5,1015,10,320000,'disc10','ppnmasukan',316800);
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `kode_produk` int(4) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1001,'Buku Tulis Kiky 38','Alat Tulis',10,45000,47600),(1002,'Buku Tulis Kiky 58','Alat Tulis',10,65000,67200),(1003,'Buku Tulis Kiky 40','Alat Tulis',10,90000,91600),(1004,'Buku Tulis Kiky 50','Alat Tulis',10,102000,105000),(1005,'Buku Tulis VOS Moopi Kuarto 38','Alat Tulis',10,40000,43800),(1006,'Pentel Pel 105','Alat Tulis',10,20000,21100),(1007,'Pentel Pen 105s','Alat Tulis',10,20000,21000),(1008,'S Sharpie Pen UPC Twin Black','Alat Tulis',10,20000,23000),(1009,'Pilot Pen Hi-Tec 0.3','Alat Tulis',10,25000,27300),(1010,'Snowman Pen 0.2MM','Alat Tulis',10,9500,10600),(1011,'00:00 (Ardelia Karisa)','Buku',10,32500,42500),(1012,'Love in Sydney(Arumi E)','Buku',10,49300,58000),(1013,'Breakfast at Tiffanys (Truman Capote)','Buku',10,29700,35000),(1014,'The Lost Boy (Pelzer)','Buku',10,46700,55000),(1015,'Artemis Fowl (Colfer)','Buku',10,34000,40000),(1016,'Buku Tulis Kiky 38','Alat Tulis',10,41580,46580),(1017,'Buku Tulis Kiky 58','Alat Tulis',10,61380,66380),(1018,'Buku Tulis Kiky 40','Alat Tulis',10,84150,89150),(1019,'Buku Tulis Kiky 50','Alat Tulis',10,94050,99050),(1020,'Buku Tulis VOS Moopi Kuarto 38','Alat Tulis',10,35640,40640),(1021,'Pentel Pel 105','Alat Tulis',10,15840,20840),(1022,'Pentel Pen 105s','Alat Tulis',10,15840,20840),(1023,'S Sharpie Pen UPC Twin Black','Alat Tulis',10,15840,20840),(1024,'Pilot Pen Hi-Tec 0.3','Alat Tulis',10,20790,25790),(1025,'Snowman Pen 0.2MM','Alat Tulis',10,8415,13415),(1026,'00:00 (Ardelia Karisa)','Buku',10,29205,34205),(1027,'Love in Sydney(Arumi E)','Buku',10,47025,52025),(1028,'Breakfast at Tiffanys (Truman Capote)','Buku',10,24750,29750),(1029,'The Lost Boy (Pelzer)','Buku',10,39600,44600),(1030,'Artemis Fowl (Colfer)','Buku',10,31680,36680);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksidetail`
--

DROP TABLE IF EXISTS `transaksidetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksidetail` (
  `idtransaksi` int(11) NOT NULL AUTO_INCREMENT,
  `nofaktur` int(11) DEFAULT NULL,
  `kode_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `kodepajak` varchar(100) DEFAULT NULL,
  `kodediskon` varchar(100) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtransaksi`),
  KEY `nofaktur_idx` (`nofaktur`),
  KEY `kode_produk_idx` (`kode_produk`),
  KEY `kodepajak_idx` (`kodepajak`),
  CONSTRAINT `kode_produk` FOREIGN KEY (`kode_produk`) REFERENCES `stock` (`kode_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `nofaktur` FOREIGN KEY (`nofaktur`) REFERENCES `transaksimaster` (`nofaktur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksidetail`
--

LOCK TABLES `transaksidetail` WRITE;
/*!40000 ALTER TABLE `transaksidetail` DISABLE KEYS */;
INSERT INTO `transaksidetail` VALUES (101,1001,1001,2,95200,'ppnkeluaran','disc0',104720),(102,1002,1003,3,274800,'ppnkeluaran','disc0',302280),(103,1002,1001,3,142800,'ppnkeluaran','disc0',157080);
/*!40000 ALTER TABLE `transaksidetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksimaster`
--

DROP TABLE IF EXISTS `transaksimaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksimaster` (
  `nofaktur` int(11) NOT NULL AUTO_INCREMENT,
  `tanggaltransaksi` date DEFAULT NULL,
  `idcustomer` int(11) DEFAULT NULL,
  PRIMARY KEY (`nofaktur`),
  KEY `idcustomer_idx` (`idcustomer`),
  CONSTRAINT `idcustomer` FOREIGN KEY (`idcustomer`) REFERENCES `datacustomer` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksimaster`
--

LOCK TABLES `transaksimaster` WRITE;
/*!40000 ALTER TABLE `transaksimaster` DISABLE KEYS */;
INSERT INTO `transaksimaster` VALUES (1001,'2017-07-01',1),(1002,'2017-07-01',2);
/*!40000 ALTER TABLE `transaksimaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username`
--

DROP TABLE IF EXISTS `username`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `username` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username`
--

LOCK TABLES `username` WRITE;
/*!40000 ALTER TABLE `username` DISABLE KEYS */;
INSERT INTO `username` VALUES ('admin','admin','admin',0),('pierry','ryry','ryry',1),('val','val','val',1),('valerie','va','va',0);
/*!40000 ALTER TABLE `username` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-10 19:52:04
