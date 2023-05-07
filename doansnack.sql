-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dbdoan
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

create database dbdoan;
use dbdoan;

-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_fullname` varchar(45) DEFAULT NULL,
  `user_roles` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','Đặng Duy Hùng','1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Process',
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1638588930928 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `bill_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;

/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` bigint NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Snack OStar'),(2,'Snack Oishi'),(3,'Snack Swing'),(4,'Snack Cheetos'),(5,'Bento');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Snack mặn'),(2,'Snack ngọt'),(3,'Snack dinh dưỡng'),(4,'Snack nướng'),(5,'Snack làm từ sữa');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `value` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'email_root','nguyentrungnguyen1572000@gmail.com'),(2,'subject','[SHOP DH]THONG BAO DON HANG #__idBill__'),(3,'mail.smtp.port','587'),(4,'mail.smtp.auth','true'),(5,'mail.smtp.starttls.enable','true'),(6,'content','<p>Xin chao <strong>__name__</strong>,</p>\r\n\r\n<p>Ban da mua hang o cua hang:</p>\r\n\r\n__content__\r\n\r\n<p>Tong don hang :&nbsp; __total__ VND</p>\r\n\r\n<p>Xin tran trong cam on!</p>\r\n'),(7,'pass_root','rurfvvwefarylufi');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` bigint NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'DA Snack','nguyentrungnguyen1572000@gmail.com',NULL,NULL,'2023-04-24 17:00:00'),(2,'Đặng Duy Hùng','danghai882000@gmail.com','Test Contact','yeu cau nt','2023-04-07 04:31:44');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_job`
--

DROP TABLE IF EXISTS `email_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_job` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` varchar(455) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int unsigned NOT NULL DEFAULT '0' COMMENT '0 la chua 1 la r 2 la loi',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_job`
--

LOCK TABLES `email_job` WRITE;
/*!40000 ALTER TABLE `email_job` DISABLE KEYS */;
INSERT INTO `email_job` VALUES (1,1603337116132,'true','đồ ăn ngon',1),(2,1603337116134,'[VEGENA]THONG BAO DON HANG #1638588930919','<p>Xin chao <strong>hung</strong>,</p>\r\n\r\n<p>Ban da mua hang o cua hang:</p>\r\n\r\n<p style=\"margin-left:40px\">Snack bắp ngọt: 1 (sp)</p><p style=\"margin-left:40px\">dạng gói | Chính hãng VN/A : 1 (sp)</p>\r\n\r\n<p>Tong don hang :&nbsp; 100,000 VND</p>\r\n\r\n<p>Xin tran trong cam on!</p>\r\n',1);
/*!40000 ALTER TABLE `email_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `product_importprice` decimal(10,0) DEFAULT NULL,
  `product_quantily` int DEFAULT NULL,
  `product_dimensions` varchar(45) DEFAULT NULL,
  `product_ram` varchar(45) DEFAULT NULL,
  `product_weight` smallint DEFAULT NULL,
  `product_quantity_sold` smallint DEFAULT NULL,
  `product_material` varchar(45) DEFAULT NULL,
  `product_marketprice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,2,'Snack bắp ngọt',2,'images/snack_oishibapngot.jpg.webp',20000,'Snack Oishi Bắp Ngọt là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,80,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(2,2,'Snack khoai tây giòn',1,'images/snack_ostar.jpg.webp',30000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,80,'30x18 cm','nhập lẻ',40,0,'dạng gói',40000),
(3,2,'Snack bạch tuộc',4,'images/snackbachtuoc.jpg.webp',75000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',50000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',85000),
(4,3,'Snack bánh mỳ sấy',4,'images/snackbanhmysay.jpg.webp',95000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',50000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',105000),
(5,4,'Snack bánh phồng tôm',2,'images/snackbanhphongca.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(6,2,'Snack phô mai tròn',2,'images/snackbaprangkaramen.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(7,2,'Snack bắp sốt cay',2,'images/snackbapviphomai.jpg.webp',25000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',35000),
(8,2,'Snack bắp vị phô mai',2,'images/snackbapsot.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(9,1,'Snack mực tẩm kento',5,'images/snackbento.jpg.webp',80000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x18 cm','nhập lẻ',50,0,'dạng gói',90000),
(10,1,'Snack mực ướp mexico',5,'images/snackbentomexico.jpg.webp',80000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x18 cm','nhập lẻ',50,0,'dạng gói',90000),
(11,1,'Snack mực nướng sốt bento',5,'images/snackbentomuc.jpg.webp',80000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x18 cm','nhập lẻ',50,0,'dạng gói',90000),
(12,2,'Snack bí đỏ',2,'images/snackbido.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(13,2,'Snack crop chip',2,'images/snackbochip.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(14,2,'Snack cà chua',2,'images/snackcachua.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x18 cm','nhập lẻ',40,0,'dạng gói',30000),
(15,1,'Snack sữa viên phô mai',4,'images/snackcheeseballs.jpg.webp',120000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',90000,50,'50x28 cm','nhập lẻ',20,0,'dạng gói',130000),
(16,5,'Snack sườn nướng BBQ',4,'images/snackcheetos.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',9000,50,'30x28 cm','nhập lẻ',20,0,'dạng gói',30000),
(17,4,'Snack khoai tây chiên cay',4,'images/snackchienvicay.jpg.webp',80000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x88 cm','nhập lẻ',20,0,'dạng hộp',90000),
(18,2,'Snack phô mai ướp',4,'images/snackcorm.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',6000,50,'30x28 cm','nhập lẻ',20,0,'dạng gói',30000),
(19,2,'Snack vị cua lắc phô mai',2,'images/snackcorm.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',6000,50,'30x28 cm','nhập lẻ',20,0,'dạng gói',30000),
(20,3,'Snack viên đậu phộng',2,'images/snackdauphong.jpg.webp',90000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x28 cm','nhập lẻ',60,0,'dạng gói',100000),
(21,3,'Snack hạt đậu phộng khô',2,'images/snackdauphongphomai.jpg.webp',90000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x28 cm','nhập lẻ',40,0,'dạng hộp',100000),
(22,3,'Snack đậu phộng phô mai',4,'images/snackdauphongsay.jpg.webp',90000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x28 cm','nhập lẻ',40,0,'dạng gói',100000),
(23,3,'Snack đậu thập cẩm',4,'images/snackdauthapcam.jpg.webp',90000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x28 cm','nhập lẻ',40,0,'dạng hộp',100000),
(24,3,'Snack hạt thập cẩm',4,'images/snackdauthapcamfun.jpg.webp',70000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',80000),
(25,2,'Snack đậu xanh',1,'images/snackdauxanh.jpg.webp',120000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',140000),
(26,5,'Snack gấu panda',3,'images/snackgaunhan.jpg.webp',120000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',140000),
(27,3,'Snack chikki',4,'images/snackgikiki.jpg.webp',120000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',140000),
(28,2,'Snack hành',4,'images/snackhanh.jpg.webp',15000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',20000),
(29,1,'Snack hạt điều chiên muối',3,'images/snackhatdieuchienmuoi.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',30000),
(30,3,'Snack hạt điều chiên không muối',3,'images/snackhatkhongmuoi.jpg.webp',20000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',30000),
(31,1,'Snack khoai xoắn ốc',3,'images/snackhopkhoai.jpg.webp',60000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',50000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',70000),
(32,1,'Snack rong biển cay',1,'images/snackkaramucho.jpg.webp',15000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',25000),
(33,1,'Snack khoai tây vị cay nồng',1,'images/snackkaramuchokhoia.jpg.webp',15000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',10000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',25000),
(34,1,'Snack gà nướng hàn quốc',1,'images/snackkhoaga.jpg.webp',150000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',100000,50,'30x78 cm','nhập lẻ',40,0,'dạng hộp',160000),
(35,3,'Snack bánh nướng mật',1,'images/snackkhoaibo.jpg.webp',170000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',120000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',180000),
(36,3,'Snack khoai lang mật',1,'images/snackkhoailang.jpg.webp',40000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',40000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',50000),
(37,5,'Snack đậu phộng phô mai sữa',1,'images/snackluamach.jpg.webp',90000,'Snack này là món ăn được nhiều người yêu thích và sử dụng hàng ngày, đặc biệt là các bạn nhỏ. Sản phẩm được sản xuất trên dây chuyền hiện đại, không dùng chất phụ gia tổng hợp, chất tạo màu, chất bảo quản, giữ nguyên hương vị tự nhiên, an toàn với người sử dụng',60000,50,'30x78 cm','nhập lẻ',40,0,'dạng gói',100000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1603337116137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'hungdeptrai',NULL,'1234',_binary '',NULL),(1488431413954,'dangquangkdc',NULL,'123456',_binary '\0',NULL),(1488394819194,'quang',NULL,'123456',_binary '\0',NULL),(1603337116135,'hai','danghai882000@gmail.com',NULL,_binary '\0','12312313'),(1490249636892,'a','a','a',_binary '\0','a'),(1490249751501,'b','b','b',_binary '\0','b'),(1490263429251,'test','a','a',_binary '\0','a'),(3,'test1','dangquangkdc@gmail.com','a',_binary '\0','a'),(1603337116136,'haitest','danghai882000@gmail.com','123123',_binary '\0','2141241'),(1603337116134,'hai','danghai882000@gmail.com','123123',_binary '\0','399487332');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13  0:02:47
