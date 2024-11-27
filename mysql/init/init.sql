-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: miapp
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `stwtyqxst_settings`
--

DROP TABLE IF EXISTS `stwtyqxst_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stwtyqxst_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_key` varchar(255) NOT NULL,
  `option_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stwtyqxst_settings`
--

LOCK TABLES `stwtyqxst_settings` WRITE;
/*!40000 ALTER TABLE `stwtyqxst_settings` DISABLE KEYS */;
INSERT INTO `stwtyqxst_settings` VALUES (1,'site_name','My Application'),(2,'personal_info','{\"firstname\":\"J0hgnGTGN2aTBpoxVxFESw==\",\"lastname\":\"dDLD/j1TahD800ghVoPW2Q==\",\"fulladdress\":\"aXbHleqn75h36jXWqHKP6YL+8yU+D5QCA4VXtKSvv5s=\",\"birthdate\":\"m2L8lIFrbe9Gr1uLQ5AAOA==\",\"macorhost\":\"0b73e8287adf\"}'),(3,'installation_date','2024-11-20 05:53:30'),(4,'site_name','My Application'),(5,'personal_info','{\"firstname\":\"R/fFd5AalD2NkMFNW3Wc/w==\",\"lastname\":\"R/fFd5AalD2NkMFNW3Wc/w==\",\"fulladdress\":\"aXbHleqn75h36jXWqHKP6YL+8yU+D5QCA4VXtKSvv5s=\",\"birthdate\":\"m2L8lIFrbe9Gr1uLQ5AAOA==\",\"macorhost\":\"0b73e8287adf\"}'),(6,'installation_date','2024-11-20 06:35:05');
/*!40000 ALTER TABLE `stwtyqxst_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_access`
--

DROP TABLE IF EXISTS `tbl_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_module_id` int(11) DEFAULT NULL,
  `label_name` varchar(100) DEFAULT NULL,
  `function_name` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `del_status` varchar(10) DEFAULT 'Live',
  `module_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_access`
--

LOCK TABLES `tbl_access` WRITE;
/*!40000 ALTER TABLE `tbl_access` DISABLE KEYS */;
INSERT INTO `tbl_access` VALUES (1,9,'dashboard',NULL,0,'Live','dashboard'),(2,9,'view','view',1,'Live',NULL),(31,8,'Setting',NULL,0,'Live','Setting'),(32,8,'view','view',31,'Live',NULL),(33,8,'update','update',31,'Live',NULL),(35,8,'Printers',NULL,0,'Live','Printers'),(36,8,'add','add',35,'Live',NULL),(37,8,'update','update',35,'Live',NULL),(38,8,'view','view',35,'Live',NULL),(39,8,'delete','delete',35,'Live',NULL),(49,8,'White_Label',NULL,0,'Live','White_Label'),(51,8,'update','update',49,'Live',NULL),(52,8,'Tax_Setting',NULL,0,'Live','Tax_Setting'),(54,8,'update','update',52,'Live',NULL),(55,8,'MultipleCurrencies_btn',NULL,0,'Live','Manage_Multiple_Currencies'),(56,8,'add','add',55,'Live',NULL),(57,8,'update','update',55,'Live',NULL),(58,8,'view','view',55,'Live',NULL),(59,8,'delete','delete',55,'Live',NULL),(62,8,'Uninstall_License',NULL,0,'Live','License_Uninstall'),(63,8,'uninstall','uninstall',62,'Live',NULL),(64,8,'sos_Self_Order_Setting',NULL,0,'Live','Self_Order_Setting'),(66,8,'update','update',64,'Live',NULL),(67,9,'outlets',NULL,0,'Live','Outlets'),(68,9,'add','add',67,'Live',NULL),(69,9,'update','update',67,'Live',NULL),(70,9,'view','view',67,'Live',NULL),(71,9,'delete','delete',67,'Live',NULL),(72,9,'enter','enter',67,'Live',NULL),(73,7,'pos',NULL,0,'Live','pos'),(74,7,'place_order','place_order',73,'Live',NULL),(75,7,'cancel_order','cancel_order',73,'Live',NULL),(76,7,'modify_order','modify_order',73,'Live',NULL),(77,7,'Provide_Discount','Provide_Discount',73,'Live',NULL),(78,7,'Modify_Service_Delivery_Charge','Modify_Service_Delivery_Charge',73,'Live',NULL),(79,7,'Enter_Tips','Enter_Tips',73,'Live',NULL),(80,7,'Delete_Item_From_Cart_When_Modifying_Order','Delete_Item_From_Cart_When_Modifying_Order',73,'Live',NULL),(81,7,'add_customer','add_customer',73,'Live',NULL),(82,7,'edit_customer','edit_customer',73,'Live',NULL),(83,7,'kot_tooltip','kot_tooltip',73,'Live',NULL),(84,7,'create_invoice','create_invoice',73,'Live',NULL),(85,7,'Print_Bill','Print_Bill',73,'Live',NULL),(86,7,'print_last_invoice','print_last_invoice',73,'Live',NULL),(87,7,'Delete_Recent_Sales','Delete_Recent_Sales',73,'Live',NULL),(88,7,'Modify_Future_Sale','Modify_Future_Sale',73,'Live',NULL),(89,7,'Set_as_Running_Order_in_Future_Sale','Set_as_Running_Order_in_Future_Sale',73,'Live',NULL),(90,7,'Accept_SelfOrder','Accept_SelfOrder',73,'Live',NULL),(91,7,'DeclineSelfOrder','DeclineSelfOrder',73,'Live',NULL),(92,7,'ModifySelfOrder','ModifySelfOrder',73,'Live',NULL),(93,7,'RemoveKitchenNotification','RemoveKitchenNotification',73,'Live',NULL),(94,7,'close_register','close_register',73,'Live',NULL),(95,7,'GotoDashboard','GotoDashboard',73,'Live',NULL),(96,7,'main_menu','main_menu',73,'Live',NULL),(98,7,'kitchens',NULL,0,'Live','kitchens'),(99,7,'add','add',98,'Live',NULL),(100,7,'update','update',98,'Live',NULL),(101,7,'view','view',98,'Live',NULL),(102,7,'delete','delete',98,'Live',NULL),(103,7,'enter','enter',98,'Live',NULL),(104,7,'waiter',NULL,0,'Live','waiter'),(105,7,'view','view',104,'Live',NULL),(106,6,'purchase',NULL,0,'Live','purchase'),(107,6,'add','add',106,'Live',NULL),(108,6,'update','update',106,'Live',NULL),(109,6,'view','view',106,'Live',NULL),(110,6,'delete','delete',106,'Live',NULL),(111,6,'view_details','view_details',106,'Live',NULL),(112,9,'transfer',NULL,0,'Live','transfer'),(113,9,'add','add',112,'Live',NULL),(114,9,'update','update',112,'Live',NULL),(115,9,'view','view',112,'Live',NULL),(116,9,'delete','delete',112,'Live',NULL),(117,9,'view_details','view_details',112,'Live',NULL),(118,9,'promotion',NULL,0,'Live','promotion'),(119,9,'add','add',118,'Live',NULL),(120,9,'update','update',118,'Live',NULL),(121,9,'view','view',118,'Live',NULL),(122,9,'delete','delete',118,'Live',NULL),(123,5,'sale',NULL,0,'Live','sale'),(124,5,'view','view',123,'Live',NULL),(125,5,'refund','refund',123,'Live',NULL),(126,5,'view_invoice','view_invoice',123,'Live',NULL),(128,5,'delete','delete',123,'Live',NULL),(129,9,'inventory',NULL,0,'Live','inventory'),(130,9,'view','view',129,'Live',NULL),(131,9,'inventory_Adjustments',NULL,0,'Live','inventory_Adjustments'),(132,9,'add','add',131,'Live',NULL),(133,9,'update','update',131,'Live',NULL),(134,9,'view','view',131,'Live',NULL),(135,9,'delete','delete',131,'Live',NULL),(136,9,'view_details','view_details',131,'Live',NULL),(137,9,'waste',NULL,0,'Live','waste'),(138,9,'add','add',137,'Live',NULL),(139,9,'view','view',137,'Live',NULL),(140,9,'delete','delete',137,'Live',NULL),(141,9,'view_details','view_details',137,'Live',NULL),(142,4,'expense',NULL,0,'Live','expense'),(143,4,'add','add',142,'Live',NULL),(144,4,'update','update',142,'Live',NULL),(145,4,'view','view',142,'Live',NULL),(146,4,'delete','delete',142,'Live',NULL),(147,9,'supplier_due_payment',NULL,0,'Live','supplier_due_payment'),(148,9,'add','add',147,'Live',NULL),(149,9,'view','view',147,'Live',NULL),(150,9,'delete','delete',147,'Live',NULL),(151,9,'customer_due_receive',NULL,0,'Live','customer_due_receive'),(152,9,'add','add',151,'Live',NULL),(153,9,'view','view',151,'Live',NULL),(154,9,'delete','delete',151,'Live',NULL),(155,9,'attendance',NULL,0,'Live','attendance'),(156,9,'add','add',155,'Live',NULL),(157,9,'view','view',155,'Live',NULL),(158,9,'delete','delete',155,'Live',NULL),(159,3,'register_report',NULL,0,'Live','register_report'),(160,3,'view','view',159,'Live',NULL),(161,3,'daily_summary_report',NULL,0,'Live','daily_summary_report'),(162,3,'view','view',161,'Live',NULL),(163,3,'food_sales_report',NULL,0,'Live','food_sales_report'),(164,3,'view','view',163,'Live',NULL),(165,3,'daily_sale_report',NULL,0,'Live','daily_sale_report'),(166,3,'view','view',165,'Live',NULL),(167,3,'detailed_sale_report',NULL,0,'Live','detailed_sale_report'),(168,3,'view','view',167,'Live',NULL),(169,3,'consumption_report',NULL,0,'Live','consumption_report'),(170,3,'view','view',169,'Live',NULL),(171,3,'inventory_report',NULL,0,'Live','inventory_report'),(172,3,'view','view',171,'Live',NULL),(173,3,'Alert_Inventory',NULL,0,'Live','Alert_Inventory'),(174,3,'view','view',173,'Live',NULL),(175,3,'profit_loss_report',NULL,0,'Live','profit_loss_report'),(176,3,'view','view',175,'Live',NULL),(179,3,'attendance_report',NULL,0,'Live','attendance_report'),(180,3,'view','view',179,'Live',NULL),(181,3,'supplier_ledger_report',NULL,0,'Live','supplier_ledger_report'),(182,3,'view','view',181,'Live',NULL),(183,3,'supplier_due_report',NULL,0,'Live','supplier_due_report'),(184,3,'view','view',183,'Live',NULL),(185,3,'customer_due_report',NULL,0,'Live','customer_due_report'),(186,3,'view','view',185,'Live',NULL),(187,3,'customer_ledger',NULL,0,'Live','customer_ledger'),(188,3,'view','view',187,'Live',NULL),(189,3,'purchase_report',NULL,0,'Live','purchase_report'),(190,3,'view','view',189,'Live',NULL),(191,3,'expense_report',NULL,0,'Live','expense_report'),(192,3,'view','view',191,'Live',NULL),(193,3,'waste_report',NULL,0,'Live','waste_report'),(194,3,'view','view',193,'Live',NULL),(195,3,'vat_report',NULL,0,'Live','vat_report'),(196,3,'view','view',195,'Live',NULL),(197,3,'foodMenuSaleByCategories',NULL,0,'Live','foodMenuSaleByCategories'),(198,3,'view','view',197,'Live',NULL),(199,3,'tips_report',NULL,0,'Live','tips_report'),(200,3,'view','view',199,'Live',NULL),(201,3,'auditLogReport',NULL,0,'Live','auditLogReport'),(202,3,'view','view',201,'Live',NULL),(203,3,'usage_loyalty_point_report',NULL,0,'Live','usage_loyalty_point_report'),(204,3,'view','view',203,'Live',NULL),(205,3,'loyalty_point_report',NULL,0,'Live','loyalty_point_report'),(206,3,'view','view',205,'Live',NULL),(207,2,'ingredient_category',NULL,0,'Live','ingredient_category'),(208,2,'add','add',207,'Live',NULL),(209,2,'update','update',207,'Live',NULL),(210,2,'view','view',207,'Live',NULL),(211,2,'delete','delete',207,'Live',NULL),(212,2,'ingredient_units',NULL,0,'Live','ingredient_units'),(213,2,'add','add',212,'Live',NULL),(214,2,'update','update',212,'Live',NULL),(215,2,'view','view',212,'Live',NULL),(216,2,'delete','delete',212,'Live',NULL),(217,2,'ingredients',NULL,0,'Live','ingredients'),(218,2,'add','add',217,'Live',NULL),(219,2,'update','update',217,'Live',NULL),(220,2,'view','view',217,'Live',NULL),(221,2,'delete','delete',217,'Live',NULL),(222,2,'upload_ingredient','upload_ingredient',217,'Live','upload_ingredient'),(223,2,'modifiers',NULL,0,'Live','modifiers'),(224,2,'add','add',223,'Live',NULL),(225,2,'update','update',223,'Live',NULL),(226,2,'view','view',223,'Live',NULL),(227,2,'delete','delete',223,'Live',NULL),(228,2,'view_details','view_details',223,'Live',NULL),(229,2,'food_menu_category',NULL,0,'Live','food_menu_category'),(230,2,'add','add',229,'Live',NULL),(231,2,'update','update',229,'Live',NULL),(232,2,'view','view',229,'Live',NULL),(233,2,'delete','delete',229,'Live',NULL),(234,2,'food_menus',NULL,0,'Live','food_menus'),(235,2,'add','add',234,'Live',NULL),(236,2,'update','update',234,'Live',NULL),(237,2,'view','view',234,'Live',NULL),(238,2,'delete','delete',234,'Live',NULL),(239,2,'view_details','view_details',234,'Live',NULL),(240,2,'assign_modifier','assign_modifier',234,'Live',NULL),(241,2,'upload_food_menu','upload_food_menu',234,'Live',NULL),(242,2,'upload_food_menu_ingredients','upload_food_menu_ingredients',234,'Live',NULL),(243,2,'food_menu_barcode','food_menu_barcode',234,'Live',NULL),(244,6,'suppliers',NULL,0,'Live','suppliers'),(245,6,'add','add',244,'Live',NULL),(246,6,'update','update',244,'Live',NULL),(247,6,'view','view',244,'Live',NULL),(248,6,'delete','delete',244,'Live',NULL),(249,5,'customers',NULL,0,'Live','customers'),(250,5,'add','add',249,'Live',NULL),(251,5,'update','update',249,'Live',NULL),(252,5,'view','view',249,'Live',NULL),(253,5,'delete','delete',249,'Live',NULL),(254,5,'upload_customer','upload_customer',249,'Live',NULL),(255,4,'expense_items',NULL,0,'Live','expense_items'),(256,4,'add','add',255,'Live',NULL),(257,4,'update','update',255,'Live',NULL),(258,4,'view','view',255,'Live',NULL),(259,4,'delete','delete',255,'Live',NULL),(260,8,'payment_methods',NULL,0,'Live','payment_methods'),(261,8,'add','add',260,'Live',NULL),(262,8,'update','update',260,'Live',NULL),(263,8,'view','view',260,'Live',NULL),(264,8,'delete','delete',260,'Live',NULL),(265,8,'denominations',NULL,0,'Live','denominations'),(266,8,'add','add',265,'Live',NULL),(267,8,'update','update',265,'Live',NULL),(268,8,'view','view',265,'Live',NULL),(269,8,'delete','delete',265,'Live',NULL),(270,8,'deliveryPartners',NULL,0,'Live','deliveryPartners'),(271,8,'add','add',270,'Live',NULL),(272,8,'update','update',270,'Live',NULL),(273,8,'view','view',270,'Live',NULL),(274,8,'delete','delete',270,'Live',NULL),(275,8,'areas',NULL,0,'Live','areas'),(276,8,'add','add',275,'Live',NULL),(277,8,'update','update',275,'Live',NULL),(278,8,'view','view',275,'Live',NULL),(279,8,'delete','delete',275,'Live',NULL),(280,8,'tables',NULL,0,'Live','tables'),(281,8,'add','add',280,'Live',NULL),(282,8,'update','update',280,'Live',NULL),(283,8,'view','view',280,'Live',NULL),(284,8,'delete','delete',280,'Live',NULL),(285,1,'roles',NULL,0,'Live','role'),(286,1,'add','add',285,'Live',NULL),(287,1,'update','update',285,'Live',NULL),(288,1,'view','view',285,'Live',NULL),(289,1,'delete','delete',285,'Live',NULL),(290,1,'copy','copy',285,'Live',NULL),(291,1,'users',NULL,0,'Live','users'),(292,1,'add','add',291,'Live',NULL),(293,1,'update','update',291,'Live',NULL),(294,1,'view','view',291,'Live',NULL),(295,1,'delete','delete',291,'Live',NULL),(296,1,'activate','activate',291,'Live',NULL),(297,1,'deactivate','deactivate',291,'Live',NULL),(298,1,'change_profile',NULL,0,'Live','change_profile'),(299,1,'update','update',298,'Live',NULL),(300,1,'change_password',NULL,0,'Live','change_password'),(301,1,'update','update',300,'Live',NULL),(302,1,'SetSecurityQuestion',NULL,0,'Live','SetSecurityQuestion'),(303,1,'update','update',302,'Live',NULL),(304,5,'change_delivery_address','change_delivery_address',123,'Live',NULL),(305,5,'exportDailySales','exportDailySales',123,'Live',NULL),(306,5,'resetDailySales','resetDailySales',123,'Live',NULL),(307,3,'transferReport',NULL,0,'Live','transferReport'),(308,3,'view','view',307,'Live',NULL),(309,8,'sorting','sorting',260,'Live',NULL),(310,9,'check_in_check_out',NULL,0,'Live','check_in_check_out'),(311,9,'check_in','check_in',310,'Live',NULL),(312,9,'check_out','check_out',310,'Live',NULL),(313,9,'view','view',310,'Live',NULL),(314,3,'z_report',NULL,0,'Live','z_report'),(315,3,'view','view',314,'Live',NULL),(321,9,'send_sms',NULL,0,'Live','send_sms'),(322,9,'view','view',321,'Live',NULL),(325,2,'premade_food',NULL,0,'Live','premade_food'),(326,2,'add','add',325,'Live',NULL),(327,2,'update','update',325,'Live',NULL),(328,2,'view','view',325,'Live',NULL),(329,2,'delete','delete',325,'Live',NULL),(330,1,'change_pin',NULL,0,'Live','change_pin'),(331,1,'update','update',330,'Live',NULL),(332,3,'productAnalysisReport',NULL,0,'Live','productAnalysisReport'),(333,3,'view','view',332,'Live',NULL),(334,8,'sos_online_order_setting',NULL,0,'Live','Online_Order_Setting'),(336,8,'update','update',334,'Live',NULL),(337,3,'productionReport',NULL,0,'Live','productionReport'),(338,3,'view','view',337,'Live',NULL),(339,2,'ordering_for_pos','ordering_for_pos',229,'Live',NULL),(340,6,'production',NULL,0,'Live','production'),(341,6,'add','add',340,'Live',NULL),(342,6,'update','update',340,'Live',NULL),(343,6,'view','view',340,'Live',NULL),(344,6,'delete','delete',340,'Live',NULL),(345,6,'view_details','view_details',340,'Live',NULL),(346,3,'inventory_food_menu',NULL,0,'Live','inventory_food_menu'),(347,3,'view','view',346,'Live',NULL),(348,8,'database_backup',NULL,0,'Live','database_backup'),(349,8,'backup','backup',348,'Live',NULL),(350,8,'reset_transactional_data',NULL,0,'Live','reset_transactional_data'),(351,8,'reset','reset',350,'Live',NULL),(352,7,'direct_invoice','direct_invoice',73,'Live',NULL),(353,8,'Counter',NULL,0,'Live','Counters'),(354,8,'add','add',353,'Live',NULL),(355,8,'update','update',353,'Live',NULL),(356,8,'view','view',353,'Live',NULL),(357,8,'delete','delete',353,'Live',NULL);
/*!40000 ALTER TABLE `tbl_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_areas`
--

DROP TABLE IF EXISTS `tbl_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the service area',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional description of the area',
  `outlet_id` int(11) NOT NULL COMMENT 'Related outlet/branch ID',
  `company_id` int(11) NOT NULL,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_area_outlet` (`area_name`,`outlet_id`,`company_id`,`del_status`),
  KEY `area_company_idx` (`company_id`),
  KEY `area_outlet_idx` (`outlet_id`),
  KEY `area_status_idx` (`del_status`),
  CONSTRAINT `fk_area_outlet` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_areas`
--

LOCK TABLES `tbl_areas` WRITE;
/*!40000 ALTER TABLE `tbl_areas` DISABLE KEYS */;
INSERT INTO `tbl_areas` VALUES (1,'Principal','',1,1,'Live','2024-11-22 18:58:55','2024-11-22 18:58:55');
/*!40000 ALTER TABLE `tbl_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` text,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_attendance_employee` (`employee_id`),
  KEY `idx_attendance_date` (`date`),
  CONSTRAINT `tbl_attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_attendance_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attendance`
--

LOCK TABLES `tbl_attendance` WRITE;
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
INSERT INTO `tbl_attendance` VALUES (1,'000001',1,'2024-11-21','08:46:31','21:24:58',NULL,NULL,'Live',1,1),(2,'000002',1,'2024-11-22','00:53:42','19:04:19',NULL,NULL,'Live',1,1),(3,'000003',1,'2024-11-23','05:57:40','05:57:43',NULL,NULL,'Live',1,1),(4,'000004',1,'2024-11-06','10:47:04','00:15:00','',NULL,'Live',1,1),(5,'000005',1,'2024-11-24','15:12:19','16:25:07',NULL,NULL,'Live',1,1);
/*!40000 ALTER TABLE `tbl_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_audit_logs`
--

DROP TABLE IF EXISTS `tbl_audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `event_title` varchar(100) DEFAULT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_audit_date` (`date`),
  CONSTRAINT `tbl_audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_audit_logs_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_audit_logs`
--

LOCK TABLES `tbl_audit_logs` WRITE;
/*!40000 ALTER TABLE `tbl_audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_combo_food_menus`
--

DROP TABLE IF EXISTS `tbl_combo_food_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_combo_food_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `food_menu_id` int(11) NOT NULL,
  `added_food_menu_id` int(11) NOT NULL,
  `quantity` decimal(10,2) DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `food_menu_id` (`food_menu_id`),
  KEY `added_food_menu_id` (`added_food_menu_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_combo_food_menus_added_food_menu_id_fk` FOREIGN KEY (`added_food_menu_id`) REFERENCES `tbl_food_menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_combo_food_menus_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tbl_combo_food_menus_food_menu_id_fk` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_combo_food_menus_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_combo_food_menus`
--

LOCK TABLES `tbl_combo_food_menus` WRITE;
/*!40000 ALTER TABLE `tbl_combo_food_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_combo_food_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_companies`
--

DROP TABLE IF EXISTS `tbl_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(100) DEFAULT NULL,
  `invoice_footer` text,
  `white_label` json DEFAULT NULL,
  `payment_clear` enum('Yes','No') DEFAULT 'No',
  `del_status` varchar(10) DEFAULT 'Live',
  `zone_name` varchar(100) DEFAULT NULL,
  `languge_manifesto` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `currency` varchar(45) DEFAULT '$',
  `date_format` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `currency_position` varchar(45) DEFAULT NULL,
  `precision` varchar(45) DEFAULT NULL,
  `default_customer` varchar(45) DEFAULT NULL,
  `export_daily_sale` varchar(45) DEFAULT NULL,
  `service_amount` varchar(45) DEFAULT NULL,
  `delivery_amount` varchar(45) DEFAULT NULL,
  `tax_type` varchar(45) DEFAULT NULL,
  `decimals_separator` varchar(45) DEFAULT NULL,
  `thousands_separator` varchar(45) DEFAULT NULL,
  `open_cash_drawer_when_printing_invoice` varchar(45) DEFAULT NULL,
  `when_clicking_on_item_in_pos` varchar(45) DEFAULT NULL,
  `is_rounding_enable` varchar(45) DEFAULT NULL,
  `attendance_type` varchar(45) DEFAULT NULL,
  `default_order_type` varchar(45) DEFAULT NULL,
  `is_loyalty_enable` varchar(45) DEFAULT NULL,
  `pre_or_post_payment` varchar(45) DEFAULT NULL,
  `minimum_point_to_redeem` varchar(45) DEFAULT NULL,
  `loyalty_rate` varchar(45) DEFAULT NULL,
  `split_bill` varchar(45) DEFAULT NULL,
  `place_order_tooltip` varchar(45) DEFAULT NULL,
  `food_menu_tooltip` varchar(45) DEFAULT NULL,
  `default_waiter` varchar(45) DEFAULT NULL,
  `default_payment` varchar(45) DEFAULT NULL,
  `invoice_logo` varchar(45) DEFAULT NULL,
  `language_manifesto` varchar(45) DEFAULT NULL,
  `collect_tax` varchar(45) DEFAULT NULL,
  `tax_title` varchar(45) DEFAULT NULL,
  `tax_registration_no` varchar(45) DEFAULT NULL,
  `tax_is_gst` varchar(45) DEFAULT NULL,
  `state_code` varchar(45) DEFAULT NULL,
  `saas_landing_page` tinyint(4) DEFAULT '1',
  `sos_enable_self_order` varchar(45) DEFAULT NULL,
  `receipt_printer_bill` varchar(45) DEFAULT NULL,
  `printing_bill` varchar(45) DEFAULT NULL,
  `print_server_url_bill` varchar(45) DEFAULT NULL,
  `printing_kot` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_companies`
--

LOCK TABLES `tbl_companies` WRITE;
/*!40000 ALTER TABLE `tbl_companies` DISABLE KEYS */;
INSERT INTO `tbl_companies` VALUES (1,'Jd',NULL,'{\"footer\": \"Your Footer Text\", \"site_name\": \"Jd System\", \"system_logo\": \"0ad0381dbd8a3441dfdabcb3007f1275.png\"}','Yes','Live','America/Bogota','sMmsJaSJVE',1,'$',NULL,'Cauca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'revhgbrev',NULL,NULL,NULL,NULL,NULL,0,'Yes','1','web_browser',NULL,'web_browser');
/*!40000 ALTER TABLE `tbl_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_address`
--

DROP TABLE IF EXISTS `tbl_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_status` varchar(45) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `is_active` (`is_active`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_address`
--

LOCK TABLES `tbl_customer_address` WRITE;
/*!40000 ALTER TABLE `tbl_customer_address` DISABLE KEYS */;
INSERT INTO `tbl_customer_address` VALUES (1,3,'Cr 81, 22d -253, Alameda la victoria Conjunto Residencial la bonguita, Torre 2 P4 APTO 4',1,'2024-11-23 00:24:26','2024-11-23 00:24:26','Live');
/*!40000 ALTER TABLE `tbl_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_due_receives`
--

DROP TABLE IF EXISTS `tbl_customer_due_receives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer_due_receives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `note` text,
  `payment_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_due_customer` (`customer_id`),
  KEY `idx_due_date` (`date`),
  CONSTRAINT `tbl_customer_due_receives_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`),
  CONSTRAINT `tbl_customer_due_receives_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_customer_due_receives_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_due_receives`
--

LOCK TABLES `tbl_customer_due_receives` WRITE;
/*!40000 ALTER TABLE `tbl_customer_due_receives` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_customer_due_receives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `del_status` varchar(10) DEFAULT 'Live',
  `company_id` int(11) DEFAULT NULL,
  `default_discount` varchar(45) DEFAULT NULL,
  `password_online_user` varchar(45) DEFAULT NULL,
  `gst_number` varchar(45) DEFAULT NULL,
  `same_or_diff_state` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `tbl_customer_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Nota, el autoincrement deberia iniciar en 2 , sino dara erorr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customers`
--

LOCK TABLES `tbl_customers` WRITE;
/*!40000 ALTER TABLE `tbl_customers` DISABLE KEYS */;
INSERT INTO `tbl_customers` VALUES (1,'Walk-in Customer','','','','Live',1,'','d41d8cd98f00b204e9800998ecf8427e','','NaN','1',NULL),(2,'Jose','','000000','Cr 81, 22d -253, Alameda la victoria Conjunto Residencial la bonguita, Torre 2 P4 APTO 4','Live',1,'','d41d8cd98f00b204e9800998ecf8427e','','NaN','1',NULL),(3,'Jose','','000000','Cr 81, 22d -253, Alameda la victoria Conjunto Residencial la bonguita, Torre 2 P4 APTO 4','Live',1,'','d41d8cd98f00b204e9800998ecf8427e','','NaN','1',NULL);
/*!40000 ALTER TABLE `tbl_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_daily_summary`
--

DROP TABLE IF EXISTS `tbl_daily_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_daily_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_sales` decimal(10,2) DEFAULT NULL,
  `total_purchases` decimal(10,2) DEFAULT NULL,
  `total_expenses` decimal(10,2) DEFAULT NULL,
  `total_waste` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `net_profit` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_daily_summary_date` (`date`),
  CONSTRAINT `tbl_daily_summary_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_daily_summary`
--

LOCK TABLES `tbl_daily_summary` WRITE;
/*!40000 ALTER TABLE `tbl_daily_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_daily_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_delivery_partners`
--

DROP TABLE IF EXISTS `tbl_delivery_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_delivery_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online_self_order_receiving_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tbl_delivery_partners_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_delivery_partners`
--

LOCK TABLES `tbl_delivery_partners` WRITE;
/*!40000 ALTER TABLE `tbl_delivery_partners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_delivery_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_denominations`
--

DROP TABLE IF EXISTS `tbl_denominations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_denominations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `denomination_company_idx` (`company_id`),
  KEY `denomination_status_idx` (`del_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_denominations`
--

LOCK TABLES `tbl_denominations` WRITE;
/*!40000 ALTER TABLE `tbl_denominations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_denominations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_domain_history`
--

DROP TABLE IF EXISTS `tbl_domain_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_domain_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `note` text,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `idx_domain_validation` (`domain`,`validation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_domain_history`
--

LOCK TABLES `tbl_domain_history` WRITE;
/*!40000 ALTER TABLE `tbl_domain_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_domain_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee_shifts`
--

DROP TABLE IF EXISTS `tbl_employee_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employee_shifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `idx_employee_shift` (`outlet_id`),
  CONSTRAINT `tbl_employee_shifts_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_shifts`
--

LOCK TABLES `tbl_employee_shifts` WRITE;
/*!40000 ALTER TABLE `tbl_employee_shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employee_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expense_items`
--

DROP TABLE IF EXISTS `tbl_expense_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_expense_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category name of expense',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User who created/updated',
  `company_id` int(11) NOT NULL,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_expense_item_company` (`name`,`company_id`,`del_status`),
  KEY `expense_item_company_idx` (`company_id`),
  KEY `expense_item_user_idx` (`user_id`),
  KEY `expense_item_status_idx` (`del_status`),
  CONSTRAINT `fk_expense_item_company` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_item_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expense_items`
--

LOCK TABLES `tbl_expense_items` WRITE;
/*!40000 ALTER TABLE `tbl_expense_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_expense_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expenses`
--

DROP TABLE IF EXISTS `tbl_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT 'tbl_expense_items.id',
  `employee_id` int(11) NOT NULL COMMENT 'tbl_users.id',
  `note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Added by user',
  `outlet_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL COMMENT 'tbl_payment_methods.id',
  `added_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `expense_date_idx` (`date`),
  KEY `expense_outlet_idx` (`outlet_id`),
  KEY `expense_payment_method_idx` (`payment_id`),
  KEY `expense_employee_idx` (`employee_id`),
  KEY `expense_category_idx` (`category_id`),
  KEY `expense_status_idx` (`del_status`),
  KEY `fk_expense_user` (`user_id`),
  CONSTRAINT `fk_expense_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_expense_items` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_employee` FOREIGN KEY (`employee_id`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_outlet` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_payment` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment_methods` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expenses`
--

LOCK TABLES `tbl_expenses` WRITE;
/*!40000 ALTER TABLE `tbl_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_food_menu_categories`
--

DROP TABLE IF EXISTS `tbl_food_menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_food_menu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` text,
  `order_by` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_food_menu_categories_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_food_menu_categories`
--

LOCK TABLES `tbl_food_menu_categories` WRITE;
/*!40000 ALTER TABLE `tbl_food_menu_categories` DISABLE KEYS */;
INSERT INTO `tbl_food_menu_categories` VALUES (1,'Comida','',1,1,'Live',1),(2,'Bebida','',2,1,'Live',1),(3,'CAT01','',NULL,1,'Live',1);
/*!40000 ALTER TABLE `tbl_food_menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_food_menus`
--

DROP TABLE IF EXISTS `tbl_food_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_food_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `tax_information` text,
  `product_type` tinyint(4) DEFAULT NULL,
  `combo_ids` text,
  `unit_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `veg_item` varchar(45) DEFAULT NULL,
  `beverage_item` varchar(45) DEFAULT NULL,
  `sale_price_take_away` varchar(45) DEFAULT NULL,
  `sale_price_delivery` varchar(45) DEFAULT NULL,
  `total_cost` varchar(45) DEFAULT NULL,
  `loyalty_point` varchar(45) DEFAULT NULL,
  `purchase_price` varchar(45) DEFAULT NULL,
  `alert_quantity` varchar(45) DEFAULT NULL,
  `ing_category_id` varchar(45) DEFAULT NULL,
  `tax_string` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `delivery_price` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `is_variation` tinyint(4) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `vr_ingr` varchar(45) DEFAULT NULL,
  `vr_del_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `unit_id` (`unit_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_food_menus_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_food_menu_categories` (`id`),
  CONSTRAINT `tbl_food_menus_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `tbl_units` (`id`),
  CONSTRAINT `tbl_food_menus_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_food_menus_ibfk_4` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_food_menus`
--

LOCK TABLES `tbl_food_menus` WRITE;
/*!40000 ALTER TABLE `tbl_food_menus` DISABLE KEYS */;
INSERT INTO `tbl_food_menus` VALUES (1,'001','Hamburguesa',1,'',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','8e6dfa86af3b9ca4b15915b7ca7cc0c1.png',NULL,0,NULL,NULL),(2,'001','Hamburguesa',1,'',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','acf49353d370e81271e098abc6595bba.png',NULL,0,NULL,NULL),(3,'001','Hamburguesa',1,'',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','9ae9c7267894d2c6406883a8d057f7f6.png',NULL,0,NULL,NULL),(4,'001','Hamburguesa',1,'',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','caf72e0df0e1b954bcb3464d319036ce.png',NULL,0,NULL,NULL),(5,'001','Hamburguesa',1,'',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','6ec0d14886239e7049e7487c649ef72e.png',0,0,NULL,NULL),(6,'001','Hamburguesa',1,'',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','b6d0d86928115c4ace164977ce33e470.png',0,0,NULL,NULL),(7,'001','Hamburguesa',1,'',1000.00,'[]',1,'',NULL,'Live',NULL,1,'Veg No','Bev No','1060','1100','0.00','','','','','','1','[]','0b286a7dacd569b491d8e8fb5e60a44d.png',1,0,NULL,NULL),(8,'001','Hamburguesa',1,'',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','4b4cca1b422cc36801c158b289395607.png',0,0,NULL,NULL),(9,'001','Hamburguesa',1,'',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','a96f4abf75bc1abcab9c626bce040507.png',0,0,NULL,NULL),(10,'010s','Testing',2,'internacio',1000.00,'[]',2,'5,',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','fdfcd72ceeba71f1393406d6fe901a79.png',0,0,NULL,NULL),(11,'011','Testing',3,'internacio',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','097943e69b6f93eb13510481ad497cf0.png',0,0,NULL,NULL),(12,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','586d206f8bb25dd785f9a1474c8914f3.png',NULL,0,NULL,NULL),(13,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','bce5e58dd54b5f326e27df28b06a605b.png',NULL,0,NULL,NULL),(14,'011','Milanesa',3,'internacio',1000.00,'[]',1,'',NULL,'Live',NULL,1,'Veg No','Bev No','1060','1100','10.00','','','','','','1','[]','21050fe5d4ff227e4e43845ef68b00db.png',1,0,NULL,NULL),(15,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','1ca407aad9252e4f57b50fc3206a0074.png',NULL,0,NULL,NULL),(16,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','4cf6fcf0296386be2c210f948776b935.png',NULL,0,NULL,NULL),(17,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','8e2d9081c05c68ce486133991865f6a1.png',NULL,0,NULL,NULL),(18,'011','Testing',3,'internacio',1000.00,'[]',1,NULL,NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','250e8da42194c052726bafc9891ed6fc.png',NULL,0,NULL,NULL),(19,'011','Testing',3,'internacio',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','b88192bdd1fc74204f0e26fdb3094672.png',0,0,NULL,NULL),(20,'0200','Testing',2,'internacio',1000.00,'[]',1,'',NULL,'Deleted',NULL,1,'Veg No','Beverage No','1060','1100','','','','','','','1','[]','3d4612287119daea48efd4ceb7addafe.png',0,0,NULL,NULL),(21,'001-01','Hamburguesa queso extra',1,'',1000.00,'[]',NULL,NULL,NULL,'Deleted',NULL,1,'Veg No','Bev No','1060','1100','10.00','',NULL,NULL,NULL,'','1','{\"index_\":\"\"}',NULL,NULL,7,'Zanahoria||1||Ingrdiente Unit||1||10||10.00',''),(22,'001-01','Hamburguesa queso extra',1,'',1000.00,'[]',NULL,NULL,NULL,'Live',NULL,1,'Veg No','Bev No','1060','1100','10.00','',NULL,NULL,NULL,'','1','{\"index_\":\"\"}',NULL,NULL,7,'Zanahoria||1||Ingrdiente Unit||1||10||10.00',''),(23,'011-01','Pollo Extra',3,'internacio',1000.00,'[]',NULL,NULL,NULL,'Deleted',NULL,1,'Veg No','Bev No','1060','1100','10.00','',NULL,NULL,NULL,'','1','{\"index_\":\"\"}',NULL,NULL,14,'Zanahoria||1||Ingrdiente Unit||1.00||10.00||1',''),(24,'011-01','Pollo Extra',3,'internacio',1000.00,'[]',NULL,NULL,NULL,'Live',NULL,1,'Veg No','Bev No','1060','1100','10.00','',NULL,NULL,NULL,'','1','[]','',NULL,14,'Zanahoria||1||Ingrdiente Unit||1.00||10.00||1','');
/*!40000 ALTER TABLE `tbl_food_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_food_menus_ingredients`
--

DROP TABLE IF EXISTS `tbl_food_menus_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_food_menus_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `company_id` int(11) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_menu_id` (`food_menu_id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_food_menus_ingredients_ibfk_1` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`),
  CONSTRAINT `tbl_food_menus_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_food_menus_ingredients_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_food_menus_ingredients`
--

LOCK TABLES `tbl_food_menus_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_food_menus_ingredients` DISABLE KEYS */;
INSERT INTO `tbl_food_menus_ingredients` VALUES (3,21,1,1.00,10.00,'Live',1,10.00,1),(4,22,1,1.00,10.00,'Live',1,10.00,1),(6,23,1,1.00,10.00,'Live',1,10.00,1),(7,14,1,1.00,10.00,'Live',1,10.00,1),(8,24,1,1.00,10.00,'Live',1,10.00,1);
/*!40000 ALTER TABLE `tbl_food_menus_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_food_menus_modifiers`
--

DROP TABLE IF EXISTS `tbl_food_menus_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_food_menus_modifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(11) NOT NULL,
  `modifier_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `menu_modifier_company_idx` (`company_id`),
  KEY `menu_modifier_status_idx` (`del_status`),
  KEY `fk_menu_modifier_menu_idx` (`food_menu_id`),
  KEY `fk_menu_modifier_modifier_idx` (`modifier_id`),
  CONSTRAINT `fk_menu_modifier_modifier` FOREIGN KEY (`modifier_id`) REFERENCES `tbl_modifiers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_food_menus_modifiers`
--

LOCK TABLES `tbl_food_menus_modifiers` WRITE;
/*!40000 ALTER TABLE `tbl_food_menus_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_food_menus_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holds`
--

DROP TABLE IF EXISTS `tbl_holds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holds` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) DEFAULT '0',
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `delivery_partner_id` int(11) DEFAULT NULL,
  `charge_type` varchar(45) DEFAULT NULL,
  `delivery_charge_actual_charge` varchar(45) DEFAULT NULL,
  `tips_amount` varchar(45) DEFAULT NULL,
  `tips_amount_actual_charge` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holds`
--

LOCK TABLES `tbl_holds` WRITE;
/*!40000 ALTER TABLE `tbl_holds` DISABLE KEYS */;
INSERT INTO `tbl_holds` VALUES (1,'1','1',1,2000.00,NULL,NULL,NULL,NULL,NULL,0.00,2000.00,NULL,0,0.00,2000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:17:57','2024-11-22 07:1',1,0,1,1,'[]',0,'Live',0,'service','','',''),(2,'','2',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:18:31','2024-11-22 07:1',1,0,1,1,'[]',1,'Live',0,'service','','',''),(3,'1','3',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:46:46','2024-11-22 07:4',1,0,1,1,'[]',1,'Live',0,'service','','',''),(4,'1','3',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:46:56','2024-11-22 07:4',1,0,1,1,'[]',0,'Live',0,'service','','',''),(5,'1','3',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:47:58','2024-11-22 07:4',1,0,1,1,'[]',0,'Live',0,'service','','',''),(6,'1','3',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 00:48:04','2024-11-22 07:4',1,0,1,1,'[]',0,'Live',0,'service','','',''),(7,'','7',1,2000.00,NULL,NULL,NULL,NULL,NULL,0.00,2000.00,NULL,0,0.00,2000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-22','2024-11-23 01:45:46','2024-11-22 08:4',1,0,1,1,'[]',1,'Live',0,'service','','',''),(8,'1','8',1,1000.00,NULL,NULL,NULL,NULL,NULL,0.00,1000.00,NULL,0,0.00,1000.00,0.00,0.00,0.00,'','fixed',NULL,'2024-11-23','2024-11-24 03:39:32','2024-11-23 10:3',1,0,1,1,'[]',1,'Live',0,'service','','','');
/*!40000 ALTER TABLE `tbl_holds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holds_details`
--

DROP TABLE IF EXISTS `tbl_holds_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holds_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holds_details`
--

LOCK TABLES `tbl_holds_details` WRITE;
/*!40000 ALTER TABLE `tbl_holds_details` DISABLE KEYS */;
INSERT INTO `tbl_holds_details` VALUES (1,22,'Hamburguesa Hamburguesa queso extra',2,2000.00,2000.00,1000.00,0.00,'[]','','fixed','',0.00,1,1,1,'Live'),(2,24,'Milanesa Pollo Extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,2,1,1,'Live'),(3,22,'Hamburguesa Hamburguesa queso extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,3,1,1,'Live'),(4,22,'Hamburguesa Hamburguesa queso extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,4,1,1,'Live'),(5,22,'Hamburguesa Hamburguesa queso extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,5,1,1,'Live'),(6,22,'Hamburguesa Hamburguesa queso extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,6,1,1,'Live'),(7,22,'Hamburguesa Hamburguesa queso extra',2,2000.00,2000.00,1000.00,0.00,'[]','','fixed','',0.00,7,1,1,'Live'),(8,22,'Hamburguesa Hamburguesa queso extra',1,1000.00,1000.00,1000.00,0.00,'[]','','fixed','',0.00,8,1,1,'Live');
/*!40000 ALTER TABLE `tbl_holds_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holds_details_modifiers`
--

DROP TABLE IF EXISTS `tbl_holds_details_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `holds_id` int(15) NOT NULL,
  `holds_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holds_details_modifiers`
--

LOCK TABLES `tbl_holds_details_modifiers` WRITE;
/*!40000 ALTER TABLE `tbl_holds_details_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_holds_details_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holds_table`
--

DROP TABLE IF EXISTS `tbl_holds_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holds_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persons` int(11) DEFAULT NULL,
  `booking_time` datetime DEFAULT NULL,
  `hold_id` int(11) DEFAULT NULL,
  `hold_no` varchar(30) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `hold_id` (`hold_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `table_id` (`table_id`),
  CONSTRAINT `tbl_holds_table_ibfk_1` FOREIGN KEY (`hold_id`) REFERENCES `tbl_holds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_holds_table_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_holds_table_ibfk_3` FOREIGN KEY (`table_id`) REFERENCES `tbl_tables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holds_table`
--

LOCK TABLES `tbl_holds_table` WRITE;
/*!40000 ALTER TABLE `tbl_holds_table` DISABLE KEYS */;
INSERT INTO `tbl_holds_table` VALUES (1,1,'2024-11-22 19:47:58',5,'3',1,1,'2024-11-23 00:47:58','2024-11-23 00:47:58','Live'),(2,1,'2024-11-22 19:48:04',6,'3',1,1,'2024-11-23 00:48:04','2024-11-23 00:48:04','Live');
/*!40000 ALTER TABLE `tbl_holds_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredient_categories`
--

DROP TABLE IF EXISTS `tbl_ingredient_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ingredient_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_ingredient_categories_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredient_categories`
--

LOCK TABLES `tbl_ingredient_categories` WRITE;
/*!40000 ALTER TABLE `tbl_ingredient_categories` DISABLE KEYS */;
INSERT INTO `tbl_ingredient_categories` VALUES (1,'Sasonador','',1,1,'Live'),(2,'Vegetales','',1,1,'Live');
/*!40000 ALTER TABLE `tbl_ingredient_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredients`
--

DROP TABLE IF EXISTS `tbl_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `alert_quantity` decimal(10,2) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `conversion_rate` decimal(10,2) DEFAULT NULL,
  `current_stock` decimal(10,2) DEFAULT '0.00',
  `del_status` varchar(10) DEFAULT 'Live',
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `consumption_unit_cost` decimal(8,2) DEFAULT NULL,
  `ing_type` varchar(45) DEFAULT NULL,
  `average_consumption_per_unit` varchar(45) DEFAULT NULL,
  `is_direct_food` tinyint(4) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `idx_ingredient_category` (`category_id`),
  KEY `idx_ingredient_outlet` (`outlet_id`),
  KEY `idx_ingredient_company` (`company_id`),
  CONSTRAINT `tbl_ingredients_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_ingredient_categories` (`id`),
  CONSTRAINT `tbl_ingredients_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `tbl_units` (`id`),
  CONSTRAINT `tbl_ingredients_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_ingredients_ibfk_4` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredients`
--

LOCK TABLES `tbl_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_ingredients` DISABLE KEYS */;
INSERT INTO `tbl_ingredients` VALUES (1,'Zanahoria','001',2,100.00,50.00,1,1,1.00,0.00,'Live',1,NULL,1,100.00,'Plain Ingredient','100.00',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory_adjustment`
--

DROP TABLE IF EXISTS `tbl_inventory_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventory_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_inventory_adjustment_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_inventory_adjustment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory_adjustment`
--

LOCK TABLES `tbl_inventory_adjustment` WRITE;
/*!40000 ALTER TABLE `tbl_inventory_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventory_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory_adjustment_ingredients`
--

DROP TABLE IF EXISTS `tbl_inventory_adjustment_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption_amount` decimal(10,2) DEFAULT NULL,
  `consumption_status` enum('Plus','Minus') DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_inventory_adjustment_ingredients_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_inventory_adjustment_ingredients_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory_adjustment_ingredients`
--

LOCK TABLES `tbl_inventory_adjustment_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_inventory_adjustment_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventory_adjustment_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen_categories`
--

DROP TABLE IF EXISTS `tbl_kitchen_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `kitchen_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `kitchen_id` (`kitchen_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_kitchen_category` (`cat_id`,`kitchen_id`),
  CONSTRAINT `tbl_kitchen_categories_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_food_menu_categories` (`id`),
  CONSTRAINT `tbl_kitchen_categories_ibfk_2` FOREIGN KEY (`kitchen_id`) REFERENCES `tbl_kitchens` (`id`),
  CONSTRAINT `tbl_kitchen_categories_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen_categories`
--

LOCK TABLES `tbl_kitchen_categories` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen_categories` DISABLE KEYS */;
INSERT INTO `tbl_kitchen_categories` VALUES (1,1,1,1,'Live'),(2,2,1,1,'Live'),(3,3,1,1,'Live');
/*!40000 ALTER TABLE `tbl_kitchen_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen_sales`
--

DROP TABLE IF EXISTS `tbl_kitchen_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_no` varchar(30) DEFAULT NULL,
  `order_status` tinyint(4) DEFAULT '1',
  `sale_date` date DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `cooking_start_time` datetime DEFAULT NULL,
  `cooking_done_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `user_id` int(11) DEFAULT NULL,
  `order_receiving_id` int(11) DEFAULT NULL,
  `order_receiving_id_admin` int(11) DEFAULT NULL,
  `is_accept` tinyint(4) DEFAULT '1',
  `is_self_order` varchar(10) DEFAULT 'No',
  `is_online_order` varchar(10) DEFAULT NULL,
  `online_self_order_receiving_id` int(11) DEFAULT NULL,
  `self_order_content` mediumtext,
  `del_address` mediumtext,
  `delivery_partner_id` varchar(50) DEFAULT NULL,
  `pull_update` int(11) DEFAULT NULL,
  `pull_update_admin` int(11) DEFAULT NULL,
  `pull_update_cashier` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `is_update_sender` tinyint(4) DEFAULT NULL,
  `is_update_receiver_admin` tinyint(4) DEFAULT NULL,
  `is_delete_sender` tinyint(4) DEFAULT NULL,
  `is_delete_receiver_admin` tinyint(4) DEFAULT NULL,
  `self_order_ran_code` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `is_update_receiver` tinyint(4) DEFAULT NULL,
  `is_delete_receiver` tinyint(4) DEFAULT NULL,
  `rounding_amount_hidden` varchar(50) DEFAULT NULL,
  `previous_due_tmp` varchar(50) DEFAULT NULL,
  `total_items` varchar(50) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT '0.00',
  `charge_type` varchar(50) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT '0.00',
  `total_payable` decimal(10,2) DEFAULT '0.00',
  `total_item_discount_amount` decimal(10,2) DEFAULT '0.00',
  `sub_total_with_discount` decimal(10,2) DEFAULT '0.00',
  `sub_total_discount_amount` decimal(10,2) DEFAULT '0.00',
  `total_discount_amount` decimal(10,2) DEFAULT '0.00',
  `delivery_charge` decimal(10,2) DEFAULT '0.00',
  `delivery_charge_actual_charge` decimal(10,2) DEFAULT '0.00',
  `tips_amount` decimal(10,2) DEFAULT '0.00',
  `tips_amount_actual_charge` decimal(10,2) DEFAULT '0.00',
  `sub_total_discount_value` varchar(20) DEFAULT NULL,
  `sub_total_discount_type` varchar(20) DEFAULT NULL,
  `orders_table_text` mediumtext,
  `waiter_id` int(11) DEFAULT NULL,
  `is_pickup_sale` tinyint(1) DEFAULT '0',
  `sale_vat_objects` mediumtext,
  `order_type` tinyint(4) DEFAULT NULL,
  `random_code` varchar(50) DEFAULT NULL,
  `modified` varchar(45) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `is_kitchen_bell` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_kitchen_sales_date` (`sale_date`),
  KEY `customer_id` (`customer_id`),
  KEY `sale_no` (`sale_no`),
  KEY `order_status` (`order_status`),
  CONSTRAINT `tbl_kitchen_sales_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_kitchen_sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_kitchen_sales_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen_sales`
--

LOCK TABLES `tbl_kitchen_sales` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen_sales` DISABLE KEYS */;
INSERT INTO `tbl_kitchen_sales` VALUES (65,'aLI241124-016',1,'2024-11-24','2024-11-24 18:43:28','18:43:28',NULL,NULL,1,'Live',2,0,1,2,'Yes',NULL,0,'{\"sale_no\":\"aLI241124-016\",\"hidden_given_amount\":\"0\",\"hidden_change_amount\":\"0\",\"random_code\":\"YzQVWgvm7OcAwMd\",\"token_number\":\"\",\"customer_id\":\"1\",\"customer_address\":\"\",\"customer_gst_number\":\"\",\"status\":\"Pending\",\"user_name\":\"\",\"user_id\":\"2\",\"customer_name\":\"Walk-in Customer \",\"delivery_partner_id\":\"\",\"self_order_table_id\":\"1\",\"self_order_table_person\":\"4\",\"rounding_amount_hidden\":\"0\",\"previous_due_tmp\":\"0\",\"waiter_id\":\"3\",\"waiter_name\":\"undefined\",\"open_invoice_date_hidden\":\"2024-11-24\",\"total_items_in_cart\":\"1\",\"total_items_in_cart_qty\":\"1\",\"sub_total\":\"1000\",\"sale_date\":\"2024-11-24\",\"date_time\":\"2024-11-24 18:43:28\",\"order_time\":\"18:43:28\",\"charge_type\":\"service\",\"total_vat\":\"0\",\"total_payable\":\"1000\",\"total_item_discount_amount\":\"0\",\"sub_total_with_discount\":\"1000\",\"sub_total_discount_amount\":\"0\",\"total_discount_amount\":\"0\",\"delivery_charge\":\"\",\"tips_amount\":\"\",\"delivery_charge_actual_charge\":\"\",\"tips_amount_actual_charge\":\"0\",\"sub_total_discount_value\":\"\",\"sub_total_discount_type\":\"fixed\",\"order_type\":\"1\",\"order_status\":\"1\",\"sale_vat_objects\":[],\"orders_table\":[],\"total_orders_table\":\"4\",\"orders_table_text\":\"Mesa 1\",\"items\":[{\"food_menu_id\":\"22\", \"is_print\":\"1\", \"is_kot_print\":\"1\", \"menu_name\":\"Hamburguesa Hamburguesa queso extra\", \"kitchen_id\":\"1\", \"kitchen_name\":\"Cicinero 1\", \"is_free\":\"0\", \"rounding_amount_hidden\":\"0\", \"item_vat\":[],\"menu_discount_value\":\"\",\"discount_type\":\"fixed\",\"menu_price_without_discount\":\"1000\",\"menu_unit_price\":\"1000\",\"qty\":\"1\",\"tmp_qty\":\"undefined\",\"p_qty\":\"undefined\",\"item_previous_id\":\"\",\"item_cooking_done_time\":\"\",\"item_cooking_start_time\":\"\",\"item_cooking_status\":\"\",\"item_type\":\"\",\"menu_price_with_discount\":\"1000\",\"item_discount_amount\":\"0\",\"modifiers_id\":\"\", \"modifiers_name\":\"\", \"modifiers_price\":\"\", \"modifier_vat\":\"\",\"item_note\":\"\",\"menu_combo_items\":\"\"}]}','','',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'6PCXQH4EB1',1,NULL,NULL,'','','1',1000.00,'service',0.00,1000.00,0.00,1000.00,0.00,0.00,0.00,0.00,0.00,0.00,'','fixed','Mesa 1',3,1,'[]',1,'YzQVWgvm7OcAwMd',NULL,NULL,NULL),(66,'dFN241124-017',1,'2024-11-24','2024-11-24 18:44:38','18:44:38',NULL,NULL,1,'Live',2,0,1,2,'Yes',NULL,0,'{\"sale_no\":\"dFN241124-017\",\"hidden_given_amount\":\"0\",\"hidden_change_amount\":\"0\",\"random_code\":\"6R7lsPCFI2VPOiE\",\"token_number\":\"\",\"customer_id\":\"1\",\"customer_address\":\"\",\"customer_gst_number\":\"\",\"status\":\"Pending\",\"user_name\":\"\",\"user_id\":\"2\",\"customer_name\":\"Walk-in Customer \",\"delivery_partner_id\":\"\",\"self_order_table_id\":\"1\",\"self_order_table_person\":\"4\",\"rounding_amount_hidden\":\"0\",\"previous_due_tmp\":\"0\",\"waiter_id\":\"3\",\"waiter_name\":\"undefined\",\"open_invoice_date_hidden\":\"2024-11-24\",\"total_items_in_cart\":\"1\",\"total_items_in_cart_qty\":\"5\",\"sub_total\":\"5000\",\"sale_date\":\"2024-11-24\",\"date_time\":\"2024-11-24 18:44:38\",\"order_time\":\"18:44:38\",\"charge_type\":\"service\",\"total_vat\":\"0\",\"total_payable\":\"5000\",\"total_item_discount_amount\":\"0\",\"sub_total_with_discount\":\"5000\",\"sub_total_discount_amount\":\"0\",\"total_discount_amount\":\"0\",\"delivery_charge\":\"\",\"tips_amount\":\"\",\"delivery_charge_actual_charge\":\"\",\"tips_amount_actual_charge\":\"0\",\"sub_total_discount_value\":\"\",\"sub_total_discount_type\":\"fixed\",\"order_type\":\"1\",\"order_status\":\"1\",\"sale_vat_objects\":[],\"orders_table\":[],\"total_orders_table\":\"4\",\"orders_table_text\":\"Mesa 1\",\"items\":[{\"food_menu_id\":\"22\", \"is_print\":\"1\", \"is_kot_print\":\"1\", \"menu_name\":\"Hamburguesa Hamburguesa queso extra\", \"kitchen_id\":\"1\", \"kitchen_name\":\"Cicinero 1\", \"is_free\":\"0\", \"rounding_amount_hidden\":\"0\", \"item_vat\":[],\"menu_discount_value\":\"\",\"discount_type\":\"fixed\",\"menu_price_without_discount\":\"5000\",\"menu_unit_price\":\"1000\",\"qty\":\"5\",\"tmp_qty\":\"undefined\",\"p_qty\":\"undefined\",\"item_previous_id\":\"\",\"item_cooking_done_time\":\"\",\"item_cooking_start_time\":\"\",\"item_cooking_status\":\"\",\"item_type\":\"\",\"menu_price_with_discount\":\"5000\",\"item_discount_amount\":\"0\",\"modifiers_id\":\"\", \"modifiers_name\":\"\", \"modifiers_price\":\"\", \"modifier_vat\":\"\",\"item_note\":\"\",\"menu_combo_items\":\"\"}]}','','',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'6PCXQH4EB1',1,NULL,NULL,'','','1',5000.00,'service',0.00,5000.00,0.00,5000.00,0.00,0.00,0.00,0.00,0.00,0.00,'','fixed','Mesa 1',3,1,'[]',1,'6R7lsPCFI2VPOiE',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_kitchen_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen_sales_details`
--

DROP TABLE IF EXISTS `tbl_kitchen_sales_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen_sales_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `tmp_qty` int(11) DEFAULT NULL,
  `menu_combo_items` text,
  `menu_note` text,
  `is_print` tinyint(4) DEFAULT '0',
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `is_free_item` tinyint(4) DEFAULT NULL,
  `menu_price_without_discount` decimal(8,2) DEFAULT NULL,
  `menu_price_with_discount` decimal(8,2) DEFAULT NULL,
  `menu_unit_price` decimal(8,2) DEFAULT NULL,
  `menu_taxes` varchar(45) DEFAULT NULL,
  `menu_discount_value` varchar(45) DEFAULT NULL,
  `discount_type` varchar(45) DEFAULT NULL,
  `discount_amount` decimal(8,2) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `cooking_status` varchar(45) DEFAULT NULL,
  `cooking_start_time` varchar(45) DEFAULT NULL,
  `cooking_done_time` varchar(45) DEFAULT NULL,
  `previous_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `loyalty_point_earn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_menu_id` (`food_menu_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `tbl_kitchen_sales_details_ibfk_1` (`sales_id`),
  CONSTRAINT `tbl_kitchen_sales_details_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `tbl_kitchen_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_kitchen_sales_details_ibfk_2` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`),
  CONSTRAINT `tbl_kitchen_sales_details_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen_sales_details`
--

LOCK TABLES `tbl_kitchen_sales_details` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen_sales_details` DISABLE KEYS */;
INSERT INTO `tbl_kitchen_sales_details` VALUES (34,65,22,'Hamburguesa Hamburguesa queso extra',1,1,'','',0,1,'Live',0,1000.00,1000.00,1000.00,'[]','','fixed',0.00,'Kitchen Item','New','0000-00-00 00:00:00','0000-00-00 00:00:00',34,2,NULL),(35,66,22,'Hamburguesa Hamburguesa queso extra',5,5,'','',0,1,'Live',0,5000.00,5000.00,1000.00,'[]','','fixed',0.00,'Kitchen Item','New','0000-00-00 00:00:00','0000-00-00 00:00:00',35,2,NULL);
/*!40000 ALTER TABLE `tbl_kitchen_sales_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen_sales_details_modifiers`
--

DROP TABLE IF EXISTS `tbl_kitchen_sales_details_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen_sales_details_modifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `sales_details_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `modifier_price` decimal(10,2) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `sales_id` (`sales_id`),
  KEY `sales_details_id` (`sales_details_id`),
  KEY `modifier_id` (`modifier_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_kitchen_sales_details_modifiers_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `tbl_kitchen_sales` (`id`),
  CONSTRAINT `tbl_kitchen_sales_details_modifiers_ibfk_2` FOREIGN KEY (`sales_details_id`) REFERENCES `tbl_kitchen_sales_details` (`id`),
  CONSTRAINT `tbl_kitchen_sales_details_modifiers_ibfk_3` FOREIGN KEY (`modifier_id`) REFERENCES `tbl_modifiers` (`id`),
  CONSTRAINT `tbl_kitchen_sales_details_modifiers_ibfk_4` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen_sales_details_modifiers`
--

LOCK TABLES `tbl_kitchen_sales_details_modifiers` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen_sales_details_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_kitchen_sales_details_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchens`
--

DROP TABLE IF EXISTS `tbl_kitchens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `printer_id` int(11) DEFAULT NULL,
  `print_server_url` varchar(250) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_kitchens_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchens`
--

LOCK TABLES `tbl_kitchens` WRITE;
/*!40000 ALTER TABLE `tbl_kitchens` DISABLE KEYS */;
INSERT INTO `tbl_kitchens` VALUES (1,'Cicinero 1',1,1,NULL,'Live',1);
/*!40000 ALTER TABLE `tbl_kitchens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_main_modules`
--

DROP TABLE IF EXISTS `tbl_main_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_main_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Module name',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Icon class for module',
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'URL friendly name',
  `order_by` int(11) DEFAULT '0' COMMENT 'Display order',
  `active_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_module_name` (`module_name`,`del_status`),
  KEY `module_status_idx` (`active_status`),
  KEY `module_del_status_idx` (`del_status`),
  KEY `module_order_idx` (`order_by`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_main_modules`
--

LOCK TABLES `tbl_main_modules` WRITE;
/*!40000 ALTER TABLE `tbl_main_modules` DISABLE KEYS */;
INSERT INTO `tbl_main_modules` VALUES (1,'account_user','Account and User','Manage user accounts, roles, and security settings','fas fa-user-shield','account-and-user',1,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:19:32'),(2,'item','Item','Manage food items, ingredients, and menu categories','fas fa-utensils','item',2,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(3,'report','Report','Access various system reports and analytics','fas fa-chart-bar','report',3,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(4,'expense','Expense','Manage expenses and expense categories','fas fa-money-bill-wave','expense',4,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(5,'sale','Sale','Manage sales transactions and customers','fas fa-shopping-cart','sale',5,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(6,'purchase','Purchase','Manage purchases, production, and suppliers','fas fa-truck','purchase',6,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(7,'panel','Panel','POS system and kitchen management','fas fa-desktop','panel',7,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(8,'settings','Settings','System configuration and preferences','fas fa-cogs','settings',8,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28'),(9,'common_menu','Common Menu','General operations and utilities','fas fa-bars','common-menu',9,'Active','Live','2024-11-22 05:27:05','2024-11-22 13:24:28');
/*!40000 ALTER TABLE `tbl_main_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu_access_logs`
--

DROP TABLE IF EXISTS `tbl_menu_access_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_access_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_menu_access_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_menu_access_logs_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu_access_logs`
--

LOCK TABLES `tbl_menu_access_logs` WRITE;
/*!40000 ALTER TABLE `tbl_menu_access_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menu_access_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu_categories`
--

DROP TABLE IF EXISTS `tbl_menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `parent_id` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_menu_categories_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu_categories`
--

LOCK TABLES `tbl_menu_categories` WRITE;
/*!40000 ALTER TABLE `tbl_menu_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu_combo_items`
--

DROP TABLE IF EXISTS `tbl_menu_combo_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_menu_id` int(11) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `food_menu_id` (`food_menu_id`),
  KEY `idx_menu_combo` (`combo_menu_id`),
  CONSTRAINT `tbl_menu_combo_items_ibfk_1` FOREIGN KEY (`combo_menu_id`) REFERENCES `tbl_food_menus` (`id`),
  CONSTRAINT `tbl_menu_combo_items_ibfk_2` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu_combo_items`
--

LOCK TABLES `tbl_menu_combo_items` WRITE;
/*!40000 ALTER TABLE `tbl_menu_combo_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menu_combo_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modifier_ingredients`
--

DROP TABLE IF EXISTS `tbl_modifier_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modifier_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `modifier_id` (`modifier_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `tbl_modifier_ingredients_ibfk_1` FOREIGN KEY (`modifier_id`) REFERENCES `tbl_modifiers` (`id`),
  CONSTRAINT `tbl_modifier_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modifier_ingredients`
--

LOCK TABLES `tbl_modifier_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_modifier_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_modifier_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modifiers`
--

DROP TABLE IF EXISTS `tbl_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text,
  `tax_information` text,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_modifiers_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modifiers`
--

LOCK TABLES `tbl_modifiers` WRITE;
/*!40000 ALTER TABLE `tbl_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_multiple_currencies`
--

DROP TABLE IF EXISTS `tbl_multiple_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_multiple_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Currency code/symbol',
  `conversion_rate` decimal(10,5) NOT NULL COMMENT 'Exchange rate relative to base currency',
  `company_id` int(11) NOT NULL,
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_currency_company` (`currency`,`company_id`,`del_status`),
  KEY `currency_company_idx` (`company_id`),
  KEY `currency_status_idx` (`del_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_multiple_currencies`
--

LOCK TABLES `tbl_multiple_currencies` WRITE;
/*!40000 ALTER TABLE `tbl_multiple_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_multiple_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notification_bar_kitchen_panel`
--

DROP TABLE IF EXISTS `tbl_notification_bar_kitchen_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` text,
  `kitchen_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `kitchen_id` (`kitchen_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_notification_bar_kitchen_panel_ibfk_1` FOREIGN KEY (`kitchen_id`) REFERENCES `tbl_kitchens` (`id`),
  CONSTRAINT `tbl_notification_bar_kitchen_panel_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notification_bar_kitchen_panel`
--

LOCK TABLES `tbl_notification_bar_kitchen_panel` WRITE;
/*!40000 ALTER TABLE `tbl_notification_bar_kitchen_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notification_bar_kitchen_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notifications`
--

DROP TABLE IF EXISTS `tbl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `message` text,
  `waiter_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `notification` varchar(450) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `waiter_id` (`waiter_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_notifications_ibfk_1` FOREIGN KEY (`waiter_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_notifications_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notifications`
--

LOCK TABLES `tbl_notifications` WRITE;
/*!40000 ALTER TABLE `tbl_notifications` DISABLE KEYS */;
INSERT INTO `tbl_notifications` VALUES (17,NULL,NULL,3,1,0,NULL,'Live','a new self order has been placed, Order Number is: aLI241124-016',65),(18,NULL,NULL,3,1,0,NULL,'Live','a new self order has been placed, Order Number is: dFN241124-017',66);
/*!40000 ALTER TABLE `tbl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orders_table`
--

DROP TABLE IF EXISTS `tbl_orders_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_orders_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persons` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `booking_time` varchar(45) DEFAULT NULL,
  `sale_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table_id` (`table_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `sale_id` (`outlet_id`),
  CONSTRAINT `tbl_orders_table_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `tbl_tables` (`id`),
  CONSTRAINT `tbl_orders_table_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orders_table`
--

LOCK TABLES `tbl_orders_table` WRITE;
/*!40000 ALTER TABLE `tbl_orders_table` DISABLE KEYS */;
INSERT INTO `tbl_orders_table` VALUES (15,4,65,1,1,'Live','2024-11-24 18:43:29','aLI241124-016'),(16,4,66,1,1,'Live','2024-11-24 18:44:39','dFN241124-017');
/*!40000 ALTER TABLE `tbl_orders_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_outlet_taxes`
--

DROP TABLE IF EXISTS `tbl_outlet_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_outlet_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_id` int(11) DEFAULT NULL,
  `tax_name` varchar(100) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `idx_outlet_tax` (`outlet_id`),
  CONSTRAINT `tbl_outlet_taxes_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_outlet_taxes`
--

LOCK TABLES `tbl_outlet_taxes` WRITE;
/*!40000 ALTER TABLE `tbl_outlet_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_outlet_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_outlets`
--

DROP TABLE IF EXISTS `tbl_outlets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_outlets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_name` varchar(100) DEFAULT NULL,
  `outlet_code` varchar(20) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `food_menus` text,
  `del_status` varchar(10) DEFAULT 'Live',
  `active_status` varchar(45) DEFAULT 'Active',
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `online_self_order_receiving_id` varchar(45) DEFAULT NULL,
  `default_waiter` varchar(45) DEFAULT NULL,
  `has_kitchen` tinyint(4) DEFAULT NULL,
  `food_menu_prices` json DEFAULT NULL,
  `delivery_price` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_outlets_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_outlets`
--

LOCK TABLES `tbl_outlets` WRITE;
/*!40000 ALTER TABLE `tbl_outlets` DISABLE KEYS */;
INSERT INTO `tbl_outlets` VALUES (1,'Norte','00001',1,',3,4,5,6,7,8,9,10,11,13,14,19,20,7,21,22,23,24','Live','active','Cauca Olet','3124101723','diazjose195@gmail.com','','3',1,'{\"tmp7\": \"1000.00||1060||1100\", \"tmp14\": \"1000.00||1060||1100\", \"tmp19\": \"1000||1060||1100\", \"tmp20\": \"1000||1060||1100\", \"tmp21\": \"1000.00||1060||1100\", \"tmp22\": \"1000.00||1060||1100\", \"tmp23\": \"1000.00||1060||1100\", \"tmp24\": \"1000.00||1060||1100\"}','{\"index_13\": \"[]\", \"index_14\": \"[]\", \"index_19\": \"[]\", \"index_20\": \"[]\", \"index_21\": \"{\\\"index_\\\":\\\"\\\"}\", \"index_22\": \"{\\\"index_\\\":\\\"\\\"}\", \"index_23\": \"{\\\"index_\\\":\\\"\\\"}\", \"index_24\": \"[]\", \"index_38\": \"[]\"}');
/*!40000 ALTER TABLE `tbl_outlets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_methods`
--

DROP TABLE IF EXISTS `tbl_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `personalinformation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_payment_methods_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_methods`
--

LOCK TABLES `tbl_payment_methods` WRITE;
/*!40000 ALTER TABLE `tbl_payment_methods` DISABLE KEYS */;
INSERT INTO `tbl_payment_methods` VALUES (1,'Cash',1,1,'Live',''),(2,'Card',1,1,'Live',''),(3,'Paypal',1,1,'Live','');
/*!40000 ALTER TABLE `tbl_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_settings`
--

DROP TABLE IF EXISTS `tbl_payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_2_v` varchar(50) DEFAULT NULL,
  `field_2_key_1` varchar(100) DEFAULT NULL,
  `field_2_key_2` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_payment_settings_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_settings`
--

LOCK TABLES `tbl_payment_settings` WRITE;
/*!40000 ALTER TABLE `tbl_payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plugins`
--

DROP TABLE IF EXISTS `tbl_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bestoro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Plugin verification code',
  `active_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `del_status` enum('Live','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Live',
  `added_date` date DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installation_date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_status_idx` (`active_status`),
  KEY `plugin_del_status_idx` (`del_status`),
  KEY `plugin_bestoro_idx` (`bestoro`),
  KEY `fk_plugin_added_by_idx` (`added_by`),
  KEY `fk_plugin_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_plugin_added_by` FOREIGN KEY (`added_by`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_plugin_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plugins`
--

LOCK TABLES `tbl_plugins` WRITE;
/*!40000 ALTER TABLE `tbl_plugins` DISABLE KEYS */;
INSERT INTO `tbl_plugins` VALUES (1,'Default Plugin',NULL,NULL,'fTzfWnSWR','Active','Live',NULL,NULL,NULL,NULL,'2024-11-22 00:31:08','2024-11-22 00:31:08',NULL,NULL);
/*!40000 ALTER TABLE `tbl_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_premade_ingredients`
--

DROP TABLE IF EXISTS `tbl_premade_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_premade_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_made_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `pre_made_id` (`pre_made_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `tbl_premade_ingredients_ibfk_1` FOREIGN KEY (`pre_made_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_premade_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_premade_ingredients`
--

LOCK TABLES `tbl_premade_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_premade_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_premade_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pricing_plans`
--

DROP TABLE IF EXISTS `tbl_pricing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pricing_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(100) DEFAULT NULL,
  `monthly_cost` decimal(10,2) DEFAULT NULL,
  `annual_cost` decimal(10,2) DEFAULT NULL,
  `number_of_outlets` int(11) DEFAULT NULL,
  `number_of_invoices` int(11) DEFAULT NULL,
  `number_of_items` int(11) DEFAULT NULL,
  `description` text,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pricing_plans`
--

LOCK TABLES `tbl_pricing_plans` WRITE;
/*!40000 ALTER TABLE `tbl_pricing_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pricing_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_printers`
--

DROP TABLE IF EXISTS `tbl_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `profile_name` varchar(100) DEFAULT NULL,
  `characters_per_line` int(11) DEFAULT NULL,
  `printer_ip` varchar(50) DEFAULT NULL,
  `printer_port` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `connector_type` varchar(50) DEFAULT NULL,
  `display_printer` int(11) DEFAULT '0',
  `active_status` enum('Active','Inactive') DEFAULT 'Active',
  `show_logo` tinyint(4) DEFAULT '1',
  `order_by` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `profile_` varchar(45) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `port` varchar(45) DEFAULT NULL,
  `printer_ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `idx_printer_outlet` (`outlet_id`,`active_status`),
  CONSTRAINT `tbl_printers_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`),
  CONSTRAINT `tbl_printers_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_printers`
--

LOCK TABLES `tbl_printers` WRITE;
/*!40000 ALTER TABLE `tbl_printers` DISABLE KEYS */;
INSERT INTO `tbl_printers` VALUES (1,'Immpresota','windows',NULL,20,NULL,0,'Door',NULL,0,'Active',1,NULL,1,NULL,'Live','default',NULL,NULL,'');
/*!40000 ALTER TABLE `tbl_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_production`
--

DROP TABLE IF EXISTS `tbl_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_production` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text,
  `ing_type` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_production_date` (`date`),
  KEY `idx_production_outlet` (`outlet_id`),
  CONSTRAINT `tbl_production_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_production_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_production`
--

LOCK TABLES `tbl_production` WRITE;
/*!40000 ALTER TABLE `tbl_production` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_production_ingredients`
--

DROP TABLE IF EXISTS `tbl_production_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_production_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `production_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `quantity_amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `del_status` varchar(10) DEFAULT 'Live',
  `outlet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `production_id` (`production_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `tbl_production_ingredients_ibfk_1` FOREIGN KEY (`production_id`) REFERENCES `tbl_production` (`id`),
  CONSTRAINT `tbl_production_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_production_ingredients`
--

LOCK TABLES `tbl_production_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_production_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_production_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promotion_ingredients`
--

DROP TABLE IF EXISTS `tbl_promotion_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_promotion_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `promotion_id` (`promotion_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `tbl_promotion_ingredients_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `tbl_promotions` (`id`),
  CONSTRAINT `tbl_promotion_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promotion_ingredients`
--

LOCK TABLES `tbl_promotion_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_promotion_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_promotion_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promotions`
--

DROP TABLE IF EXISTS `tbl_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `discount_type` enum('Fixed','Percentage') DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `type` varchar(45) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `company_id` (`company_id`),
  KEY `idx_promotion_date` (`start_date`,`end_date`),
  KEY `idx_promotion_menu` (`food_menu_id`),
  CONSTRAINT `tbl_promotions_ibfk_1` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`),
  CONSTRAINT `tbl_promotions_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_promotions_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promotions`
--

LOCK TABLES `tbl_promotions` WRITE;
/*!40000 ALTER TABLE `tbl_promotions` DISABLE KEYS */;
INSERT INTO `tbl_promotions` VALUES (1,NULL,'2x1',NULL,'2024-11-22','2024-11-22',NULL,NULL,2,1,1,1,'Live','1',50.00,1);
/*!40000 ALTER TABLE `tbl_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purchase`
--

DROP TABLE IF EXISTS `tbl_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `payment_id` int(11) DEFAULT NULL,
  `added_date_time` datetime DEFAULT NULL,
  `payment_clear` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_purchase_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_suppliers` (`id`),
  CONSTRAINT `tbl_purchase_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_purchase_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purchase`
--

LOCK TABLES `tbl_purchase` WRITE;
/*!40000 ALTER TABLE `tbl_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purchase_ingredients`
--

DROP TABLE IF EXISTS `tbl_purchase_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_purchase_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `quantity_amount` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_purchase_ingredient` (`ingredient_id`),
  CONSTRAINT `tbl_purchase_ingredients_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_purchase_ingredients_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `tbl_purchase` (`id`),
  CONSTRAINT `tbl_purchase_ingredients_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purchase_ingredients`
--

LOCK TABLES `tbl_purchase_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_purchase_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_purchase_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_register`
--

DROP TABLE IF EXISTS `tbl_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opening_balance` decimal(10,2) DEFAULT NULL,
  `closing_balance` decimal(10,2) DEFAULT NULL,
  `opening_balance_date_time` datetime DEFAULT NULL,
  `closing_balance_date_time` datetime DEFAULT NULL,
  `register_status` tinyint(4) DEFAULT '0',
  `outlet_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `opening_details` text,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_register_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_register_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_register`
--

LOCK TABLES `tbl_register` WRITE;
/*!40000 ALTER TABLE `tbl_register` DISABLE KEYS */;
INSERT INTO `tbl_register` VALUES (1,3000.00,0.00,'2024-11-21 17:38:41',NULL,1,1,1,'[\"1||Cash||1000\",\"2||Card||1000\",\"3||Paypal||1000\"]',1);
/*!40000 ALTER TABLE `tbl_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role_access`
--

DROP TABLE IF EXISTS `tbl_role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `access_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `access_id` (`access_id`),
  KEY `company_id` (`company_id`),
  KEY `idx_role_access` (`role_id`,`access_id`),
  CONSTRAINT `tbl_role_access_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  CONSTRAINT `tbl_role_access_ibfk_2` FOREIGN KEY (`access_id`) REFERENCES `tbl_access` (`id`),
  CONSTRAINT `tbl_role_access_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role_access`
--

LOCK TABLES `tbl_role_access` WRITE;
/*!40000 ALTER TABLE `tbl_role_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `description` text,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_roles_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_running_order_tables`
--

DROP TABLE IF EXISTS `tbl_running_order_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_running_order_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_no` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  `persons` int(11) DEFAULT NULL,
  `booking_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(20) DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table_content` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_no` (`sale_no`),
  KEY `table_id` (`table_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `del_status` (`del_status`),
  CONSTRAINT `tbl_running_order_tables_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `tbl_tables` (`id`),
  CONSTRAINT `tbl_running_order_tables_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_running_order_tables`
--

LOCK TABLES `tbl_running_order_tables` WRITE;
/*!40000 ALTER TABLE `tbl_running_order_tables` DISABLE KEYS */;
INSERT INTO `tbl_running_order_tables` VALUES (3,'jSH241124-005',1,2,NULL,1,'Live','2024-11-24 19:04:39','2024-11-24 19:04:39','{\"persons\":\"2\",\"table_id\":\"1\",\"sale_id\":24,\"s');
/*!40000 ALTER TABLE `tbl_running_order_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_running_orders`
--

DROP TABLE IF EXISTS `tbl_running_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_running_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_no` varchar(20) DEFAULT NULL,
  `order_content` text,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sale_no` (`sale_no`),
  KEY `user_id` (`user_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_running_orders_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tbl_running_orders_outlet_id_fk` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tbl_running_orders_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_running_orders`
--

LOCK TABLES `tbl_running_orders` WRITE;
/*!40000 ALTER TABLE `tbl_running_orders` DISABLE KEYS */;
INSERT INTO `tbl_running_orders` VALUES (1,'jPX241124-011','{\"sale_no\":\"jPX241124-011\",\"hidden_given_amount\":\"0\",\"hidden_change_amount\":\"0\",\"random_code\":\"UtoW3kH49WkIOyU\",\"token_number\":\"\",\"customer_id\":\"2\",\"customer_address\":\"Cr 81 22d -253 Alameda la victoria Conjunto Residencial la bonguita Torre 2 P4 APTO 4\",\"customer_gst_number\":\"\",\"status\":\"Pending\",\"user_name\":\"Jose Diaz\",\"user_id\":\"1\",\"customer_name\":\"Jose 000000\",\"delivery_partner_id\":\"undefined\",\"self_order_table_id\":\"1\",\"self_order_table_person\":\"undefined\",\"rounding_amount_hidden\":\"0\",\"previous_due_tmp\":\"0\",\"waiter_id\":\"3\",\"waiter_name\":\"Pedro\",\"open_invoice_date_hidden\":\"2024-11-24\",\"total_items_in_cart\":\"1\",\"total_items_in_cart_qty\":\"1\",\"sub_total\":\"1100\",\"sale_date\":\"2024-11-24\",\"date_time\":\"2024-11-24 15:15:27\",\"order_time\":\"15:15:27\",\"charge_type\":\"delivery\",\"total_vat\":\"0\",\"total_payable\":\"1100\",\"total_item_discount_amount\":\"0\",\"sub_total_with_discount\":\"1100\",\"sub_total_discount_amount\":\"0\",\"total_discount_amount\":\"0\",\"delivery_charge\":\"\",\"tips_amount\":\"\",\"delivery_charge_actual_charge\":\"\",\"tips_amount_actual_charge\":\"0\",\"sub_total_discount_value\":\"\",\"sub_total_discount_type\":\"fixed\",\"order_type\":\"3\",\"order_status\":\"1\",\"sale_vat_objects\":[],\"orders_table\":[],\"total_orders_table\":\"1\",\"orders_table_text\":\"\",\"items\":[{\"food_menu_id\":\"22\", \"is_print\":\"1\", \"is_kot_print\":\"1\", \"menu_name\":\"Hamburguesa Hamburguesa queso extra\", \"kitchen_id\":\"1\", \"kitchen_name\":\"Cicinero 1\", \"is_free\":\"0\", \"rounding_amount_hidden\":\"0\", \"item_vat\":[],\"menu_discount_value\":\"\",\"discount_type\":\"fixed\",\"menu_price_without_discount\":\"1100\",\"menu_unit_price\":\"1100\",\"qty\":\"1\",\"tmp_qty\":\"undefined\",\"p_qty\":\"undefined\",\"item_previous_id\":\"\",\"item_cooking_done_time\":\"\",\"item_cooking_start_time\":\"\",\"item_cooking_status\":\"\",\"item_type\":\"\",\"menu_price_with_discount\":\"1100\",\"item_discount_amount\":\"0\",\"modifiers_id\":\"\", \"modifiers_name\":\"\", \"modifiers_price\":\"\", \"modifier_vat\":\"\",\"item_note\":\"\",\"menu_combo_items\":\"\"}]}',1,NULL,NULL,'Live','2024-11-24 21:24:54',NULL);
/*!40000 ALTER TABLE `tbl_running_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sale_consumptions`
--

DROP TABLE IF EXISTS `tbl_sale_consumptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sale_consumptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sale_consumptions`
--

LOCK TABLES `tbl_sale_consumptions` WRITE;
/*!40000 ALTER TABLE `tbl_sale_consumptions` DISABLE KEYS */;
INSERT INTO `tbl_sale_consumptions` VALUES (58,294,1,1,'Live','2024-11-23 01:23:07','2024-11-23 01:23:07'),(59,295,1,1,'Live','2024-11-23 22:22:48','2024-11-23 22:22:48'),(61,296,1,1,'Live','2024-11-24 03:32:18','2024-11-24 03:32:18'),(62,297,1,1,'Live','2024-11-24 03:40:07','2024-11-24 03:40:07'),(64,298,1,1,'Live','2024-11-24 18:33:20','2024-11-24 18:33:20'),(65,299,1,1,'Live','2024-11-24 18:37:43','2024-11-24 18:37:43'),(66,300,1,1,'Live','2024-11-24 19:01:41','2024-11-24 19:01:41'),(67,301,1,1,'Live','2024-11-24 19:06:17','2024-11-24 19:06:17'),(75,302,1,1,'Live','2024-11-24 20:05:52','2024-11-24 20:05:52'),(82,303,1,1,'Live','2024-11-24 21:24:28','2024-11-24 21:24:28'),(83,304,1,1,'Live','2024-11-24 21:26:31','2024-11-24 21:26:31');
/*!40000 ALTER TABLE `tbl_sale_consumptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sale_consumptions_of_menus`
--

DROP TABLE IF EXISTS `tbl_sale_consumptions_of_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  `consumption_unit_cost` decimal(10,2) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `idx_consumption_sale` (`sales_id`),
  KEY `idx_consumption_ingredient` (`ingredient_id`),
  CONSTRAINT `tbl_sale_consumptions_of_menus_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `tbl_sales` (`id`),
  CONSTRAINT `tbl_sale_consumptions_of_menus_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_sale_consumptions_of_menus_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sale_consumptions_of_menus`
--

LOCK TABLES `tbl_sale_consumptions_of_menus` WRITE;
/*!40000 ALTER TABLE `tbl_sale_consumptions_of_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sale_consumptions_of_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

DROP TABLE IF EXISTS `tbl_sale_consumptions_of_modifiers_of_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

LOCK TABLES `tbl_sale_consumptions_of_modifiers_of_menus` WRITE;
/*!40000 ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sale_payments`
--

DROP TABLE IF EXISTS `tbl_sale_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sale_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_name` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `currency_type` tinyint(4) DEFAULT NULL,
  `multi_currency` varchar(50) DEFAULT NULL,
  `usage_point` decimal(10,2) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_sale_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `tbl_sales` (`id`),
  CONSTRAINT `tbl_sale_payments_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sale_payments`
--

LOCK TABLES `tbl_sale_payments` WRITE;
/*!40000 ALTER TABLE `tbl_sale_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sale_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales`
--

DROP TABLE IF EXISTS `tbl_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `sale_no` varchar(30) DEFAULT NULL,
  `total_payable` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `order_status` enum('New','InProgress','Completed') DEFAULT 'New',
  `order_type` enum('DineIn','TakeAway','Delivery') DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `total_tax` decimal(10,2) DEFAULT NULL,
  `sale_vat_objects` text,
  `delivery_charge_actual_charge` decimal(10,2) DEFAULT NULL,
  `tips_amount_actual_charge` decimal(10,2) DEFAULT NULL,
  `charge_type` varchar(20) DEFAULT NULL,
  `total_discount_amount` decimal(10,2) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `future_sale_status` tinyint(4) DEFAULT '1',
  `total_refund` decimal(10,2) DEFAULT NULL,
  `refund_date_time` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `delivery_partner_id` int(11) DEFAULT NULL,
  `total_items` int(11) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `previous_due_tmp` varchar(45) DEFAULT NULL,
  `vat` varchar(45) DEFAULT NULL,
  `total_item_discount_amount` decimal(2,2) DEFAULT NULL,
  `sub_total_with_discount` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_amount` decimal(10,2) DEFAULT NULL,
  `tips_amount` decimal(10,2) DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_value` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_type` varchar(45) DEFAULT NULL,
  `given_amount` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) DEFAULT NULL,
  `token_number` varchar(45) DEFAULT NULL,
  `random_code` varchar(45) DEFAULT NULL,
  `order_time` varchar(45) DEFAULT NULL,
  `orders_table_text` varchar(45) DEFAULT NULL,
  `modified` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `user_id` (`user_id`),
  KEY `waiter_id` (`waiter_id`),
  KEY `table_id` (`table_id`),
  KEY `idx_sales_date` (`sale_date`),
  KEY `idx_sales_outlet` (`outlet_id`),
  KEY `idx_sales_status` (`order_status`),
  CONSTRAINT `tbl_sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`),
  CONSTRAINT `tbl_sales_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_sales_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_sales_ibfk_5` FOREIGN KEY (`table_id`) REFERENCES `tbl_tables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales`
--

LOCK TABLES `tbl_sales` WRITE;
/*!40000 ALTER TABLE `tbl_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales_details`
--

DROP TABLE IF EXISTS `tbl_sales_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sales_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `menu_price_without_discount` decimal(10,2) DEFAULT NULL,
  `menu_price_with_discount` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `menu_note` text,
  `discount_type` varchar(20) DEFAULT NULL,
  `menu_combo_items` text,
  `menu_unit_price` decimal(10,2) DEFAULT NULL,
  `is_free_item` tinyint(4) DEFAULT '0',
  `sales_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `cooking_status` varchar(30) DEFAULT 'New',
  `cooking_start_time` datetime DEFAULT NULL,
  `cooking_done_time` datetime DEFAULT NULL,
  `previous_id` int(11) DEFAULT NULL,
  `sales_details_order_status` tinyint(4) DEFAULT '1',
  `order_status` tinyint(4) DEFAULT '1',
  `total_cost` decimal(10,2) DEFAULT NULL,
  `tmp_qty` decimal(10,2) DEFAULT NULL,
  `menu_taxes` decimal(10,2) DEFAULT NULL,
  `menu_discount_value` decimal(10,2) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `loyalty_point_earn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_menu_id` (`food_menu_id`),
  KEY `sales_id` (`sales_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_sales_details_ibfk_1` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`),
  CONSTRAINT `tbl_sales_details_ibfk_2` FOREIGN KEY (`sales_id`) REFERENCES `tbl_sales` (`id`),
  CONSTRAINT `tbl_sales_details_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales_details`
--

LOCK TABLES `tbl_sales_details` WRITE;
/*!40000 ALTER TABLE `tbl_sales_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sales_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales_details_modifiers`
--

DROP TABLE IF EXISTS `tbl_sales_details_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `sales_id` int(15) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales_details_modifiers`
--

LOCK TABLES `tbl_sales_details_modifiers` WRITE;
/*!40000 ALTER TABLE `tbl_sales_details_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sales_details_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales_temp`
--

DROP TABLE IF EXISTS `tbl_sales_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sales_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `sale_no` varchar(30) DEFAULT NULL,
  `total_payable` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `order_status` enum('New','InProgress','Completed') DEFAULT 'New',
  `order_type` enum('DineIn','TakeAway','Delivery') DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `total_tax` decimal(10,2) DEFAULT NULL,
  `sale_vat_objects` text,
  `delivery_charge_actual_charge` decimal(10,2) DEFAULT NULL,
  `tips_amount_actual_charge` decimal(10,2) DEFAULT NULL,
  `charge_type` varchar(20) DEFAULT NULL,
  `total_discount_amount` decimal(10,2) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `future_sale_status` tinyint(4) DEFAULT '1',
  `total_refund` decimal(10,2) DEFAULT NULL,
  `refund_date_time` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `delivery_partner_id` int(11) DEFAULT NULL,
  `total_items` int(11) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `previous_due_tmp` varchar(45) DEFAULT NULL,
  `vat` varchar(45) DEFAULT NULL,
  `total_item_discount_amount` decimal(2,2) DEFAULT NULL,
  `sub_total_with_discount` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_amount` decimal(10,2) DEFAULT NULL,
  `tips_amount` decimal(10,2) DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_value` decimal(10,2) DEFAULT NULL,
  `sub_total_discount_type` varchar(45) DEFAULT NULL,
  `given_amount` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) DEFAULT NULL,
  `token_number` varchar(45) DEFAULT NULL,
  `random_code` varchar(45) DEFAULT NULL,
  `order_time` varchar(45) DEFAULT NULL,
  `orders_table_text` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `user_id` (`user_id`),
  KEY `waiter_id` (`waiter_id`),
  KEY `table_id` (`table_id`),
  KEY `idx_sales_date` (`sale_date`),
  KEY `idx_sales_outlet` (`outlet_id`),
  KEY `idx_sales_status` (`order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales_temp`
--

LOCK TABLES `tbl_sales_temp` WRITE;
/*!40000 ALTER TABLE `tbl_sales_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sales_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_security_logs`
--

DROP TABLE IF EXISTS `tbl_security_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_security_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `request_uri` text,
  `domain` text,
  `validation_status` tinyint(4) DEFAULT NULL,
  `validation_response` text,
  `created_at` datetime DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `idx_security_ip` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_security_logs`
--

LOCK TABLES `tbl_security_logs` WRITE;
/*!40000 ALTER TABLE `tbl_security_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_security_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sessions`
--

DROP TABLE IF EXISTS `tbl_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sessions`
--

LOCK TABLES `tbl_sessions` WRITE;
/*!40000 ALTER TABLE `tbl_sessions` DISABLE KEYS */;
INSERT INTO `tbl_sessions` VALUES ('78b2fd42b8aa8d8c7eead784c28da1a1428b48bd','172.18.0.1',1732487631,_binary '__ci_last_regenerate|i:1732487631;function_access|a:302:{i:0;s:10:\"delete-353\";i:1;s:8:\"view-353\";i:2;s:10:\"update-353\";i:3;s:7:\"add-353\";i:4;s:2:\"-0\";i:5;s:17:\"direct_invoice-73\";i:6;s:9:\"reset-350\";i:7;s:2:\"-0\";i:8;s:10:\"backup-348\";i:9;s:2:\"-0\";i:10;s:8:\"view-346\";i:11;s:2:\"-0\";i:12;s:16:\"view_details-340\";i:13;s:10:\"delete-340\";i:14;s:8:\"view-340\";i:15;s:10:\"update-340\";i:16;s:7:\"add-340\";i:17;s:2:\"-0\";i:18;s:20:\"ordering_for_pos-229\";i:19;s:8:\"view-337\";i:20;s:2:\"-0\";i:21;s:10:\"update-334\";i:22;s:2:\"-0\";i:23;s:8:\"view-332\";i:24;s:2:\"-0\";i:25;s:10:\"update-330\";i:26;s:2:\"-0\";i:27;s:10:\"delete-325\";i:28;s:8:\"view-325\";i:29;s:10:\"update-325\";i:30;s:7:\"add-325\";i:31;s:2:\"-0\";i:32;s:8:\"view-321\";i:33;s:2:\"-0\";i:34;s:8:\"view-314\";i:35;s:2:\"-0\";i:36;s:8:\"view-310\";i:37;s:13:\"check_out-310\";i:38;s:12:\"check_in-310\";i:39;s:2:\"-0\";i:40;s:11:\"sorting-260\";i:41;s:8:\"view-307\";i:42;s:2:\"-0\";i:43;s:19:\"resetDailySales-123\";i:44;s:20:\"exportDailySales-123\";i:45;s:27:\"change_delivery_address-123\";i:46;s:10:\"update-302\";i:47;s:2:\"-0\";i:48;s:10:\"update-300\";i:49;s:2:\"-0\";i:50;s:10:\"update-298\";i:51;s:2:\"-0\";i:52;s:14:\"deactivate-291\";i:53;s:12:\"activate-291\";i:54;s:10:\"delete-291\";i:55;s:8:\"view-291\";i:56;s:10:\"update-291\";i:57;s:7:\"add-291\";i:58;s:2:\"-0\";i:59;s:8:\"copy-285\";i:60;s:10:\"delete-285\";i:61;s:8:\"view-285\";i:62;s:10:\"update-285\";i:63;s:7:\"add-285\";i:64;s:2:\"-0\";i:65;s:10:\"delete-280\";i:66;s:8:\"view-280\";i:67;s:10:\"update-280\";i:68;s:7:\"add-280\";i:69;s:2:\"-0\";i:70;s:10:\"delete-275\";i:71;s:8:\"view-275\";i:72;s:10:\"update-275\";i:73;s:7:\"add-275\";i:74;s:2:\"-0\";i:75;s:10:\"delete-270\";i:76;s:8:\"view-270\";i:77;s:10:\"update-270\";i:78;s:7:\"add-270\";i:79;s:2:\"-0\";i:80;s:10:\"delete-265\";i:81;s:8:\"view-265\";i:82;s:10:\"update-265\";i:83;s:7:\"add-265\";i:84;s:2:\"-0\";i:85;s:10:\"delete-260\";i:86;s:8:\"view-260\";i:87;s:10:\"update-260\";i:88;s:7:\"add-260\";i:89;s:2:\"-0\";i:90;s:10:\"delete-255\";i:91;s:8:\"view-255\";i:92;s:10:\"update-255\";i:93;s:7:\"add-255\";i:94;s:2:\"-0\";i:95;s:19:\"upload_customer-249\";i:96;s:10:\"delete-249\";i:97;s:8:\"view-249\";i:98;s:10:\"update-249\";i:99;s:7:\"add-249\";i:100;s:2:\"-0\";i:101;s:10:\"delete-244\";i:102;s:8:\"view-244\";i:103;s:10:\"update-244\";i:104;s:7:\"add-244\";i:105;s:2:\"-0\";i:106;s:21:\"food_menu_barcode-234\";i:107;s:32:\"upload_food_menu_ingredients-234\";i:108;s:20:\"upload_food_menu-234\";i:109;s:19:\"assign_modifier-234\";i:110;s:16:\"view_details-234\";i:111;s:10:\"delete-234\";i:112;s:8:\"view-234\";i:113;s:10:\"update-234\";i:114;s:7:\"add-234\";i:115;s:2:\"-0\";i:116;s:10:\"delete-229\";i:117;s:8:\"view-229\";i:118;s:10:\"update-229\";i:119;s:7:\"add-229\";i:120;s:2:\"-0\";i:121;s:16:\"view_details-223\";i:122;s:10:\"delete-223\";i:123;s:8:\"view-223\";i:124;s:10:\"update-223\";i:125;s:7:\"add-223\";i:126;s:2:\"-0\";i:127;s:21:\"upload_ingredient-217\";i:128;s:10:\"delete-217\";i:129;s:8:\"view-217\";i:130;s:10:\"update-217\";i:131;s:7:\"add-217\";i:132;s:2:\"-0\";i:133;s:10:\"delete-212\";i:134;s:8:\"view-212\";i:135;s:10:\"update-212\";i:136;s:7:\"add-212\";i:137;s:2:\"-0\";i:138;s:10:\"delete-207\";i:139;s:8:\"view-207\";i:140;s:10:\"update-207\";i:141;s:7:\"add-207\";i:142;s:2:\"-0\";i:143;s:8:\"view-205\";i:144;s:2:\"-0\";i:145;s:8:\"view-203\";i:146;s:2:\"-0\";i:147;s:8:\"view-201\";i:148;s:2:\"-0\";i:149;s:8:\"view-199\";i:150;s:2:\"-0\";i:151;s:8:\"view-197\";i:152;s:2:\"-0\";i:153;s:8:\"view-195\";i:154;s:2:\"-0\";i:155;s:8:\"view-193\";i:156;s:2:\"-0\";i:157;s:8:\"view-191\";i:158;s:2:\"-0\";i:159;s:8:\"view-189\";i:160;s:2:\"-0\";i:161;s:8:\"view-187\";i:162;s:2:\"-0\";i:163;s:8:\"view-185\";i:164;s:2:\"-0\";i:165;s:8:\"view-183\";i:166;s:2:\"-0\";i:167;s:8:\"view-181\";i:168;s:2:\"-0\";i:169;s:8:\"view-179\";i:170;s:2:\"-0\";i:171;s:8:\"view-175\";i:172;s:2:\"-0\";i:173;s:8:\"view-173\";i:174;s:2:\"-0\";i:175;s:8:\"view-171\";i:176;s:2:\"-0\";i:177;s:8:\"view-169\";i:178;s:2:\"-0\";i:179;s:8:\"view-167\";i:180;s:2:\"-0\";i:181;s:8:\"view-165\";i:182;s:2:\"-0\";i:183;s:8:\"view-163\";i:184;s:2:\"-0\";i:185;s:8:\"view-161\";i:186;s:2:\"-0\";i:187;s:8:\"view-159\";i:188;s:2:\"-0\";i:189;s:10:\"delete-155\";i:190;s:8:\"view-155\";i:191;s:7:\"add-155\";i:192;s:2:\"-0\";i:193;s:10:\"delete-151\";i:194;s:8:\"view-151\";i:195;s:7:\"add-151\";i:196;s:2:\"-0\";i:197;s:10:\"delete-147\";i:198;s:8:\"view-147\";i:199;s:7:\"add-147\";i:200;s:2:\"-0\";i:201;s:10:\"delete-142\";i:202;s:8:\"view-142\";i:203;s:10:\"update-142\";i:204;s:7:\"add-142\";i:205;s:2:\"-0\";i:206;s:16:\"view_details-137\";i:207;s:10:\"delete-137\";i:208;s:8:\"view-137\";i:209;s:7:\"add-137\";i:210;s:2:\"-0\";i:211;s:16:\"view_details-131\";i:212;s:10:\"delete-131\";i:213;s:8:\"view-131\";i:214;s:10:\"update-131\";i:215;s:7:\"add-131\";i:216;s:2:\"-0\";i:217;s:8:\"view-129\";i:218;s:2:\"-0\";i:219;s:10:\"delete-123\";i:220;s:16:\"view_invoice-123\";i:221;s:10:\"refund-123\";i:222;s:8:\"view-123\";i:223;s:2:\"-0\";i:224;s:10:\"delete-118\";i:225;s:8:\"view-118\";i:226;s:10:\"update-118\";i:227;s:7:\"add-118\";i:228;s:2:\"-0\";i:229;s:16:\"view_details-112\";i:230;s:10:\"delete-112\";i:231;s:8:\"view-112\";i:232;s:10:\"update-112\";i:233;s:7:\"add-112\";i:234;s:2:\"-0\";i:235;s:16:\"view_details-106\";i:236;s:10:\"delete-106\";i:237;s:8:\"view-106\";i:238;s:10:\"update-106\";i:239;s:7:\"add-106\";i:240;s:2:\"-0\";i:241;s:8:\"view-104\";i:242;s:2:\"-0\";i:243;s:8:\"enter-98\";i:244;s:9:\"delete-98\";i:245;s:7:\"view-98\";i:246;s:9:\"update-98\";i:247;s:6:\"add-98\";i:248;s:2:\"-0\";i:249;s:12:\"main_menu-73\";i:250;s:16:\"GotoDashboard-73\";i:251;s:17:\"close_register-73\";i:252;s:28:\"RemoveKitchenNotification-73\";i:253;s:18:\"ModifySelfOrder-73\";i:254;s:19:\"DeclineSelfOrder-73\";i:255;s:19:\"Accept_SelfOrder-73\";i:256;s:38:\"Set_as_Running_Order_in_Future_Sale-73\";i:257;s:21:\"Modify_Future_Sale-73\";i:258;s:22:\"Delete_Recent_Sales-73\";i:259;s:21:\"print_last_invoice-73\";i:260;s:13:\"Print_Bill-73\";i:261;s:17:\"create_invoice-73\";i:262;s:14:\"kot_tooltip-73\";i:263;s:16:\"edit_customer-73\";i:264;s:15:\"add_customer-73\";i:265;s:45:\"Delete_Item_From_Cart_When_Modifying_Order-73\";i:266;s:13:\"Enter_Tips-73\";i:267;s:33:\"Modify_Service_Delivery_Charge-73\";i:268;s:19:\"Provide_Discount-73\";i:269;s:15:\"modify_order-73\";i:270;s:15:\"cancel_order-73\";i:271;s:14:\"place_order-73\";i:272;s:2:\"-0\";i:273;s:8:\"enter-67\";i:274;s:9:\"delete-67\";i:275;s:7:\"view-67\";i:276;s:9:\"update-67\";i:277;s:6:\"add-67\";i:278;s:2:\"-0\";i:279;s:9:\"update-64\";i:280;s:2:\"-0\";i:281;s:12:\"uninstall-62\";i:282;s:2:\"-0\";i:283;s:9:\"delete-55\";i:284;s:7:\"view-55\";i:285;s:9:\"update-55\";i:286;s:6:\"add-55\";i:287;s:2:\"-0\";i:288;s:9:\"update-52\";i:289;s:2:\"-0\";i:290;s:9:\"update-49\";i:291;s:2:\"-0\";i:292;s:9:\"delete-35\";i:293;s:7:\"view-35\";i:294;s:9:\"update-35\";i:295;s:6:\"add-35\";i:296;s:2:\"-0\";i:297;s:9:\"update-31\";i:298;s:7:\"view-31\";i:299;s:2:\"-0\";i:300;s:6:\"view-1\";i:301;s:2:\"-0\";}language|s:7:\"english\";session_outlets|N;export_daily_sale|N;has_kitchen|s:1:\"1\";self_order_ran_code|s:10:\"R0AKE2E74X\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";user_id|s:1:\"1\";designation|N;full_name|s:9:\"Jose Diaz\";short_name|s:1:\"j\";phone|s:10:\"3124101723\";email_address|s:21:\"diazjose195@gmail.com\";role|s:5:\"Admin\";company_id|s:1:\"1\";active_menu_tmp|s:0:\"\";currency|s:1:\"$\";zone_name|s:14:\"America/Bogota\";date_format|N;business_name|s:2:\"Jd\";address|s:10:\"Cauca Olet\";website|N;currency_position|N;precision|N;default_customer|N;service_amount|N;delivery_amount|N;tax_type|N;decimals_separator|N;thousands_separator|N;open_cash_drawer_when_printing_invoice|N;when_clicking_on_item_in_pos|N;is_rounding_enable|N;attendance_type|N;default_order_type|N;is_loyalty_enable|N;pre_or_post_payment|s:1:\"1\";minimum_point_to_redeem|N;loyalty_rate|N;split_bill|N;place_order_tooltip|N;food_menu_tooltip|N;default_payment|N;invoice_footer|N;invoice_logo|N;language_manifesto|s:9:\"revhgbrev\";collect_tax|N;tax_title|N;tax_registration_no|N;tax_is_gst|N;state_code|N;outlet_id|s:1:\"1\";outlet_name|s:5:\"Norte\";email|s:21:\"diazjose195@gmail.com\";default_waiter|s:0:\"\";is_waiter|s:2:\"No\";'),('a99140dd72760a1f4acc88b4d75d4986a44e346a','172.18.0.1',1732486726,_binary '__ci_last_regenerate|i:1732486726;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('3f34d244a79c497f0091d6fdf575ba7b72523832','172.18.0.1',1732487761,_binary '__ci_last_regenerate|i:1732487761;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('05201df54d0f709dea350b7a9a693d397c6f303c','172.18.0.1',1732488391,_binary '__ci_last_regenerate|i:1732488391;function_access|a:302:{i:0;s:10:\"delete-353\";i:1;s:8:\"view-353\";i:2;s:10:\"update-353\";i:3;s:7:\"add-353\";i:4;s:2:\"-0\";i:5;s:17:\"direct_invoice-73\";i:6;s:9:\"reset-350\";i:7;s:2:\"-0\";i:8;s:10:\"backup-348\";i:9;s:2:\"-0\";i:10;s:8:\"view-346\";i:11;s:2:\"-0\";i:12;s:16:\"view_details-340\";i:13;s:10:\"delete-340\";i:14;s:8:\"view-340\";i:15;s:10:\"update-340\";i:16;s:7:\"add-340\";i:17;s:2:\"-0\";i:18;s:20:\"ordering_for_pos-229\";i:19;s:8:\"view-337\";i:20;s:2:\"-0\";i:21;s:10:\"update-334\";i:22;s:2:\"-0\";i:23;s:8:\"view-332\";i:24;s:2:\"-0\";i:25;s:10:\"update-330\";i:26;s:2:\"-0\";i:27;s:10:\"delete-325\";i:28;s:8:\"view-325\";i:29;s:10:\"update-325\";i:30;s:7:\"add-325\";i:31;s:2:\"-0\";i:32;s:8:\"view-321\";i:33;s:2:\"-0\";i:34;s:8:\"view-314\";i:35;s:2:\"-0\";i:36;s:8:\"view-310\";i:37;s:13:\"check_out-310\";i:38;s:12:\"check_in-310\";i:39;s:2:\"-0\";i:40;s:11:\"sorting-260\";i:41;s:8:\"view-307\";i:42;s:2:\"-0\";i:43;s:19:\"resetDailySales-123\";i:44;s:20:\"exportDailySales-123\";i:45;s:27:\"change_delivery_address-123\";i:46;s:10:\"update-302\";i:47;s:2:\"-0\";i:48;s:10:\"update-300\";i:49;s:2:\"-0\";i:50;s:10:\"update-298\";i:51;s:2:\"-0\";i:52;s:14:\"deactivate-291\";i:53;s:12:\"activate-291\";i:54;s:10:\"delete-291\";i:55;s:8:\"view-291\";i:56;s:10:\"update-291\";i:57;s:7:\"add-291\";i:58;s:2:\"-0\";i:59;s:8:\"copy-285\";i:60;s:10:\"delete-285\";i:61;s:8:\"view-285\";i:62;s:10:\"update-285\";i:63;s:7:\"add-285\";i:64;s:2:\"-0\";i:65;s:10:\"delete-280\";i:66;s:8:\"view-280\";i:67;s:10:\"update-280\";i:68;s:7:\"add-280\";i:69;s:2:\"-0\";i:70;s:10:\"delete-275\";i:71;s:8:\"view-275\";i:72;s:10:\"update-275\";i:73;s:7:\"add-275\";i:74;s:2:\"-0\";i:75;s:10:\"delete-270\";i:76;s:8:\"view-270\";i:77;s:10:\"update-270\";i:78;s:7:\"add-270\";i:79;s:2:\"-0\";i:80;s:10:\"delete-265\";i:81;s:8:\"view-265\";i:82;s:10:\"update-265\";i:83;s:7:\"add-265\";i:84;s:2:\"-0\";i:85;s:10:\"delete-260\";i:86;s:8:\"view-260\";i:87;s:10:\"update-260\";i:88;s:7:\"add-260\";i:89;s:2:\"-0\";i:90;s:10:\"delete-255\";i:91;s:8:\"view-255\";i:92;s:10:\"update-255\";i:93;s:7:\"add-255\";i:94;s:2:\"-0\";i:95;s:19:\"upload_customer-249\";i:96;s:10:\"delete-249\";i:97;s:8:\"view-249\";i:98;s:10:\"update-249\";i:99;s:7:\"add-249\";i:100;s:2:\"-0\";i:101;s:10:\"delete-244\";i:102;s:8:\"view-244\";i:103;s:10:\"update-244\";i:104;s:7:\"add-244\";i:105;s:2:\"-0\";i:106;s:21:\"food_menu_barcode-234\";i:107;s:32:\"upload_food_menu_ingredients-234\";i:108;s:20:\"upload_food_menu-234\";i:109;s:19:\"assign_modifier-234\";i:110;s:16:\"view_details-234\";i:111;s:10:\"delete-234\";i:112;s:8:\"view-234\";i:113;s:10:\"update-234\";i:114;s:7:\"add-234\";i:115;s:2:\"-0\";i:116;s:10:\"delete-229\";i:117;s:8:\"view-229\";i:118;s:10:\"update-229\";i:119;s:7:\"add-229\";i:120;s:2:\"-0\";i:121;s:16:\"view_details-223\";i:122;s:10:\"delete-223\";i:123;s:8:\"view-223\";i:124;s:10:\"update-223\";i:125;s:7:\"add-223\";i:126;s:2:\"-0\";i:127;s:21:\"upload_ingredient-217\";i:128;s:10:\"delete-217\";i:129;s:8:\"view-217\";i:130;s:10:\"update-217\";i:131;s:7:\"add-217\";i:132;s:2:\"-0\";i:133;s:10:\"delete-212\";i:134;s:8:\"view-212\";i:135;s:10:\"update-212\";i:136;s:7:\"add-212\";i:137;s:2:\"-0\";i:138;s:10:\"delete-207\";i:139;s:8:\"view-207\";i:140;s:10:\"update-207\";i:141;s:7:\"add-207\";i:142;s:2:\"-0\";i:143;s:8:\"view-205\";i:144;s:2:\"-0\";i:145;s:8:\"view-203\";i:146;s:2:\"-0\";i:147;s:8:\"view-201\";i:148;s:2:\"-0\";i:149;s:8:\"view-199\";i:150;s:2:\"-0\";i:151;s:8:\"view-197\";i:152;s:2:\"-0\";i:153;s:8:\"view-195\";i:154;s:2:\"-0\";i:155;s:8:\"view-193\";i:156;s:2:\"-0\";i:157;s:8:\"view-191\";i:158;s:2:\"-0\";i:159;s:8:\"view-189\";i:160;s:2:\"-0\";i:161;s:8:\"view-187\";i:162;s:2:\"-0\";i:163;s:8:\"view-185\";i:164;s:2:\"-0\";i:165;s:8:\"view-183\";i:166;s:2:\"-0\";i:167;s:8:\"view-181\";i:168;s:2:\"-0\";i:169;s:8:\"view-179\";i:170;s:2:\"-0\";i:171;s:8:\"view-175\";i:172;s:2:\"-0\";i:173;s:8:\"view-173\";i:174;s:2:\"-0\";i:175;s:8:\"view-171\";i:176;s:2:\"-0\";i:177;s:8:\"view-169\";i:178;s:2:\"-0\";i:179;s:8:\"view-167\";i:180;s:2:\"-0\";i:181;s:8:\"view-165\";i:182;s:2:\"-0\";i:183;s:8:\"view-163\";i:184;s:2:\"-0\";i:185;s:8:\"view-161\";i:186;s:2:\"-0\";i:187;s:8:\"view-159\";i:188;s:2:\"-0\";i:189;s:10:\"delete-155\";i:190;s:8:\"view-155\";i:191;s:7:\"add-155\";i:192;s:2:\"-0\";i:193;s:10:\"delete-151\";i:194;s:8:\"view-151\";i:195;s:7:\"add-151\";i:196;s:2:\"-0\";i:197;s:10:\"delete-147\";i:198;s:8:\"view-147\";i:199;s:7:\"add-147\";i:200;s:2:\"-0\";i:201;s:10:\"delete-142\";i:202;s:8:\"view-142\";i:203;s:10:\"update-142\";i:204;s:7:\"add-142\";i:205;s:2:\"-0\";i:206;s:16:\"view_details-137\";i:207;s:10:\"delete-137\";i:208;s:8:\"view-137\";i:209;s:7:\"add-137\";i:210;s:2:\"-0\";i:211;s:16:\"view_details-131\";i:212;s:10:\"delete-131\";i:213;s:8:\"view-131\";i:214;s:10:\"update-131\";i:215;s:7:\"add-131\";i:216;s:2:\"-0\";i:217;s:8:\"view-129\";i:218;s:2:\"-0\";i:219;s:10:\"delete-123\";i:220;s:16:\"view_invoice-123\";i:221;s:10:\"refund-123\";i:222;s:8:\"view-123\";i:223;s:2:\"-0\";i:224;s:10:\"delete-118\";i:225;s:8:\"view-118\";i:226;s:10:\"update-118\";i:227;s:7:\"add-118\";i:228;s:2:\"-0\";i:229;s:16:\"view_details-112\";i:230;s:10:\"delete-112\";i:231;s:8:\"view-112\";i:232;s:10:\"update-112\";i:233;s:7:\"add-112\";i:234;s:2:\"-0\";i:235;s:16:\"view_details-106\";i:236;s:10:\"delete-106\";i:237;s:8:\"view-106\";i:238;s:10:\"update-106\";i:239;s:7:\"add-106\";i:240;s:2:\"-0\";i:241;s:8:\"view-104\";i:242;s:2:\"-0\";i:243;s:8:\"enter-98\";i:244;s:9:\"delete-98\";i:245;s:7:\"view-98\";i:246;s:9:\"update-98\";i:247;s:6:\"add-98\";i:248;s:2:\"-0\";i:249;s:12:\"main_menu-73\";i:250;s:16:\"GotoDashboard-73\";i:251;s:17:\"close_register-73\";i:252;s:28:\"RemoveKitchenNotification-73\";i:253;s:18:\"ModifySelfOrder-73\";i:254;s:19:\"DeclineSelfOrder-73\";i:255;s:19:\"Accept_SelfOrder-73\";i:256;s:38:\"Set_as_Running_Order_in_Future_Sale-73\";i:257;s:21:\"Modify_Future_Sale-73\";i:258;s:22:\"Delete_Recent_Sales-73\";i:259;s:21:\"print_last_invoice-73\";i:260;s:13:\"Print_Bill-73\";i:261;s:17:\"create_invoice-73\";i:262;s:14:\"kot_tooltip-73\";i:263;s:16:\"edit_customer-73\";i:264;s:15:\"add_customer-73\";i:265;s:45:\"Delete_Item_From_Cart_When_Modifying_Order-73\";i:266;s:13:\"Enter_Tips-73\";i:267;s:33:\"Modify_Service_Delivery_Charge-73\";i:268;s:19:\"Provide_Discount-73\";i:269;s:15:\"modify_order-73\";i:270;s:15:\"cancel_order-73\";i:271;s:14:\"place_order-73\";i:272;s:2:\"-0\";i:273;s:8:\"enter-67\";i:274;s:9:\"delete-67\";i:275;s:7:\"view-67\";i:276;s:9:\"update-67\";i:277;s:6:\"add-67\";i:278;s:2:\"-0\";i:279;s:9:\"update-64\";i:280;s:2:\"-0\";i:281;s:12:\"uninstall-62\";i:282;s:2:\"-0\";i:283;s:9:\"delete-55\";i:284;s:7:\"view-55\";i:285;s:9:\"update-55\";i:286;s:6:\"add-55\";i:287;s:2:\"-0\";i:288;s:9:\"update-52\";i:289;s:2:\"-0\";i:290;s:9:\"update-49\";i:291;s:2:\"-0\";i:292;s:9:\"delete-35\";i:293;s:7:\"view-35\";i:294;s:9:\"update-35\";i:295;s:6:\"add-35\";i:296;s:2:\"-0\";i:297;s:9:\"update-31\";i:298;s:7:\"view-31\";i:299;s:2:\"-0\";i:300;s:6:\"view-1\";i:301;s:2:\"-0\";}language|s:7:\"english\";session_outlets|N;export_daily_sale|N;has_kitchen|s:1:\"1\";self_order_ran_code|s:10:\"R0AKE2E74X\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";user_id|s:1:\"1\";designation|N;full_name|s:9:\"Jose Diaz\";short_name|s:1:\"j\";phone|s:10:\"3124101723\";email_address|s:21:\"diazjose195@gmail.com\";role|s:5:\"Admin\";company_id|s:1:\"1\";active_menu_tmp|s:0:\"\";currency|s:1:\"$\";zone_name|s:14:\"America/Bogota\";date_format|N;business_name|s:2:\"Jd\";address|s:10:\"Cauca Olet\";website|N;currency_position|N;precision|N;default_customer|N;service_amount|N;delivery_amount|N;tax_type|N;decimals_separator|N;thousands_separator|N;open_cash_drawer_when_printing_invoice|N;when_clicking_on_item_in_pos|N;is_rounding_enable|N;attendance_type|N;default_order_type|N;is_loyalty_enable|N;pre_or_post_payment|s:1:\"1\";minimum_point_to_redeem|N;loyalty_rate|N;split_bill|N;place_order_tooltip|N;food_menu_tooltip|N;default_payment|N;invoice_footer|N;invoice_logo|N;language_manifesto|s:9:\"revhgbrev\";collect_tax|N;tax_title|N;tax_registration_no|N;tax_is_gst|N;state_code|N;outlet_id|s:1:\"1\";outlet_name|s:5:\"Norte\";email|s:21:\"diazjose195@gmail.com\";default_waiter|s:0:\"\";is_waiter|s:2:\"No\";'),('4731cb44a5b5abdae5c4274320e46bcc8bc9bc98','172.18.0.1',1732488268,_binary '__ci_last_regenerate|i:1732488268;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('a05c5420ffaeda22113032d921c50fe0ef4fddc8','172.18.0.1',1732489350,_binary '__ci_last_regenerate|i:1732489350;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('5dbedee914613d8fb36a8fe3eb1ef026e23e5fb0','172.18.0.1',1732489485,_binary '__ci_last_regenerate|i:1732489485;function_access|a:302:{i:0;s:10:\"delete-353\";i:1;s:8:\"view-353\";i:2;s:10:\"update-353\";i:3;s:7:\"add-353\";i:4;s:2:\"-0\";i:5;s:17:\"direct_invoice-73\";i:6;s:9:\"reset-350\";i:7;s:2:\"-0\";i:8;s:10:\"backup-348\";i:9;s:2:\"-0\";i:10;s:8:\"view-346\";i:11;s:2:\"-0\";i:12;s:16:\"view_details-340\";i:13;s:10:\"delete-340\";i:14;s:8:\"view-340\";i:15;s:10:\"update-340\";i:16;s:7:\"add-340\";i:17;s:2:\"-0\";i:18;s:20:\"ordering_for_pos-229\";i:19;s:8:\"view-337\";i:20;s:2:\"-0\";i:21;s:10:\"update-334\";i:22;s:2:\"-0\";i:23;s:8:\"view-332\";i:24;s:2:\"-0\";i:25;s:10:\"update-330\";i:26;s:2:\"-0\";i:27;s:10:\"delete-325\";i:28;s:8:\"view-325\";i:29;s:10:\"update-325\";i:30;s:7:\"add-325\";i:31;s:2:\"-0\";i:32;s:8:\"view-321\";i:33;s:2:\"-0\";i:34;s:8:\"view-314\";i:35;s:2:\"-0\";i:36;s:8:\"view-310\";i:37;s:13:\"check_out-310\";i:38;s:12:\"check_in-310\";i:39;s:2:\"-0\";i:40;s:11:\"sorting-260\";i:41;s:8:\"view-307\";i:42;s:2:\"-0\";i:43;s:19:\"resetDailySales-123\";i:44;s:20:\"exportDailySales-123\";i:45;s:27:\"change_delivery_address-123\";i:46;s:10:\"update-302\";i:47;s:2:\"-0\";i:48;s:10:\"update-300\";i:49;s:2:\"-0\";i:50;s:10:\"update-298\";i:51;s:2:\"-0\";i:52;s:14:\"deactivate-291\";i:53;s:12:\"activate-291\";i:54;s:10:\"delete-291\";i:55;s:8:\"view-291\";i:56;s:10:\"update-291\";i:57;s:7:\"add-291\";i:58;s:2:\"-0\";i:59;s:8:\"copy-285\";i:60;s:10:\"delete-285\";i:61;s:8:\"view-285\";i:62;s:10:\"update-285\";i:63;s:7:\"add-285\";i:64;s:2:\"-0\";i:65;s:10:\"delete-280\";i:66;s:8:\"view-280\";i:67;s:10:\"update-280\";i:68;s:7:\"add-280\";i:69;s:2:\"-0\";i:70;s:10:\"delete-275\";i:71;s:8:\"view-275\";i:72;s:10:\"update-275\";i:73;s:7:\"add-275\";i:74;s:2:\"-0\";i:75;s:10:\"delete-270\";i:76;s:8:\"view-270\";i:77;s:10:\"update-270\";i:78;s:7:\"add-270\";i:79;s:2:\"-0\";i:80;s:10:\"delete-265\";i:81;s:8:\"view-265\";i:82;s:10:\"update-265\";i:83;s:7:\"add-265\";i:84;s:2:\"-0\";i:85;s:10:\"delete-260\";i:86;s:8:\"view-260\";i:87;s:10:\"update-260\";i:88;s:7:\"add-260\";i:89;s:2:\"-0\";i:90;s:10:\"delete-255\";i:91;s:8:\"view-255\";i:92;s:10:\"update-255\";i:93;s:7:\"add-255\";i:94;s:2:\"-0\";i:95;s:19:\"upload_customer-249\";i:96;s:10:\"delete-249\";i:97;s:8:\"view-249\";i:98;s:10:\"update-249\";i:99;s:7:\"add-249\";i:100;s:2:\"-0\";i:101;s:10:\"delete-244\";i:102;s:8:\"view-244\";i:103;s:10:\"update-244\";i:104;s:7:\"add-244\";i:105;s:2:\"-0\";i:106;s:21:\"food_menu_barcode-234\";i:107;s:32:\"upload_food_menu_ingredients-234\";i:108;s:20:\"upload_food_menu-234\";i:109;s:19:\"assign_modifier-234\";i:110;s:16:\"view_details-234\";i:111;s:10:\"delete-234\";i:112;s:8:\"view-234\";i:113;s:10:\"update-234\";i:114;s:7:\"add-234\";i:115;s:2:\"-0\";i:116;s:10:\"delete-229\";i:117;s:8:\"view-229\";i:118;s:10:\"update-229\";i:119;s:7:\"add-229\";i:120;s:2:\"-0\";i:121;s:16:\"view_details-223\";i:122;s:10:\"delete-223\";i:123;s:8:\"view-223\";i:124;s:10:\"update-223\";i:125;s:7:\"add-223\";i:126;s:2:\"-0\";i:127;s:21:\"upload_ingredient-217\";i:128;s:10:\"delete-217\";i:129;s:8:\"view-217\";i:130;s:10:\"update-217\";i:131;s:7:\"add-217\";i:132;s:2:\"-0\";i:133;s:10:\"delete-212\";i:134;s:8:\"view-212\";i:135;s:10:\"update-212\";i:136;s:7:\"add-212\";i:137;s:2:\"-0\";i:138;s:10:\"delete-207\";i:139;s:8:\"view-207\";i:140;s:10:\"update-207\";i:141;s:7:\"add-207\";i:142;s:2:\"-0\";i:143;s:8:\"view-205\";i:144;s:2:\"-0\";i:145;s:8:\"view-203\";i:146;s:2:\"-0\";i:147;s:8:\"view-201\";i:148;s:2:\"-0\";i:149;s:8:\"view-199\";i:150;s:2:\"-0\";i:151;s:8:\"view-197\";i:152;s:2:\"-0\";i:153;s:8:\"view-195\";i:154;s:2:\"-0\";i:155;s:8:\"view-193\";i:156;s:2:\"-0\";i:157;s:8:\"view-191\";i:158;s:2:\"-0\";i:159;s:8:\"view-189\";i:160;s:2:\"-0\";i:161;s:8:\"view-187\";i:162;s:2:\"-0\";i:163;s:8:\"view-185\";i:164;s:2:\"-0\";i:165;s:8:\"view-183\";i:166;s:2:\"-0\";i:167;s:8:\"view-181\";i:168;s:2:\"-0\";i:169;s:8:\"view-179\";i:170;s:2:\"-0\";i:171;s:8:\"view-175\";i:172;s:2:\"-0\";i:173;s:8:\"view-173\";i:174;s:2:\"-0\";i:175;s:8:\"view-171\";i:176;s:2:\"-0\";i:177;s:8:\"view-169\";i:178;s:2:\"-0\";i:179;s:8:\"view-167\";i:180;s:2:\"-0\";i:181;s:8:\"view-165\";i:182;s:2:\"-0\";i:183;s:8:\"view-163\";i:184;s:2:\"-0\";i:185;s:8:\"view-161\";i:186;s:2:\"-0\";i:187;s:8:\"view-159\";i:188;s:2:\"-0\";i:189;s:10:\"delete-155\";i:190;s:8:\"view-155\";i:191;s:7:\"add-155\";i:192;s:2:\"-0\";i:193;s:10:\"delete-151\";i:194;s:8:\"view-151\";i:195;s:7:\"add-151\";i:196;s:2:\"-0\";i:197;s:10:\"delete-147\";i:198;s:8:\"view-147\";i:199;s:7:\"add-147\";i:200;s:2:\"-0\";i:201;s:10:\"delete-142\";i:202;s:8:\"view-142\";i:203;s:10:\"update-142\";i:204;s:7:\"add-142\";i:205;s:2:\"-0\";i:206;s:16:\"view_details-137\";i:207;s:10:\"delete-137\";i:208;s:8:\"view-137\";i:209;s:7:\"add-137\";i:210;s:2:\"-0\";i:211;s:16:\"view_details-131\";i:212;s:10:\"delete-131\";i:213;s:8:\"view-131\";i:214;s:10:\"update-131\";i:215;s:7:\"add-131\";i:216;s:2:\"-0\";i:217;s:8:\"view-129\";i:218;s:2:\"-0\";i:219;s:10:\"delete-123\";i:220;s:16:\"view_invoice-123\";i:221;s:10:\"refund-123\";i:222;s:8:\"view-123\";i:223;s:2:\"-0\";i:224;s:10:\"delete-118\";i:225;s:8:\"view-118\";i:226;s:10:\"update-118\";i:227;s:7:\"add-118\";i:228;s:2:\"-0\";i:229;s:16:\"view_details-112\";i:230;s:10:\"delete-112\";i:231;s:8:\"view-112\";i:232;s:10:\"update-112\";i:233;s:7:\"add-112\";i:234;s:2:\"-0\";i:235;s:16:\"view_details-106\";i:236;s:10:\"delete-106\";i:237;s:8:\"view-106\";i:238;s:10:\"update-106\";i:239;s:7:\"add-106\";i:240;s:2:\"-0\";i:241;s:8:\"view-104\";i:242;s:2:\"-0\";i:243;s:8:\"enter-98\";i:244;s:9:\"delete-98\";i:245;s:7:\"view-98\";i:246;s:9:\"update-98\";i:247;s:6:\"add-98\";i:248;s:2:\"-0\";i:249;s:12:\"main_menu-73\";i:250;s:16:\"GotoDashboard-73\";i:251;s:17:\"close_register-73\";i:252;s:28:\"RemoveKitchenNotification-73\";i:253;s:18:\"ModifySelfOrder-73\";i:254;s:19:\"DeclineSelfOrder-73\";i:255;s:19:\"Accept_SelfOrder-73\";i:256;s:38:\"Set_as_Running_Order_in_Future_Sale-73\";i:257;s:21:\"Modify_Future_Sale-73\";i:258;s:22:\"Delete_Recent_Sales-73\";i:259;s:21:\"print_last_invoice-73\";i:260;s:13:\"Print_Bill-73\";i:261;s:17:\"create_invoice-73\";i:262;s:14:\"kot_tooltip-73\";i:263;s:16:\"edit_customer-73\";i:264;s:15:\"add_customer-73\";i:265;s:45:\"Delete_Item_From_Cart_When_Modifying_Order-73\";i:266;s:13:\"Enter_Tips-73\";i:267;s:33:\"Modify_Service_Delivery_Charge-73\";i:268;s:19:\"Provide_Discount-73\";i:269;s:15:\"modify_order-73\";i:270;s:15:\"cancel_order-73\";i:271;s:14:\"place_order-73\";i:272;s:2:\"-0\";i:273;s:8:\"enter-67\";i:274;s:9:\"delete-67\";i:275;s:7:\"view-67\";i:276;s:9:\"update-67\";i:277;s:6:\"add-67\";i:278;s:2:\"-0\";i:279;s:9:\"update-64\";i:280;s:2:\"-0\";i:281;s:12:\"uninstall-62\";i:282;s:2:\"-0\";i:283;s:9:\"delete-55\";i:284;s:7:\"view-55\";i:285;s:9:\"update-55\";i:286;s:6:\"add-55\";i:287;s:2:\"-0\";i:288;s:9:\"update-52\";i:289;s:2:\"-0\";i:290;s:9:\"update-49\";i:291;s:2:\"-0\";i:292;s:9:\"delete-35\";i:293;s:7:\"view-35\";i:294;s:9:\"update-35\";i:295;s:6:\"add-35\";i:296;s:2:\"-0\";i:297;s:9:\"update-31\";i:298;s:7:\"view-31\";i:299;s:2:\"-0\";i:300;s:6:\"view-1\";i:301;s:2:\"-0\";}language|s:7:\"english\";session_outlets|N;export_daily_sale|N;has_kitchen|s:1:\"1\";self_order_ran_code|s:10:\"R0AKE2E74X\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";user_id|s:1:\"1\";designation|N;full_name|s:9:\"Jose Diaz\";short_name|s:1:\"j\";phone|s:10:\"3124101723\";email_address|s:21:\"diazjose195@gmail.com\";role|s:5:\"Admin\";company_id|s:1:\"1\";active_menu_tmp|s:0:\"\";currency|s:1:\"$\";zone_name|s:14:\"America/Bogota\";date_format|N;business_name|s:2:\"Jd\";address|s:10:\"Cauca Olet\";website|N;currency_position|N;precision|N;default_customer|N;service_amount|N;delivery_amount|N;tax_type|N;decimals_separator|N;thousands_separator|N;open_cash_drawer_when_printing_invoice|N;when_clicking_on_item_in_pos|N;is_rounding_enable|N;attendance_type|N;default_order_type|N;is_loyalty_enable|N;pre_or_post_payment|s:1:\"1\";minimum_point_to_redeem|N;loyalty_rate|N;split_bill|N;place_order_tooltip|N;food_menu_tooltip|N;default_payment|N;invoice_footer|N;invoice_logo|N;language_manifesto|s:9:\"revhgbrev\";collect_tax|N;tax_title|N;tax_registration_no|N;tax_is_gst|N;state_code|N;outlet_id|s:1:\"1\";outlet_name|s:5:\"Norte\";email|s:21:\"diazjose195@gmail.com\";default_waiter|s:0:\"\";is_waiter|s:2:\"No\";'),('5a2fdc94c814ab586c992408553c13f275791928','172.18.0.1',1732488856,_binary '__ci_last_regenerate|i:1732488856;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('d8d9a46800ac255d2478d34efbc9ff7773f52aea','172.18.0.1',1732489706,_binary '__ci_last_regenerate|i:1732489705;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('a7ae735f542047bf1ca2867dfd0b83268387f91e','172.18.0.1',1732492414,_binary '__ci_last_regenerate|i:1732489485;function_access|a:302:{i:0;s:10:\"delete-353\";i:1;s:8:\"view-353\";i:2;s:10:\"update-353\";i:3;s:7:\"add-353\";i:4;s:2:\"-0\";i:5;s:17:\"direct_invoice-73\";i:6;s:9:\"reset-350\";i:7;s:2:\"-0\";i:8;s:10:\"backup-348\";i:9;s:2:\"-0\";i:10;s:8:\"view-346\";i:11;s:2:\"-0\";i:12;s:16:\"view_details-340\";i:13;s:10:\"delete-340\";i:14;s:8:\"view-340\";i:15;s:10:\"update-340\";i:16;s:7:\"add-340\";i:17;s:2:\"-0\";i:18;s:20:\"ordering_for_pos-229\";i:19;s:8:\"view-337\";i:20;s:2:\"-0\";i:21;s:10:\"update-334\";i:22;s:2:\"-0\";i:23;s:8:\"view-332\";i:24;s:2:\"-0\";i:25;s:10:\"update-330\";i:26;s:2:\"-0\";i:27;s:10:\"delete-325\";i:28;s:8:\"view-325\";i:29;s:10:\"update-325\";i:30;s:7:\"add-325\";i:31;s:2:\"-0\";i:32;s:8:\"view-321\";i:33;s:2:\"-0\";i:34;s:8:\"view-314\";i:35;s:2:\"-0\";i:36;s:8:\"view-310\";i:37;s:13:\"check_out-310\";i:38;s:12:\"check_in-310\";i:39;s:2:\"-0\";i:40;s:11:\"sorting-260\";i:41;s:8:\"view-307\";i:42;s:2:\"-0\";i:43;s:19:\"resetDailySales-123\";i:44;s:20:\"exportDailySales-123\";i:45;s:27:\"change_delivery_address-123\";i:46;s:10:\"update-302\";i:47;s:2:\"-0\";i:48;s:10:\"update-300\";i:49;s:2:\"-0\";i:50;s:10:\"update-298\";i:51;s:2:\"-0\";i:52;s:14:\"deactivate-291\";i:53;s:12:\"activate-291\";i:54;s:10:\"delete-291\";i:55;s:8:\"view-291\";i:56;s:10:\"update-291\";i:57;s:7:\"add-291\";i:58;s:2:\"-0\";i:59;s:8:\"copy-285\";i:60;s:10:\"delete-285\";i:61;s:8:\"view-285\";i:62;s:10:\"update-285\";i:63;s:7:\"add-285\";i:64;s:2:\"-0\";i:65;s:10:\"delete-280\";i:66;s:8:\"view-280\";i:67;s:10:\"update-280\";i:68;s:7:\"add-280\";i:69;s:2:\"-0\";i:70;s:10:\"delete-275\";i:71;s:8:\"view-275\";i:72;s:10:\"update-275\";i:73;s:7:\"add-275\";i:74;s:2:\"-0\";i:75;s:10:\"delete-270\";i:76;s:8:\"view-270\";i:77;s:10:\"update-270\";i:78;s:7:\"add-270\";i:79;s:2:\"-0\";i:80;s:10:\"delete-265\";i:81;s:8:\"view-265\";i:82;s:10:\"update-265\";i:83;s:7:\"add-265\";i:84;s:2:\"-0\";i:85;s:10:\"delete-260\";i:86;s:8:\"view-260\";i:87;s:10:\"update-260\";i:88;s:7:\"add-260\";i:89;s:2:\"-0\";i:90;s:10:\"delete-255\";i:91;s:8:\"view-255\";i:92;s:10:\"update-255\";i:93;s:7:\"add-255\";i:94;s:2:\"-0\";i:95;s:19:\"upload_customer-249\";i:96;s:10:\"delete-249\";i:97;s:8:\"view-249\";i:98;s:10:\"update-249\";i:99;s:7:\"add-249\";i:100;s:2:\"-0\";i:101;s:10:\"delete-244\";i:102;s:8:\"view-244\";i:103;s:10:\"update-244\";i:104;s:7:\"add-244\";i:105;s:2:\"-0\";i:106;s:21:\"food_menu_barcode-234\";i:107;s:32:\"upload_food_menu_ingredients-234\";i:108;s:20:\"upload_food_menu-234\";i:109;s:19:\"assign_modifier-234\";i:110;s:16:\"view_details-234\";i:111;s:10:\"delete-234\";i:112;s:8:\"view-234\";i:113;s:10:\"update-234\";i:114;s:7:\"add-234\";i:115;s:2:\"-0\";i:116;s:10:\"delete-229\";i:117;s:8:\"view-229\";i:118;s:10:\"update-229\";i:119;s:7:\"add-229\";i:120;s:2:\"-0\";i:121;s:16:\"view_details-223\";i:122;s:10:\"delete-223\";i:123;s:8:\"view-223\";i:124;s:10:\"update-223\";i:125;s:7:\"add-223\";i:126;s:2:\"-0\";i:127;s:21:\"upload_ingredient-217\";i:128;s:10:\"delete-217\";i:129;s:8:\"view-217\";i:130;s:10:\"update-217\";i:131;s:7:\"add-217\";i:132;s:2:\"-0\";i:133;s:10:\"delete-212\";i:134;s:8:\"view-212\";i:135;s:10:\"update-212\";i:136;s:7:\"add-212\";i:137;s:2:\"-0\";i:138;s:10:\"delete-207\";i:139;s:8:\"view-207\";i:140;s:10:\"update-207\";i:141;s:7:\"add-207\";i:142;s:2:\"-0\";i:143;s:8:\"view-205\";i:144;s:2:\"-0\";i:145;s:8:\"view-203\";i:146;s:2:\"-0\";i:147;s:8:\"view-201\";i:148;s:2:\"-0\";i:149;s:8:\"view-199\";i:150;s:2:\"-0\";i:151;s:8:\"view-197\";i:152;s:2:\"-0\";i:153;s:8:\"view-195\";i:154;s:2:\"-0\";i:155;s:8:\"view-193\";i:156;s:2:\"-0\";i:157;s:8:\"view-191\";i:158;s:2:\"-0\";i:159;s:8:\"view-189\";i:160;s:2:\"-0\";i:161;s:8:\"view-187\";i:162;s:2:\"-0\";i:163;s:8:\"view-185\";i:164;s:2:\"-0\";i:165;s:8:\"view-183\";i:166;s:2:\"-0\";i:167;s:8:\"view-181\";i:168;s:2:\"-0\";i:169;s:8:\"view-179\";i:170;s:2:\"-0\";i:171;s:8:\"view-175\";i:172;s:2:\"-0\";i:173;s:8:\"view-173\";i:174;s:2:\"-0\";i:175;s:8:\"view-171\";i:176;s:2:\"-0\";i:177;s:8:\"view-169\";i:178;s:2:\"-0\";i:179;s:8:\"view-167\";i:180;s:2:\"-0\";i:181;s:8:\"view-165\";i:182;s:2:\"-0\";i:183;s:8:\"view-163\";i:184;s:2:\"-0\";i:185;s:8:\"view-161\";i:186;s:2:\"-0\";i:187;s:8:\"view-159\";i:188;s:2:\"-0\";i:189;s:10:\"delete-155\";i:190;s:8:\"view-155\";i:191;s:7:\"add-155\";i:192;s:2:\"-0\";i:193;s:10:\"delete-151\";i:194;s:8:\"view-151\";i:195;s:7:\"add-151\";i:196;s:2:\"-0\";i:197;s:10:\"delete-147\";i:198;s:8:\"view-147\";i:199;s:7:\"add-147\";i:200;s:2:\"-0\";i:201;s:10:\"delete-142\";i:202;s:8:\"view-142\";i:203;s:10:\"update-142\";i:204;s:7:\"add-142\";i:205;s:2:\"-0\";i:206;s:16:\"view_details-137\";i:207;s:10:\"delete-137\";i:208;s:8:\"view-137\";i:209;s:7:\"add-137\";i:210;s:2:\"-0\";i:211;s:16:\"view_details-131\";i:212;s:10:\"delete-131\";i:213;s:8:\"view-131\";i:214;s:10:\"update-131\";i:215;s:7:\"add-131\";i:216;s:2:\"-0\";i:217;s:8:\"view-129\";i:218;s:2:\"-0\";i:219;s:10:\"delete-123\";i:220;s:16:\"view_invoice-123\";i:221;s:10:\"refund-123\";i:222;s:8:\"view-123\";i:223;s:2:\"-0\";i:224;s:10:\"delete-118\";i:225;s:8:\"view-118\";i:226;s:10:\"update-118\";i:227;s:7:\"add-118\";i:228;s:2:\"-0\";i:229;s:16:\"view_details-112\";i:230;s:10:\"delete-112\";i:231;s:8:\"view-112\";i:232;s:10:\"update-112\";i:233;s:7:\"add-112\";i:234;s:2:\"-0\";i:235;s:16:\"view_details-106\";i:236;s:10:\"delete-106\";i:237;s:8:\"view-106\";i:238;s:10:\"update-106\";i:239;s:7:\"add-106\";i:240;s:2:\"-0\";i:241;s:8:\"view-104\";i:242;s:2:\"-0\";i:243;s:8:\"enter-98\";i:244;s:9:\"delete-98\";i:245;s:7:\"view-98\";i:246;s:9:\"update-98\";i:247;s:6:\"add-98\";i:248;s:2:\"-0\";i:249;s:12:\"main_menu-73\";i:250;s:16:\"GotoDashboard-73\";i:251;s:17:\"close_register-73\";i:252;s:28:\"RemoveKitchenNotification-73\";i:253;s:18:\"ModifySelfOrder-73\";i:254;s:19:\"DeclineSelfOrder-73\";i:255;s:19:\"Accept_SelfOrder-73\";i:256;s:38:\"Set_as_Running_Order_in_Future_Sale-73\";i:257;s:21:\"Modify_Future_Sale-73\";i:258;s:22:\"Delete_Recent_Sales-73\";i:259;s:21:\"print_last_invoice-73\";i:260;s:13:\"Print_Bill-73\";i:261;s:17:\"create_invoice-73\";i:262;s:14:\"kot_tooltip-73\";i:263;s:16:\"edit_customer-73\";i:264;s:15:\"add_customer-73\";i:265;s:45:\"Delete_Item_From_Cart_When_Modifying_Order-73\";i:266;s:13:\"Enter_Tips-73\";i:267;s:33:\"Modify_Service_Delivery_Charge-73\";i:268;s:19:\"Provide_Discount-73\";i:269;s:15:\"modify_order-73\";i:270;s:15:\"cancel_order-73\";i:271;s:14:\"place_order-73\";i:272;s:2:\"-0\";i:273;s:8:\"enter-67\";i:274;s:9:\"delete-67\";i:275;s:7:\"view-67\";i:276;s:9:\"update-67\";i:277;s:6:\"add-67\";i:278;s:2:\"-0\";i:279;s:9:\"update-64\";i:280;s:2:\"-0\";i:281;s:12:\"uninstall-62\";i:282;s:2:\"-0\";i:283;s:9:\"delete-55\";i:284;s:7:\"view-55\";i:285;s:9:\"update-55\";i:286;s:6:\"add-55\";i:287;s:2:\"-0\";i:288;s:9:\"update-52\";i:289;s:2:\"-0\";i:290;s:9:\"update-49\";i:291;s:2:\"-0\";i:292;s:9:\"delete-35\";i:293;s:7:\"view-35\";i:294;s:9:\"update-35\";i:295;s:6:\"add-35\";i:296;s:2:\"-0\";i:297;s:9:\"update-31\";i:298;s:7:\"view-31\";i:299;s:2:\"-0\";i:300;s:6:\"view-1\";i:301;s:2:\"-0\";}language|s:7:\"english\";session_outlets|N;export_daily_sale|N;has_kitchen|s:1:\"1\";self_order_ran_code|s:10:\"R0AKE2E74X\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";user_id|s:1:\"1\";designation|N;full_name|s:9:\"Jose Diaz\";short_name|s:1:\"j\";phone|s:10:\"3124101723\";email_address|s:21:\"diazjose195@gmail.com\";role|s:5:\"Admin\";company_id|s:1:\"1\";active_menu_tmp|s:0:\"\";currency|s:1:\"$\";zone_name|s:14:\"America/Bogota\";date_format|N;business_name|s:2:\"Jd\";address|s:10:\"Cauca Olet\";website|N;currency_position|N;precision|N;default_customer|N;service_amount|N;delivery_amount|N;tax_type|N;decimals_separator|N;thousands_separator|N;open_cash_drawer_when_printing_invoice|N;when_clicking_on_item_in_pos|N;is_rounding_enable|N;attendance_type|N;default_order_type|N;is_loyalty_enable|N;pre_or_post_payment|s:1:\"1\";minimum_point_to_redeem|N;loyalty_rate|N;split_bill|N;place_order_tooltip|N;food_menu_tooltip|N;default_payment|N;invoice_footer|N;invoice_logo|N;language_manifesto|s:9:\"revhgbrev\";collect_tax|N;tax_title|N;tax_registration_no|N;tax_is_gst|N;state_code|N;outlet_id|s:1:\"1\";outlet_name|s:5:\"Norte\";email|s:21:\"diazjose195@gmail.com\";default_waiter|s:0:\"\";is_waiter|s:2:\"No\";'),('a24c9401db0f4e5de0a2a812af9094e5ad3c771f','172.18.0.1',1732490695,_binary '__ci_last_regenerate|i:1732490695;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('d7ad9b12709b5165d42ba0919a8462ffb4f36416','172.18.0.1',1732490210,_binary '__ci_last_regenerate|i:1732490210;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('fb42a25ef241ad3d4b8673fcca85cfb2467993b5','172.18.0.1',1732491305,_binary '__ci_last_regenerate|i:1732491305;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('90a9a63dcf82dba8e206be6368ca71a403ec51c1','172.18.0.1',1732491794,_binary '__ci_last_regenerate|i:1732491794;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";'),('0d74c94ea88042b925a515efe36399c62a829dae','172.18.0.1',1732492421,_binary '__ci_last_regenerate|i:1732491794;is_waiter|s:3:\"Yes\";user_id|i:2;outlet_id|s:1:\"1\";company_id|s:1:\"1\";date_format|N;service_amount|N;invoice_logo|N;precision|N;outlet_name|s:5:\"Norte\";has_kitchen|s:1:\"1\";address|s:10:\"Cauca Olet\";phone|s:10:\"3124101723\";email|s:21:\"diazjose195@gmail.com\";self_order_ran_code|s:10:\"6PCXQH4EB1\";is_self_order|s:3:\"Yes\";mobile_responsive_checker_self_order|s:3:\"Yes\";mobile_responsive_checker_online_order|s:0:\"\";self_order_table_id|s:1:\"1\";active_menu_tmp|s:0:\"\";');
/*!40000 ALTER TABLE `tbl_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `company_time_zone_gmt` varchar(20) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_settings_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_supplier_payments`
--

DROP TABLE IF EXISTS `tbl_supplier_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_supplier_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `note` text,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `added_date_time` datetime DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_supplier_payments_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_suppliers` (`id`),
  CONSTRAINT `tbl_supplier_payments_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_supplier_payments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_supplier_payments`
--

LOCK TABLES `tbl_supplier_payments` WRITE;
/*!40000 ALTER TABLE `tbl_supplier_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_supplier_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_suppliers`
--

DROP TABLE IF EXISTS `tbl_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_suppliers`
--

LOCK TABLES `tbl_suppliers` WRITE;
/*!40000 ALTER TABLE `tbl_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_system_settings`
--

DROP TABLE IF EXISTS `tbl_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_system_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personalinformation` text,
  `installation_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `domain_status` tinyint(4) DEFAULT '1',
  `domain_list` text,
  `license_key` varchar(255) DEFAULT NULL,
  `serial_code` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `idx_system_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_system_settings`
--

LOCK TABLES `tbl_system_settings` WRITE;
/*!40000 ALTER TABLE `tbl_system_settings` DISABLE KEYS */;
INSERT INTO `tbl_system_settings` VALUES (1,'YYYYY','2024-11-20 06:18:56',NULL,'Active','2024-11-20 06:18:56','2024-11-20 06:18:56',1,NULL,NULL,NULL,NULL,'Live');
/*!40000 ALTER TABLE `tbl_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tables`
--

DROP TABLE IF EXISTS `tbl_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `persons` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `area` varchar(45) DEFAULT NULL,
  `sit_capacity` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_tables_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_tables_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tables`
--

LOCK TABLES `tbl_tables` WRITE;
/*!40000 ALTER TABLE `tbl_tables` DISABLE KEYS */;
INSERT INTO `tbl_tables` VALUES (1,'Mesa 1',1,NULL,'','',1,'Live','1',4,1);
/*!40000 ALTER TABLE `tbl_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transfer`
--

DROP TABLE IF EXISTS `tbl_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_outlet_id` int(11) DEFAULT NULL,
  `to_outlet_id` int(11) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `total_sale_amount` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `received_date` datetime DEFAULT NULL,
  `note` text,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `from_outlet_id` (`from_outlet_id`),
  KEY `to_outlet_id` (`to_outlet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_transfer_ibfk_1` FOREIGN KEY (`from_outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_transfer_ibfk_2` FOREIGN KEY (`to_outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_transfer_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transfer`
--

LOCK TABLES `tbl_transfer` WRITE;
/*!40000 ALTER TABLE `tbl_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transfer_ingredients`
--

DROP TABLE IF EXISTS `tbl_transfer_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transfer_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `quantity_amount` decimal(10,2) DEFAULT NULL,
  `transfer_type` tinyint(4) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `from_outlet_id` int(11) DEFAULT NULL,
  `to_outlet_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `transfer_id` (`transfer_id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `idx_transfer_from` (`from_outlet_id`),
  KEY `idx_transfer_to` (`to_outlet_id`),
  CONSTRAINT `tbl_transfer_ingredients_ibfk_1` FOREIGN KEY (`transfer_id`) REFERENCES `tbl_transfer` (`id`),
  CONSTRAINT `tbl_transfer_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_transfer_ingredients_ibfk_3` FOREIGN KEY (`from_outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_transfer_ingredients_ibfk_4` FOREIGN KEY (`to_outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transfer_ingredients`
--

LOCK TABLES `tbl_transfer_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_transfer_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transfer_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transfer_received_ingredients`
--

DROP TABLE IF EXISTS `tbl_transfer_received_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transfer_received_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) DEFAULT NULL,
  `from_outlet_id` int(11) DEFAULT NULL,
  `to_outlet_id` int(11) DEFAULT NULL,
  `quantity_amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `from_outlet_id` (`from_outlet_id`),
  KEY `to_outlet_id` (`to_outlet_id`),
  CONSTRAINT `tbl_transfer_received_ingredients_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_transfer_received_ingredients_ibfk_2` FOREIGN KEY (`from_outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_transfer_received_ingredients_ibfk_3` FOREIGN KEY (`to_outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transfer_received_ingredients`
--

LOCK TABLES `tbl_transfer_received_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_transfer_received_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transfer_received_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_units`
--

DROP TABLE IF EXISTS `tbl_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) DEFAULT NULL,
  `description` text,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_units_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_units`
--

LOCK TABLES `tbl_units` WRITE;
/*!40000 ALTER TABLE `tbl_units` DISABLE KEYS */;
INSERT INTO `tbl_units` VALUES (1,'Ingrdiente Unit','',1,'Live');
/*!40000 ALTER TABLE `tbl_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_menu_access`
--

DROP TABLE IF EXISTS `tbl_user_menu_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_menu_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `outlet_ids` varchar(250) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `idx_user_menu_access` (`user_id`,`menu_id`),
  CONSTRAINT `tbl_user_menu_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_user_menu_access_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_menu_access`
--

LOCK TABLES `tbl_user_menu_access` WRITE;
/*!40000 ALTER TABLE `tbl_user_menu_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_menu_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `language` enum('english','spanish') DEFAULT NULL,
  `login_pin` varchar(20) DEFAULT NULL,
  `will_login` enum('Yes','No') DEFAULT 'No',
  `active_status` enum('Active','Inactive') DEFAULT 'Active',
  `outlets` varchar(250) DEFAULT NULL,
  `account_creation_date` datetime DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `role_id` int(11) DEFAULT NULL,
  `order_receiving_id` int(11) DEFAULT NULL,
  `kitchens` varchar(45) DEFAULT NULL,
  `created_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlet_id` (`outlet_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`),
  CONSTRAINT `tbl_users_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `tbl_companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Jose Diaz','diazjose195@gmail.com','df39dabb86549622180a19c20ed9c98c',NULL,NULL,'Admin',NULL,1,'english',NULL,'No','Active',NULL,'2018-02-17 07:28:32','Live',NULL,NULL,NULL,NULL),(2,'Self Order',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'No','Active',NULL,NULL,'Live',NULL,NULL,NULL,NULL),(3,'Default Waiter','',NULL,'','Waiter',NULL,1,1,NULL,'','No','Active','1',NULL,'Live',0,0,'','1');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_waste_ingredients`
--

DROP TABLE IF EXISTS `tbl_waste_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_waste_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) DEFAULT NULL,
  `waste_amount` decimal(10,2) DEFAULT NULL,
  `waste_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_waste_ingredients_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `tbl_ingredients` (`id`),
  CONSTRAINT `tbl_waste_ingredients_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_waste_ingredients`
--

LOCK TABLES `tbl_waste_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_waste_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_waste_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_wastes`
--

DROP TABLE IF EXISTS `tbl_wastes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loss` decimal(10,2) DEFAULT NULL,
  `note` text,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `user_id` (`user_id`),
  KEY `outlet_id` (`outlet_id`),
  CONSTRAINT `tbl_wastes_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_wastes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `tbl_wastes_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `tbl_outlets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_wastes`
--

LOCK TABLES `tbl_wastes` WRITE;
/*!40000 ALTER TABLE `tbl_wastes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_wastes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_active_domains`
--

DROP TABLE IF EXISTS `view_active_domains`;
/*!50001 DROP VIEW IF EXISTS `view_active_domains`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_active_domains` AS SELECT 
 1 AS `domain`,
 1 AS `validation_count`,
 1 AS `last_validation`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_active_domains`
--

/*!50001 DROP VIEW IF EXISTS `view_active_domains`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_active_domains` AS select `tbl_domain_history`.`domain` AS `domain`,count(0) AS `validation_count`,max(`tbl_domain_history`.`validation_date`) AS `last_validation` from `tbl_domain_history` where ((`tbl_domain_history`.`del_status` = 'Live') and (`tbl_domain_history`.`status` = 1)) group by `tbl_domain_history`.`domain` */;
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

-- Dump completed on 2024-11-24 18:53:50