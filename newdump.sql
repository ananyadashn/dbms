-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: db3
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `Citizen`
--

DROP TABLE IF EXISTS `Citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Citizen` (
  `Aadhar_Number` varchar(30) NOT NULL,
  `Citizen_Name` varchar(100) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `D_O_B` date DEFAULT NULL,
  `Phone_Nuber` varchar(12) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Aadhar_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Citizen`
--

LOCK TABLES `Citizen` WRITE;
/*!40000 ALTER TABLE `Citizen` DISABLE KEYS */;
INSERT INTO `Citizen` VALUES ('1234 5678 3333','Nakul Sharma','M',29,'2075, 4th Cross, 2nd Block, H.R.B.R Layout, Kalyan Nagar, Bangalore','1990-08-02','6479275300','naksharma@gmail.com'),('1234 5678 4454','Chikappa Swamy','M',37,'Hyatt Centric MG Road Bangalore, 1/1, Swami Vivekananda Road, Halasuru, Bengaluru, Karnataka 560008','1982-02-09','9034859933','chik77@gmail.com'),('2134 5678 4454','Sumukh Patel','M',30,'64, 5th Cross Rd, Vinayaka Nagar, Wilson Garden, Bengaluru, Karnataka 560027','1989-05-31','8138748191','unknown'),('2234 8891 6732','Aahna Rajendra','F',26,'28/2, 1st Floor, Primus Building Near Dmart, Whitefield Rd, Siddapura, Bengaluru, Karnataka 560066','1993-06-03','8956243656','aahna123raj@gmail.com'),('6372 5161 2847','Naveen Kumar','M',45,'1, Basappa Rd, Lakshmiamma Garden, Shanti Nagar, Bengaluru, Karnataka 560027','1974-10-09','8276462282','navk9@gmail.com'),('6372 5161 7482','Harinakshi Chittranjan','F',26,'15, 3rd Floor, Opposite Raheja Arcade, 7th Block, Koramangala, Bengaluru, Karnataka 560095','1993-05-06','7563524490','hari.chir@gmail.com'),('6632 1167 8823','Ishika Aadarsh','F',30,'29 Ground Floor White House Opp, SBI Bank Road, St Marks Rd, Bengaluru, Karnataka 560001','1989-03-29','9745336243','ishika123@gmail.com'),('6632 1761 8823','Salman Singh','M',26,'No.1, Residency Road, Bangalore, Karnataka 560025, India, Bengaluru, Karnataka 560025','1993-11-08','7261509329','sallu69@gmail.com'),('7341 9901 1000','Dev Raj','M',50,'#14, Lal Bagh Main Rd, Doddamavalli, Sudhama Nagar, Bengaluru, Karnataka 560027','1969-10-11','7137449002','unknown'),('7341 9901 1108','Bansal Kumar','M',43,'90, KH Road, opposite KSRTC Central Office, Raja Ram Mohanroy Extension, Shanti Nagar, Bengaluru, Karnataka 560025','1976-09-04','9393934530','unknown'),('7341 9901 8011','Nagendra Ravi','M',25,'3rd floor, 24th Cross, Siddanna Layout, Banashankari Stage II, Banashankari, Bengaluru, Karnataka- 560070, Bengaluru, Karnataka 560070','1994-01-01','8734625346','nagraju1@gmail.com'),('7362 5161 2847','Vidya Sharma','F',36,'169/A/170, 9th Main Road Sector 6, HSR Layout, BDA, Bommanahalli, Bengaluru, Karnataka 560102','1983-06-25','8281741172','vishu@gmail.com'),('7737 7272 6651','Devendra raju','M',25,'25/1, 27th Cross Rd, Banashankari Stage II, Banashankari, Bengaluru, Karnataka 560070','1994-09-09','5442738936','dev.raju@gmail.com'),('8192 6717 7182','Priya kumar','F',26,'161, 80 Feet Road RT Nagar, Matadahalli, Ganganagar, Bengaluru, Karnataka 560032','1993-02-25','9845237465','priya.k12@yahoo.com'),('8192 7176 7182','Ramesh Dutta','M',20,'105, KH Road Lalbagh Double Rd Opp. Corporation Bank, Shanti Nagar, Bengaluru, Karnataka 560027','1999-03-21','4828111838','dut80@gmail.com'),('8722 6727 7171','Bhagat Varma','M',35,'90/4, Marathahalli Outer Ring Road, Near Park Plaza Hotel, Bengaluru, Karnataka 560037','1984-03-19','6524389111','bhagat.varma@yahoo.com'),('8812 0302 8818','Parth singh','M',27,'88, Marathahalli - Sarjapur Outer Ring Rd, Bellandur, Marathahalli - Sarjapur Outer Ring Rd, Marathahalli, Bengaluru, Karnataka 560037','1992-06-08','8872543728','singh.pa@gmail.com'),('9018 6610 9912','Ramya Ram','F',30,'No. 65, 1st Floor, Gold Plaza, Coles Road,, Frazer Town, Bengaluru, Karnataka 560005','1989-04-12','9253416453','ram2@gmail.com'),('j','j','j',3,'3','1999-08-03','h','g');
/*!40000 ALTER TABLE `Citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complaint`
--

DROP TABLE IF EXISTS `Complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complaint` (
  `Complaint_id` int(20) NOT NULL AUTO_INCREMENT,
  `Date_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Suspect_Name` varchar(50) NOT NULL,
  `Suspect_Desc` varchar(1000) NOT NULL,
  `Station_id` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Pending',
  `Crime_Location` varchar(500) NOT NULL,
  `Nature_of_Crime` varchar(1000) NOT NULL,
  `Complainee_Aadhar_No` varchar(30) NOT NULL,
  PRIMARY KEY (`Complaint_id`),
  KEY `Complaint_ibfk_1` (`Station_id`),
  KEY `fk_Complaint_1_idx` (`Complainee_Aadhar_No`),
  CONSTRAINT `Complaint_ibfk_1` FOREIGN KEY (`Station_id`) REFERENCES `Station` (`Station_id`),
  CONSTRAINT `fk_Complaint_1` FOREIGN KEY (`Complainee_Aadhar_No`) REFERENCES `Citizen` (`Aadhar_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12244 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Complaint`
--

LOCK TABLES `Complaint` WRITE;
/*!40000 ALTER TABLE `Complaint` DISABLE KEYS */;
INSERT INTO `Complaint` VALUES (12234,'2019-04-21 07:00:00','Unknown','Tall man in Black Mask','st03','Pending','25/1, 27th Cross Rd, Banashankari Stage II, Banashankari, Bengaluru, Karnataka 560070','A man broke into the house and stole jewellary and cash worth 9 lakhs','1234 5678 3333'),(12235,'2019-08-09 12:20:00','Bansal Kumar','Brother of Victim','st01','Pending','14/1, Wood Street, Ashok Nagar, Bengaluru, Karnataka 560025','A man murdered Anil Kumar after an argurment','6372 5161 7482'),(12236,'2019-04-15 08:52:00','Chikappa Swamy','Missing a tooth,left-handed','st08','Pending','12/24 ,cherry lane,cubbon park,bangalore','Did not pay me after he bought a house','8722 6727 7171'),(12237,'2019-03-14 03:36:00','Naveen Kumar','Husband','st10','Pending','161, 80 Feet Road RT Nagar, Matadahalli, Ganganagar, Bengaluru, Karnataka 560032','Domestic abuse','7737 7272 6651'),(12238,'2019-09-08 00:51:08','Unknown','Scar on Right Forearm','st07','Pending','No. 65, 1st Floor, Gold Plaza, Coles Road, Frazer Town, Bengaluru, Karnataka 560005','Rape','7341 9901 8011'),(12239,'2019-05-06 07:39:07','Ramesh Dutta','Was wearing a mask,had a tattoo of a lion on his right arm','st05','Pending','28/2, 1st Floor, Primus Building Near Dmart, Whitefield Rd, Siddapura, Bengaluru, Karnataka 560066','I was walking on the road when the man on a motorcycle snatched my bag. I noted down the liscence plate no and found out the owner','2234 8891 6732'),(12240,'2019-03-07 17:38:00','Salman Singh','Wears a goldchain of Ganesha','st07','Pending','No. 65, 1st Floor, Gold Plaza, Coles Road,Frazer Town, Bengaluru, Karnataka 560005','I see a man often following me when I go back home since one week','9018 6610 9912'),(12241,'2019-09-08 09:39:06','Dev Raj','Husband','st05','Pending','33, 19th cross,Sadaakala building , Whitefield Rd, Siddapura, Bengaluru, Karnataka 560066','Dowry harrasment','6632 1167 8823'),(12242,'2019-04-05 07:30:00','Sumukh Patel','Brother-in-law of victim','st06','Pending','No. 9/1, 2nd Floor, VRR Orchid, above Surya Nissan, Brindavan Extension, Doddanekundi, Mahadevapura, Bengaluru, Karnataka 560037','Drunken assault','8192 6717 7182'),(12243,'2019-11-09 08:59:00','Vidya Sharma','Blind in one eye','st04','guilty','Baiyappanahalli Metro station, Railway Parallel Rd, Sadanandanagar, Bennigana Halli, Bengaluru, Karnataka 560038','Using forged currency notes','8812 0302 8818');
/*!40000 ALTER TABLE `Complaint` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger after_update after update on Complaint for each row insert into Crime set status='guilty',Complaint_id=new.Complaint_id,Date_Time=new.Date_Time,Suspect_Name=new.Suspect_Name,Suspect_Desc=new.Suspect_Desc,Station_id=new.Station_id,Crime_Location=new.Crime_Location,Nature_of_Crime=new.Nature_of_Crime */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Crime`
--

DROP TABLE IF EXISTS `Crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Crime` (
  `Complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Suspect_Name` varchar(50) DEFAULT NULL,
  `Suspect_Desc` varchar(1000) DEFAULT NULL,
  `Station_id` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Crime_Location` varchar(500) DEFAULT NULL,
  `Nature_of_Crime` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Complaint_id`),
  KEY `Station_id` (`Station_id`),
  CONSTRAINT `Crime_ibfk_1` FOREIGN KEY (`Station_id`) REFERENCES `Station` (`Station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12244 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crime`
--

LOCK TABLES `Crime` WRITE;
/*!40000 ALTER TABLE `Crime` DISABLE KEYS */;
INSERT INTO `Crime` VALUES (12243,'2019-11-09 08:59:00','Vidya Sharma','Blind in one eye','st04','guilty','Baiyappanahalli Metro station, Railway Parallel Rd, Sadanandanagar, Bennigana Halli, Bengaluru, Karnataka 560038','Using forged currency notes');
/*!40000 ALTER TABLE `Crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Police_Officer`
--

DROP TABLE IF EXISTS `Police_Officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Police_Officer` (
  `Police_id` varchar(20) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Police_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Police_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Police_Officer`
--

LOCK TABLES `Police_Officer` WRITE;
/*!40000 ALTER TABLE `Police_Officer` DISABLE KEYS */;
INSERT INTO `Police_Officer` VALUES ('bcp001','hello1234','Harshita Kaur'),('bcp002','passwd90','Varsha Thakur'),('bcp003','mynameis123','Ria Agarwal'),('bcp004','qwerty','Aryan Thakur'),('bcp005','abc123','Veena Mathu'),('bcp006','dragon','Ansh Iyer'),('bcp007','sunshine','Raunak Reddy'),('bcp008','football1','Zair Khan'),('bcp009','Master$123','Lal Singh'),('bcp010','superman','Venkat Swaminathan'),('o','o','o');
/*!40000 ALTER TABLE `Police_Officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Station`
--

DROP TABLE IF EXISTS `Station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Station` (
  `Station_id` varchar(20) NOT NULL,
  `Station_Name` varchar(100) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `Phone_No` varchar(30) DEFAULT NULL,
  `HeadInspector_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Station_id`),
  KEY `fk_Station_1_idx` (`HeadInspector_ID`),
  CONSTRAINT `fk_Station_1` FOREIGN KEY (`HeadInspector_ID`) REFERENCES `Police_Officer` (`Police_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Station`
--

LOCK TABLES `Station` WRITE;
/*!40000 ALTER TABLE `Station` DISABLE KEYS */;
INSERT INTO `Station` VALUES ('st01','Ashoknagar Police Station','Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560025','080-22942076','bcp001'),('st02','Banasawadi Police Station','HRBR Layout 2nd Block, HRBR Layout, Kalyan Nagar, Bengaluru, Karnataka 560043','080-22942552','bcp002'),('st03','Banashankari Police Station','9th Main Road Thyagaraj Nagar, Banashankari Stage II, Banashankari, Bengaluru, Karnataka 560070','080-22942564','bcp003'),('st04','Byappanahalli Police Station','Near, Gopalan Signature Mall, Swamy Vivekananda Road, Rahat Bagh, Nagavarapalya, Bennigana Halli, Bengaluru, Karnataka 560093','080-22942545','bcp004'),('st05','Whitefield Police Station','Whitefield Main Rd, beside Prestige White Meadows, Sathya Sai Layout, Whitefield, Bengaluru, Karnataka 560066','080-22943472','bcp005'),('st06','Mahadevapura Police Station','Whitefield Main Rd, Beside Singayyanapalya Bus Stop, Singayyanapalya, Krishnarajapura, Bengaluru, Karnataka 560048','080-28510782','bcp006'),('st07','Frazer Town Police Station','Lazar Rd, Near East Railway Station, Pulikeshi Nagar, Bengaluru, Karnataka 560005','080-22942565','bcp007'),('st08','Cubbon Park Police Station','Ground floor, VV Towers, cubbon park traffic police station, Ambedkar Veedhi, Bengaluru, Karnataka 560001','080-22942675','bcp008'),('st09','Bellandur Police Station','37, Sarjapur Main Rd, Amblipura, PWD Quarters, 1st Sector, Bellandur, Bengaluru, Karnataka 560103','080-25747771','bcp009'),('st10','R T Nagar Police Station','Dinnur Main Rd, P&T Colony, RT Nagar, Bengaluru, Karnataka 560032','080-22942538','bcp010');
/*!40000 ALTER TABLE `Station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-09 14:37:58
