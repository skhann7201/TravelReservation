CREATE DATABASE  IF NOT EXISTS `airplanes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airplanes`;
-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: localhost    Database: airplanes
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aircrafts`
--

DROP TABLE IF EXISTS `Aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aircrafts` (
  `aircraft_id` int NOT NULL,
  `airline_id` char(2) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  PRIMARY KEY (`aircraft_id`),
  KEY `airline_id` (`airline_id`),
  CONSTRAINT `aircrafts_ibfk_1` FOREIGN KEY (`airline_id`) REFERENCES `Airlines` (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aircrafts`
--

LOCK TABLES `Aircrafts` WRITE;
/*!40000 ALTER TABLE `Aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Airlines`
--

DROP TABLE IF EXISTS `Airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Airlines` (
  `airline_id` char(2) NOT NULL,
  `airline_name` varchar(100) DEFAULT NULL,
  `num_aircrafts` int DEFAULT NULL,
  `num_airports` int DEFAULT NULL,
  PRIMARY KEY (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airlines`
--

LOCK TABLES `Airlines` WRITE;
/*!40000 ALTER TABLE `Airlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `Airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Airports`
--

DROP TABLE IF EXISTS `Airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Airports` (
  `airport_id` char(3) NOT NULL,
  `airport_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`airport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airports`
--

LOCK TABLES `Airports` WRITE;
/*!40000 ALTER TABLE `Airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `Airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerRep`
--

DROP TABLE IF EXISTS `CustomerRep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerRep` (
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `customerrep_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerRep`
--

LOCK TABLES `CustomerRep` WRITE;
/*!40000 ALTER TABLE `CustomerRep` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomerRep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `user_id` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES ('hk',NULL,'2025-04-18 02:03:30'),('sk',NULL,'2025-04-17 20:08:02'),('sk12',NULL,'2025-04-17 20:33:45'),('Sk123',NULL,'2025-04-16 17:03:52');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flights`
--

DROP TABLE IF EXISTS `Flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Flights` (
  `airline_id` char(2) NOT NULL,
  `flight_number` varchar(10) NOT NULL,
  `aircraft_id` int DEFAULT NULL,
  `departure_airport` char(3) DEFAULT NULL,
  `arrival_airport` char(3) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `is_international` tinyint(1) DEFAULT NULL,
  `base_price` decimal(10,2) DEFAULT NULL,
  `operating_day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') DEFAULT NULL,
  PRIMARY KEY (`airline_id`,`flight_number`),
  KEY `aircraft_id` (`aircraft_id`),
  KEY `departure_airport` (`departure_airport`),
  KEY `arrival_airport` (`arrival_airport`),
  CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`aircraft_id`) REFERENCES `Aircrafts` (`aircraft_id`),
  CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`departure_airport`) REFERENCES `Airports` (`airport_id`),
  CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`arrival_airport`) REFERENCES `Airports` (`airport_id`),
  CONSTRAINT `flights_ibfk_4` FOREIGN KEY (`airline_id`) REFERENCES `Airlines` (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flights`
--

LOCK TABLES `Flights` WRITE;
/*!40000 ALTER TABLE `Flights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FlightSchedules`
--

DROP TABLE IF EXISTS `FlightSchedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FlightSchedules` (
  `schedule_id` int NOT NULL,
  `airline_id` char(2) DEFAULT NULL,
  `flight_number` varchar(10) DEFAULT NULL,
  `flight_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `airline_id` (`airline_id`,`flight_number`),
  CONSTRAINT `flightschedules_ibfk_1` FOREIGN KEY (`airline_id`, `flight_number`) REFERENCES `Flights` (`airline_id`, `flight_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlightSchedules`
--

LOCK TABLES `FlightSchedules` WRITE;
/*!40000 ALTER TABLE `FlightSchedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `FlightSchedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TicketFlights`
--

DROP TABLE IF EXISTS `TicketFlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TicketFlights` (
  `ticket_id` varchar(20) NOT NULL,
  `flight_segment` int NOT NULL,
  `schedule_id` int DEFAULT NULL,
  `seat_number` varchar(10) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`,`flight_segment`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `ticketflights_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `Tickets` (`ticket_id`),
  CONSTRAINT `ticketflights_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `FlightSchedules` (`schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TicketFlights`
--

LOCK TABLES `TicketFlights` WRITE;
/*!40000 ALTER TABLE `TicketFlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `TicketFlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `ticket_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `purchase_datetime` datetime DEFAULT NULL,
  `total_fare` decimal(10,2) DEFAULT NULL,
  `booking_fee` decimal(10,2) DEFAULT NULL,
  `passenger_first_name` varchar(50) DEFAULT NULL,
  `passenger_last_name` varchar(50) DEFAULT NULL,
  `passenger_id_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` varchar(20) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('hk','Hanna','Kay','HannaKay@gmail.com','hk'),('sk','Shahnaz','Khan','sk@gmail.com','sk'),('sk12','Shahnaz','Khan','skhann7201@gmail.com','sk12'),('Sk123','Shahnaz','Khan','sk1232@gmail.com','sk123');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WaitingList`
--

DROP TABLE IF EXISTS `WaitingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WaitingList` (
  `waitlist_id` int NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `request_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`waitlist_id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `waitinglist_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `FlightSchedules` (`schedule_id`),
  CONSTRAINT `waitinglist_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WaitingList`
--

LOCK TABLES `WaitingList` WRITE;
/*!40000 ALTER TABLE `WaitingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WaitingList` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-18  2:07:51
