-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: donation
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

--
-- Temporary view structure for view `august_sales_view`
--

DROP TABLE IF EXISTS `august_sales_view`;
/*!50001 DROP VIEW IF EXISTS `august_sales_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `august_sales_view` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `COUNT(*)`,
 1 AS `orderstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `biggeravgsaleview`
--

DROP TABLE IF EXISTS `biggeravgsaleview`;
/*!50001 DROP VIEW IF EXISTS `biggeravgsaleview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `biggeravgsaleview` AS SELECT 
 1 AS `sales_id`,
 1 AS `order_id`,
 1 AS `total_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1101,'Books','2021-10-19'),(1102,'Toys','2021-10-18'),(1103,'electronics','2021-10-16'),(1104,'clothes','2021-10-14'),(1105,'Furniture','2021-10-10'),(1106,'Tools','2021-10-06');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_cart`
--

DROP TABLE IF EXISTS `donation_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `donator_id` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `cart_id_UNIQUE` (`cart_id`),
  KEY `fk_cart_user_idx` (`donator_id`),
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`donator_id`) REFERENCES `tb_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70007 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_cart`
--

LOCK TABLES `donation_cart` WRITE;
/*!40000 ALTER TABLE `donation_cart` DISABLE KEYS */;
INSERT INTO `donation_cart` VALUES (70001,10001,'2020-12-31'),(70002,10002,'2021-08-05'),(70003,10003,'2021-08-05'),(70004,10004,'2021-10-02'),(70005,10005,'2021-10-08'),(70006,10006,'2021-10-18');
/*!40000 ALTER TABLE `donation_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `position` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `employee` (`store_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50014 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (50001,1001,'Arsala','Khan','Male','Senior Manager','a.khan@gmail.com'),(50002,1002,'Neelansh','Shah','Male','Manager','n.shah@gmail.com'),(50003,1003,'Karan','Patel','Male','Cashier','k.patel@gmail.com'),(50004,1004,'Taha','Shah','Male','Customer Executive','t.shah@gmail.com'),(50005,1005,'Tarun','Verma','Male','Software Engineer','t.verma@gmail.com'),(50006,1006,'Vijay','Kochar','Male','Network Engineer','vjay.k@gmail.com'),(50008,1002,'Jerry','Henderson','Male','Sales','jerry_henderson@gmail.com'),(50009,1003,'Mary','Lee','Female','Sales','mary_lee@yahoo.com'),(50010,1004,'Jeniffer','Stone','female','Sales','jeniffer_stone@yahoo.com'),(50011,1005,'Vicky','Charles','female','Sales','vicky_charles@gmail.com'),(50012,1006,'Annie','Barton','female','Sales','annie_barton@hotmail.com'),(50013,1001,'Mike','Ovens','male','Sales','mike_ovens@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_poistion_view`
--

DROP TABLE IF EXISTS `employee_poistion_view`;
/*!50001 DROP VIEW IF EXISTS `employee_poistion_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_poistion_view` AS SELECT 
 1 AS `CONCAT('Employee', first_name, last_name)`,
 1 AS `position`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `entity1`
--

DROP TABLE IF EXISTS `entity1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity1` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity1`
--

LOCK TABLES `entity1` WRITE;
/*!40000 ALTER TABLE `entity1` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT '0',
  `category_id` int DEFAULT '0',
  `cart_id` int DEFAULT '0',
  `item_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_ibfk_2` (`category_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `item_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `donation_cart` (`cart_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1117 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1111,1011,1101,NULL,'Math books','Calculus -1 '),(1112,1012,1102,NULL,'teddy bear','brown 5\" ft teddy bear\"'),(1113,1013,1103,NULL,'music player','Sony 250 watts bluetooth'),(1114,1014,1104,NULL,'Jacket','Black Tommy Winter Jacket'),(1115,1015,1105,NULL,'Study table','IKEA white study table');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `item_view`
--

DROP TABLE IF EXISTS `item_view`;
/*!50001 DROP VIEW IF EXISTS `item_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `item_view` AS SELECT 
 1 AS `item_id`,
 1 AS `item_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lesssalesview`
--

DROP TABLE IF EXISTS `lesssalesview`;
/*!50001 DROP VIEW IF EXISTS `lesssalesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lesssalesview` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `min_total_view`
--

DROP TABLE IF EXISTS `min_total_view`;
/*!50001 DROP VIEW IF EXISTS `min_total_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `min_total_view` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `MIN(total_amount)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int DEFAULT '0',
  `user_id` int DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `orderstatus` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `fk_order_user` (`user_id`),
  KEY `sales_employee` (`sales_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_employee` FOREIGN KEY (`sales_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1011,NULL,10001,'2021-01-01',9.00,'Delivered'),(1012,NULL,10001,'2021-08-02',12.00,'Pending'),(1013,NULL,10001,'2021-08-05',30.00,'Delivered'),(1014,NULL,10004,'2021-10-06',15.00,'Delivered'),(1015,NULL,10005,'2021-10-14',30.00,'Pending'),(1016,NULL,10006,'2021-10-18',20.00,'Delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderuserview`
--

DROP TABLE IF EXISTS `orderuserview`;
/*!50001 DROP VIEW IF EXISTS `orderuserview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderuserview` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salesview`
--

DROP TABLE IF EXISTS `salesview`;
/*!50001 DROP VIEW IF EXISTS `salesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salesview` AS SELECT 
 1 AS `last_name`,
 1 AS `first_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `store_id_UNIQUE` (`store_id`),
  UNIQUE KEY `store_name_UNIQUE` (`store_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1001,'Halsted Better Will','300 N Halsted Street','312-123-4567','halsted_betterwill@gmail.com'),(1002,'West Loop Better WIll','200 W. Taylor Street','312-321-4321','westloop_betterwill@gmail.com'),(1003,'Downtown Better WIll','100 N. Clark Steet, Chicago,60605','312-123-1111','downtown_betterwill@gmail.com'),(1004,'Uptown Better Will','111 W. North Street,Chicago,IL, 60604','773-123-1234','uptown_betterwill@gmail.com'),(1005,'Middle Town Better Will','789 N. Ashland Ave, Chicago, IL,60602','773-123-7890','middletown_betterwill@gmail.com'),(1006,'Little Italy Better Will','456 W..Harrison Steet, Chicago,IL,60602','312-888-7777','littleItaly_betterwill@gmail.com');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (10001,'Ashta','shah','312-111-1111','Taylor Street','ashta.s@gmail.com','12345'),(10002,'Agne ','Kwaski','321-323-6454','Madison Street','agne.k@gmail.com','abcdef'),(10003,'Stephanie','Claire','312-434-6212','Loomis Street','stephanie.c@gmail.com','123abc'),(10004,'Zain','Malik','854-568-8813','Van Buren Street','Zain.m@gmail.com','hgfdsa'),(10005,'Anchal ','Parmar','989-788-7883','14th STreet','anchal.p@gmail.com','poilu123'),(10006,'Chris','Patel','372-423-4353','Lexington STreet','chris.p@gmail.com','all123');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `totalordersview`
--

DROP TABLE IF EXISTS `totalordersview`;
/*!50001 DROP VIEW IF EXISTS `totalordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalordersview` AS SELECT 
 1 AS `order_status`,
 1 AS `total_sales`,
 1 AS `Recent_Month`,
 1 AS `Today_Time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `user_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `august_sales_view`
--

/*!50001 DROP VIEW IF EXISTS `august_sales_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `august_sales_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_date` AS `order_date`,count(0) AS `COUNT(*)`,`orders`.`orderstatus` AS `orderstatus` from `orders` group by month(`orders`.`order_date`),cast(`orders`.`order_date` as date) having (month(`orders`.`order_date`) = 8) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `biggeravgsaleview`
--

/*!50001 DROP VIEW IF EXISTS `biggeravgsaleview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `biggeravgsaleview` AS select `o`.`sales_id` AS `sales_id`,`o`.`order_id` AS `order_id`,`o`.`total_amount` AS `total_amount` from `orders` `o` where (`o`.`total_amount` > (select avg(`o`.`total_amount`) from `orders` `o` where (`o`.`order_id` = `o`.`order_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_poistion_view`
--

/*!50001 DROP VIEW IF EXISTS `employee_poistion_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_poistion_view` AS select concat('Employee: ',`employee`.`first_name`,' ',`employee`.`last_name`) AS `CONCAT('Employee', first_name, last_name)`,`employee`.`position` AS `position` from `employee` order by `employee`.`first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `item_view`
--

/*!50001 DROP VIEW IF EXISTS `item_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `item_view` AS select `item`.`item_id` AS `item_id`,`item`.`item_name` AS `item_name`,`item`.`description` AS `description` from `item` order by `item`.`item_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lesssalesview`
--

/*!50001 DROP VIEW IF EXISTS `lesssalesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lesssalesview` AS select `e`.`first_name` AS `first_name`,`e`.`last_name` AS `last_name` from `employee` `e` where exists(select 1 from `orders` where ((`orders`.`sales_id` = `e`.`employee_id`) and (`orders`.`total_amount` < 10))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `min_total_view`
--

/*!50001 DROP VIEW IF EXISTS `min_total_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `min_total_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_date` AS `order_date`,min(`orders`.`total_amount`) AS `MIN(total_amount)` from `orders` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderuserview`
--

/*!50001 DROP VIEW IF EXISTS `orderuserview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderuserview` AS select `u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name` from (`tb_user` `u` join `orders` `o`) where (`u`.`user_id` = `o`.`user_id`) group by `u`.`first_name`,`u`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salesview`
--

/*!50001 DROP VIEW IF EXISTS `salesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salesview` AS select `employee`.`last_name` AS `last_name`,`employee`.`first_name` AS `first_name` from `employee` where (`employee`.`position` = 'sales') order by `employee`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalordersview`
--

/*!50001 DROP VIEW IF EXISTS `totalordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalordersview` AS select lower(`orders`.`orderstatus`) AS `order_status`,sum(`orders`.`total_amount`) AS `total_sales`,max(month(`orders`.`order_date`)) AS `Recent_Month`,now() AS `Today_Time` from `orders` group by `order_status` having (`total_sales` > 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `tb_user`.`user_id` AS `user_id`,`tb_user`.`first_name` AS `first_name`,`tb_user`.`last_name` AS `last_name`,`tb_user`.`email` AS `email` from `tb_user` order by `tb_user`.`first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 21:26:54
