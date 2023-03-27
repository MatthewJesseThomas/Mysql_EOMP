-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: FruitMarket
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `displayusers_view`
--

DROP TABLE IF EXISTS `displayusers_view`;
/*!50001 DROP VIEW IF EXISTS `displayusers_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `displayusers_view` AS SELECT 
 1 AS `HOST`,
 1 AS `USER`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productrecorddisplay_view`
--

DROP TABLE IF EXISTS `productrecorddisplay_view`;
/*!50001 DROP VIEW IF EXISTS `productrecorddisplay_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productrecorddisplay_view` AS SELECT 
 1 AS `productID`,
 1 AS `productName`,
 1 AS `price`,
 1 AS `weight`,
 1 AS `stock`,
 1 AS `supplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productID` int NOT NULL,
  `productName` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `stock` int NOT NULL,
  `supplierID` varchar(10) NOT NULL,
  PRIMARY KEY (`productID`),
  KEY `product_supplier` (`supplierID`),
  CONSTRAINT `product_supplier` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Lady Finger Bananas',17.95,'750g',45,'SUPP0001'),(1002,'Pink Lady Apples',18.95,'1.5kg',15,'SUPP0001'),(1003,'Red Anjou Pears',22.99,'1kg',24,'SUPP0001'),(1004,'Cavendish Bananas',15.95,'1kg',18,'SUPP0001'),(2001,'Tenderstem Broccoli',35.90,'400g',8,'SUPP0002'),(2002,'Portabellini Mushrooms',18.99,'250g',16,'SUPP0002'),(3001,'Raw Almonds',99.00,'1kg',6,'SUPP0003'),(3002,'Macroon Butter',32.95,'400g',9,'SUPP0003'),(3003,'Organic Coconut Oil',89.95,'500ml',15,'SUPP0003'),(4001,'Ayrshire Milk',33.95,'3L',23,'SUPP0004'),(4002,'Simonzola Blue Cheese',27.65,'270g',4,'SUPP0004');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `products_view`
--

DROP TABLE IF EXISTS `products_view`;
/*!50001 DROP VIEW IF EXISTS `products_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_view` AS SELECT 
 1 AS `productID`,
 1 AS `productName`,
 1 AS `price`,
 1 AS `weight`,
 1 AS `stock`,
 1 AS `supplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_16view`
--

DROP TABLE IF EXISTS `q1_16view`;
/*!50001 DROP VIEW IF EXISTS `q1_16view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_16view` AS SELECT 
 1 AS `companyName`,
 1 AS `contactNo`,
 1 AS `productName`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_18`
--

DROP TABLE IF EXISTS `q1_18`;
/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_18` AS SELECT 
 1 AS `productID`,
 1 AS `productName`,
 1 AS `price`,
 1 AS `stock`,
 1 AS `supplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q9`
--

DROP TABLE IF EXISTS `q9`;
/*!50001 DROP VIEW IF EXISTS `q9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q9` AS SELECT 
 1 AS `ProductId`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `ProductCategory`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_view`
--

DROP TABLE IF EXISTS `supplier_view`;
/*!50001 DROP VIEW IF EXISTS `supplier_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplier_view` AS SELECT 
 1 AS `supplierID`,
 1 AS `companyName`,
 1 AS `contactPerson`,
 1 AS `contactNO`,
 1 AS `productCategory`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplierID` varchar(10) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `contactPerson` varchar(30) NOT NULL,
  `contactNO` varchar(13) NOT NULL,
  `productCategory` varchar(55) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUPP0001','Fruit City','Themba','0115062089','Fruit'),('SUPP0002','Vegan Veggie Xpress','Chiyere','0137228936','Vegetables'),('SUPP0003','The Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','0216964157','Dairy'),('SUPP0006','Fruit&Veg','Abdu','0216965111','Nuts');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `displayusers_view`
--

/*!50001 DROP VIEW IF EXISTS `displayusers_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `displayusers_view` AS select `mysql`.`user`.`Host` AS `HOST`,`mysql`.`user`.`User` AS `USER` from `mysql`.`user` where ((`mysql`.`user`.`User` = 'root') or (`mysql`.`user`.`User` = 'matthew_t')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productrecorddisplay_view`
--

/*!50001 DROP VIEW IF EXISTS `productrecorddisplay_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productrecorddisplay_view` AS select `products`.`productID` AS `productID`,`products`.`productName` AS `productName`,`products`.`price` AS `price`,`products`.`weight` AS `weight`,`products`.`stock` AS `stock`,`products`.`supplierID` AS `supplierID` from `products` where ((`products`.`productID` = 4002) or (`products`.`productID` = 3001) or (`products`.`productID` = 2001) or (`products`.`productID` = 3002) or (`products`.`productID` = 4001) or (`products`.`productID` = 1003) or (`products`.`productID` = 1001)) order by `products`.`stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `products_view`
--

/*!50001 DROP VIEW IF EXISTS `products_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_view` AS select `products`.`productID` AS `productID`,`products`.`productName` AS `productName`,`products`.`price` AS `price`,`products`.`weight` AS `weight`,`products`.`stock` AS `stock`,`products`.`supplierID` AS `supplierID` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_16view`
--

/*!50001 DROP VIEW IF EXISTS `q1_16view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_16view` AS select `s`.`companyName` AS `companyName`,`s`.`contactNO` AS `contactNo`,`p`.`productName` AS `productName`,`p`.`price` AS `price` from (`suppliers` `s` left join `products` `p` on((`s`.`supplierID` = `p`.`supplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_18`
--

/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_18` AS select `p`.`productID` AS `productID`,`p`.`productName` AS `productName`,`p`.`price` AS `price`,`p`.`stock` AS `stock`,`p`.`supplierID` AS `supplierID` from (`products` `p` join `suppliers` `s` on((`p`.`supplierID` = `s`.`supplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q9`
--

/*!50001 DROP VIEW IF EXISTS `q9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q9` AS select `p`.`productID` AS `ProductId`,`p`.`productName` AS `ProductName`,`p`.`price` AS `Price`,`p`.`weight` AS `Weight`,`p`.`stock` AS `Stock`,`s`.`productCategory` AS `ProductCategory`,format(((`p`.`price` * `p`.`stock`) * 1.15),4) AS `TotalPrice` from (`suppliers` `s` join `products` `p` on((`s`.`supplierID` = `p`.`supplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_view`
--

/*!50001 DROP VIEW IF EXISTS `supplier_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_view` AS select `suppliers`.`supplierID` AS `supplierID`,`suppliers`.`companyName` AS `companyName`,`suppliers`.`contactPerson` AS `contactPerson`,`suppliers`.`contactNO` AS `contactNO`,`suppliers`.`productCategory` AS `productCategory` from `suppliers` */;
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

-- Dump completed on 2023-02-01 12:06:49
