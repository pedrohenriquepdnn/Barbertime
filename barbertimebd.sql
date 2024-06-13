CREATE DATABASE  IF NOT EXISTS `barbertimebd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `barbertimebd`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: barbertimebd
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `agendamentos`
--

DROP TABLE IF EXISTS `agendamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamentos` (
  `idagendamentos` int NOT NULL AUTO_INCREMENT,
  `cliente_id` varchar(45) NOT NULL,
  `servico_id` varchar(45) NOT NULL,
  `funcionario_id` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `situacao` varchar(45) NOT NULL,
  PRIMARY KEY (`idagendamentos`,`cliente_id`,`servico_id`,`funcionario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamentos`
--

LOCK TABLES `agendamentos` WRITE;
/*!40000 ALTER TABLE `agendamentos` DISABLE KEYS */;
INSERT INTO `agendamentos` VALUES (1,'0','0','0','2024-06-02','13:45:00','Confirmado'),(2,'1','1','1','2024-06-02','13:45:00','Confirmado'),(3,'1','1','1','2024-06-02','13:45:00','Confirmado'),(4,'1','1','1','2024-06-02','13:45:00','Confirmado'),(5,'1','1','1','2024-06-02','13:45:00','Confirmado'),(6,'1','1','1','2024-06-02','13:45:00','Confirmado'),(7,'1','1','1','2024-06-02','13:45:00','Confirmado'),(8,'1','1','1','2024-06-02','13:45:00','Confirmado'),(9,'1','1','1','2024-06-02','13:45:00','Confirmado'),(10,'1','1','1','2024-06-02','13:45:00','Confirmado');
/*!40000 ALTER TABLE `agendamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Erivaldo','(21) 99999-9999','123@gmail.com'),(2,'Erivaldo','(21) 99999-9999','123@gmail.com'),(3,'Erivaldo','(21) 99999-9999','123@gmail.com'),(4,'Erivaldo','(21) 99999-9999','123@gmail.com'),(5,'Erivaldo','(21) 99999-9999','123@gmail.com'),(6,'Erivaldo','(21) 99999-9999','123@gmail.com'),(7,'Erivaldo','(21) 99999-9999','123@gmail.com'),(8,'Erivaldo','(21) 99999-9999','123@gmail.com'),(9,'Erivaldo','(21) 99999-9999','123@gmail.com'),(10,'Erivaldo','(21) 99999-9999','123@gmail.com'),(11,'Erivaldo','(21) 99999-9999','123@gmail.com'),(12,'Erivaldo','(21) 99999-9999','123@gmail.com'),(13,'Erivaldo','(21) 99999-9999','123@gmail.com'),(14,'Erivaldo','(21) 99999-9999','123@gmail.com'),(15,'Erivaldo','(21) 99999-9999','123@gmail.com'),(16,'OII','(21) 99999-9999','123@gmail.com'),(17,'OII','(21) 99999-9999','123@gmail.com'),(18,'Erivaldo','(21) 99999-9999','123@gmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idfuncionarios` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(100) NOT NULL,
  `Endereco` varchar(100) NOT NULL,
  PRIMARY KEY (`idfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(2,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(3,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(4,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(5,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(6,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(7,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(8,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(9,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(10,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(11,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro'),(12,'Dona Benta','(21) 99999-9999','Recreio - Rio de Janeiro');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `idpagamentos` int NOT NULL AUTO_INCREMENT,
  `cliente_id` varchar(45) NOT NULL,
  `funcionario_id` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `metodo` varchar(45) NOT NULL,
  PRIMARY KEY (`idpagamentos`,`cliente_id`,`funcionario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,'1','1','2024-06-02','13:45:00','A Vista'),(2,'1','1','2024-06-02','13:45:00','A Vista'),(3,'1','1','2024-06-02','13:45:00','A Vista'),(4,'1','1','2024-06-02','13:45:00','A Vista'),(5,'1','1','2024-06-02','13:45:00','A Vista'),(6,'1','1','2024-06-02','13:45:00','A Vista'),(7,'1','1','2024-06-02','13:45:00','A Vista');
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `idServico` int NOT NULL AUTO_INCREMENT,
  `tservico` varchar(100) NOT NULL,
  `preco` float NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`idServico`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Corte Cabelo',27.99,'mid fade'),(2,'Corte Cabelo',27.99,'mid fade'),(3,'Corte Cabelo',27.99,'mid fade'),(4,'Corte Cabelo',27.99,'mid fade'),(5,'Corte Cabelo',27.99,'mid fade'),(6,'Corte Cabelo',27.99,'mid fade'),(7,'Corte Cabelo',27.99,'mid fade'),(8,'Corte Cabelo',27.99,'mid fade'),(9,'Corte Cabelo',27.99,'mid fade'),(10,'Corte Cabelo',27.99,'mid fade'),(11,'Corte Cabelo',27.99,'mid fade');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 18:34:06
