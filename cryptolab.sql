CREATE DATABASE  IF NOT EXISTS `cryptodb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cryptodb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cryptodb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `idcurrency` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(400) NOT NULL,
  `network` varchar(45) NOT NULL,
  `abbreviation` varchar(45) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`idcurrency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Solana','Solana es un proyecto de cÃ³digo abierto altamente funcional que se basa en la naturaleza sin permiso de la tecnologÃ­a blockchain para proporcionar soluciones financieras descentralizadas (DeFi). Si bien la idea y el trabajo inicial en el proyecto comenzaron en 2017, Solana fue lanzada oficialmente en marzo de 2020 por la FundaciÃ³n Solana con sede en Ginebra, Suiza.	','Solana','sol',32.57),(2,'Bitcoin','Bitcoin es una criptomoneda descentralizada presentada originalmente en un documento tÃ©cnico en 2008 por una persona, o grupo de personas, utilizando el alias Satoshi Nakamoto. Se lanzÃ³ poco despuÃ©s, en enero de 2009	','Bitcoin','btc',19750),(3,'Polkadot','Polkadot es un protocolo de sharding multicadena de cÃ³digo abierto que facilita la transferencia entre cadenas de cualquier tipo de datos o activos, no solo tokens, lo que hace que una amplia gama de blockchains puedan interoperar entre sÃ­.	','Polkadot','dot',7.52),(4,'PancakeSwap','Se lanzÃ³ en septiembre de 2020 y es un intercambio descentralizado por el intercambio de tokens BEP20 en Binance Smart Chain. PancakeSwap utiliza un modelo de creador de mercado automatizado en el que los usuarios negocian con un grupo de liquidez. Estos fondos comunes los llenan los usuarios que depositan sus fondos en el fondo comÃºn y reciben tokens de proveedor de liquidez (LP) a cambio.	','Binance Smart Chain	','cake',4.5),(5,'Matic','MATIC, los tokens nativos de Polygon, son un token ERC-20 que se ejecuta en la cadena de bloques Ethereum. Los tokens se utilizan para servicios de pago en Polygon y como moneda de liquidaciÃ³n entre usuarios que operan dentro del ecosistema Polygon. Las comisiones por transacciÃ³n en las cadenas laterales de Polygon tambiÃ©n se pagan en tokens MATIC.','Polygon','matic',0.85),(6,'Axie Infinity','Axie Infinity es un juego de comercio y lucha basado en blockchain que es parcialmente propiedad de sus jugadores y estÃ¡ operado por ellos. stos Axies pueden tomar varias formas, y hay mÃ¡s de 500 partes diferentes del cuerpo disponibles, incluidas partes acuÃ¡ticas, de bestias, pÃ¡jaros, insectos, plantas y reptiles.','Etherium','axs',13.8),(7,'BNB','BNB se lanzÃ³ a travÃ©s de una oferta inicial de monedas en 2017, 11 dÃ­as antes de que el exchange de criptomonedas Binance se pusiera en marcha. Originalmente se emitiÃ³ como un token ERC-20 que se ejecutaba en la red de Ethereum, con un suministro total limitado a 200 millones de monedas y 100 millones de BNB ofrecidos en la ICO.','Binance Smart Chain	','bnb',280),(8,'Cardano','Cardano fue fundada en 2017, y las token de ADA estÃ¡n diseÃ±adas para asegurar que los propietarios puedan participar en el funcionamiento de la red. Debido a esto, los que poseen esta criptomoneda tienen derecho a votar sobre cualquier cambio propuesto en el software.','Cardano','ADA',0.47);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `idtransaction` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `tx_id` varchar(80) NOT NULL,
  `amount` double NOT NULL,
  `neetwork_fee` double NOT NULL,
  `block` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `currency` varchar(45) NOT NULL,
  `wallet_from` int NOT NULL,
  `user_iduser` int NOT NULL,
  PRIMARY KEY (`idtransaction`),
  KEY `fk_transaction_wallet1_idx` (`wallet_from`),
  KEY `fk_transaction_user1_idx` (`user_iduser`),
  CONSTRAINT `fk_transaction_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`),
  CONSTRAINT `fk_transaction_wallet1` FOREIGN KEY (`wallet_from`) REFERENCES `wallet` (`idwallet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rodrigo','rodrigo@pucp.pe','prueba'),(2,'brenda','brenda@pucp.pe','brenda'),(3,'stefano','stefano@pucp.pe','stefano'),(4,'hiro','hiro@pucp.pe','hiro'),(5,'alexander','alexander@pucp.pe','alexander');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `idwallet` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `total_usd` varchar(45) NOT NULL,
  `user_iduser` int NOT NULL,
  PRIMARY KEY (`idwallet`),
  KEY `fk_wallet_user1_idx` (`user_iduser`),
  CONSTRAINT `fk_wallet_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,'0x67def8bb45327eb938e0dc5154637a59bffd82c6','400',1),(2,'0xee226379db83cffc681495730c11fdde79ba4c0c','1200',1),(3,'0x25bb66d28f7aed46b54613c74309a53228ee6893','500',1),(4,'0x2ac682e9260e5cebbdce2a7ee48ba81ed8826012','1800',2),(5,'0xf834d8b3df5272d497ac7690dbd68fc2df25f1b5','6000',3),(6,'0xf8c86c8c997c7f48184096834083178d697aa49d','200',4),(7,'0xf8c86c8c997c7f48184096834083178d697aa49d','400',5),(8,'0xaefc10eeca39abaeb66b2b1c480763614bc1179e','50',2),(9,'0x4dd38e067abbd9a77fea5d5771d0d61a72eb0ef6','220',4),(10,'0x295e26495cef6f69dfa69911d9d8e4f3bbadb89b','590',4);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_has_currency_wallet`
--

DROP TABLE IF EXISTS `wallet_has_currency_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_has_currency_wallet` (
  `wallet_idwallet` int NOT NULL,
  `currency_idcurrency` int NOT NULL,
  `purchase_price` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`wallet_idwallet`,`currency_idcurrency`),
  KEY `fk_wallet_has_currency_currency1_idx` (`currency_idcurrency`),
  KEY `fk_wallet_has_currency_wallet_idx` (`wallet_idwallet`),
  CONSTRAINT `fk_wallet_has_currency_currency1` FOREIGN KEY (`currency_idcurrency`) REFERENCES `currency` (`idcurrency`),
  CONSTRAINT `fk_wallet_has_currency_wallet` FOREIGN KEY (`wallet_idwallet`) REFERENCES `wallet` (`idwallet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_has_currency_wallet`
--

LOCK TABLES `wallet_has_currency_wallet` WRITE;
/*!40000 ALTER TABLE `wallet_has_currency_wallet` DISABLE KEYS */;
INSERT INTO `wallet_has_currency_wallet` VALUES (1,1,20,5),(1,2,15000,0.2),(2,1,58,7),(3,5,1,15),(4,8,0.5,200),(5,6,15,8),(6,7,300,4),(7,5,13,20),(8,8,3.2,300);
/*!40000 ALTER TABLE `wallet_has_currency_wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13 21:08:29
