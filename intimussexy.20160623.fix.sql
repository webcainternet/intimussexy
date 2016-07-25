-- MySQL dump 10.13  Distrib 5.1.73, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: intimussexy
-- ------------------------------------------------------
-- Server version	5.1.73-1

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,1,'Demo','Demo','Demo','Demo','','Demo','5555555555',222,3529,''),(2,2,'demo','demo','','demo demo','','demo','12345',222,3949,''),(5,5,'Ricardo','Silveira','','Marcelo Gama','São João','Porto Alegre','90540040',30,460,''),(6,6,'Margarete','Fitarelli','','Cristovão Colombo 4105 - apto 1604 - torre B','Higienópolis','Porto Alegree','90560005',30,460,''),(7,7,'Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177',30,460,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'iToLOEWB0e6AI61QTQGWFwHYrW281U0LwiBlLVzWRjRBxjyq7LZ7dug5jIJK8otx','','','2KQYAALEkBeZVjneeek6uGyyURSu6Vex0JXjrCZKw1jKv7Uq3JnS3z8G6xTqyZHKqfWGRcfm0EhSEr3OLNjB35BubqNAh0n4YPOBtOecwoWyOzUKUnWHxY5wz79sJpAB9W8TEYVqklErRUodWaCliOsLElnwn1Qgc0k9Q5EQR6p7MN0KQllcMcX7MmJO9aYYxsFBV0pOznHlAd5NDJBqsD4GMAiDOWZnB6bbSHIjRsclpG1orFUSGBUnEwzPUpSQ',1,'2014-12-02 11:31:26','2014-12-02 11:31:26'),(2,'6GLMpXsRtu7nOcuOwMbicN2j1NYtEZ0Brgi30wYUF3qxfFQQtEfMzEOiYxxzhdC8','','','0zTcZDbQy4wzKkKJDx6rjw8aTPkyXZmyW9b4UN1E4xPuL7a5uZvFqXFKljuokNkgOC6OnPpuYjFhkMEkz37VL0jwRwRXL44Gf7yaUJzSPMTMWUFGQPgdDLbRT0L9JdmjIvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJGh8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuRTn9O4jIucMJ',1,'2014-12-08 10:26:17','2014-12-08 10:26:17'),(3,'1GbOxanTqHWXgwTxvfrXX4RezEO7GjSIofq2beHf6lz2JbfUeGYs7KMWBuIIoa6W','','','TRy376eEFdKtnekOFE7Zay9mGx5qFoc70byRWvsAFsY8A4hgjZYevypPCOjlYP05Q7qDn7zU8VdkPrWL5Hr78MNP1CG4jOGRi1bMwhyAtVbjW1ENJN3wD7nmiOfkmkP9sJDsxepFWsS6VZomPp69BG5XHwxniTQFuxilryYg1cApNUGZNf3j0mGfjs6DVaJjpz52dfAUPjlw7majEtrgieIA3B81C44ZcNLgHkegfEEQjRmGxTX1JvD3Fr2Bkvin',1,'2014-12-18 10:06:22','2014-12-18 10:06:22'),(4,'FirDBcAWQDtTaFOVluVbWvZDzWRLjPTQroTSyRps8XLgynOKZRnmVBvVtGaUJO9B','','','rmTZ89r6EiBljDl1kqTprKdfAt6VGFEoEcpYgjGChmNisVWaJ7WlaLjhoO0PazfKyLZQaB3BXixYNge1EHxYhEDcqlGBHaTh5vgAtVD1kWvGGj9LXJkEAz3PF0upL4fxaOAmYikkKDFrWe2XEDvn1dH418wLnRE5Sk1HbmeMImxJARHcHzTDG9sbA8KkcfB6hxGd0jwpdD2eA7uYieOWrXq1h061pmUyK3ssnZbBLWUrYeuNWBhhqoCJblEAOlBj',1,'2014-12-23 00:13:52','2014-12-23 00:13:52'),(5,'lXPCm5ugGLyWJ4AKV2rQlguIqhAVfTNGqcJTX30dEo0Ni1Y4tFKVl5dRcem8x0Fe','','','SOxqIoKNSAa11ywl366f2axV4ZTrQZMioAOwoZ97ZayRPl3Jh0oaQbvK1F2HeEqJE55tU5quWfClG5uovYEB0zLs4E0ZIgiNce7wanhwIjXPeH3Pg7RXxdFsh5Hqcq44L1rlfPXnyu2S2wiZu0xhT3P1zXhSDbNOT40yJNc88VR1H0R1qEYA8o1xBYGF0TUJOK8XXaWWvnN3dfuKjJKiyBW0Zc5QvQa9aYXyztLlXYe03PAdYKCNMYDm082lPSlq',1,'2015-02-05 09:27:37','2015-02-05 09:27:37'),(6,'SvW5GkGBUBviUibs6JrOfRpU234sYeim4AJuv6zVwOJGUXPPOUqe0jjEBCerFPhk','','','3HTcxK4gmU5grEao4XCnjt0rhEbiJ24aQH1CMQXkyRDycn957TvopveMb7vSlXoJA8we9ONgYHj9kF5FXH2hIqgjrtc3ZvwuHsEyJFaVWzcCFZOHLxWT9d5zVXhXlBQNlVtBqyBBqZs77l4BWVN6NIr6W48uKJIiczwFkZ8kY2VuNp8x4wbcyp16vSy8GJYvrMMC23TBdMWa0mYczFC0wFXygjAFaCA1Tb92hOCU5Zu70aN9IQBHHWRjpsjEHxAz',1,'2015-02-05 12:09:01','2015-02-05 12:09:01'),(7,'UGlNppc6n0WR88xS24tlFAnSxEc8udrrIETGsKwPpoCutzkrHiXqjL3xQiFn6AaS','','','zY4WnD86jyklXDPdPj3I5uBplajqB5CPYGW9aSC9WWB03owmP8S7JrB4zo6F8MfkzLrAG58aASUbRmMJHtjJQA4h4QL2x11TIn4Yo6xOhkfah7eD22stPrpg2QSDf3FYUd9JETeZ6QiwqqoUeZtpGvS3tmRkFTL1Yq7RWEE8OTefrwq99Sn90MxnbWJfhFJrUQwxhMf4XuSlkPlAXjZrbBLvCd3x1PA4INeqkrzNZh8FVGYZmMDv5NbQf7fdDwtf',1,'2015-03-18 12:37:46','2015-03-18 12:37:46'),(8,'oUexbblEY6Xg2Q3VtZwSRzGiYec1Y26bJ6JA8KLvtgnbvckP47n5fe2qZB4O7Ayw','','','AbME2wJTb8QOAgnCcY1bGBBqyZtc4BDAPymBKPevgTR4ndEqXrczEbiijq5jN3qG1DZ1zlME8gpcoS2Nq2bGatcSszfi4opE0Kji1zSPyla2B9DmW5xOJ3t5O1bZ8RC4MJHIQ5vTAjiKwim4Z0gPP5XaIuvIaxxm6BCkD3lPkZEV4AiDzonIs0ZxYgduOL4NDvU4NuyEiH7XZT1FnUH4inyDCKhOaaZqhX9HudYu2rNSRfh9x38hwSkKDr9k9jRB',1,'2015-04-02 14:51:18','2015-04-02 14:51:18'),(9,'XhkMdRlYQbOedX6kT5tSgbCrTu0XXNmb8oUexbblEY6Xg2Q3VtZwSRzGiYec1Y26','','','bJ6JA8KLvtgnbvckP47n5fe2qZB4O7AywAbME2wJTb8QOAgnCcY1bGBBqyZtc4BDAPymBKPevgTR4ndEqXrczEbiijq5jN3qG1DZ1zlME8gpcoS2Nq2bGatcSszfi4opE0Kji1zSPyla2B9DmW5xOJ3t5O1bZ8RC4MJHIQ5vTAjiKwim4Z0gPP5XaIuvIaxxm6BCkD3lPkZEV4AiDzonIs0ZxYgduOL4NDvU4NuyEiH7XZT1FnUH4inyDCKhOaaZ',1,'2015-04-29 09:45:53','2015-04-29 09:45:53'),(10,'END0EaV7HqhwSLdRMqe75XatD9oHqu8DaWvBWD18EhlZpCzRuQ3DXbnrLSYqPCB8','','','JX1DAiu2YQC5ZujJosqBNXNgrcgHLLcwQQV8C5BoF21ShVq37C02bLKOkfCbeNPctCLuaKpSKWDiByKfmPXlB2fz0a4nKHaAkpZaNSqymsmq3JC9pTRM9bNRdOKsO48bzLA7WSFNb7irJXQWEQjqU2Sme3xooi4uaj8X3K0enD2jvc2l2GOBCLuz2bxddFM5Z0Uox59nNCiUva1sCxQPIXk4n1KKoe28v8CyEhfpJ4m8IROsjXpWkaw2vJ5tMw54',1,'2015-05-04 10:45:42','2015-05-04 10:45:42'),(11,'owUSs51WQWqjxLBvP8kSHzmAWWyPbnY0UQFJeUGA4bKvDqeP2nxz0aTV6mtHnTSA','','','2HtWKGOBb3gULizHWq2ubY1DZPgXrXFjTVP7rQOZzsuQLxDWtGzB5tSItQMAoytem6n6HwGLG41kEZI883oqQbmk6ouAcmQxx53RYq0UPe0QzZG7FDWsegxZCZKXJxpc0RCAj7d0RarUcw7TEl5Il91m9hcItW7fwADGlm8uKubw7gpD6gX4jzxMzDnQKRG6jH6jfnVA6cDkVoQKqysEaCmJh6qvekItQlraSClokghwlItoSd4lJnSeHMloqRC4',1,'2015-05-04 11:11:19','2015-05-04 11:11:19'),(12,'q3PYxBCSs6coe2XcuhHKkJiujbAqymU44Z057BaqhKYptFmzKeZo5knFkHnmPRPN','','','gxyVd3M7tRsiWLOE7TE9n4FS8pnbDyhYfDKmXnUGSQZSWJNLIBGNtF5XtFBIPNNb1M3xoQ1IPHd6t9jLplfULJIV1XvrxeQXkN9zTvuBj14bdsTCkDSSBFsLXi3JtorLqGcuUIBxRctzkSaw2XcJP3p3QkYdCqe1K1SgtXpbV64FFv4Yij92zk9dggRpskpZBfgLgfq8xSdN7Hw3ko3dxJr5JTgtwWN0PBHtpfEWmhaNMUAQAlL7IkwQK9JqNBJJ',1,'2015-05-06 11:31:23','2015-05-06 11:31:23'),(13,'tqmTAQNMn7gXr8XxyCI5DWnuBpNsxLsy9lefqLYveluCeGYTQYrD5reODuHTvuaR','','','nZuju76LsHVjnGxsFnnEK5tldrZxGLfmnEXgLm1eUfT9K8i9Rt76xBV0QgDJye7zBmXV9IKpSvoRDtrI1sorw9U7bOGX4qx4wCvCKi0so4XbVVNJyksUJzq78yfdWt915Vfltz3oY5dd90HDITJ03hay3QSbMpjrafnDp9Tcey6YBNXzz58NBIhiLkbSaehZTiIW8AHI8jxLadBd3ZJdglBK0x9BAK19jdBio5RqzNB0MkC9VvsmX63p313m8tjc',1,'2015-05-07 12:31:12','2015-05-07 12:31:12'),(14,'4dF3X0PsKdSZR67TKWbQxTdlo3QMrrhXYyg8r15VH37UkhVRk2TBEfk5hfWy6eXC','','','thza4PcV5senvgmm1wEKNEjmSfUxDoEE7mBQAA3tn33Ty2uVCDrqPBaq52KKCModEFFc7ILdMbKWulvbEsLkJVJHbm334HGQC5BDxoWlnXUwiso49tj04Cv6yteAoZaZ3IzAfhYG7qWkOLavvIyejHPHEO7eQEn7mtgUFxT9JXQvwCD9b46gFjlrMGSWvHs1NrECiaHPOaCTNRjk8E64eY0nNVflHgpJrCgH3bw1K1rOf28iXkyquk76F8lNWUex',1,'2015-05-18 10:24:45','2015-05-18 10:24:45'),(15,'3DEeXUFe8BBwKNFK4gABqBALdSx8scmRYFJY8SoMaoyBOR1sVugmOKAj1HC5srzf','','','vfGqcnFRvpeoLsgooW4knr2VITJOlT5HAS6VxVYu8DBp9gD6zUL65kneR3I5WT3GHcnXBbkjEybCqrcm2qTpF2PAT0999qtdGANwI3owB7uxQQtpyaUvIgu3MKsaeacN85pjGtkW1c45rM3FlgNOCiIK81UP2iCUsN9t77YTjV7aBf53RA9Ez6Xym5ybICfyU2MQqhFoJl2SNLzE01mSetfzJXKAQ41pz5RKRfnVmPqiRPlmQFI3C2fNhMZ6RKE4',1,'2015-06-12 16:23:27','2015-06-12 16:23:27'),(16,'aEZb5OQudrG00yZyNaJQT1xRX8TcGHK3sHVL5USZ8k9KjP4j5JALvnvHTiJ8QOmz','','','1hJRzxNaW1v1LESqgQudFxmUHf11Tu6I3Vzvko9zlfZ6pQiL9uXISUV5y0bHOmIyxfXmO1pltg6YBzqDUm1LXP63Wi4uB2M2kEy0ucMvt4UNPvqSi1OlUgaOxnOvrfJTO9HbIbmRlqlZWFj4nddYJLv6HFbJPf7HvSSaYw3LVzu9VvU4lcki1N9BS4h4p2oSK7VwhfEc8Vw5Mz7RcyjGanGeWHeC7nO1cARfilGHdPpP6RcBKibB2ZEUSrUiIvpw',1,'2015-06-17 12:43:28','2015-06-17 12:43:28'),(17,'PEVyPC5mVBJDfltaL23mXbV7gXTRlSf5GRJv758HpUL0LFfR8RIQBfzIw2wvN7sd','','','z10GhL3A1AFBt6IfnDQRh7Lr4uHmsAwXazZyAzrP5E2jKKoGKMQp6wao49V1Faup3K03VzW22fgecvCEktIbN8g7xladTNjTP2JViN43qTDxouTZ2n3kWifoilYcbXQWd8VKn8UQYecdrGbIC4fGXfXsL8Pza50vjbZXkHnB7DugmzcOEiAARzGKrs7iS0SiiRV7amxJY936a6Wr9kXQDgs8E0ipCImrYeJ4If0osS5uGaHiw9n4rlMKUUBKoxzP',1,'2015-06-22 14:03:55','2015-06-22 14:03:55'),(18,'Gb0r6XfR8p0Cfy6LavXbCAQANdLnRqOgFiAY8llcxvlc3fHkGztjvKhntfHeVTlW','','','bii8YrEgAsuunFp1Juck1MLImZbOwyVFLacaKp4ckiP5vglBjijdUHNf3KJ0lMcqSKuuUgHRhQI8R04DXOCPL4mvhzNTxc7Jwwa71Pr720Y3JCl7hw32YjY2iVpqWkzeoQcBw0pgkTCqZGotGNHY9Gh26ue4SkEr3n29DUA7pnCWCDFYBgtw8gEvsAqBmdrxf2pysqsQH1a4C235TrsDTy8f1KQASOqve90fu4yc66LUZjEU9uELC8PIXLN1W1Dl',1,'2015-08-13 10:58:12','2015-08-13 10:58:12'),(19,'IvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJG','','','h8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuRTn9O4jIucMJaqzgWxULJgCn2Ey0IK8PCBX1JWWHkYw96177S7v9PZgi3bFmzwwnJmelbqg7xNtrz4cRl9iptLWVSrsQ4Q83oF8NG3DqY3DRFzVdR3tOkykAEzuwWmhBgazrJ87SWcvusmkhVpRoyULhOyILL0eCvoEEj5Pvr30FtSNewUM7atJ7ur4cX7x4XtqTWu4HZNSS',1,'2015-08-29 11:14:13','2015-08-29 11:14:13'),(20,'eu4BDY6kHURRIoH9G6LBcSsOMUZ7wGeDKOq10xMNvZvdYJkdslYiL3YiwkU08wYO','','','tFTFfjUPR1HCgB5UModcx17QPNHFC0KwJTzqCtTnqqV9hQJjjEauQMYVkOxs9Rzrc5OocPMZ72cSZ2OLy1PZm4sxxmVsyFWAn3eAuJ6iGcb9K2MK5B6b093n2XvGfQvqqPns4ajEHYSDxPDh5jg06c70zgD1EzDtm8ny6FE7BsCeT9vRwe8n4S3apBO8guMJaFhS1GbOxanTqHWXgwTxvfrXX4RezEO7GjSIofq2beHf6lz2JbfUeGYs7KMWBuII',1,'2015-09-07 15:40:32','2015-09-07 15:40:32'),(21,'88xS24tlFAnSxEc8udrrIETGsKwPpoCutzkrHiXqjL3xQiFn6AaSzY4WnD86jykl','','','XDPdPj3I5uBplajqB5CPYGW9aSC9WWB03owmP8S7JrB4zo6F8MfkzLrAG58aASUbRmMJHtjJQA4h4QL2x11TIn4Yo6xOhkfah7eD22stPrpg2QSDf3FYUd9JETeZ6QiwqqoUeZtpGvS3tmRkFTL1Yq7RWEE8OTefrwq99Sn90MxnbWJfhFJrUQwxhMf4XuSlkPlAXjZrbBLvCd3x1PA4INeqkrzNZh8FVGYZmMDv5NbQf7fdDwtfzhF6fjB3Tsg6',1,'2015-09-16 11:27:43','2015-09-16 11:27:43'),(22,'0RCAj7d0RarUcw7TEl5Il91m9hcItW7fwADGlm8uKubw7gpD6gX4jzxMzDnQKRG6','','','jH6jfnVA6cDkVoQKqysEaCmJh6qvekItQlraSClokghwlItoSd4lJnSeHMloqRC4ycVn7yspH83VtAEgxg9gul1Mk0Y3uUzcOq1Of8sEgxHSuPSuJ66xO6SR40EgrvdYhRPN4ekzw9Olm2XWYtvcjoltHOmggjAqsQfiMYV86jNSX2VVg3dextxjN9C4NvZWwmoRWp7e7gEWAOMsfbD44M1vKIUowTrZrVpXZUcY10yxg94cXWfq2CxVAnfwOP0z',1,'2015-10-05 11:11:09','2015-10-05 11:11:09'),(23,'ci0TV0omhZm4GfjHoz0tQlTsgiShi2nL5UrGuFSRm3yJl8DtTCXc0SnSxdKuOwyu','','','w74vgNTxDQXSdT4NWGSDy0VvaQaySjWKBdfTqNsM2eTSshJkwDjgJRaGb6DutNRdm1esNFddFlnLUmvzj3O21l2TzdDjhukolIzAGzmmokT6Uku6tkQG7wsYk4aQsJQr7QiKYcJnlbXjrbH6RKqMZ05VsML0RbTnqRoNC7Ch5KzEbJ0xLmcLPwfLOWTRNktbxKHHEUTTmwncju7he6mCdlc3HZylgmhHQ674ck67rQzsDNcJJJJvDRwdXUqxMgsp',1,'2015-10-05 15:44:49','2015-10-05 15:44:49'),(24,'7lg52FZhEbKcGZHJENIlkiiQtpMHGPbnxhGvYPh8AlkQMTlEGkZXRKWo1PT1Ykld','','','AWDdRSCSTnY6qEb1f0DBWoi4VsxdEwIMlCYDhN4e9hiehspgR7EiyAHCNEp8G1CxilFfKBKiCTG5vOQDa7c6nPDDcR4UgyUR3CL0Lqxfd8CNXmOd7zONzVX5FXfjTn9nmVnDjOxURfUZV2kv1kXWZUEqFVfrdVB1rhcIUoLBd4AcrBS5IM3YVLITcL1qB4a7KlpGd65kBLDXbCY7wrwRq5jzM4li6XN5AhP68HDC7VeLh522yFDDXhYMTfsSOrXw',1,'2015-10-09 16:28:26','2015-10-09 16:28:26'),(25,'ZlQc4BRn19NmJXMlcSVekNhvHeE0trYJSplNr31j3ELDcYo5q9ZQN6CUbGLLxkUG','','','Q6T70KgtPswrGamxaCEn9G8aNJlBu6HA3a7tlec0MPhTqKHGMMuMSsmg2OhmKonDFlxqFQhSfFmMPtTc5DoOvRunfSQq73tCehtkxR2TWefmOyFJ1uYmBJQhbgNYZ7b4eLeRcXkz2GbG4gQwRoZSyp0PMDolAFgeRBwtYXjQdAXYhnKySkHGP7WbBADBGkgXlSHApqQJrohPSsElSLshJE9KEDMLosiPBpPrWg0DKXTdFXEXjw5s05359FGnyp30',1,'2016-04-05 22:30:48','2016-04-05 22:30:48');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (6,4,'Attribute 8'),(3,4,'Attribute 1'),(1,4,'Attribute 2'),(2,4,'Attribute 3'),(5,4,'Attribute 1'),(9,4,'Attribute 2'),(11,4,'Attribute 3'),(7,4,'Attribute 4'),(8,4,'Attribute 5'),(4,4,'Attribute 6'),(10,4,'Attribute 7');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (6,4,'Attribute group 4'),(4,4,'Attribute group 1'),(3,4,'Attribute group 2'),(5,4,'Attribute group 3');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (10,'Parralax-1',0),(15,'Slideshow',1),(14,'banners',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (207,14,'/comestiveis','catalog/Banners/banner-comestiveis.png',4),(202,15,'','catalog/Sliders/slider-none.png',2),(193,10,'','',0),(203,15,'','catalog/Sliders/slider-none.png',3),(205,14,'/masturbadores','catalog/Banners/banner-masturbadores.png',2),(206,14,'/lingerie','catalog/Banners/banner-lingeries.png',3),(201,15,'/baralhos','catalog/Sliders/slider-none.png',1),(204,14,'/banho-sensual','catalog/Banners/banner-banhosensual.png',1);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (193,4,10,'parallax-1','&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h2&gt;watches&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=\\&quot;index.php?route=product/product&amp;amp;product_id=43\\&quot;&gt;Shop now!&lt;/a&gt;'),(207,4,14,'banner-1','&lt;h2&gt;Comestíveis&lt;/h2&gt;\r\n'),(204,4,14,'banner-1','&lt;h2&gt;Banho&lt;/h2&gt;\r\n&lt;h2&gt;Sensual&lt;/h2&gt;\r\n'),(99,4,9,'slide-1',''),(100,4,9,'slide-2',''),(101,4,9,'slide-3',''),(203,4,15,'slide-3',''),(202,4,15,'slide-2',''),(201,4,15,'slide-1',''),(205,4,14,'banner-1','&lt;h2&gt;Masturbadores&lt;/h2&gt;\r\n'),(206,4,14,'banner-1','&lt;h2&gt;Lingerie&lt;/h2&gt;\r\n');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (61,'',47,0,1,0,1,'2016-04-13 23:27:35','2016-04-13 23:27:35'),(53,'',44,1,1,0,1,'2016-04-13 23:25:19','2016-05-11 15:52:34'),(118,'',44,1,1,0,1,'2016-05-11 14:48:12','2016-05-11 14:48:12'),(56,'',47,0,1,0,1,'2016-04-13 23:26:23','2016-04-13 23:26:23'),(57,'',47,0,1,0,1,'2016-04-13 23:26:40','2016-04-13 23:26:40'),(58,'',47,0,1,0,1,'2016-04-13 23:26:55','2016-04-13 23:26:55'),(59,'',47,0,1,0,1,'2016-04-13 23:27:08','2016-04-13 23:27:08'),(60,'',47,0,1,0,1,'2016-04-13 23:27:23','2016-04-13 23:27:23'),(52,'',44,1,1,0,1,'2016-04-13 23:24:54','2016-05-11 15:51:18'),(43,'',0,1,1,0,1,'2016-04-13 23:22:44','2016-04-13 23:22:44'),(44,'',0,1,1,0,1,'2016-04-13 23:23:02','2016-06-03 11:09:33'),(46,'',0,1,1,0,1,'2016-04-13 23:23:27','2016-04-13 23:23:27'),(47,'',0,1,1,0,1,'2016-04-13 23:23:42','2016-05-31 10:18:57'),(49,'',43,0,1,0,1,'2016-04-13 23:24:05','2016-04-13 23:24:05'),(50,'',43,0,1,0,1,'2016-04-13 23:24:18','2016-04-13 23:24:18'),(119,'',46,1,1,0,1,'2016-05-12 19:31:52','2016-05-12 19:31:52'),(62,'',47,0,1,0,1,'2016-04-13 23:27:49','2016-04-13 23:27:49'),(63,'',47,0,1,0,1,'2016-04-13 23:28:02','2016-04-13 23:28:02'),(64,'',47,0,1,0,1,'2016-04-13 23:28:15','2016-04-13 23:28:15'),(65,'',0,1,1,0,1,'2016-04-19 20:02:41','2016-05-31 10:22:52'),(66,'',0,1,1,0,1,'2016-04-19 20:03:14','2016-04-19 20:03:14'),(67,'',0,1,1,0,1,'2016-04-19 20:03:34','2016-06-03 11:09:04'),(68,'',0,1,1,0,1,'2016-04-19 20:03:59','2016-06-03 11:10:46'),(69,'',0,1,1,0,1,'2016-04-19 20:04:16','2016-04-19 20:04:16'),(70,'',0,1,1,0,1,'2016-04-19 20:04:37','2016-04-19 20:04:37'),(71,'',0,1,1,0,1,'2016-04-19 20:04:57','2016-06-03 11:10:12'),(72,'',65,1,1,0,1,'2016-04-19 20:22:55','2016-05-31 10:22:58'),(73,'',65,1,1,0,1,'2016-04-19 20:53:46','2016-05-31 10:23:05'),(74,'',65,0,1,0,1,'2016-04-20 10:38:37','2016-05-31 10:23:02'),(76,'',65,1,1,0,1,'2016-04-20 21:27:56','2016-05-31 10:23:00'),(77,'',65,1,1,0,1,'2016-04-22 20:23:43','2016-05-31 10:22:55'),(79,'',65,1,1,0,1,'2016-04-22 21:15:48','2016-05-31 10:23:47'),(80,'',65,1,1,0,1,'2016-04-24 19:30:37','2016-05-31 10:23:44'),(81,'',65,1,1,0,1,'2016-05-02 22:30:33','2016-05-31 10:23:41'),(82,'',65,1,1,0,1,'2016-05-02 22:45:08','2016-05-31 10:23:37'),(83,'',66,1,1,0,1,'2016-05-03 09:58:19','2016-05-31 10:23:35'),(84,'',66,1,1,0,1,'2016-05-03 11:50:20','2016-05-31 10:23:34'),(85,'',67,1,1,0,1,'2016-05-03 15:20:32','2016-05-31 10:23:29'),(86,'',67,1,1,0,1,'2016-05-03 15:37:30','2016-05-31 10:23:27'),(87,'',67,1,1,0,1,'2016-05-03 16:06:09','2016-05-31 10:23:25'),(88,'',67,1,1,0,1,'2016-05-03 16:36:21','2016-05-31 10:23:22'),(89,'',67,1,1,0,1,'2016-05-03 16:42:13','2016-05-31 10:23:19'),(90,'',68,1,1,0,1,'2016-05-03 16:53:30','2016-05-03 16:53:30'),(91,'',68,1,1,0,1,'2016-05-04 15:00:35','2016-05-04 15:00:35'),(92,'',68,1,1,0,1,'2016-05-04 15:16:11','2016-05-04 15:16:11'),(93,'',68,1,1,0,1,'2016-05-04 17:13:55','2016-05-04 17:13:55'),(94,'',68,1,1,0,1,'2016-05-04 18:08:10','2016-05-04 18:08:10'),(95,'',68,1,1,0,1,'2016-05-04 18:27:02','2016-05-04 18:27:02'),(96,'',68,1,1,0,1,'2016-05-04 18:47:29','2016-05-04 18:47:29'),(97,'',69,1,1,0,1,'2016-05-05 10:48:26','2016-05-05 10:48:26'),(98,'',69,1,1,0,1,'2016-05-05 11:52:14','2016-05-05 11:52:57'),(99,'',69,1,1,0,1,'2016-05-05 13:56:10','2016-05-05 13:56:10'),(100,'',69,1,1,0,1,'2016-05-05 15:07:52','2016-05-05 15:07:52'),(101,'',69,1,1,0,1,'2016-05-05 16:25:54','2016-05-05 16:25:54'),(102,'',69,1,1,0,1,'2016-05-05 17:04:35','2016-05-05 17:04:35'),(103,'',69,1,1,0,1,'2016-05-05 17:51:28','2016-05-05 17:51:28'),(104,'',69,1,1,0,1,'2016-05-05 18:32:51','2016-05-05 18:37:54'),(105,'',69,1,1,0,0,'2016-05-05 20:25:05','2016-06-08 14:50:20'),(106,'',69,1,1,0,1,'2016-05-05 20:50:25','2016-05-05 20:50:25'),(107,'',70,1,1,0,1,'2016-05-05 21:42:44','2016-05-05 21:42:44'),(108,'',70,1,1,0,1,'2016-05-06 14:49:24','2016-05-06 14:49:24'),(109,'',71,1,1,0,1,'2016-05-06 15:58:17','2016-05-06 15:58:17'),(110,'',44,1,1,0,1,'2016-05-06 16:03:37','2016-05-11 14:49:54'),(111,'',71,1,1,0,1,'2016-05-07 14:32:54','2016-05-07 14:32:54'),(112,'',71,1,1,0,1,'2016-05-09 15:18:14','2016-05-09 15:18:14'),(113,'',71,1,1,0,1,'2016-05-09 15:52:29','2016-05-09 15:52:29'),(114,'',71,1,1,0,1,'2016-05-09 15:58:32','2016-05-09 15:58:32'),(115,'',71,1,1,0,1,'2016-05-09 16:09:46','2016-05-09 16:09:46'),(116,'',71,1,1,0,1,'2016-05-10 16:46:38','2016-05-10 16:46:38'),(117,'',71,1,1,0,1,'2016-05-10 17:15:33','2016-05-10 17:15:33'),(120,'',47,1,1,0,1,'2016-05-13 17:33:33','2016-05-13 17:34:07');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (43,4,'Livros &amp; DVDs','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Livros &amp; DVDs','',''),(44,4,'Masturbadores','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masturbadores','',''),(46,4,'Pompoarismo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Pompoarismo','',''),(47,4,'Sado','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Sado','',''),(49,4,'DVDs','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','DVDs','',''),(50,4,'Livros','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Livros','',''),(119,4,'Bolinhas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Pompoarismo - Bolinhas','',''),(52,4,'Prótese com Vibro','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masturbadores - Prótese com Vibro','',''),(53,4,'Prótese sem Vibro','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masturbadores - Prótese sem Vibro','',''),(118,4,'Plug Anal','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masturbadores - Plug Anal','',''),(56,4,'Algemas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Algemas','',''),(57,4,'Amarras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Amarras','',''),(58,4,'Chicotes e Chibatas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Chicotes e Chibatas','',''),(59,4,'Kits Sado','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Kits Sado','',''),(60,4,'Tapa Olhos e Venda','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Tapa Olhos e Venda','',''),(61,4,'Máscara','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Máscara','',''),(62,4,'Mordaça','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Mordaça','',''),(63,4,'Coleira','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Coleira','',''),(64,4,'Separador de Braços e Pés','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Separador de Braços e Pés','',''),(65,4,'Acessórios &amp; Brincadeiras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras','',''),(66,4,'Anéis Penianos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Anéis Penianos','',''),(67,4,'Banho Sexual &amp; Romantismo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo','',''),(68,4,'Comestíveis','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cometíveis','',''),(69,4,'Cosméticos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos','',''),(70,4,'Fantasias','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Fantasias','',''),(71,4,'Lingerie','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie','',''),(72,4,'Baralhos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Baralhos','',''),(73,4,'Dadinhos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Dadinhos','',''),(74,4,'Chaveiros','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Chaveiros','',''),(77,4,' Cinta Para Prótese','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Cinta Para Prótese','',''),(79,4,'Desenvolvedor / Bomba Peniana','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras','',''),(76,4,'Capa Peniana / Dedo / Língua','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Capa Peniana / Dedo / Língua','',''),(80,4,'Diversos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Diversos','',''),(81,4,'Higienizador de Acessórios','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Higienizador de Acessórios','',''),(82,4,'Kits Sensuais','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios &amp; Brincadeiras - Kits Sensuais','',''),(83,4,'Com Vibro','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Anéis Penianos - Com Vibro','',''),(84,4,'Sem Vibro','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Anéis Penianos - Sem Vibro','',''),(85,4,'Ducha Ginecológica','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo - Ducha Ginecológica','',''),(86,4,'Espuma de Banho','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo - Espuma de Banho','',''),(87,4,'Sabonete Íntimo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo - Sabonete Íntimo','',''),(88,4,'Sais de Banho','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo - Ducha Ginecológica - Sais de Banho','',''),(89,4,'Vela Decorativa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Banho Sexual &amp; Romantismo - Vela Decorativa','',''),(90,4,'Adesivo Comestível','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Adesivo Comestível','',''),(91,4,'Calcinha Comestível','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Calcinha Comestível','',''),(92,4,'Capinha Comestível','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Capinha Comestível','',''),(93,4,'Gel / lâmina Comestível','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Gel / lâmina Comestível','',''),(94,4,'Sexo Oral','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Sexo Oral','',''),(95,4,'Tapa Sexo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis','',''),(96,4,'Vela Comestível','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comestíveis - Vela Comestível','',''),(97,4,'Adstringente (apertar)','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Adstringente (apertar)','',''),(98,4,'Anestésicos (anal)','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Anestésicos (anal)','',''),(99,4,'Bolinha Excitante','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Bolinha Excitante','',''),(100,4,'Excitantes','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Excitantes','',''),(101,4,'Lubrificantes','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Lubrificantes','',''),(102,4,'Óleo de Massagem','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Óleo de Massagem','',''),(103,4,'Prolongador de Ereção / Retardante','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Prolongador de Ereção / Retardante','',''),(104,4,'Sensibilizante Clitóris','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Sensibilizante Clitóris','',''),(105,4,'Vela Funcional','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Vela Funcional','',''),(106,4,'Vibrador Líquido','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cosméticos - Vibrador Líquido','',''),(107,4,'Fantasias Completas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Fantasias - Fantasias Completas','',''),(108,4,'Mini Fantasias','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Fantasias - Mini Fantasias','',''),(109,4,'Body erótico','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Body erótico','',''),(110,4,'Importados','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masturbadores - Importados','',''),(111,4,'Calcinhas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Calcinhas','',''),(112,4,'Camisolas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Camisolas','',''),(113,4,'Conjuntos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Conjuntos','',''),(114,4,'Espartilhos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Espartilhos','',''),(115,4,'Meias','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Meias','',''),(116,4,'Saia','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie - Saia','',''),(117,4,'Vestido','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie','',''),(120,4,'Plug','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Sado - Plug','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (119,119,1),(46,46,0),(118,118,1),(118,44,0),(53,44,0),(53,53,1),(52,44,0),(52,52,1),(47,47,0),(119,46,0),(49,49,1),(120,120,1),(43,43,0),(120,47,0),(44,44,0),(50,50,1),(49,43,0),(50,43,0),(56,47,0),(56,56,1),(57,47,0),(57,57,1),(58,47,0),(58,58,1),(59,47,0),(59,59,1),(60,47,0),(60,60,1),(61,47,0),(61,61,1),(62,47,0),(62,62,1),(63,47,0),(63,63,1),(64,47,0),(64,64,1),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,65,0),(72,72,1),(73,65,0),(73,73,1),(74,74,1),(74,65,0),(76,65,0),(76,76,1),(77,65,0),(77,77,1),(79,79,1),(79,65,0),(80,65,0),(80,80,1),(81,65,0),(81,81,1),(82,65,0),(82,82,1),(83,66,0),(83,83,1),(84,66,0),(84,84,1),(85,67,0),(85,85,1),(86,67,0),(86,86,1),(87,67,0),(87,87,1),(88,67,0),(88,88,1),(89,67,0),(89,89,1),(90,68,0),(90,90,1),(91,68,0),(91,91,1),(92,68,0),(92,92,1),(93,68,0),(93,93,1),(94,68,0),(94,94,1),(95,68,0),(95,95,1),(96,68,0),(96,96,1),(97,69,0),(97,97,1),(98,69,0),(98,98,1),(99,69,0),(99,99,1),(100,69,0),(100,100,1),(101,69,0),(101,101,1),(102,69,0),(102,102,1),(103,69,0),(103,103,1),(104,69,0),(104,104,1),(105,69,0),(105,105,1),(106,69,0),(106,106,1),(107,70,0),(107,107,1),(108,70,0),(108,108,1),(109,71,0),(109,109,1),(110,44,0),(110,110,1),(111,71,0),(111,111,1),(112,71,0),(112,112,1),(113,71,0),(113,113,1),(114,71,0),(114,114,1),(115,71,0),(115,115,1),(116,71,0),(116,116,1),(117,71,0),(117,117,1);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (50,0,0),(119,0,0),(47,0,0),(59,0,0),(118,0,0),(46,0,0),(58,0,0),(57,0,0),(56,0,0),(43,0,0),(53,0,0),(44,0,0),(52,0,0),(49,0,0),(120,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(76,0,0),(77,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0),(83,0,0),(84,0,0),(85,0,0),(86,0,0),(87,0,0),(88,0,0),(89,0,0),(90,0,0),(91,0,0),(92,0,0),(93,0,0),(94,0,0),(95,0,0),(96,0,0),(97,0,0),(98,0,0),(99,0,0),(100,0,0),(101,0,0),(102,0,0),(103,0,0),(104,0,0),(105,0,0),(106,0,0),(107,0,0),(108,0,0),(109,0,0),(110,0,0),(111,0,0),(112,0,0),(113,0,0),(114,0,0),(115,0,0),(116,0,0),(117,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (43,0),(44,0),(46,0),(47,0),(49,0),(50,0),(52,0),(53,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(76,0),(77,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(111,0),(112,0),(113,0),(114,0),(115,0),(116,0),(117,0),(118,0),(119,0),(120,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brasil','BR','BRA','',1,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18'),(7,'Desconto','1909','F','27.2200',1,1,'90.2400','2016-06-08','2016-07-08',1,'1',1,'2016-06-08 15:26:00');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (4,'Real','BRL','R$ ','','2',1.00000000,1,'2016-04-19 20:38:13');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (2,1,0,'demo','demo','demo@demolink.org','123456789','','b12292ff7485b6ad85261a15d41c8e805d43d3a2','a3a50762a','a:3:{s:140:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O3M6Njoib3B0aW9uIjthOjM6e2k6MjMwO3M6MjoiMjUiO2k6MjI3O2E6MTp7aTowO3M6MjoiMTkiO31pOjIyNDtzOjI6IjEyIjt9fQ==\";i:1;s:140:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O3M6Njoib3B0aW9uIjthOjM6e2k6MjMwO3M6MjoiMjUiO2k6MjI3O2E6MTp7aTowO3M6MjoiMTciO31pOjIyNDtzOjI6IjEzIjt9fQ==\";i:3;s:104:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO3M6Njoib3B0aW9uIjthOjI6e2k6MjM3O3M6MjoiNDYiO2k6MjM4O3M6MjoiNDkiO319\";i:1;}','a:3:{i:0;i:47;i:1;i:42;i:2;i:43;}',0,2,'','192.168.9.111',1,1,0,'','2015-08-26 11:29:30'),(5,1,0,'Ricardo','Silveira','ricaardosb@gmail.com','5182246291','','489baae62ca35ca009aa5e430cd9255b4955e92a','6495151bd','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\";i:1;}','',1,5,'','201.47.194.178',1,1,0,'','2016-05-17 09:38:27'),(6,1,0,'Margarete','Fitarelli','mfitarelli@gmail.com','5192680251','','6f3e80608d6a2c4f048fef4c64d4c83a9360de48','9a0b638a7','a:0:{}','',1,6,'','201.47.194.178',1,1,0,'','2016-05-17 09:44:52'),(7,1,0,'Leticia','Menegoni','leticiamenegoni@gmail.com','5198811513','','90e732c788969d82e1b612a7d8973b2858d2b26a','bccf8a219','a:3:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMDt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNTt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE2Njt9\";i:1;}','',1,7,'','201.47.194.178',1,1,0,'','2016-06-07 14:23:22');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (28,5,'register','a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:16:\"Ricardo Silveira\";}','201.47.194.178','2016-05-17 09:38:27'),(29,6,'register','a:2:{s:11:\"customer_id\";i:6;s:4:\"name\";s:19:\"Margarete Fitarelli\";}','201.47.194.178','2016-05-17 09:44:52'),(30,5,'login','a:2:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:16:\"Ricardo Silveira\";}','201.47.194.178','2016-06-03 14:29:08'),(31,7,'register','a:2:{s:11:\"customer_id\";i:7;s:4:\"name\";s:16:\"Leticia Menegoni\";}','201.47.194.178','2016-06-07 14:23:23'),(32,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:16:\"Leticia Menegoni\";}','201.47.194.178','2016-06-07 17:57:09'),(33,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:16:\"Leticia Menegoni\";}','201.47.194.178','2016-06-08 15:04:58'),(34,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:16:\"Leticia Menegoni\";s:8:\"order_id\";i:19;}','201.47.194.178','2016-06-08 16:05:35');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,4,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (9,5,'201.47.194.178','2016-05-17 09:38:27'),(10,6,'201.47.194.178','2016-05-17 09:44:53'),(11,7,'201.47.194.178','2016-06-07 14:23:23');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (15,'ricaardosb@gmail.com','189.6.199.110',2,'2016-06-04 04:37:40','2016-06-04 04:38:19'),(16,'leticia.menegoni@gmail.com','201.47.194.178',1,'2016-06-08 17:51:31','2016-06-08 17:51:31');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'mercadolivre','post.admin.product.add','module/mercadolivre/onAddEditProduct'),(2,'mercadolivre','post.admin.product.edit','module/mercadolivre/onAddEditProduct'),(3,'mercadolivre','post.admin.product.edit','module/mercadolivre/onUpdateProduct'),(4,'mercadolivre','post.admin.product.delete','module/mercadolivre/onDeleteProduct');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=467 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(390,'total','credit'),(465,'shipping','correios'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(432,'module','tm_fbbox'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(427,'module','featured'),(428,'module','parallax'),(433,'module','bestseller'),(434,'module','latest'),(435,'module','special'),(436,'module','affiliate'),(437,'module','information'),(438,'module','tm_slideshow'),(442,'module','tm_google_map'),(440,'module','olark'),(449,'module','tm_social_list'),(462,'module','tm_single_category_product'),(458,'module','filter'),(459,'module','tm_category_menu'),(460,'module','tm_newsletter'),(461,'module','html'),(463,'module','tm_newsletter_popup'),(464,'payment','pagseguro'),(466,'module','mercadolivre');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,0,0,1),(8,0,0,1),(9,0,0,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (3,4,'Políticas de Privacidade','&lt;div&gt;A IntimusSexy - O Portal do Prazer &amp;nbsp;tem como princípio garantir a total privacidade dos dados de nossos clientes, nos pagamentos por cartão de crédito ou boleto, os dados&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;do cliente são totalmente protegidos e armazenados no banco de dados da operadora que faz nossos recebimentos, a&amp;nbsp;IntimusSexy - O Portal do Prazer&amp;nbsp;&amp;nbsp;não tem acesso nem&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;armazena nenhum tipo de dado bancário do cliente, apenas os dados cadastrais como endereço, telefone para contato e email, não fazemos nenhum tipo&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;de comercialização ou troca da nossa lista de emails cadastrados.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Os dados do cliente são totalmente preservados, o nome que aparecerá na fatura do cartão de crédito ou nos boletos gerados em nosso site é&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;PagSeguro, o que não faz nenhum tipo de menção a nossa loja ou objeto comprado.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Por tratar-se da venda de produtos eróticos nossas embalagens são totalmente discretas, nossas mercadorias são embaladas em caixas de papelão&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;compatíveis ao tamanho e peso do produto, essas caixas são lacradas por fita adesiva.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Os dados de remetente que constarão na embalagem é R &amp;amp; M Ltda, o que não faz nenhuma menção a Sexy Shop e nem a produtos adquiridos,&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;apesar de todos os cuidados com nossas embalagens e a privacidade de nossos clientes e também, política dos correios que não admitem postagem de&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;produtos com embalagens violadas, nada impede que as mesmas sejam violadas em trânsito ou mesmo na chegada do produto por algum morador, parente ou&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;funcionário do estabelecimento ou condomínio, que não seja o solicitante.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A&amp;nbsp;IntimusSexy - O Portal do Prazer&amp;nbsp;&amp;nbsp;não se responsabiliza por violações da embalagem já que os correios também não aceitam o envio de qualquer correspondência ou pacote&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;com embalagem violada, então se você receber um produto que esteja com a embalagem violada recomendamos que devolva imediatamente para o carteiro e&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;comunique à loja para que possamos formalizar uma reclamação nos correios e providenciar um novo envio.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Nossa Loja virtual vende produtos eróticos, então nossa maior preocupação é com a total discrição e privacidade de nossos clientes, estamos&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;trabalhando e aperfeiçoando nossos serviços a cada dia para atender você, nosso cliente da melhor maneira possível com a missão de chegar à&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;satisfação total de nossos clientes.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Leia mais: &amp;nbsp;http://www.intimussexy.com.br&lt;/div&gt;','Políticas de Privacidade','',''),(5,4,'Termos e Condições','&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Aceitação dos Termos e Condições de Uso&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;O uso da página IntimusSexy - O Portal do Prazer está condicionado à aceitação e ao cumprimento dos Termos e Condições descritos abaixo.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Antes de realizar suas compras, você deverá: (i) ler atentamente os termos descritos abaixo; (ii) concordar expressamente com os mesmos; e (iii) efetuar seu cadastro.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Cadastro, Login e Senha&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Para se cadastrar na IntimusSexy - O Portal do Prazer você precisa ser maior de 18 anos.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Você é responsável pelas informações que fornece à IntimusSexy - O Portal do Prazer e o uso de informações de terceiros poderá ser punido conforme o disposto em lei.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Sua conta é de uso pessoal e não deve em nenhuma hipótese ser cedida a terceiros.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Responsabilidade do Usuário&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Você responderá pelos atos praticados sob a sua conta de acesso, devendo, portanto, tomar todas as medidas necessárias para manter sua senha segura.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Caso verifique qualquer inexatidão nas informações prestadas para seu cadastro ou o uso ilegal da sua conta, ela poderá, a seu exclusivo critério, suspender ou cancelar sua conta de acesso.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Você deverá alterar sua senha e notificar a IntimusSexy - O Portal do Prazer tão logo verifique a ocorrência de uso não autorizado da sua conta de acesso.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer não utiliza em nenhuma hipótese e-mails para solicitar dados de login, senha ou outras informações cadastrais ou financeiras a seus usuários.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A interpretação das informações disponibilizadas no site da IntimusSexy - O Portal do Prazer é de exclusiva responsabilidade do usuário.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A&amp;nbsp;IntimusSexy - O Portal do Prazer&amp;nbsp;não é responsável pelo conteúdo e políticas de parceiros que eventualmente puderem ser acessados por meio de links no site da IntimusSexy - O Portal do Prazer&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Privacidade&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Ao cadastrar seus dados no site da IntimusSexy - O Portal do Prazer, você consente expressamente com a abertura de cadastro em seu nome.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer adota rígidas políticas de segurança e se compromete a proteger seus dados pessoais e não repassá-los a terceiros sem a sua autorização.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Cabe ressaltar que ao efetuar uma compra e/ou concordar com a forma de entrega, você anui automaticamente com a transmissão de informações pessoais necessária à efetuação de tal compra e /ou entrega.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A fim de proteger seus dados bancários e de cartão de crédito, a IntimusSexy - O Portal do Prazer utiliza o sistema de pagamentos Pagseguro, que possui servidores com protocolo de segurança e certificação em PCI, que mantém todos os dados cadastrais armazenados de forma criptografada, evitando ataques, invasões e fraudes.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer não se responsabiliza por atos de terceiros que possam vir, por quaisquer meios, a acessar e/ou utilizar dados dos seus usuários.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Troca e Devolução&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Buscando a satisfação de seus clientes, como cortesia, a IntimusSexy - O Portal do Prazer oferece a possibilidade de troca dos produtos comprados pelo site.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Para que a troca seja efetuada, devem ser observadas as seguintes condições: o produto deve estar na embalagem original lacrada e deve ser enviado à IntimusSexy - O Portal do Prazer de maneira adequada para que não sofra quaisquer danos.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Não serão aceitas trocas ou devoluções de produtos com as embalagens danificadas e/ou que aparentem terem sido usados.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;O prazo máximo para a devolução do produto ou solicitação da troca por insatisfação é de 7 (sete) dia s a contar da data do recebimento do mesmo.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Caso seu produto apresentou algum defeito, certifique-se de que ele não se inclua em nenhum destes casos:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- &amp;nbsp;indícios de queda ou mau uso&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- &amp;nbsp;selos rompidos ou com avarias físicas de qualquer espécie&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- &amp;nbsp;contato com água ou higienização com produto inadequado&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Nestes casos os produtos perdem sua garantia, sendo assim, não efetuaremos a troca.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Para troca toda mercadoria deverá obrigatoriamente acompanhar embalagem original com todos os manuais e acessórios. Fica por conta do cliente o envio da mercadoria até nosso Centro de Distribuição,&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Todos os produtos passarão por uma análise técnica para a verificação em até 3 dias úteis após entrega em nossa sede.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Após 7 dias, o produto será encaminhado ao &amp;nbsp;seu &amp;nbsp;respectivo fabricante ou importador para verificação e teste. Nesse caso o prazo total para substituição ou reparo dos produtos é de até 30 dias, conforme previsto pelo código de Defesa do Consumidor.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Direitos de Propriedade Intelectual&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer respeita os direitos de propriedade intelectual de terceiros e requer que seus usuários façam o mesmo.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Ao enviar qualquer tipo de conteúdo ou informação para a&amp;nbsp;IntimusSexy - O Portal do Prazer, o usuário declara autorizar: (i) de forma gratuita, não exclusiva, perpétua, global e livre de royalty, o uso, pela&amp;nbsp;IntimusSexy - O Portal do Prazer, do material enviado, em todos e&amp;nbsp;quaisquer suportes&amp;nbsp;e meios existentes, ou que venham a existir, de reprodução, transmissão, publicação, distribuição, inclusão em banco de dados; (ii) a edição e adaptação do material enviado, a exclusivo critério da IntimusSexy - O Portal do Prazer, para o uso acima descrito.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;O usuário declara, ainda, que o conteúdo de qualquer contribuição submetida por ele para o site da IntimusSexy - O Portal do Prazer é de sua exclusiva criação, não constituindo violação de direitos autorais, marcas, segredos, direitos de personalidade, direitos patrimoniais e quaisquer outros direitos de terceiros e , que possui poderes para autorizar o uso do material pela IntimusSexy - O Portal do Prazer, conforme descrito acima.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer não está obrigada a utilizar os materiais enviados pelos usuários.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Os usuários não estão autorizados a utilizar, em qualquer hipótese, cópia de qualquer conteúdo pertencente à IntimusSexy - O Portal do Prazer sem o consentimento da mesma ou, no caso de conteúdo de autoria de terceiros, sem o consentimento do autor.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Comentários&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer permite que os usuários cadastrados expressem sua opinião sobre os produtos por meio de comentários.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Cada usuário responderá civil e penalmente pelo conteúdo dos comentários que publicar no site da IntimusSexy - O Portal do Prazer.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer não se responsabiliza pelo conteúdo dos comentários publicados pelos usuários e se reserva o direito de eliminar, restringir &amp;nbsp;ou editar comentários que não sirvam ao propósito de avaliação pessoal dos produtos e/ou que contenham: (i) ofensas a terceiros; (ii) &amp;nbsp;assédio ou constrangimento ilegal; (iii) pedofilia e/ou pornografia; (iv) racismo ou descriminação de qualquer natureza; (v) apologia à pratica de crimes; (vi) violação a direito autoral ou uso de imagem; (vii) utilização de marcas, logos etc de terceiros ; e (viii) promoção de atividade comercial de terceiros;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Descumprimento&lt;/span&gt;&lt;/div&gt;&lt;div&gt;O descumprimento recorrente das regras acima expostas ou a prática de qualquer ilegalidade autoriza a IntimusSexy - O Portal do Prazer a, unilateralmente, cancelar a conta de acesso do usuário, sem aviso prévio.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Modificação destes Termos e Condições&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;A IntimusSexy - O Portal do Prazer se reserva o direito de modificar a qualquer tempo, unilateralmente, os presentes Termos e Condições de Uso.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;Lei aplicável&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;text-decoration: underline; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Os presentes Termos e Condições de Uso são regidos pela legislação da República Federativa do Brasil.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Caso tenha alguma dúvida sobre o presente documento, favor entrar em contato pelo contato@intimussexy.com.br&lt;/div&gt;','Termos e Condições','',''),(7,4,'Robert Johnson','&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n		&lt;img src=&quot;image/catalog/article/article-1.jpg&quot; alt=&quot;Robert Johnson&quot;&gt;\r\n	\r\n&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Senior salesman&lt;/strong&gt; with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;','','',''),(8,4,'Jessica Priston','&lt;div class=&quot;human_info&quot;&gt;&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;										&lt;img src=&quot;image/catalog/article/article-2.jpg&quot; alt=&quot;Jessica Priston&quot;&gt;									&lt;/figure&gt;\r\n&lt;p&gt;Mega positive &lt;strong&gt;shop assistant&lt;/strong&gt; always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;','','',''),(9,4,'Sam Kromstain','&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;							&lt;img src=&quot;image/catalog/article/article-3.jpg&quot; alt=&quot;Sam Kromstain&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Wholesale manager.&lt;/strong&gt; Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;','','',''),(4,4,'Sobre nós','&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Quem somos&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Em nossa loja comercializamos produtos de alta qualidade aprovados pelo Inmetro e pela Anvisa sempre com a preocupação de total satisfação de todos nossos clientes.&lt;/p&gt;&lt;p&gt;Em nosso sexshop online você tem acesso a todas informações sobre seu pedido inclusive podendo rastrear a sua encomenda online diretamente pela sua conta de cliente em nossa loja.&lt;/p&gt;&lt;p&gt;Para nossa equipe é sempre um prazer poder ajudá-los a realizar suas fantasias e curiosidades. Trabalhamos tudo isso aliados as práticas éticas de nossa empresa, que são: garantia de sigilo, discrição, segurança e presteza durante e após a aquisição dos produtos.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Encomendas Discretas&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Todas nossas embalagens são enviadas com total discrição sem mencionar em nenhum momento o nome &amp;nbsp;da loja ou o nome de algum produto. Compre aqui com a certeza que irá ter privacidade total em seu pedido.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Segurança&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Todas suas compras em nossa loja são criptografadas pela empresa COMODO SEGURE SSL que impedem a cópia da informação enviada, sendo assim você pode efetuar suas compras tranquilamente e receber no conforto de sua casa com total segurança, conforto e privacidade.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Obs&lt;/span&gt;: Não possuímos loja física.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Sobre nós','',''),(6,4,'Informações de Entrega','&lt;p&gt;Abaixo estão listados os tipos de envios que podem ser efetuados e seus respectivos prazos fornecidos pelos correios:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; text-decoration: underline;&quot;&gt;Seu pedido será enviado de 1 a 3 dias úteis após confirmação de pagamento.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;PAC: Capitais de 4 até 8 dias úteis. Interior de 4 até 14 dias úteis.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ATENÇÃO: A entrega via PAC é realizada apenas em dias úteis de segunda a sexta feira.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;SEDEX : Capitais de 2 a 4 dias úteis. Interior de 3 a 5 dias úteis.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ATENÇÃO: A entrega via SEDEX é realizada de segunda a sábado.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;E-SEDEX: Capitais de 2 a 4 dias úteis. Interior de 3 a 5 dias úteis .&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ATENÇÃO: A entrega via E-SEDEX é realizada de segunda a sábado.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;As modalidades citadas acima sofrerão 3 tentativas de entrega pelos Correios, no caso do destinatário estar ausente.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Caso as 3 tentativas de entrega sejam frustradas, o objeto ficará disponível na agência dos Correios por 7 dias corridos, aguardando retirada. Após este prazo o objeto é devolvido para nossa empresa.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;No caso de endereço inválido ou mudança de endereço as modalidades citadas sofrem apenas 1 tentativa de entrega e são devolvidas para nossa empresa.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Não se responsabiliza pelo reenvio das mercadoria devolvidas pelos motivos citados acima.&lt;/p&gt;&lt;p&gt;Nestes casos o custo de reenvio será de inteira responsabilidade do cliente.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Para um melhor controle do processo de entrega, enviamos o código de rastreamento para o e-mail cadastrado, após a postagem da mercadoria. O acompanhamento da mercadoria através do código de rastreamento é de responsabilidade do cliente.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Caso não receba o e-mail com o código de rastreamento e o prazo do envio do seu pedido tenha sido ultrapassado, entre em contato conosco para solicitar este código. Em caso de atraso na entrega dos Correios entre em contato conosco que abriremos uma reclamação junto ao mesmo.&lt;/p&gt;','Informações de Entrega','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,0),(6,0,0),(3,0,0),(5,0,0),(7,0,0),(8,0,0),(9,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (4,'Português (BR)','pt-br','pt_BR.UTF-8, pt_BR, UTF-8','br.png','portuguese-br',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=868 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (407,12,'olark.50','footer_top',1),(830,10,'bestseller.43','column_left',1),(852,13,'tm_newsletter.79','column_left',2),(847,5,'olark.50','footer_top',1),(664,8,'tm_google_map.54','content_top',0),(838,4,'latest.69','column_left',1),(843,3,'olark.50','footer_top',1),(415,11,'olark.50','footer_top',1),(420,2,'olark.50','footer_top',1),(851,13,'olark.50','footer_top',1),(865,1,'tm_single_category_product.83','content_top',3),(825,6,'olark.50','footer_top',1),(829,10,'olark.50','footer_top',1),(658,7,'olark.50','footer_top',1),(663,8,'olark.50','footer_top',1),(837,4,'tm_category_menu.78','column_left',0),(846,5,'tm_category_menu.78','column_left',0),(850,13,'special.67','column_left',1),(661,9,'olark.50','footer_top',1),(844,3,'tm_category_menu.78','column_left',0),(842,3,'featured.28','column_left',1),(866,1,'tm_single_category_product.84','content_top',4),(864,1,'html.81','content_bottom',0),(863,1,'tm_single_category_product.82','content_top',2),(862,1,'html.80','column_left',5),(861,1,'tm_newsletter.79','column_left',4),(860,1,'featured.28','column_left',1),(859,1,'tm_category_menu.78','column_left',0),(857,1,'tm_slideshow.46','content_top',0),(858,1,'banner.33','content_top',1),(856,1,'olark.50','footer_top',1),(855,1,'special.67','column_left',2),(854,1,'tm_fbbox.42','column_left',3),(826,6,'tm_category_menu.78','column_left',0),(827,6,'featured.28','column_left',1),(828,6,'tm_newsletter.79','column_left',2),(831,10,'tm_category_menu.78','column_left',0),(832,10,'tm_newsletter.79','column_left',2),(841,3,'latest.69','column_left',2),(839,4,'olark.50','footer_top',1),(840,4,'tm_newsletter.79','column_left',2),(845,3,'tm_newsletter.79','column_left',3),(848,5,'featured.28','column_left',1),(849,5,'tm_newsletter.79','column_left',2),(853,13,'tm_category_menu.78','column_left',0),(867,1,'tm_newsletter_popup.85','header_top',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (210,6,0,'account/%'),(211,10,0,'affiliate/%'),(214,3,0,'product/category'),(217,1,0,'common/home'),(148,2,0,'product/product'),(146,11,0,'information/information'),(185,7,0,'checkout/%'),(189,8,0,'information/contact'),(187,9,0,'information/sitemap'),(213,4,0,''),(215,5,0,'product/manufacturer'),(143,12,0,'product/compare'),(216,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,4,'Centimeter','cm'),(2,4,'Millimeter','mm'),(3,4,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (18,'La Pimienta','',0),(16,'GTR Fantasias','',0),(17,'Use &amp; Abuse','',0),(12,'Sexy Fantasy','',0),(13,'Soft Love','',0),(15,'Importação','',0),(11,'Adão e Eva','',0),(19,'Love Yes','',0),(20,'Carbogel','',0),(21,'KGEL','',0),(22,'Fashion','',0),(23,'Apinil','',0),(24,'Love Sex','',0),(25,'Hot Flowers','',0),(26,'Fresh','',0),(27,'Danilla','',0),(28,'Kalya','',0),(29,'Intt','',0),(30,'Garji','',0),(31,'Loka Senção','',0),(32,'RM','',0),(33,'Surreale','',0),(34,'K-MED','',0),(35,'Lu Riva','',0),(36,'Kayo Valentin','',0),(37,'Pimenta Sexy','',0),(38,'Delirius Plus','',0),(39,'De Mel','',0),(40,'Perrutextil','',0),(41,'Sexy Imperio','',0),(42,'HANDCCUFS','',0),(43,'Brasil Fetiche','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (11,0),(12,0),(13,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_api_call`
--

DROP TABLE IF EXISTS `oc_mercadolivre_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_api_call` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `callId` varchar(200) NOT NULL,
  `callType` varchar(50) NOT NULL,
  `dateTime` datetime NOT NULL,
  `done` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_api_call`
--

LOCK TABLES `oc_mercadolivre_api_call` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_api_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_attr_combination`
--

DROP TABLE IF EXISTS `oc_mercadolivre_attr_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_attr_combination` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mercaId` varchar(200) NOT NULL,
  `product_id` bigint(15) NOT NULL,
  `quantity` int(8) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `picture` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_attr_combination`
--

LOCK TABLES `oc_mercadolivre_attr_combination` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_attr_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_attr_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_attribute`
--

DROP TABLE IF EXISTS `oc_mercadolivre_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_attribute` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `combinationId` int(8) NOT NULL,
  `attributeId` varchar(200) NOT NULL,
  `attributeValueId` varchar(200) NOT NULL,
  `attributeValue` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_attribute`
--

LOCK TABLES `oc_mercadolivre_attribute` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_category`
--

DROP TABLE IF EXISTS `oc_mercadolivre_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mercaId` varchar(200) NOT NULL,
  `name` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_category`
--

LOCK TABLES `oc_mercadolivre_category` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_listing_type`
--

DROP TABLE IF EXISTS `oc_mercadolivre_listing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_listing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_listing_type`
--

LOCK TABLES `oc_mercadolivre_listing_type` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_listing_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_listing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_order`
--

DROP TABLE IF EXISTS `oc_mercadolivre_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_order` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mercaOrderId` varchar(200) NOT NULL,
  `order_id` bigint(11) NOT NULL,
  `feedback` int(1) NOT NULL,
  `stopSync` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_order`
--

LOCK TABLES `oc_mercadolivre_order` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_product`
--

DROP TABLE IF EXISTS `oc_mercadolivre_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_product` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(15) NOT NULL,
  `mercaId` varchar(240) NOT NULL,
  `option` varchar(240) DEFAULT NULL,
  `status` varchar(240) NOT NULL,
  `substatus` varchar(240) NOT NULL,
  `url` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_product`
--

LOCK TABLES `oc_mercadolivre_product` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mercadolivre_status`
--

DROP TABLE IF EXISTS `oc_mercadolivre_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mercadolivre_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merca_status` varchar(200) DEFAULT NULL,
  `oc_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mercadolivre_status`
--

LOCK TABLES `oc_mercadolivre_status` WRITE;
/*!40000 ALTER TABLE `oc_mercadolivre_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mercadolivre_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (97,'TM label sale','13','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM label sale</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>13</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_new\'] = $this->language->get(\'text_new\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_new\']      = \'New\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Neue \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Новый \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:41'),(165,'TM Special ','12','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Special </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>12</code>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\r\n					if ($quick_descr_start > 9){\r\n					$quick_descr = substr($desc, $quick_descr_start);\r\n				}else{\r\n					$quick_descr = $desc;\r\n				}\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n						$data[\'special_link\'] = $this->url->link(\'product/special\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				$data[\'text_view\'] = $this->language->get(\'text_view\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_view\']          = \'View all products\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				$_[\'text_view\']          = \'Alle Artikel anzeigen\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				$_[\'text_view\']          = \'Все продукты\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-08 15:37:32'),(90,'TM Lazy load','TM Lazy load','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Lazy load</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Lazy load</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/module/tm_module_tab.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $this->config->get(\'config_image_product_width\'),\r\n				\'img-height\'       => $this->config->get(\'config_image_product_height\'),\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:48'),(91,'TM Top Menu All Levels','9','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Top Menu All Levels</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>9</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->model(\'design/topmenu\');\r\n			$data[\'categories_tm\'] = $this->model_design_topmenu->getMenu();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:50'),(92,'TM NewsLetter','TM Newsletter','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM NewsLetter</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Newsletter</code>\r\n	<file path=\"admin/controller/marketing/contact.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'sale/order\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$results = $this->model_sale_customer->getCustomers($customer_data);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$guest_results = $this->model_module_tm_newsletter->getNewsletters();\r\n			foreach ($guest_results as $result) {\r\n				$emails[] = $result[\'tm_newsletter_email\'];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/register.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'account/customer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->customer->login($this->request->post[\'email\'], $this->request->post[\'password\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->model_module_tm_newsletter->deleteNewsletter($this->request->post[\'email\']);\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>',1,'2015-06-22 15:37:52'),(93,'Tm PathTheme','14','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Tm PathTheme</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>14</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'name\'] = $this->config->get(\'config_name\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->language(\'common/footer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/recurring.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_continue\'] = $this->language->get(\'button_continue\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:54'),(94,'TM Product Category image','10','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product Category image</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>10</code>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[  \'href\'  => $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'_\' . $result[\'category_id\'] . $url)]]></search>\r\n			<add position=\"after\"><![CDATA[,\'thumb\' => $image]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[  $data[\'categories\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[  $image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'config_image_category_width\'), $this->config->get(\'config_image_category_height\'));   ]]></add>\r\n		</operation>\r\n		\r\n		\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:00'),(95,'TM Live search','11','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Live search</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>11</code>\r\n	<file path=\"catalog/controller/product/search.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\r\n			<add  position=\"after\"><![CDATA[\r\n				public function ajax()\r\n	{\r\n		// Contains results\r\n		$data = array();\r\n		if( isset($this->request->get[\'keyword\']) ) {\r\n			// Parse all keywords to lowercase\r\n			$keywords = strtolower( $this->request->get[\'keyword\'] );\r\n			// Perform search only if we have some keywords\r\n			if( strlen($keywords) >= 3 ) {\r\n				$parts = explode( \' \', $keywords );\r\n				$add = \'\';\r\n				// Generating search\r\n				foreach( $parts as $part ) {\r\n					$add .= \' AND (LOWER(pd.name) LIKE \"%\' . $this->db->escape($part) . \'%\"\';\r\n					$add .= \' OR LOWER(p.model) LIKE \"%\' . $this->db->escape($part) . \'%\")\';\r\n				}\r\n				$add = substr( $add, 4 );\r\n				$sql  = \'SELECT pd.product_id, pd.name, p.model, p.image FROM \' . DB_PREFIX . \'product_description AS pd \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product AS p ON p.product_id = pd.product_id \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product_to_store AS p2s ON p2s.product_id = pd.product_id \';\r\n				$sql .= \'WHERE \' . $add . \' AND p.status = 1 \';\r\n				$sql .= \'AND pd.language_id = \' . (int)$this->config->get(\'config_language_id\');\r\n				$sql .= \' AND p2s.store_id =  \' . (int)$this->config->get(\'config_store_id\'); \r\n				$sql .= \' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC\';\r\n				$sql .= \' LIMIT 15\';\r\n				$res = $this->db->query( $sql );\r\n				if( $res ) {\r\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\r\n					$this->load->model(\'tool/image\'); \r\n					// For the seo url stuff\r\n					$basehref = \'product/product&keyword=\' . $this->request->get[\'keyword\'] . \'&product_id=\';\r\n					foreach( $data as $key => $values ) {\r\n						if ( $values[\'image\'] ) {\r\n							$image = $this->model_tool_image->resize($values[\'image\'], $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						else {\r\n							$image = $this->model_tool_image->resize(\'no_image.jpg\', $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						$data[$key] = array(\r\n							\'name\' => htmlspecialchars_decode($values[\'name\'] . \' (\' . $values[\'model\'] . \')\', ENT_QUOTES),\r\n							\'href\' => $this->url->link($basehref . $values[\'product_id\']),\r\n							\'image\' =>$image\r\n						);\r\n					}\r\n				}\r\n			}\r\n		}\r\n		echo json_encode( $data );\r\n	}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:02'),(81,'TM BestSellers ','bestsellers','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM BestSellers </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>bestsellers</code>\r\n	<file path=\"catalog/controller/module/bestseller.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n				 $desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n                $quick_descr_start = strpos($desc,\'</iframe>\')+9;\r\n                $quick_descr = substr($desc, $quick_descr_start);\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				foreach ($results as $result) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					 \'author\'     => $result[\'manufacturer\'],\r\n                    \'description1\' => $quick_descr,\r\n                    \'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n                    \'model\' => $result[\'model\'],\r\n                    \'text_availability\' => $result[\'quantity\'],\r\n                    \'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] = \'Bestsellers\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']      = \'Без НДС:\';]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:27'),(83,'TM Description fo banners','2','http://www.templatemonster.com','1.0','http://www.opencart.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Description fo banners</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.opencart.com</link>\r\n	<code>2</code>\r\n	<file path=\"admin/controller/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_remove\'] = $this->language->get(\'button_remove\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n\r\n			$data[\'entry_description\'] = $this->language->get(\'entry_description\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'banner_images\'][] = array(\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'			   => $banner_image[\'description\'],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\'\"); ]]>\r\n			</search>\r\n			<add position=\"replace\"><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\', description = \'\" .  $this->db->escape($banner_image_description[\'description\']) . \"\'\"); ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$banner_image_description_data[$banner_image_description[\'language_id\']] = array(\'title\' => $banner_image_description[\'title\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$banner_image_description_desc[$banner_image_description[\'language_id\']] = array ( \'description\' => $banner_image_description[\'description\'] );\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'banner_image_description\' => $banner_image_description_data,\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'              => $banner_image_description_desc,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']   = \'Sort Order\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Description:\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/banner_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_title; ?></td>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_description; ?></td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			<input type=\"text\" name=\"banner_image[<?php echo $image_row; ?>][link]\" value=\"<?php echo $banner_image[\'link\']; ?>\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<td>\r\n				<?php foreach ($languages as $language) { ?>\r\n				<textarea style=\"width:300px; height:150px;\" name=\"banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"><?php echo isset($banner_image[\'description\'][$language[\'language_id\']]) ? $banner_image[\'description\'][$language[\'language_id\']][\'description\'] : \'\'; ?></textarea>\r\n				<img src=\"view/image/flags/<?php echo $language[\'image\']; ?>\" title=\"<?php echo $language[\'name\']; ?>\" /><br />\r\n				<?php } ?>\r\n				</td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'  <td class=\"text-left\"><input type=\"text\" name=\"banner_image[\' + image_row + \'][link]\" value=\"\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	 html += \'<td class=\"text-left\">\';\r\n	<?php foreach ($languages as $language) { ?>\r\n	html += \'<textarea style=\"width:300px; height:150px;\" name=\"banner_image[\' + image_row + \'][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"></textarea><br />\';\r\n	<?php } ?>\r\n	html += \'</td>\';\r\n	]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/tm_slideshow.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/parallax.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2015-06-22 15:37:31'),(166,'TM Footer','4','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Footer</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>4</code>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_follow\'] = $this->language->get(\'text_follow\');\r\n			$data[\'text_support\'] = $this->language->get(\'text_support\');\r\n			$data[\'text_twi\'] = $this->language->get(\'text_twi\');\r\n			$data[\'text_fb\'] = $this->language->get(\'text_fb\');\r\n			$data[\'text_rss\'] = $this->language->get(\'text_rss\');\r\n			$data[\'text_yt\'] = $this->language->get(\'text_yt\');\r\n			$data[\'open\'] = $this->config->get(\'config_open\');\r\n			$data[\'mail\'] = $this->config->get(\'config_email\');\r\n			]]></add>\r\n		</operation>\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'address\'] = nl2br($this->config->get(\'config_address\'));\r\n			$data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n			$data[\'fax\'] = $this->config->get(\'config_fax\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n\r\n	<operation>\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-08 18:18:39'),(86,'TM Footer Position','5','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Footer Position</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>5</code>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_information\'] = $this->language->get(\'text_information\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'footer_top\') { ?>\r\n					<option value=\"footer_top\" selected=\"selected\"><?php echo $text_footer_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_footer_top\'] = $this->language->get(\'text_footer_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_footer_top\']    = \'Footer\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:36'),(88,'TM Header Top Position on Home page','7','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Top Position on Home page</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>7</code>\r\n	<file path=\"catalog/controller/common/home.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'content_top\'] = $this->load->controller(\'common/content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'header_top\'] = $this->load->controller(\'common/header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/common/home.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php echo $header; ?>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<div class=\"header_modules\"><?php echo $header_top; ?></div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'header_top\') { ?>\r\n					<option value=\"header_top\" selected=\"selected\"><?php echo $text_header_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"header_top\"><?php echo $text_header_top; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"header_top\"><?php echo $text_header_top; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_header_top\'] = $this->language->get(\'text_header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_header_top\']    = \'Header Top\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:41'),(89,'TM latest ','8','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM latest </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>8</code>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\r\n				if ($quick_descr_start > 9){\r\n					$quick_descr = substr($desc, $quick_descr_start);\r\n				}else{\r\n					$quick_descr = $desc;\r\n				}\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:45'),(101,'TM Featured ','3','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Featured </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>3</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\r\n					if ($quick_descr_start > 9){\r\n					$quick_descr = substr($desc, $quick_descr_start);\r\n				}else{\r\n					$quick_descr = $desc;\r\n				}\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $product_info[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\r\n					\'model\' => $product_info[\'model\'],\r\n					\'text_availability\' => $product_info[\'quantity\'],\r\n					\'allow\' => $product_info[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-08-15 14:32:01'),(127,'TM Ajax add to cart ','ajax_add','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Ajax add to cart </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>ajax_add</code>\r\n\r\n <!-- Featured -->\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price = $this->currency->format($this->tax->calculate($option_value[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\']),\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n <!-- Specials -->\r\n	<file path=\"catalog/controller/module/special.php,catalog/controller/module/bestseller.php,catalog/controller/module/latest.php,catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price = $this->currency->format($this->tax->calculate($option_value[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[\r\n				\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/search.php,catalog/controller/product/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n			<file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n\r\n\r\n\r\n		<file path=\"catalog/language/english/module/featured.php,catalog/language/english/module/special.php,catalog/language/english/module/bestseller.php,catalog/language/english/module/latest.php,catalog/language/english/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$_[\'text_option\']              = \'Available Options\';\r\n				$_[\'text_select\']              = \'--- Please Select ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php,catalog/language/de-DE/module/special.php,catalog/language/de-DE/module/bestseller.php,catalog/language/de-DE/module/latest.php,catalog/language/de-DE/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Mögliche Optionen\';\r\n				$_[\'text_select\']              = \'--- Bitte wählen ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php,catalog/language/russian/module/special.php,catalog/language/russian/module/bestseller.php,catalog/language/russian/module/latest.php,catalog/language/russian/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Доступные варианты\';\r\n				$_[\'text_select\']              = \'--- Выберите ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-08-17 14:36:46'),(152,'TM Product','product','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>product</code>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\'); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				    $desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $data[\'video\'] = $video;\r\n                $data[\'description\'] = str_replace($video, \'\', $desc);\r\n            } else{\r\n                $data[\'video\'] = \'\';\r\n                $data[\'description\'] = $desc;\r\n            }\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[\'tab_attribute\'] = $this->language->get(\'tab_attribute\');]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $data[\'tab_video\'] = $this->language->get(\'tab_video\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'points\'] = $product_info[\'points\'];]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				   $data[\'stock_status\'] = $product_info[\'quantity\'];\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'tab_review\']               = \'Reviews (%s)\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $_[\'tab_video\']               = \'Video\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-04 12:38:37'),(148,'TM Pages Lang','lang','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Pages Lang</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>lang</code>\r\n	<file path=\"catalog/language/english/information/sitemap.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$_[\'text_contact\']     = \'Contact Us\';\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$_[\'text_category\']     = \'Categories\';\r\n				$_[\'text_pages\']     = \'Pages\';\r\n				]]></add>\r\n        </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/sitemap.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_contact\'] = $this->language->get(\'text_contact\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_pages\'] = $this->language->get(\'text_pages\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));]]></search>\r\n			<add position=\"replace\" offset=\"2\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n			<operation>\r\n			<search><![CDATA[ $this->session->data[\'compare\'][] = $this->request->post[\'product_id\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));\r\n\r\n			$json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0));\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ array_shift($this->session->data[\'compare\']); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'warning\'] = $this->language->get(\'text_warning\');\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0)); ]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[ \r\n				else{\r\n					$json[\'info\'] = $this->language->get(\'text_info\');\r\n				}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n\r\n	<file path=\"catalog/language/english/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Based on %s reviews.\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'%s reviews.\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Summary\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'This product already added in comparison list!\';\r\n			$_[\'text_warning\']      = \'Maximum products to compare is 4. First added product has been removed from comparison list.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/russian/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Всего отзывов: %s\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'Отзывов: %s\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Краткое описание\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Данный товар уже добавлен в список сравнения!\';\r\n			$_[\'text_warning\']      = \'Максимальное количество продуктов для сравнения - 4. Первый добавленный продукт удален со списка.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']		= \'Zusammenfassung\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Dieses Produkt ist bereits in Vergleichsliste hinzugefügt!\';\r\n			$_[\'text_warning\']      = \'Maximale Artikel zum Vergleichen ist 4. Erste hinzugefügt Produkt wurde aus Vergleichsliste entfernt wurden.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-08-28 17:32:58'),(163,'TM Header','6','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<author>Tm</author>\r\n	<code>6</code>\r\n	<file path=\"catalog/controller/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_wishlist\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0)); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n		$json[\'total\'] = sprintf($this->language->get(\'text_wishlist2\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0));\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0)); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n		$data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'));\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $data[\'name\'] = $this->config->get(\'config_name\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_all\'] = $this->language->get(\'text_all\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			\r\n			$data[\'text_shopcart\'] = $this->language->get(\'text_shopcart\');\r\n			$data[\'text_information\'] = $this->language->get(\'text_information\');\r\n			$data[\'text_service\'] = $this->language->get(\'text_service\');\r\n			$data[\'text_extra\'] = $this->language->get(\'text_extra\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_contact\'] = $this->language->get(\'text_contact\');\r\n			$data[\'text_return\'] = $this->language->get(\'text_return\');\r\n			$data[\'text_sitemap\'] = $this->language->get(\'text_sitemap\');\r\n			$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n			$data[\'text_voucher\'] = $this->language->get(\'text_voucher\');\r\n			$data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\r\n			$data[\'text_special\'] = $this->language->get(\'text_special\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_order\'] = $this->language->get(\'text_order\');\r\n			$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');\r\n			$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n			$data[\'text_compare\'] = $this->language->get(\'text_compare\');\r\n			$data[\'text_wishlist2\'] = sprintf($this->language->get(\'text_wishlist2\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0));\r\n			$data[\'open\'] = $this->config->get(\'config_open\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'telephone\'] = $this->config->get(\'config_telephone\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'special\'] = $this->url->link(\'product/special\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'return\'] = $this->url->link(\'account/return/insert\', \'\', \'SSL\');\r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\', \'\', \'SSL\');\r\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', \'SSL\');\r\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', \'SSL\');\r\n			$data[\'account\'] = $this->url->link(\'account/account\', \'\', \'SSL\');\r\n			$data[\'order\'] = $this->url->link(\'account/order\', \'\', \'SSL\');\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			$data[\'compare\'] = $this->url->link(\'product/compare\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			if (($data[\'maintenance\']==0)) {\r\n			$data[\'informations\'] = array();\r\n			foreach ($this->model_catalog_information->getInformations() as $result) {\r\n				if ($result[\'bottom\']) {\r\n					$data[\'informations\'][] = array(\r\n						\'title\' => $result[\'title\'],\r\n						\'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\r\n					);\r\n				}\r\n			}	\r\n		}\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $data[\'cart\'] = $this->load->controller(\'common/cart\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$data[\'tm_login\'] = $this->load->controller(\'module/tm_header_login\');\r\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\']      = \'Checkout\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_information\']  = \'Information\';\r\n					$_[\'text_service\']      = \'Customer Service\';\r\n					$_[\'text_extra\']        = \'Extras\';\r\n					$_[\'text_contact\']      = \'Contact Us\';\r\n					$_[\'text_return\']       = \'Returns\';\r\n					$_[\'text_sitemap\']      = \'Site Map\';\r\n					$_[\'text_manufacturer\'] = \'Brands\';\r\n					$_[\'text_voucher\']      = \'Gift Vouchers\';\r\n					$_[\'text_affiliate\']    = \'Affiliates\';\r\n					$_[\'text_special\']      = \'Specials\';\r\n					$_[\'text_account\']      = \'My Account\';\r\n					$_[\'text_order\']        = \'Order History\';\r\n					$_[\'text_newsletter\']   = \'Newsletter\';\r\n					$_[\'text_category\']   = \'Categories\';\r\n					$_[\'text_latest_added\']   = \'Latest added product(s):\';\r\n					$_[\'text_compare\']      = \'Product Compare\';\r\n					$_[\'text_wishlist2\']      = \'%s items\';\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']      = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$_[\'text_wishlist\']      = \'Wish List\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$_[\'text_wishlist2\'] = \'%s items\';\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				$_[\'text_wishlist\'] = \'Wish List\'; \r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/common/header.php\">\r\n					<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']		= \'Wunschliste (%s)\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_compare\']		= \'Produktvergleich\';\r\n					$_[\'text_wishlist2\']      = \'%s Artikel\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']		= \'Wunschliste (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				$_[\'text_wishlist\']		= \'Wunschliste\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/account/wishlist.php\">\r\n					<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']	= \'Wunschliste (%s)\';]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_compare\']		= \'Produktvergleich\';\r\n					$_[\'text_wishlist2\']      = \'%s Artikel\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']	= \'Wunschliste (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				$_[\'text_wishlist\']	= \'Wunschliste\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/russian/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']      = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'Сравнение товаров\';\r\n					$_[\'text_wishlist2\']      = \'%s товаров\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']      = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				$_[\'text_wishlist\']      = \'Закладки\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/russian/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_wishlist2\']      = \'%s товаров\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				$_[\'text_wishlist\']      = \'Закладки\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2015-09-07 17:38:41'),(168,'TM Header Cart','1','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Cart</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>1</code>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_loading\'] = $this->language->get(\'text_loading\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_items2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				$data[\'text_shopping_cart\'] = $this->language->get(\'text_shopping_cart\');\r\n				$data[\'text_items3\'] = sprintf($this->language->get(\'text_items3\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total)); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'total2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				$json[\'total3\'] = sprintf($this->language->get(\'text_items3\'),$this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				$products = $this->cart->getProducts();\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$current_quantity = 0;\r\n            foreach ($products as $product) {\r\n                if ($product_info[\'product_id\'] == $product[\'product_id\']) {\r\n                    $current_quantity = $product[\'quantity\'];\r\n                }\r\n            }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if (isset($this->request->post[\'quantity\']) && ((int)$this->request->post[\'quantity\'] >= $product_info[\'minimum\'])) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				if (($product_info[\'quantity\'] > (int)$this->request->post[\'quantity\']) && ($product_info[\'quantity\'] > $current_quantity + (int)$this->request->post[\'quantity\'])) {\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $quantity = (int)$this->request->post[\'quantity\']; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				} else {\r\n                    $json[\'error\'][\'quantity\'] = sprintf($this->language->get(\'error_quantity\'), $product_info[\'quantity\']);\r\n                }\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Only %s items available!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Nur %s Stück verfügbar!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Ошибка! Доступно %s единиц!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/english/common/cart.php,catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_items\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_items2\']    = \'%s items\';\r\n			$_[\'text_items3\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']    = \'Shopping Cart:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/cart.php,catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				$_[\'text_items2\']    = \'%s Artikel\';\r\n				$_[\'text_items3\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']= \'Warenkorb: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/cart.php,catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				$_[\'text_items2\']    = \'%s товаров\';\r\n				$_[\'text_items3\']    = \'%s\';\r\n			$_[\'text_shopping_cart\'] = \'Корзина: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-11 08:55:05'),(169,'Mercadolivre API Opencart Module','mercadolivre','OpenCartMart','2.3','http://www.opencartmart.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Mercadolivre API Opencart Module</name>\n	<code>mercadolivre</code>\n	<version>2.3</version>\n    <author>OpenCartMart</author>\n    <link>http://www.opencartmart.com</link>  \n    <file path=\"admin/language/*/common/menu.php\">\n		<operation error=\"log\">\n			<search><![CDATA[ $_[\'text_paypal_search\']               = \'Search\'; ]]></search>\n			<add position=\"after\"><![CDATA[\n			    $_[\'text_mercadolivre_extension\']    = \'Mercadolivre\';\n			    $_[\'text_mercadolivre_dashboard\']    = \'Dashboard\';\n				$_[\'text_mercadolivre_setting\']    = \'Setting\';\n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/common/menu.php\">\n		<operation error=\"log\">\n			<search><![CDATA[ $data[\'text_openbay_order_import\'] = $this->language->get(\'text_openbay_order_import\'); ]]></search>\n			<add position=\"after\"><![CDATA[\n			    $data[\'text_mercadolivre_extension\']       = $this->language->get(\'text_mercadolivre_extension\');\n				$data[\'text_mercadolivre_dashboard\']       = $this->language->get(\'text_mercadolivre_dashboard\');\n				$data[\'text_mercadolivre_setting\']       = $this->language->get(\'text_mercadolivre_setting\');\n				$data[\'mercadolivre_link_extension\']           = $this->url->link(\'module/mercadolivre\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\n			    $data[\'mercadolivre_link_setting\']              = $this->url->link(\'module/mercadolivre/setting\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\n			]]></add>\n		</operation>\n	</file> \n	<file path=\"admin/view/template/common/menu.tpl\">\n		<operation error=\"log\">\n			<search><![CDATA[ <li><a href=\"<?php echo $feed; ?>\"><?php echo $text_feed; ?></a></li> ]]></search>\n			<add position=\"after\"><![CDATA[\n			<li><a class=\"parent\"><?php echo $text_mercadolivre_extension; ?></a>\n                <ul>\n                    <li><a href=\"<?php echo $mercadolivre_link_extension; ?>\"><?php echo $text_mercadolivre_dashboard; ?></a></li>\n                    <li><a href=\"<?php echo $mercadolivre_link_setting; ?>\"><?php echo $text_mercadolivre_setting; ?></a></li>\n                </ul>\n            </li>\n            ]]></add>\n		</operation>\n	</file>   \n	<file path=\"admin/controller/common/header.php\">\n		<operation error=\"log\">\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\n			<add position=\"after\"><![CDATA[\n			        $this->mercadolivre->getAccess();\n			]]></add>\n		</operation>\n	</file>\n	  <file path=\"admin/controller/catalog/product.php\">\n	    <operation>\n            <search><![CDATA[ \'filter_status\'   => $filter_status, ]]></search>     \n			  <add position=\"after\"><![CDATA[\n                \'filter_ml\'   => $filter_ml,\n            ]]></add>\n        </operation> \n		<operation>\n            <search><![CDATA[ $url = \'\'; ]]></search>     \n			  <add position=\"after\"><![CDATA[\n			     if (isset($this->request->get[\'filter_ml\'])) {\n						$filter_ml = $this->request->get[\'filter_ml\'];\n					} else {\n						$filter_ml = null;\n					}\n                if (isset($this->request->get[\'filter_ml\'])) {\n			        $url .= \'&filter_ml=\' . $this->request->get[\'filter_ml\'];\n		         }\n				 $data[\'filter_ml\'] = $filter_ml;\n            ]]></add>\n        </operation> \n	    <operation>\n            <search index=\"0\"><![CDATA[ $this->getList(); ]]></search>     \n			  <add position=\"before\"><![CDATA[\n                $this->mercadolivre->processAPIOrder();\n				\n            ]]></add>\n        </operation> \n        <operation>\n            <search><![CDATA[ $data[\'products\'][] = array( ]]></search>\n            <add position=\"after\"><![CDATA[\n                \'syn_url\' => $syn_url,\n				\'unbind_url\'=>$unbind_url,\n				\'listing_status\' => $this->mercadolivre->getMercadolivreStatus($result[\'product_id\']),\n				\'listing_item_status\' => $this->mercadolivre->getMercadolivreData($result[\'product_id\'],\'status\'),\n            ]]></add>\n        </operation>\n         <operation>\n            <search><![CDATA[ $pagination = new Pagination(); ]]></search>\n            <add position=\"before\"><![CDATA[\n			\n                     if (isset($this->session->data[\'error_warning\'])) {\n						$data[\'error_warning\'] = $this->session->data[\'error_warning\'];\n					\n						unset($this->session->data[\'error_warning\']);\n					} else {\n						$data[\'error_warning\'] = \'\';\n					}\n					\n            ]]></add>\n        </operation>   \n        <operation>\n            <search index=\"0\"><![CDATA[ $results = $this->model_catalog_product->getProducts($filter_data); ]]></search>\n            <add position=\"before\"><![CDATA[\n              \n\n                $this->load->language(\'module/mercadolivre-extra\');\n				\n				if(!$this->mercadolivre->getAccess())\n				{\n				  $data[\'error_warning\'] = $this->language->get(\'need_auth\');\n				}\n\n				  $data[\'lang_markets\'] = $this->language->get(\'lang_markets\');\n                  $data[\'lang_syn\'] = $this->language->get(\'lang_syn\');\n				  $data[\'lang_desyn\'] = $this->language->get(\'lang_desyn\');\n				  $data[\'lang_bulk_btn\'] = $this->language->get(\'lang_bulk_btn\');\n				  $data[\'lang_bulk_desyn_btn\'] = $this->language->get(\'lang_bulk_desyn_btn\');\n				  $data[\'mercadolivre_product_yes\'] = $this->language->get(\'mercadolivre_product_yes\');\n				  $data[\'mercadolivre_product_no\'] = $this->language->get(\'mercadolivre_product_no\');\n				  $data[\'lang_bulk_ml_product\'] = $this->language->get(\'lang_bulk_ml_product\');\n				  \n            ]]></add>\n        </operation>  \n        <operation>\n            <search><![CDATA[ $data[\'products\'][] = array( ]]></search>\n            <add position=\"before\"><![CDATA[\n            \n				$syn_url=$this->url->link(\'module/mercadolivre/synchronize\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\');\n				$is_listed=$this->mercadolivre->getMercadolivreIDs($result[\'product_id\']);\n				if(count($is_listed)>0)\n				$unbind_url=$this->url->link(\'module/mercadolivre/desynchronize\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\');\n				else\n				$unbind_url=\'\';\n				\n            ]]></add>\n        </operation>\n	\n		<operation>\n            <search><![CDATA[ $this->load->model(\'localisation/weight_class\'); ]]></search>\n            <add position=\"before\"><![CDATA[\n			     \n				  $this->load->model(\'mercadolivre/mercadolivre\');\n                  $this->load->language(\'module/mercadolivre-extra\');\n                  $data[\'entry_mercadolivre_category\'] = $this->language->get(\'entry_mercadolivre_category\');\n				  $data[\'entry_mercadolivre_currency\'] = $this->language->get(\'entry_mercadolivre_currency\');\n				  $data[\'entry_mercadolivre_buying_mode\'] = $this->language->get(\'entry_mercadolivre_buying_mode\');\n				  $data[\'entry_mercadolivre_listing_type\'] = $this->language->get(\'entry_mercadolivre_listing_type\');\n				  $data[\'entry_mercadolivre_condition\'] = $this->language->get(\'entry_mercadolivre_condition\');\n				  $data[\'tab_mercadolivre\'] = $this->language->get(\'tab_mercadolivre\');\n				  $data[\'ml_text_category_hint\'] = $this->language->get(\'ml_text_category_hint\');\n				  $data[\'ml_text_select\'] = $this->language->get(\'ml_text_select\');\n				  $data[\'entry_mercadolivre_warranty\'] = $this->language->get(\'entry_mercadolivre_warranty\');\n				  $data[\'entry_mercadolivre_subtitle\'] = $this->language->get(\'entry_mercadolivre_subtitle\');\n				  $data[\'entry_mercadolivre_video\'] = $this->language->get(\'entry_mercadolivre_video\');\n				  $data[\'ml_text_reposting\'] = $this->language->get(\'ml_text_reposting\');\n				  \n				  $data[\'ml_text_brand\'] = $this->language->get(\'ml_text_brand\');\n				  $data[\'ml_text_mpn\'] = $this->language->get(\'ml_text_mpn\');\n				  $data[\'ml_text_gtins_type\'] = $this->language->get(\'ml_text_gtins_type\');\n				  $data[\'ml_text_gtins_code\'] = $this->language->get(\'ml_text_gtins_code\');\n				  $data[\'ml_text_google_shopping\'] = $this->language->get(\'ml_text_google_shopping\');\n				  $data[\'entry_mercadolivre_price_adjustment\'] = $this->language->get(\'entry_mercadolivre_price_adjustment\');\n				\n				\n				if (isset($this->request->post[\'mercaId\'])) {\n					$data[\'mercaId\'] = $this->request->post[\'mercaId\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaId\'] = $product_info[\'mercaId\'];\n				} else {\n					$data[\'mercaId\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaTree\'])) {\n					$data[\'mercaTree\'] = $this->request->post[\'mercaTree\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaTree\'] = $product_info[\'mercaTree\'];\n				} else {\n					$data[\'mercaTree\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaCurrency\'])) {\n					$data[\'mercaCurrency\'] = $this->request->post[\'mercaCurrency\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaCurrency\'] = $product_info[\'mercaCurrency\'];\n				} else {\n					$data[\'mercaCurrency\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaBuyMode\'])) {\n					$data[\'mercaBuyMode\'] = $this->request->post[\'mercaBuyMode\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaBuyMode\'] = $product_info[\'mercaBuyMode\'];\n				} else {\n					$data[\'mercaBuyMode\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaListType\'])) {\n					$data[\'mercaListType\'] = $this->request->post[\'mercaListType\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaListType\'] = $product_info[\'mercaListType\'];\n				} else {\n					$data[\'mercaListType\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaCondition\'])) {\n					$data[\'mercaCondition\'] = $this->request->post[\'mercaCondition\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaCondition\'] = $product_info[\'mercaCondition\'];\n				} else {\n					$data[\'mercaCondition\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaWarranty\'])) {\n					$data[\'mercaWarranty\'] = $this->request->post[\'mercaWarranty\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaWarranty\'] = $product_info[\'mercaWarranty\'];\n				} else {\n					$data[\'mercaWarranty\'] = \'\';\n				}\n				\n				if(!$data[\'mercaWarranty\'])$data[\'mercaWarranty\']=$this->config->get(\'mercadolivre_mercaWarranty\');\n				\n				\n				if (isset($this->request->post[\'mercaVideoId\'])) {\n					$data[\'mercaVideoId\'] = $this->request->post[\'mercaVideoId\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaVideoId\'] = $product_info[\'mercaVideoId\'];\n				} else {\n					$data[\'mercaVideoId\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaReposting\'])) {\n					$data[\'mercaReposting\'] = $this->request->post[\'mercaReposting\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaReposting\'] = $product_info[\'mercaReposting\'];\n				} else {\n					$data[\'mercaReposting\'] = \'\';\n				}\n				\n				if (isset($this->request->post[\'mercaGoogle\'])) {\n					$data[\'mercaGoogle\'] = $this->request->post[\'mercaGoogle\'];\n				} elseif (!empty($product_info) && isset($product_info[\'mercaGoogle\']) && $product_info[\'mercaGoogle\']) {\n					$data[\'mercaGoogle\'] = unserialize($product_info[\'mercaGoogle\']);\n				} else {\n					$data[\'mercaGoogle\'] = array();\n				}\n				\n				if (isset($this->request->post[\'mercaAdjust\'])) {\n					$data[\'mercaAdjust\'] = $this->request->post[\'mercaAdjust\'];\n				} elseif (!empty($product_info)) {\n					$data[\'mercaAdjust\'] = $product_info[\'mercaAdjust\'];\n				} else {\n					$data[\'mercaAdjust\'] = \'\';\n				}\n				\n				$data[\'mercadolivre_cats\']=$this->model_mercadolivre_mercadolivre->getMercadoCategoryOption($data[\'mercaId\']);\n				$data[\'mercadolivre_currency\']=$this->model_mercadolivre_mercadolivre->getMercadoCurrency();\n				$data[\'mercadolivre_modes\']=$this->model_mercadolivre_mercadolivre->getMercadoMode();\n				$data[\'mercadolivre_types\']=$this->model_mercadolivre_mercadolivre->getMercadoType();\n				$data[\'mercadolivre_conditions\']=$this->model_mercadolivre_mercadolivre->getMercadoCondition();\n				\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/model/catalog/product.php\">\n		<operation>\n            <search><![CDATA[ if (isset($data[\'filter_status\']) && !is_null($data[\'filter_status\'])) ]]></search>     \n			  <add position=\"before\"><![CDATA[\n                if (isset($data[\'filter_ml\']) && !is_null($data[\'filter_ml\']) && $data[\'filter_ml\']==1) {\n			        $sql .= \" AND p.product_id in (select product_id from \" . DB_PREFIX . \"mercadolivre_product)\";\n		        }\n				if (isset($data[\'filter_ml\']) && !is_null($data[\'filter_ml\']) && $data[\'filter_ml\']==0) {\n			        $sql .= \" AND p.product_id not in (select product_id from \" . DB_PREFIX . \"mercadolivre_product)\";\n		        }\n            ]]></add>\n        </operation> \n     </file>\n	 <file path=\"admin/view/template/catalog/product_list.tpl\">\n	        <operation error=\"log\">\n                <search><![CDATA[ <button type=\"submit\" form=\"form-product\" formaction=\"<?php echo $copy; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_copy; ?>\" class=\"btn btn-default\"><i class=\"fa fa-copy\"></i></button> ]]></search>\n                <add position=\"before\"><![CDATA[\n                    <a onclick=\"bulkSynchronize();\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"<?php echo $lang_bulk_btn; ?>\"><i class=\"fa fa-link\"></i></a>&nbsp;<a onclick=\"bulkDeSynchronize();\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"<?php echo $lang_bulk_desyn_btn; ?>\"><i class=\"fa fa-unlink\"></i></a>&nbsp;<a onclick=\"bulkMLSetting()\" data-toggle=\"modal\" data-target=\"#mlModal\" class=\"btn btn-default\" title=\"<?php echo $lang_bulk_ml_product; ?>\"><i class=\"fa fa-wrench\"></i></a>\n                ]]></add>\n            </operation>\n            <operation error=\"log\">\n                <search><![CDATA[ <button type=\"button\" data-toggle=\"tooltip\" title=\"<?php echo $button_copy; ?>\" class=\"btn btn-default\" onclick=\"$(\'#form-product\').attr(\'action\', \'<?php echo $copy; ?>\').submit()\"><i class=\"fa fa-copy\"></i></button> ]]></search>\n                <add position=\"before\"><![CDATA[\n                    <a onclick=\"bulkSynchronize();\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"<?php echo $lang_bulk_btn; ?>\"><i class=\"fa fa-link\"></i></a>&nbsp;<a onclick=\"bulkDeSynchronize();\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"<?php echo $lang_bulk_desyn_btn; ?>\"><i class=\"fa fa-unlink\"></i></a>&nbsp;<a onclick=\"bulkMLSetting()\" data-toggle=\"modal\" data-target=\"#mlModal\" class=\"btn btn-default\" title=\"<?php echo $lang_bulk_ml_product; ?>\"><i class=\"fa fa-wrench\"></i></a>\n                ]]></add>\n            </operation>\n            <operation>\n                <search><![CDATA[ <td class=\"text-right\"><?php echo $column_action; ?></td> ]]></search>\n                <add position=\"before\"><![CDATA[\n                    <td class=\"text-center\"><?php echo $lang_markets; ?></td>\n                ]]></add>\n            </operation>\n            <operation error=\"log\">\n                <search><![CDATA[ <td class=\"text-center\" colspan=\"8\"><?php echo $text_no_results; ?></td> ]]></search>\n                <add position=\"replace\"><![CDATA[ <td class=\"text-center\" colspan=\"9\"><?php echo $text_no_results; ?></td> ]]></add>\n            </operation>\n			<operation>\n                <search><![CDATA[ var filter_status = $(\'select[name=\\\'filter_status\\\']\').val(); ]]></search>\n                <add position=\"before\"><![CDATA[ \n				    var filter_ml = $(\'select[name=\\\'filter_ml\\\']\').val();\n	\n						if (filter_ml != \'*\') {\n							url += \'&filter_ml=\' + encodeURIComponent(filter_ml);\n						}\n				 ]]></add>\n            </operation>\n            <operation>\n                <search><![CDATA[ <button type=\"button\" id=\"button-filter\" class=\"btn btn-primary pull-right\"><i class=\"fa fa-search\"></i> <?php echo $button_filter; ?></button> ]]></search>\n                <add position=\"before\"><![CDATA[ <div class=\"form-group\">\n                   <label class=\"control-label\" for=\"input-mlstatus\"><?php echo $lang_markets; ?></label>\n				    <select id=\"input-mlstatus\" class=\"form-control\" name=\"filter_ml\">\n					  <option value=\"*\"></option>\n					  <?php if ($filter_ml) { ?>\n					  <option value=\"1\" selected=\"selected\"><?php echo $mercadolivre_product_yes; ?></option>\n					  <?php } else { ?>\n					  <option value=\"1\"><?php echo $mercadolivre_product_yes; ?></option>\n					  <?php } ?>\n					  <?php if (!is_null($filter_ml) && !$filter_ml) { ?>\n					  <option value=\"0\" selected=\"selected\"><?php echo $mercadolivre_product_no; ?></option>\n					  <?php } else { ?>\n					  <option value=\"0\"><?php echo $mercadolivre_product_no; ?></option>\n					  <?php } ?>\n                  </select>\n				  </div> ]]></add>\n            </operation>\n            <operation>\n                <search><![CDATA[ <td class=\"text-left\"><?php echo $product[\'status\']; ?></td> ]]></search>\n                <add position=\"after\"><![CDATA[\n                    <td class=\"text-left\">\n                        <a href=\"<?php echo $product[\'syn_url\']; ?>\"><img align=\"top\" src=\"view/image/mercadolivre/syn-icon.png\" />&nbsp;<?php echo $lang_syn; ?></a><br /> <?php echo $product[\'listing_status\'];?> <?php if(!empty($product[\'listing_item_status\'])) echo \'<br />\'.$product[\'listing_item_status\'];?> <?php if(!empty($product[\'unbind_url\'])) echo \'<br /><a href=\"\'.$product[\'unbind_url\'].\'\">\'.$lang_desyn.\'</a>\'; ?>\n                    </td> \n                ]]></add>\n            </operation>\n			\n			<operation>\n               <search><![CDATA[ <?php echo $footer; ?> ]]></search>\n			   <add position=\"before\"><![CDATA[\n					<script type=\"text/javascript\">\n						\n	                        $(\'#mlModalBtn\').modal({show:false});\n							function bulkSynchronize(){\n								$(\'#form-product\').attr(\'action\', \'index.php?route=module/mercadolivre/bulkSynchronize&token=<?php echo $token; ?>\');  			\n								$(\'#form-product\').submit();\n							}\n							\n							function bulkDeSynchronize(){\n								$(\'#form-product\').attr(\'action\', \'index.php?route=module/mercadolivre/bulkDesynchronize&token=<?php echo $token; ?>\');  			\n								$(\'#form-product\').submit();\n							}\n							\n							function bulkMLSetting(){\n							    $(\'#modal-ml\').remove();\n								var selected_products=$(\'input[name=\"selected[]\"]:checked\').map(function() {return this.value;}).get().join(\',\');			\n				                $.ajax({\n									url: \"index.php?route=module/mercadolivre/bulk_setting&token=<?php echo $token; ?>&pids=\"+selected_products,\n								 }).done(function(data) {\n									  \n									html  = \'<div id=\"modal-ml\" class=\"modal\">\';\n				                	html += \'  <div style=\"width:800px;\" class=\"modal-dialog\">\';\n				                	html += \'    <div class=\"modal-content\">\';\n				               	 	html += \'      <div class=\"modal-body\">\';\n				               	 	html += data;\n				                	html += \'      </div>\';\n				                	html += \'    </div>\';\n				                	html += \'   </div>\';\n				                	html += \'   </div>\';\n				                	\n				                	$(\'body\').append(html);\n                                    $(\'#modal-ml\').modal(\'show\');\n									  	\n								 });	\n							}\n					</script>\n						]]></add>\n             </operation>\n        </file>\n		\n		<file path=\"admin/view/template/catalog/product_form.tpl\">\n		  <operation>\n                <search><![CDATA[ <li><a href=\"#tab-design\" data-toggle=\"tab\"><?php echo $tab_design; ?></a></li> ]]></search>\n                <add position=\"replace\"><![CDATA[\n				    <li><a href=\"#tab-design\" data-toggle=\"tab\"><?php echo $tab_design; ?></a></li>\n				    <li><a href=\"#tab-mercadolivre\" data-toggle=\"tab\"><?php echo $tab_mercadolivre; ?></a></li>\n                   ]]></add>\n            </operation>\n			 <operation>\n                <search><![CDATA[ <div class=\"tab-pane\" id=\"tab-design\"> ]]></search>\n                <add position=\"before\"><![CDATA[\n                   <div class=\"tab-pane\" id=\"tab-mercadolivre\">\n						<div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"<?php echo $ml_text_category_hint; ?>\"><?php echo $entry_mercadolivre_category; ?></span></label>\n							   <div class=\"col-sm-10\">\n								<input type=\"hidden\" name=\"mercaTree\" value=\"<?php echo $mercaTree?>\" id=\"mercaTree\" />\n							    <input type=\"hidden\" name=\"mercaId\" value=\"<?php echo $mercaId?>\" id=\"mercaId\" />\n							   <span id=\"category_tree_span\" class=\"category_ok\">\n							     <?php echo html_entity_decode($mercaTree)?>\n							   </span>\n								<select name=\"mercadolivre_cat_selection[]\" class=\"form-control mercadolivre_cat_selection\">\n								   <option value=\"\"><?php echo $ml_text_select;?></option>\n									<?php echo $mercadolivre_cats?>\n								</select>\n							  </div>\n						  </div>\n						 <div class=\"form-group\" id=\"ml_attr_row_wrapper\" style=\"display:none\"> \n						    <div class=\"col-sm-12\">\n						    </div>\n						 </div> \n						 <div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_currency; ?></label>\n							  <div class=\"col-sm-10\">\n								<select class=\"form-control\" name=\"mercaCurrency\" id=\"mercaCurrency\">\n								<option value=\"\"><?php echo $ml_text_select;?></option>\n									<?php foreach ($mercadolivre_currency as $mercadolivre_cur) { $chk=\'\'; if($mercaCurrency==$mercadolivre_cur[\'value\']) $chk=\'selected\'; ?>\n									  <option value=\"<?php echo $mercadolivre_cur[\'value\']?>\" <?php echo $chk; ?> ><?php echo $mercadolivre_cur[\'name\']?></option>\n									<?php } ?>\n								</select>\n							  </div>\n						</div>\n						<div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_buying_mode; ?></label>\n							   <div class=\"col-sm-10\">\n								<select class=\"form-control\" name=\"mercaBuyMode\" id=\"mercaBuyMode\">\n								<option value=\"\"><?php echo $ml_text_select;?></option>\n									<?php foreach ($mercadolivre_modes as $mercadolivre_mode) { $chk=\'\'; if($mercaBuyMode==$mercadolivre_mode[\'value\']) $chk=\'selected\'; ?>\n									  <option value=\"<?php echo $mercadolivre_mode[\'value\']?>\" <?php echo $chk; ?> ><?php echo $mercadolivre_mode[\'name\']?></option>\n									<?php } ?>\n								</select>\n							  </div>\n						</div>\n						<div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_listing_type; ?></label>\n							   <div class=\"col-sm-10\">\n								<select class=\"form-control\" name=\"mercaListType\" id=\"mercaListType\">\n								<option value=\"\"><?php echo $ml_text_select;?></option>\n									<?php foreach ($mercadolivre_types as $mercadolivre_type) { $chk=\'\'; if($mercaListType==$mercadolivre_type[\'value\']) $chk=\'selected\'; ?>\n									  <option value=\"<?php echo $mercadolivre_type[\'value\']?>\" <?php echo $chk; ?> ><?php echo $mercadolivre_type[\'name\']?></option>\n									<?php } ?>\n								</select>\n							  </div>\n						</div>\n					    <div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_condition; ?></label>\n							   <div class=\"col-sm-10\">\n								<select class=\"form-control\" name=\"mercaCondition\" id=\"mercaCondition\">\n								<option value=\"\"><?php echo $ml_text_select;?></option>\n									<?php foreach ($mercadolivre_conditions as $mercadolivre_condition) { $chk=\'\'; if($mercaCondition==$mercadolivre_condition[\'value\']) $chk=\'selected\'; ?>\n									  <option value=\"<?php echo $mercadolivre_condition[\'value\']?>\" <?php echo $chk; ?> ><?php echo $mercadolivre_condition[\'name\']?></option>\n									<?php } ?>\n								</select>\n							  </div>\n						</div>\n						<div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_warranty; ?></label>\n							 <div class=\"col-sm-10\">\n								 <input class=\"form-control\" type=\"text\" name=\"mercaWarranty\" value=\"<?php echo $mercaWarranty; ?>\" size=\"30\" />\n							  </div>\n						</div>\n						<div class=\"form-group\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_video; ?></label>\n							  <div class=\"col-sm-10\">\n								 <input class=\"form-control\" type=\"text\" name=\"mercaVideoId\" value=\"<?php echo $mercaVideoId; ?>\" size=\"30\" />\n							  </div>\n					   </div>\n					    <div class=\"form-group\">\n							 <label for=\"reposting\" class=\"col-sm-2 control-label\"><?php echo $entry_mercadolivre_price_adjustment; ?></label>\n							  <div class=\"col-sm-10\">\n								  <input type=\"text\" class=\"form-control\" name=\"mercaAdjust\" value=\"<?php echo $mercaAdjust; ?>\" size=\"30\" />\n							  </div>\n					   </div>\n					   <div class=\"form-group\">\n							 <label for=\"reposting\" class=\"col-sm-3 control-label\"><?php echo $ml_text_reposting; ?></label>\n							  <div class=\"col-sm-9\">\n								 <input class=\"form-control\" id=\"reposting\" type=\"checkbox\" <?php if($mercaReposting==1) echo \'checked\';?> name=\"mercaReposting\" value=\"1\" />\n							  </div>\n					   </div>\n					   <div class=\"form-group\"><div class=\"col-sm-12\"><a href=\"javascript:void(0);\" id=\"google-shopping\"><?php echo $ml_text_google_shopping; ?></a></div></div>\n					   <div class=\"form-group mlgoogle\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $ml_text_brand; ?></label>\n							  <div class=\"col-sm-10\">\n								 <input class=\"form-control\" type=\"text\" name=\"mercaGoogle[brand]\" value=\"<?php echo isset($mercaGoogle[\'brand\'])?$mercaGoogle[\'brand\']:\'\'; ?>\" size=\"20\" />\n							  </div>\n					   </div>\n					   <div class=\"form-group mlgoogle\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $ml_text_mpn; ?></label>\n							  <div class=\"col-sm-10\">\n								 <input class=\"form-control\" type=\"text\" name=\"mercaGoogle[mpn]\" value=\"<?php echo isset($mercaGoogle[\'mpn\'])?$mercaGoogle[\'mpn\']:\'\'; ?>\" size=\"20\" />\n							  </div>\n					   </div>\n					   <div class=\"form-group mlgoogle\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $ml_text_gtins_type; ?></label>\n							  <div class=\"col-sm-10\">\n								 <select class=\"form-control\" name=\"mercaGoogle[type]\">\n								   <option <?php if(isset($mercaGoogle[\'type\']) && $mercaGoogle[\'type\']==\'UPC\') echo \'selected\';?> value=\"UPC\">UPC</option>\n								   <option <?php if(isset($mercaGoogle[\'type\']) && $mercaGoogle[\'type\']==\'EAN\') echo \'selected\';?> value=\"EAN\">EAN</option>\n								   <option <?php if(isset($mercaGoogle[\'type\']) && $mercaGoogle[\'type\']==\'JAN\') echo \'selected\';?> value=\"JAN\">JAN</option>\n								   <option <?php if(isset($mercaGoogle[\'type\']) && $mercaGoogle[\'type\']==\'ISBN\') echo \'selected\';?> value=\"ISBN\">ISBN</option>\n								 </select>\n							  </div>\n					   </div>\n					   <div class=\"form-group mlgoogle\">\n							 <label class=\"col-sm-2 control-label\"><?php echo $ml_text_gtins_code; ?></label>\n							  <div class=\"col-sm-10\">\n								 <input class=\"form-control\" type=\"text\" name=\"mercaGoogle[code]\" value=\"<?php echo isset($mercaGoogle[\'code\'])?$mercaGoogle[\'code\']:\'\'; ?>\" size=\"20\" />\n							  </div>\n					   </div>\n				   </div>\n                ]]></add>\n            </operation>\n			<operation>\n                <search><![CDATA[ <?php echo $footer; ?> ]]></search>\n                <add position=\"before\"><![CDATA[\n                      <style type=\"text/css\">\n                        .mlgoogle{display:none;}\n						#category_tree_span{\n							display: block;\n							font-weight: bold;\n							margin-bottom: 8px;\n						}\n						.category_ok{color:green;}\n						.category_nok{color:red;}\n						   .mercadolivre_cat_selection {\n    						width: auto;\n    						float: left;\n   							 margin-right: 5px;\n    						margin-bottom: 5px;\n							}\n					     #ml_attribute {\n                         width: 90% !important;\n                         margin: 0 auto;\n                         }		\n						</style>\n						<script type=\"text/javascript\"><!--\n						var google_shop = false;\n						$(document.body).on(\'click\',\'#google-shopping\',function(e){\n						    e.preventDefault();\n						    if(!google_shop) {\n						      $(\'.mlgoogle\').show();\n						      google_shop = true;\n						      return;\n						    }\n						    \n						    if(google_shop) {\n						      $(\'.mlgoogle\').hide();\n						      google_shop = false;\n						      return;\n						    }\n						});\n						\n						var ml_attr_row=\'\';\n						$(document.body).on(\'change\',\'.mercadolivre_cat_selection\',function(){\n						\n							var $this=$(this);\n							if($this.val()==\'\') return false;\n							\n							$(\'#mercaId\').val($this.val());\n							\n							\n							\n							$.ajax({\n									url: \'index.php?route=module/mercadolivre/category&token=<?php echo $token; ?>\',\n									dataType: \'json\',\n									data:{catId:$this.val(),listingType:$(\'#mercaListType\').val()},\n									beforeSend:function()\n							        {\n									  $(\'body\').css(\'cursor\',\'wait\');\n									},\n									success: function(result) {\n									  $(\'body\').css(\'cursor\',\'default\');\n									  $this.nextAll(\"select.mercadolivre_cat_selection\").remove();\n									  if(result.categories.length>0)\n									  {\n										var html=\'<select name=\"mercadolivre_cat_selection[]\" class=\"form-control mercadolivre_cat_selection\"><option value=\"\">-Select-</option>\';\n										for(i=0;i<result.categories.length;i++)\n										{\n										   html+=\'<option value=\"\'+result.categories[i].id+\'\">\'+result.categories[i].name+\'</option>\';   \n										}\n										html+=\'</select>\';\n										$this.after(html);\n									  }\n									  getCategoryTree();\n									  \n									  if(result.listing_type!=\'\'){\n									    $(\'#mercaListType\').html(result.listing_type);\n									  }\n									  \n									  if(result.allowed==\'1\'){\n									    $(\'#category_tree_span\').removeClass(\'category_nok\');\n									    $(\'#category_tree_span\').addClass(\'category_ok\');\n									  }else{\n									    $(\'#category_tree_span\').removeClass(\'category_ok\');\n									    $(\'#category_tree_span\').addClass(\'category_nok\');\n									  }\n									  \n									  \n									  \n									  if(result.attribute_types==\'1\'){\n									    getCatAttr($this.val());\n									  }else{\n									     $(\'#ml_attr_row_wrapper div\').html(\'\');\n			  						     $(\'#ml_attr_row_wrapper\').hide(); \n			  						   \n									  }\n									}\n								});\n							\n						});\n						\n						function getCategoryTree()\n						{\n						   var tree=\'\';\n						   $(\'select.mercadolivre_cat_selection option:selected\').each(function(){\n							  if($(this).val()!=\'\'){\n								  if(tree==\'\')tree+=$(this).text();\n								  else tree+=\' &raquo; \'+$(this).text();\n							  }\n						   });\n						   \n						   $(\'#mercaTree\').val(tree); \n						   $(\'#category_tree_span\').html(tree); \n						}\n						\n						function getCatAttr(catId)\n							{\n							     var product_id = \'<?php echo isset($_GET[\'product_id\'])?$_GET[\'product_id\']:0; ?>\';\n   								 $.ajax({\n								 url: \'index.php?route=module/mercadolivre/attribute&token=<?php echo $token; ?>\',\n								 dataType: \'json\',\n								 data:{catId:catId,product_id:product_id},\n								 beforeSend:function()\n									{\n			  							$(\'body\').css(\'cursor\',\'wait\');\n									},\n								success: function(result) {\n			  						$(\'body\').css(\'cursor\',\'default\');\n			  						ml_attr_row=result.row;\n			  						\n			  						$(\'#ml_attr_row_wrapper div\').html(result.html);\n			  						if(result.html==\'\'){ \n			  						  $(\'#ml_attr_row_wrapper\').hide(); \n			  						}\n			  						else {\n									 $(\'#ml_attr_row_wrapper\').show(); \n								   }\n							}\n						  });\n					    }\n					    \n					    if($(\'#mercaId\').length>0){\n					      if($(\'#mercaId\').val()!=\'\') getCatAttr($(\'#mercaId\').val());\n					    }\n					    \n					    function addMLAttribute(){\n					       var no_of_ml_attr=$(\'tr.ml_attr_row\').length;\n		                   no_of_ml_attr=parseInt(no_of_ml_attr)+1;\n		                   \n		                   while($(\'#ml_attr_row\'+no_of_ml_attr).length!=0)\n		                    {\n		                      no_of_ml_attr++; \n		                    }\n		                    ml_attr_row_html=ml_attr_row;\n		                    ml_attr_row_html=ml_attr_row_html.replace(/__AINDEX__/g, no_of_ml_attr);\n		                    $(\'#ml_attribute tbody\').append(ml_attr_row_html);\n					    }\n					    \n					    function removeMLAttribute(id){\n					      $(\'#ml_attr_row\'+id).remove();\n					    }\n						\n						//--></script>\n                ]]></add>\n            </operation>\n        </file>\n	<file path=\"catalog/model/checkout/order.php\">\n        <operation>\n            <search index=\"0\"><![CDATA[ $this->cache->delete(\'product\'); ]]></search>\n            <add position=\"before\"><![CDATA[\n            $this->mercadolivre->orderNew((int)$order_id);\n            ]]></add>\n        </operation>\n    </file>\n	\n	 <file path=\"admin/controller/sale/order.php\">\n       <operation>\n            <search index=\"0\"><![CDATA[ $this->getList(); ]]></search>     \n			  <add position=\"before\"><![CDATA[\n                $this->mercadolivre->processAPIOrder();\n            ]]></add>\n        </operation> \n		<operation>\n            <search><![CDATA[ $results = $this->model_sale_order->getOrders($filter_data); ]]></search>     \n             <add position=\"before\"><![CDATA[\n                $this->load->language(\'module/mercadolivre-extra\');\n                $data[\'mercadolivre_order\'] = $this->language->get(\'mercadolivre_order\');\n                $data[\'lang_bulk_ml_order\'] = $this->language->get(\'lang_bulk_ml_order\');\n                $data[\'button_import\'] = $this->language->get(\'button_import\');\n                $data[\'button_cancel\'] = $this->language->get(\'button_cancel\');\n                $data[\'lang_ml_enter_order\'] = $this->language->get(\'lang_ml_enter_order\');\n                $data[\'lang_ml_enter_order_tip\'] = $this->language->get(\'lang_ml_enter_order_tip\');\n                $data[\'ml_action\'] = $this->url->link(\'module/mercadolivre/order_import\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\n				\n            ]]></add>\n        </operation>\n		 <operation>\n            <search><![CDATA[ \'status\'        => $result[\'status\'], ]]></search>\n            <add position=\"after\"><![CDATA[ \n				\'merca_order\' => $this->mercadolivre->getMercadolivreOrderID($result[\'order_id\']),\n            ]]></add>\n        </operation>\n		<operation error=\"log\">\n            <search><![CDATA[ $this->response->setOutput($this->load->view(\'sale/order_info.tpl\', $data)); ]]></search>    \n              <add position=\"before\"><![CDATA[\n                $this->load->language(\'module/mercadolivre-extra\');\n                $data[\'ml_order\'] =\'\';\n                if($this->mercadolivre->getMercadolivreOrderID($_GET[\'order_id\'])==\'Yes\'){\n					  $stopSync=$this->db->query(\"SELECT stopSync FROM `\".DB_PREFIX.\"mercadolivre_order` WHERE `order_id` = \'\" . (int)$order_id . \"\'\")->row[\'stopSync\'];\n					  $checked=($stopSync)?\'checked\':\'\';\n					  $data[\'ml_order\']=\'<tr>\n							  <td>\'.$this->language->get(\'text_stop_sync\').\'</td>\n							  <td><input \'.$checked.\' onClick=\"changeMLSynStatus();\" type=\"checkbox\" id=\"stopSyncId\" value=\"1\" name=\"stopSync\" /></td>\n						  </tr>\';\n					  }\n				\n            ]]></add>\n        </operation>\n	</file>	\n	<file path=\"admin/view/template/sale/order_list.tpl\">\n            <operation>\n                <search><![CDATA[ <td class=\"text-right\"><?php echo $column_action; ?></td> ]]></search>\n                <add position=\"before\"><![CDATA[\n                    <td class=\"text-center\"><?php echo $mercadolivre_order; ?></td>\n                ]]></add>\n            </operation>\n            <operation error=\"log\">\n                <search><![CDATA[ <td class=\"text-center\" colspan=\"8\"><?php echo $text_no_results; ?></td> ]]></search>\n                <add position=\"replace\"><![CDATA[ <td class=\"text-center\" colspan=\"9\"><?php echo $text_no_results; ?></td> ]]></add>\n            </operation>\n            <operation>\n                <search><![CDATA[ <td class=\"text-left\"><?php echo $order[\'date_modified\']; ?></td> ]]></search>\n                <add position=\"after\"><![CDATA[\n                    <td class=\"text-center\">\n                        <?php echo $order[\'merca_order\']; ?>\n                    </td>\n                ]]></add>\n            </operation>\n            <operation>\n                <search><![CDATA[ <button type=\"submit\" id=\"button-invoice\" form=\"form-order\" formaction=\"<?php echo $invoice; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_invoice_print; ?>\" class=\"btn btn-info\"><i class=\"fa fa-print\"></i></button> ]]></search>\n                <add position=\"after\"><![CDATA[\n                    <a onclick=\"importMLOrder()\" data-target=\"#mlModal\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"<?php echo $lang_bulk_ml_order; ?>\"><i class=\"fa fa-wrench\"></i></a>\n                ]]></add>\n            </operation>\n            <operation>\n               <search><![CDATA[ <?php echo $footer; ?> ]]></search>\n			   <add position=\"before\"><![CDATA[\n					<script type=\"text/javascript\">\n						\n	                        $(\'#mlModalBtn\').modal({show:false});\n				\n							function importMLOrder(){\n							        \n							        $(\'#modal-ml\').remove();\n									html  = \'<div id=\"modal-ml\" class=\"modal\">\';\n				                	html += \'  <div style=\"width:700px;\" class=\"modal-dialog\">\';\n				                	html += \'    <div class=\"modal-content\">\';\n				               	 	html += \'      <div class=\"modal-body\">\';\n				               	 	html += \'		<div id=\"content\">\';\n    								html += \'			<div class=\"container-fluid\">\';\n      								html += \'				<div class=\"pull-right\">\';\n        							html += \'				<button type=\"button\" onclick=\"$(\\\'#form_ml\\\').submit();\" data-toggle=\"tooltip\" title=\"<?php echo $button_import; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>\';\n        							html += \'				<a data-dismiss=\"modal\" title=\"<?php echo $button_cancel; ?>\" class=\"btn btn-default\"><i class=\"fa fa-close\"></i></a></div>\';\n     								html += \'			</div>\';\n  									html += \'		</div>\';\n  									html += \'	<div class=\"container-fluid\">\';\n    								html += \'		<div class=\"panel panel-default\">\';\n      								html += \'			<div class=\"panel-body\">\';\n       								html += \'				<form action=\"<?php echo $ml_action; ?>\" method=\"post\" enctype=\"multipart/form-data\" id=\"form_ml\">\';\n                 					html += \'					<div class=\"form-group product\">\';\n                    				html += \'						<label class=\"col-sm-3 control-label\" for=\"input-orders\"><?php echo $lang_ml_enter_order; ?></label>\';\n                    				html += \'						<div class=\"col-sm-9\">\';\n                      				html += \'						 <textarea style=\"height:300px\" name=\"ml_order\" class=\"form-control\" id=\"input-orders\"></textarea><br /><span class=\"text-info\"><?php echo $lang_ml_enter_order_tip; ?></span>\';\n			        				html += \'				       </div>\';\n                  					html += \'			      </div>\';\n                  				    html += \'			    </form>	\';\n               						html += \'		   </div>\';\n            						html += \'	    </div>\';\n          							html += \'	  </div>\';\n				                	html += \'   </div>\';\n				                	html += \'   </div>\';\n				                	html += \'  </div>\';\n				                	html += \' </div>\';\n				                	\n				                	$(\'body\').append(html);\n                                    $(\'#modal-ml\').modal(\'show\');\n							}\n					</script>\n						]]></add>\n             </operation>\n        </file>\n	<file path=\"admin/view/template/sale/order_info.tpl\">                \n		<operation error=\"log\">\n			<search index=\"0\"><![CDATA[ </table> ]]></search>		                        \n			 <add position=\"before\"><![CDATA[\n		         <?php\n				   echo $ml_order;   \n			     ?> \n			     \n			]]></add>\n		</operation>\n		<operation error=\"log\">\n			<search><![CDATA[ function changeStatus(){ ]]></search>		                        \n			 <add position=\"before\"><![CDATA[\n		         function changeMLSynStatus(){\n					\n					if($(\'#stopSyncId\').prop(\'checked\')){\n					  var syncStatus = 1;\n					}else{\n					   var syncStatus = 0;\n					}\n		\n					$.ajax({\n						url: \'index.php?route=module/mercadolivre/updateSynStatus&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>&stopSyncId=\'+syncStatus,\n						type: \'post\',\n						dataType: \'html\',\n						beforeSend: function(){},\n						success: function(html) {\n						},\n						failure: function(){},\n						error: function(){}\n					});\n				}\n				  \n			]]></add>\n		</operation>\n	</file>	\n	<file path=\"catalog/controller/common/seo_url.php\">\n        <operation>\n                <search><![CDATA[ $url = explode(\'=\', $query->row[\'query\']); ]]></search>\n                <add position=\"after\"><![CDATA[ if ($url[0] == \'mercadolivre\') {\n						$this->request->get[\'route\'] = \'mercadolivre/\'.$url[1];\n						break;\n					  }\n					]]>\n                </add> \n        </operation>\n    </file> \n     <file path=\"system/engine/controller.php\">\n        <operation>\n                <search><![CDATA[ $this->registry = $registry; ]]></search>\n                <add position=\"after\"><![CDATA[ \n                      $registry->set(\'mercadolivre\', new Mercadolivre($registry));  \n                   ]]>\n                </add> \n        </operation>\n    </file> \n</modification>',1,'2016-06-13 04:10:09');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (33,'banners','banner','a:5:{s:4:\"name\";s:7:\"banners\";s:9:\"banner_id\";s:2:\"14\";s:5:\"width\";s:3:\"416\";s:6:\"height\";s:3:\"172\";s:6:\"status\";s:1:\"1\";}'),(28,'Featured  Aside','featured','a:6:{s:4:\"name\";s:15:\"Featured  Aside\";s:7:\"product\";a:8:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"30\";i:3;s:2:\"42\";i:4;s:2:\"33\";i:5;s:2:\"46\";i:6;s:2:\"32\";i:7;s:2:\"28\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"90\";s:6:\"status\";s:1:\"1\";}'),(34,'Parralax-1','parallax','a:5:{s:4:\"name\";s:10:\"Parralax-1\";s:9:\"banner_id\";s:2:\"10\";s:5:\"width\";s:4:\"2050\";s:6:\"height\";s:4:\"1446\";s:6:\"status\";s:1:\"1\";}'),(46,'Tm Slideshow','tm_slideshow','a:5:{s:4:\"name\";s:12:\"Tm Slideshow\";s:9:\"banner_id\";s:2:\"15\";s:5:\"width\";s:3:\"870\";s:6:\"height\";s:3:\"422\";s:6:\"status\";s:1:\"1\";}'),(50,'Olark Chat','olark','a:4:{s:4:\"name\";s:10:\"Olark Chat\";s:13:\"olark_version\";s:5:\"2.0.0\";s:13:\"olark_site_id\";s:16:\"7830-582-10-3714\";s:6:\"status\";s:1:\"1\";}'),(42,'Facebook','tm_fbbox','a:10:{s:4:\"name\";s:8:\"Facebook\";s:8:\"page_url\";s:36:\"https://www.facebook.com/intimus0604\";s:6:\"app_id\";s:15:\"734741803247761\";s:13:\"show_facepile\";s:4:\"true\";s:2:\"bg\";s:4:\"true\";s:10:\"show_posts\";s:5:\"false\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"215\";s:8:\"language\";s:5:\"en_US\";s:6:\"status\";s:1:\"1\";}'),(43,'Bestsellers Aside','bestseller','a:5:{s:4:\"name\";s:17:\"Bestsellers Aside\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(84,'Cosméticos','tm_single_category_product','a:14:{s:4:\"name\";s:11:\"Cosméticos\";s:4:\"path\";s:11:\"Cosméticos\";s:8:\"category\";s:2:\"69\";s:4:\"tabs\";s:1:\"1\";s:4:\"type\";s:1:\"3\";s:7:\"special\";s:1:\"1\";s:10:\"bestseller\";s:1:\"0\";s:6:\"latest\";s:1:\"1\";s:8:\"featured\";s:1:\"1\";s:7:\"product\";s:0:\"\";s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(54,'Google Map','tm_google_map','a:16:{s:4:\"name\";s:10:\"Google Map\";s:17:\"tm_google_map_key\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:18:\"tm_google_map_zoom\";s:2:\"14\";s:18:\"tm_google_map_type\";s:1:\"1\";s:20:\"tm_google_map_sensor\";s:4:\"true\";s:19:\"tm_google_map_width\";s:4:\"100%\";s:20:\"tm_google_map_height\";s:5:\"440px\";s:20:\"tm_google_map_styles\";s:2051:\"                                                                                                                                                                                                                                                    [{&quot;featureType&quot;:&quot;landscape&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:65},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:51},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:30},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:40},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;labels&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-100}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;hue&quot;:&quot;#ffff00&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-97}]}]                                                                                                                                                                                                                                                                                                        \";s:24:\"tm_google_map_disable_ui\";s:5:\"false\";s:25:\"tm_google_map_scrollwheel\";s:5:\"false\";s:23:\"tm_google_map_draggable\";s:4:\"true\";s:20:\"tm_google_map_marker\";s:0:\"\";s:27:\"tm_google_map_marker_active\";s:0:\"\";s:26:\"tm_google_map_marker_width\";s:0:\"\";s:27:\"tm_google_map_marker_height\";s:0:\"\";}'),(82,'Fantasias','tm_single_category_product','a:14:{s:4:\"name\";s:9:\"Fantasias\";s:4:\"path\";s:9:\"Fantasias\";s:8:\"category\";s:2:\"70\";s:4:\"tabs\";s:1:\"1\";s:4:\"type\";s:1:\"2\";s:7:\"special\";s:1:\"1\";s:10:\"bestseller\";s:1:\"0\";s:6:\"latest\";s:1:\"1\";s:8:\"featured\";s:1:\"1\";s:7:\"product\";s:0:\"\";s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(83,'Masturbadores','tm_single_category_product','a:14:{s:4:\"name\";s:13:\"Masturbadores\";s:4:\"path\";s:13:\"Masturbadores\";s:8:\"category\";s:2:\"44\";s:4:\"tabs\";s:1:\"1\";s:4:\"type\";s:1:\"3\";s:7:\"special\";s:1:\"1\";s:10:\"bestseller\";s:1:\"0\";s:6:\"latest\";s:1:\"1\";s:8:\"featured\";s:1:\"1\";s:7:\"product\";s:0:\"\";s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(67,'Specials Aside','special','a:5:{s:4:\"name\";s:14:\"Specials Aside\";s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"90\";s:6:\"status\";s:1:\"1\";}'),(68,'Latest Home','latest','a:5:{s:4:\"name\";s:11:\"Latest Home\";s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(69,'Latest Aside','latest','a:5:{s:4:\"name\";s:12:\"Latest Aside\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(78,'Menu','tm_category_menu','a:3:{s:4:\"name\";s:4:\"Menu\";s:6:\"status\";s:1:\"1\";s:5:\"limit\";s:1:\"7\";}'),(85,'Popup','tm_newsletter_popup','a:7:{s:4:\"name\";s:5:\"Popup\";s:19:\"newsletter_popup_bg\";s:20:\"catalog/popup-bg.jpg\";s:25:\"newsletter_popup_bg_width\";s:3:\"571\";s:26:\"newsletter_popup_bg_height\";s:3:\"371\";s:23:\"newsletter_popup_cookie\";s:3:\"600\";s:31:\"tm_newsletter_popup_description\";a:3:{i:1;a:2:{s:5:\"title\";s:10:\"Newsletter\";s:11:\"description\";s:125:\"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.\";}i:2;a:2:{s:5:\"title\";s:10:\"Newsletter\";s:11:\"description\";s:125:\"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.\";}i:3;a:2:{s:5:\"title\";s:10:\"Newsletter\";s:11:\"description\";s:125:\"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.\";}}s:6:\"status\";s:1:\"1\";}'),(79,'newsletter','tm_newsletter','a:3:{s:4:\"name\";s:10:\"newsletter\";s:6:\"status\";s:1:\"1\";s:25:\"tm_newsletter_description\";a:3:{i:1;a:1:{s:11:\"description\";s:0:\"\";}i:2;a:1:{s:11:\"description\";s:0:\"\";}i:3;a:1:{s:11:\"description\";s:0:\"\";}}}'),(80,'Testimonials','html','a:3:{s:4:\"name\";s:12:\"Testimonials\";s:18:\"module_description\";a:3:{i:1;a:2:{s:5:\"title\";s:12:\"testimonials\";s:11:\"description\";s:704:\"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\";}i:2;a:2:{s:5:\"title\";s:12:\"testimonials\";s:11:\"description\";s:704:\"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\";}i:3;a:2:{s:5:\"title\";s:12:\"testimonials\";s:11:\"description\";s:704:\"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}'),(81,'Features','html','a:3:{s:4:\"name\";s:8:\"Features\";s:18:\"module_description\";a:3:{i:1;a:2:{s:5:\"title\";s:8:\"features\";s:11:\"description\";s:882:\"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\";}i:2;a:2:{s:5:\"title\";s:8:\"features\";s:11:\"description\";s:882:\"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\";}i:3;a:2:{s:5:\"title\";s:8:\"features\";s:11:\"description\";s:882:\"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'radio',1),(14,'checkbox',0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,4,'Radio'),(2,4,'Checkbox'),(4,4,'Text'),(6,4,'Textarea'),(8,4,'Date'),(7,4,'File'),(5,4,'Select'),(9,4,'Time'),(10,4,'Date &amp; Time'),(12,4,'Delivery Date'),(11,4,'Size'),(13,4,'Cor'),(14,4,'Tamanho');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(51,13,'catalog/product-42.png',3),(50,13,'',2),(49,13,'',1),(52,14,'',0),(53,14,'',0),(54,14,'',0);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,4,1,'Large'),(32,4,1,'Small'),(45,4,2,'Checkbox 4'),(44,4,2,'Checkbox 3'),(31,4,1,'Medium'),(42,4,5,'Yellow'),(41,4,5,'Green'),(39,4,5,'Red'),(40,4,5,'Blue'),(23,4,2,'Checkbox 1'),(24,4,2,'Checkbox 2'),(48,4,11,'Large'),(47,4,11,'Medium'),(46,4,11,'Small'),(51,4,13,'Vermelho'),(50,4,13,'Branco'),(52,4,14,'P'),(53,4,14,'M'),(54,4,14,'G'),(49,4,13,'Preto');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (3,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','','2470.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 00:33:59','2014-12-23 00:33:59'),(4,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','','142.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 01:16:04','2014-12-23 01:16:04'),(5,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',0,1,'fdghfdgh','gfhjgdhj','dfsfd@r.ru','32456345','','a:0:{}','fdghfdgh','gfhjgdhj','','dsfghdzfgh','','gfbhdh','24353','Aaland Islands',244,'',0,'','a:0:{}','Cash On Delivery','cod','fdghfdgh','gfhjgdhj','','dsfghdzfgh','','gfbhdh','24353','Aaland Islands',244,'',0,'','a:0:{}','Flat Shipping Rate','flat.flat','','500.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-20 14:29:03','2015-08-20 14:29:03'),(6,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','','124.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:30:34','2015-08-26 17:30:34'),(7,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','','124.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:33:43','2015-08-26 17:33:43'),(8,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','','124.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:35:07','2015-08-26 17:35:07'),(9,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','','124.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:38:52','2015-08-26 17:38:52'),(10,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','','124.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:40:14','2015-08-26 17:40:14'),(13,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','','','','','','','','',0,'',0,'','a:0:{}','','','','674.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:43.0) Gecko/20100101 Firefox/43.0','en-US,en;q=0.5','2015-08-28 18:27:12','2015-08-28 18:27:12'),(14,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',0,1,'demo','demo','demo@demolink.org','123456789','','a:0:{}','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'Cambridgeshire',3525,'','a:0:{}','Оплата при доставке','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'Cambridgeshire',3525,'','a:0:{}','Доставка с фиксированной стоимостью доставки','flat.flat','','148.0000',0,0,'0.0000',0,'',3,2,'USD','1.00000000','192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-31 09:35:57','2015-08-31 09:35:57'),(15,0,'INV-2013-00',0,'IntimusSexy - O portal do prazer','http://intimussexy..com.br/',5,1,'Ricardo','Silveira','ricaardosb@gmail.com','5182246291','','b:0;','Ricardo','Silveira','','Marcelo Gama','São João','Porto Alegre','90540040','Brasil',30,'Rio Grande do Sul',460,'','b:0;','PagSeguro','pagseguro','Ricardo','Silveira','','Marcelo Gama','São João','Porto Alegre','90540040','Brasil',30,'Rio Grande do Sul',460,'','b:0;','PAC. Entrega em até 5 dias úteis','correios.41106','','26.1300',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.47.194.178','192.168.3.95','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-06-03 14:39:19','2016-06-03 14:39:38'),(16,0,'INV-2013-00',0,'IntimusSexy - O portal do prazer','http://intimussexy..com.br/',0,1,'Fernando','Mendes','fernando.mendes@webca.com.br','11976495157','','a:0:{}','Fernando','Mendes','','Rua Lomas Valentinas','','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','a:0:{}','PagSeguro','pagseguro','Fernando','Mendes','','Rua Lomas Valentinas','','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','a:0:{}','SEDEX. Entrega em até 1 dias úteis','correios.40010','','135.6000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.182.164','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-06-07 11:39:29','2016-06-07 11:39:40'),(17,0,'INV-2013-00',0,'IntimusSexy - O portal do prazer','http://intimussexy..com.br/',7,1,'Leticia','Menegoni','leticiamenegoni@gmail.com','5198811513','','b:0;','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','PagSeguro','pagseguro','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','SEDEX. Entrega em até 1 dias úteis','correios.40010','','151.5000',0,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.47.194.178','192.168.3.95','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-06-08 15:09:15','2016-06-08 15:09:15'),(18,0,'INV-2013-00',0,'IntimusSexy - O portal do prazer','http://intimussexy..com.br/',7,1,'Leticia','Menegoni','leticiamenegoni@gmail.com','5198811513','','b:0;','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','PagSeguro','pagseguro','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','SEDEX. Entrega em até 1 dias úteis','correios.40010','','90.2400',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.47.194.178','192.168.3.95','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-06-08 15:45:07','2016-06-08 15:45:14'),(19,0,'INV-2013-00',0,'IntimusSexy - O portal do prazer','http://intimussexy..com.br/',7,1,'Leticia','Menegoni','leticiamenegoni@gmail.com','5198811513','','b:0;','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','PagSeguro','pagseguro','Leticia','Menegoni','','Alameda das corteceiras , 115 - ap 507','Mato Grande','Canoas','92320177','Brasil',30,'Rio Grande do Sul',460,'','b:0;','SEDEX. Entrega em até 1 dias úteis','correios.40010','','90.2400',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.47.194.178','192.168.3.95','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-06-08 16:02:19','2016-06-08 16:02:30');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (9,15,1,0,'','2016-06-03 14:39:38'),(10,16,1,0,'','2016-06-07 11:39:35'),(11,16,1,0,'','2016-06-07 11:39:40'),(12,18,1,0,'','2016-06-08 15:45:14'),(13,19,1,0,'','2016-06-08 16:02:30');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (5,3,6,254,95,'Color','black','radio'),(6,3,6,253,94,'Size','Small','select'),(7,4,11,237,44,'Color','black','radio'),(8,4,11,238,49,'Size','Small','select'),(9,5,12,230,24,'Color','red','radio'),(10,5,12,227,17,'Checkbox','Checkbox 1','checkbox'),(11,5,12,224,12,'Size','Small','select'),(12,5,13,230,23,'Color','black','radio'),(13,5,13,227,17,'Checkbox','Checkbox 1','checkbox'),(14,5,13,224,12,'Size','Small','select'),(15,5,14,263,122,'Color','black','radio'),(16,5,14,266,0,'Time','14:19','time'),(17,5,14,264,0,'Date &amp; Time','2014-12-18 12:25','datetime'),(18,5,14,262,121,'Size','Small','select'),(19,5,14,265,0,'Delivery Date','2014-12-18','date'),(20,6,15,236,43,'Color','white','radio'),(21,6,15,235,39,'Size','Medium','select'),(22,7,16,236,43,'Color','white','radio'),(23,7,16,235,39,'Size','Medium','select'),(24,8,17,236,43,'Color','white','radio'),(25,8,17,235,39,'Size','Medium','select'),(26,9,18,236,43,'Color','white','radio'),(27,9,18,235,39,'Size','Medium','select'),(28,10,19,236,43,'Color','white','radio'),(29,10,19,235,39,'Size','Medium','select'),(40,13,25,230,25,'Color','white','radio'),(41,13,25,227,19,'Checkbox','Checkbox 3','checkbox'),(42,13,25,224,12,'Size','Small','select'),(43,13,26,230,25,'Color','white','radio'),(44,13,26,227,17,'Checkbox','Checkbox 1','checkbox'),(45,13,26,224,13,'Size','Medium','select'),(46,14,27,234,37,'Color','white','radio'),(47,14,27,233,33,'Size','Medium','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (6,3,43,'Quisque eget','Product 16',1,'430.0000','430.0000','88.0000',600),(7,3,49,'Mauris gravida','SAM1',3,'150.0000','450.0000','32.0000',3000),(8,3,48,'Praesent imperdiet','product 20',1,'100.0000','100.0000','22.0000',0),(9,3,47,'Consectetur adipiscing','Product 21',1,'60.0000','60.0000','14.0000',300),(10,3,46,'Suspendisse imperdiet','Product 19',1,'1000.0000','1000.0000','202.0000',0),(11,4,30,'Dolor sit amet','Product 3',1,'110.0000','110.0000','24.0000',200),(12,5,35,'Aenean viverra','Product 8',1,'130.0000','130.0000','0.0000',0),(13,5,35,'Aenean viverra','Product 8',1,'125.0000','125.0000','0.0000',0),(14,5,42,'Lorem ipsum','Product 15',2,'120.0000','240.0000','0.0000',200),(15,6,47,'Consectetur adipiscing','Product 21',1,'95.0000','95.0000','21.0000',300),(16,7,47,'Consectetur adipiscing','Product 21',1,'95.0000','95.0000','21.0000',300),(17,8,47,'Consectetur adipiscing','Product 21',1,'95.0000','95.0000','21.0000',300),(18,9,47,'Consectetur adipiscing','Product 21',1,'95.0000','95.0000','21.0000',300),(19,10,47,'Consectetur adipiscing','Product 21',1,'95.0000','95.0000','21.0000',300),(25,13,35,'Aenean viverra','Product 8',1,'135.0000','135.0000','29.0000',0),(26,13,35,'Aenean viverra','Product 8',3,'140.0000','420.0000','30.0000',0),(27,14,28,'Aliquam eget','Product 1',1,'115.0000','115.0000','25.0000',400),(28,15,92,'Espuma de Banho Morango 110ml L068 La Pimienta','Espuma de Banho Morango 110ml L068 La Pimienta',1,'10.0000','10.0000','0.0000',0),(29,16,50,'Baralho Kama Sutra Completo  KS008  Adão e Eva','Baralho Kama Sutra Completo  KS008  Adão e Eva',1,'99.9000','99.9000','0.0000',0),(30,17,120,'Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva',2,'45.1800','90.3600','0.0000',0),(31,17,125,'Adstrigente Lua de Mel 15g CO036 Adão e Eva','Adstrigente Lua de Mel 15g CO036 Adão e Eva',2,'16.0800','32.1600','0.0000',0),(32,17,166,'Vela Beijavel Creme 20g Sexy Fantasy','Vela Beijavel Creme 20g Sexy Fantasy',1,'12.8800','12.8800','0.0000',0),(33,18,120,'Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva',1,'45.1800','45.1800','0.0000',0),(34,18,125,'Adstrigente Lua de Mel 15g CO036 Adão e Eva','Adstrigente Lua de Mel 15g CO036 Adão e Eva',1,'16.0800','16.0800','0.0000',0),(35,18,166,'Vela Beijavel Creme 20g Sexy Fantasy','Vela Beijavel Creme 20g Sexy Fantasy',1,'12.8800','12.8800','0.0000',0),(36,19,120,'Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva',1,'45.1800','45.1800','0.0000',0),(37,19,125,'Adstrigente Lua de Mel 15g CO036 Adão e Eva','Adstrigente Lua de Mel 15g CO036 Adão e Eva',1,'16.0800','16.0800','0.0000',0),(38,19,166,'Vela Beijavel Creme 20g Sexy Fantasy','Vela Beijavel Creme 20g Sexy Fantasy',1,'12.8800','12.8800','0.0000',0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (18,4,'Em análise'),(17,4,'Disputa'),(2,4,'Processing'),(3,4,'Shipped'),(7,4,'Cancelada'),(5,4,'Paga'),(8,4,'Denied'),(9,4,'Canceled Reversal'),(10,4,'Failed'),(11,4,'Refunded'),(12,4,'Reversed'),(13,4,'Devolvida'),(1,4,'Aguardando pagamento'),(16,4,'Voided'),(15,4,'Processed'),(14,4,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (11,3,'sub_total','Sub-Total','2040.0000',1),(12,3,'shipping','Flat Shipping Rate','5.0000',3),(13,3,'tax','Eco Tax (-2.00)','16.0000',5),(14,3,'tax','VAT (20%)','409.0000',5),(15,3,'total','Total','2470.0000',9),(16,4,'sub_total','Sub-Total','110.0000',1),(17,4,'shipping','Flat Shipping Rate','5.0000',3),(18,4,'tax','Eco Tax (-2.00)','4.0000',5),(19,4,'tax','VAT (20%)','23.0000',5),(20,4,'total','Total','142.0000',9),(21,5,'sub_total','Sub-Total','495.0000',1),(22,5,'shipping','Flat Shipping Rate','5.0000',3),(23,5,'total','Total','500.0000',9),(24,6,'sub_total','Sub-Total','95.0000',1),(25,6,'shipping','Flat Shipping Rate','5.0000',3),(26,6,'tax','Eco Tax (-2.00)','4.0000',5),(27,6,'tax','VAT (20%)','20.0000',5),(28,6,'total','Total','124.0000',9),(29,7,'sub_total','Sub-Total','95.0000',1),(30,7,'shipping','Flat Shipping Rate','5.0000',3),(31,7,'tax','Eco Tax (-2.00)','4.0000',5),(32,7,'tax','VAT (20%)','20.0000',5),(33,7,'total','Total','124.0000',9),(34,8,'sub_total','Sub-Total','95.0000',1),(35,8,'shipping','Flat Shipping Rate','5.0000',3),(36,8,'tax','Eco Tax (-2.00)','4.0000',5),(37,8,'tax','VAT (20%)','20.0000',5),(38,8,'total','Total','124.0000',9),(39,9,'sub_total','Sub-Total','95.0000',1),(40,9,'shipping','Flat Shipping Rate','5.0000',3),(41,9,'tax','Eco Tax (-2.00)','4.0000',5),(42,9,'tax','VAT (20%)','20.0000',5),(43,9,'total','Total','124.0000',9),(44,10,'sub_total','Sub-Total','95.0000',1),(45,10,'shipping','Flat Shipping Rate','5.0000',3),(46,10,'tax','Eco Tax (-2.00)','4.0000',5),(47,10,'tax','VAT (20%)','20.0000',5),(48,10,'total','Total','124.0000',9),(59,13,'sub_total','Sub-Total','555.0000',1),(60,13,'tax','Eco Tax (-2.00)','8.0000',5),(61,13,'tax','VAT (20%)','111.0000',5),(62,13,'total','Total','674.0000',9),(63,14,'sub_total','Сумма','115.0000',1),(64,14,'shipping','Доставка с фиксированной стоимостью доставки','5.0000',3),(65,14,'tax','Eco Tax (-2.00)','4.0000',5),(66,14,'tax','VAT (20%)','24.0000',5),(67,14,'total','Итого','148.0000',9),(68,15,'sub_total','Sub-total','10.0000',1),(69,15,'shipping','PAC. Entrega em até 5 dias úteis','16.1300',3),(70,15,'total','Total','26.1300',9),(71,16,'sub_total','Sub-total','99.9000',1),(72,16,'shipping','SEDEX. Entrega em até 1 dias úteis','35.7000',3),(73,16,'total','Total','135.6000',9),(74,17,'sub_total','Sub-total','135.4000',1),(75,17,'shipping','SEDEX. Entrega em até 1 dias úteis','16.1000',3),(76,17,'total','Total','151.5000',9),(77,18,'sub_total','Sub-total','74.1400',1),(78,18,'shipping','SEDEX. Entrega em até 1 dias úteis','16.1000',3),(79,18,'total','Total','90.2400',9),(80,19,'sub_total','Sub-total','74.1400',1),(81,19,'shipping','SEDEX. Entrega em até 1 dias úteis','16.1000',3),(82,19,'total','Total','90.2400',9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `mercaId` varchar(200) DEFAULT NULL,
  `mercaCurrency` varchar(50) DEFAULT NULL,
  `mercaBuyMode` varchar(50) DEFAULT NULL,
  `mercaListType` varchar(50) DEFAULT NULL,
  `mercaCondition` varchar(50) DEFAULT NULL,
  `mercaTree` varchar(240) DEFAULT NULL,
  `mercaWarranty` varchar(240) DEFAULT NULL,
  `mercaVideoId` varchar(100) DEFAULT NULL,
  `mercaShipping` text,
  `mercaGoogle` text,
  `mercaReposting` int(1) DEFAULT NULL,
  `mercaAdjust` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (59,'Dado Posições Hétero Glow Brilha no Escuro 5013 Sexy Fantasy','5013','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Dadinhos/Dado Posiá‰es HÇtero Glow 1 unid - Brilha no Escuro- 5013 - Sexy Fantasy.jpg',12,1,'9.9000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 18:08:19','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Dado Posições Gay 5015 Sexy Fantasy','5015','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Dadinhos/Dado Posiá‰es Gay 1 unid - 5015 - Sexy Fantasy.jpg',12,1,'9.9000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 17:53:52','2016-04-20 18:11:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Mini Baralho Strip Sexy em Caixa 5186 Sexy Fantasy','5186','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Baralhos/Mini Baralho Strip Sexy em Caixa - 5186 - Sexy Fantasy.jpg',12,1,'9.9000',0,0,'2016-04-20','1.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 17:32:04','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Chaveiro Mini Seio 5205 Sexy Fantasy','5205 ','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Chaveiros/Chaveiro Mini Seio - 5205 - Sexy Fantasy.jpg',12,1,'9.9000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 17:47:07','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Baralho Kama Sutra Completo  KS008  Adão e Eva','KS008','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Baralhos/Baralho Kama Sutra Completo - KS008 - Ad∆o e Eva.jpg',11,1,'99.9000',0,0,'2016-04-19','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,1,'2016-04-19 20:32:16','2016-04-20 11:26:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Baralho Kama Sutra Gay 54 Cartas SLDBG54 Soft Love','SLDBG54 ','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Baralhos/Baralho Kama Sutra Gay 54 Cartas - SLDBG54 - Soft Love.jpg',13,1,'9.9900',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 16:57:55','2016-04-20 16:59:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Dado Posições Hétero 5010  Sexy Fantasy','5010','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Dadinhos/Dado Posiá‰es HÇtero 1 unid - 5010 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-19','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-19 21:03:41','2016-04-20 17:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Chaveiro Mini Pênis 5204 Sexy Fantasy','5204 ','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Chaveiros/Chaveiro Mini Pànis - 5204 - Sexy Fantasy.jpg',12,1,'99.9000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 10:56:50','2016-04-20 11:23:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'Baralho Kama Sutra Lesbian 54 Cartas SLDBL54 Soft Love','SLDBL54','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Baralhos/Baralho Kama Sutra Lesbian 54 Cartas - SLDBL54 - Soft Love.jpg',13,1,'9.9000',0,0,'2016-04-20','1.00000000',2,'100.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 17:09:35','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Baralho Kama Sutra Transexual 54 Cartas Soft Love','BARTRAN54','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Baralhos/Baralho Kama Sutra Transexual 54 Cartas Soft Love.jpg',13,1,'9.9000',0,0,'2016-04-20','1.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 17:22:16','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Dado Posições Lesbicas 5016 Sexy Fantasy','5016','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Dadinhos/Dado Posiá‰es Lesbicas 1 unid - 5016 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','2.00000000',1,1,1,1,1,0,'2016-04-20 21:18:29','2016-04-20 21:42:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Capa Expansora Com Estimulador 13 Cm 2450 Sexy Fantasy','2450','','','','','','',3,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Expansora C Estimulador 13 Cm - 2450 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-20','100.00000000',2,'10.00000000','20.00000000','5.00000000',1,1,1,1,1,0,'2016-04-20 21:34:20','2016-04-20 21:40:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Dado Striper Tease Para Casal 3 unidades 5060 Sexy Fantasy','5060','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Dadinhos/Dado Striper Tease Para Casal 3 unidades - 5060 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-20 21:49:03','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Capa Para Dedos Circulos 5612 Sexy Fantasy','5612','','','','','','',3,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Para Dedos Circulos - 5612 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-20 21:55:07','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Capa para Língua 5605 Sexy Fantasy','5605','','','','','','',4,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa para L°ngua - 5605 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-20','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-20 22:00:52','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'Capa Peniana 17,5 x 4,2cm 1925B Sexy Fantasy','1925B','','','','','','',4,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Peniana 17,5 x 4,2cm - 1925B - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-21','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-21 12:17:47','2016-05-19 21:32:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Capa Peniana 20 x 5cm 1930B Sexy Fantasy','1930B','','','','','','',0,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Peniana 20 x 5cm - 1930B - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-21','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-04-21 12:23:10','2016-05-19 21:30:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Capa Peniana C/ Vibro Go Hard BI026204 Sexy Fantasy','BI026204','','','','','','',1,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Peniana C Vibro Go Hard - BI-026204 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-21','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-21 22:09:50','2016-04-21 22:10:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Capa Peniana CyberSkin Linha Extreme 12X2 BI-016001F','BI-016001F','','','','','','',3,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Capa Peniana CyberSkin Linha Extreme 12X2 - BI-016001 F - Sexy Fantasy.png',12,1,'10.0000',0,0,'2016-04-22','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-22 13:33:07','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'Conjunto Estimulador Ponto G 5611 Sexy Fantasy','5611','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Conjunto Estimulador Ponto G - 5611 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-22','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-22 13:40:40','2016-04-22 13:43:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Kit Dedeira Camisinha Para Dedo 5219 Sexy Fantasy','5219','','','','','','',3,6,'catalog/ACESSORIOS-BRINCADEIRAS/Capa Peniana-Dedo- L°ngua/Kit Dedeira Camisinha Para Dedo - 5219 - Sexy Fantasy.png',12,1,'10.0000',0,0,'2016-04-22','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-22 13:51:02','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Desenvolvedor Bomba Peniana Manual 3581 Sexy Fantasy','3581','','','','','','',1,6,'catalog/ACESSORIOS-BRINCADEIRAS/Desenvolvedor-Bomba Peniana/Desenvolvedor Bomba Peniana Manual - 3581 - Sexy Fantasy.png',12,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-02 22:00:47','2016-05-02 22:03:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Cinto Duplo Em Couro Sintético c/ 2 Pênis Real 6026 Sexy Fantasy','6026','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Cinta Para Pr¢tese/Cinto Duplo Em Couro SintÇtico c 2 Pànis Real°sticos - 6026 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-22','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-04-22 20:30:29','2016-04-22 20:32:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'Cinto Em Couro c/ Pênis Realístico 14,5x4cm 6015 Sexy Fantasy','6015','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Cinta Para Pr¢tese/Cinto Em Couro c Pànis Real°stico 14,5x4cm - 6015 - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-04-22','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-04-22 20:40:05','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Bomba Peniana Manual com Anel Masturbador BB003 Importação','BB003','','','','','','',1,6,'catalog/ACESSORIOS-BRINCADEIRAS/Desenvolvedor-Bomba Peniana/Bomba Peniana Manual com Anel Masturbador - BB003 - Importaá∆o.jpg',15,1,'10.0000',0,0,'2016-05-01','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,2,'2016-04-22 21:22:26','2016-05-02 17:26:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Mini Trufa Vagina KTB13 Importação','KTB13','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Diversos/Mini Trufa Vagina - KTB13 - K Import.jpg',15,1,'10.0000',0,0,'2016-04-24','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,2,'2016-04-24 19:43:44','2016-05-02 21:55:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'Pintinho Pula Pula a Corda GTR Fantasias','pintinho','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Diversos/Pintinho Pula Pula a Corda - GTR FANTASIAS.jpg',16,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-02 22:09:43','2016-05-02 22:11:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'Pintômetro (Medidor de Pênis) Use &amp; Abuse','Pintômetro','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Diversos/Pintômetro (Medidor de Pênis) - Use e Abuse.jpg',17,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-05-02 22:16:05','2016-05-02 22:20:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'Saquinho para Bolinha Importação','Saquinho','','','','','','',100,6,'catalog/ACESSORIOS-BRINCADEIRAS/Diversos/Saquinho para Bolinha - 100 unidades.jpg',15,1,'1.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-02 22:25:27','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'Higienizador Para Protese Max Clean 120g L124 La Pimienta','L124 ','','','','','','',2,6,'catalog/ACESSORIOS-BRINCADEIRAS/Higienizador de Acess¢rios/Higienizador Para Protese Max Clean 120g - L124 - La Pimienta.jpg',18,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-02 22:35:15','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'Sex Clean Gel Higienizador 4619 Sexy Fantasy','4619','','','','','','',3,6,'catalog/ACESSORIOS-BRINCADEIRAS/Higienizador de Acess¢rios/Sex Clean Gel Higienizador de Produtos Eroticos - 4619 - Sexy Fantasy.png',12,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'100.00000000','100.00000000','100.00000000',1,1,1,1,1,0,'2016-05-02 22:41:32','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'Kit Sensual Eu Você LY208 Love Yes','LY208','','','','','','',1,6,'catalog/ACESSORIOS-BRINCADEIRAS/Kit Sensuais/Kit Sensual Eu Voce - LY208 - Love Yes.jpg',19,1,'10.0000',0,0,'2016-05-02','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,2,'2016-05-02 22:51:23','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'Anel Peniano com Vibro Sexy Fantasy','anel','','','','','','',2,6,'catalog/ANEIS-PENIANOS/COM VIBRADOR/Anel Peniano com Vibro Promoá∆o - Apenas R$1,98 a vista - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-05-03 10:05:26','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'Anel Peniano C/ Vibro e Sali Massag Transp AN020','AN020','','','','','','',2,6,'catalog/ANEIS-PENIANOS/COM VIBRADOR/Anel Peniano C Vibro e Saliencias Massageadoras Transparente - AN020 - Importação.jpg',15,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-05-03 11:24:13','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'Anel Companheiro C/Vibro 1905CB Sexy Fantasy','1905CB','','','','','','',2,6,'catalog/ANEIS-PENIANOS/COM VIBRADOR/Anel Companheiro CVibro - 1905C.B - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,3,'2016-05-03 11:29:40','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'Anel Companheiro 12,4x3cm 1905AB Sexy Fantasy','1905AB','','','','','','',2,6,'catalog/ANEIS-PENIANOS/SEM VIBRADOR/Anel Companheiro 12,4x3cm - 1905A.B - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-03 11:58:24','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'Anel Oriental P/ Estimulador Cores Variadas 2210 Sexy Fantasy','2210','','','','','','',2,6,'catalog/ANEIS-PENIANOS/SEM VIBRADOR/Anel Oriental P Estimulador Cores Variadas - 2210- Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-03 14:44:10','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'Anel Oriental com Plug Anal Sexy Fantasy','Plug Anal','','','','','','',2,6,'catalog/ANEIS-PENIANOS/SEM VIBRADOR/Anel Oriental com Plug Anal - Sexy Fantasy.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-03 15:02:28','2016-05-03 15:04:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'Anel Oriental Estimulador Duplo Cores Variadas 2220 Sexy Fantasy','2220','','','','','','',2,6,'catalog/ANEIS-PENIANOS/SEM VIBRADOR/aneis-anelorientalduplo.jpg',12,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-03 15:13:28','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'Ducha Higienica INM Sex Clean 2336 Carbogel','2336','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Ducha Ginecologica/Ducha Higienica IN-M Sex Clean - 2336 - Carbogel.jpg',20,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-05-03 15:29:26','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Espuma de Banho Morango 110ml L068 La Pimienta','L068','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Espuma de Banho/Espuma de Banho Morango 110ml - L068 - La Pimienta.jpg',18,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,3,'2016-05-03 15:38:29','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'Kit Para banho Oriental 5pç PK808 Kgel','PK808','','','','','','',1,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Espuma de Banho/Kit Para banho Oriental 5pá - PK808 - Kgel.jpg',21,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,1,'2016-05-03 15:46:39','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'Espuma de Banho Tutti Frutti 110ml L067 La Pimienta','L067','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Espuma de Banho/Espuma de Banho Tutti Frutti 110ml - L067 - La Pimienta.jpg',18,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,2,'2016-05-03 15:52:47','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'Sabonete Líquido Feminino  200ml Aromas Variados Fashion','variados','','','','','','',12,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Sabonete intimo/Sabonete Liquido Feminino Fashion 200ml - Aromas Variados.jpg',22,1,'10.0000',0,0,'2016-05-03','100.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,2,'2016-05-03 16:10:52','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'Sabonete Intimo 220ml Morango 11 Apinil','11','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Sabonete intimo/Sabonete Intimo 220ml Morango - 11 - Apinil.jpg',23,1,'10.0000',0,0,'2016-05-03','0.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,0,'2016-05-03 16:18:53','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Sabonete Intimo 220ml Menta - 10 - Apinil','10','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Sabonete intimo/Sabonete Intimo 220ml Menta - 10 - Apinil.jpg',23,1,'0.0000',0,0,'2016-05-03','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-03 16:25:52','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'Sais de Banho Morango 120g L055 La Pimienta','L055','','','','','','',2,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Sais de Banho/Sais de Banho Morango 120g - L055 - La Pimienta.jpg',18,1,'0.0000',0,0,'2016-05-03','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-03 16:39:31','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Vela Decorativa em Formato de Morango com 6 unid LY205 Love Yes','LY205','','','','','','',1,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Vela Decorativa/Vela Decorativa em Formato de Morango com 6 unid - LY205 - Love Yes.png',19,1,'0.0000',0,0,'2016-05-03','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-03 16:46:22','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Vela Decorativa em Formato de Rosa com 6 unid LY206 Love Yes','LY206','','','','','','',1,6,'catalog/BANHO-SENSUAL-ROMANTISMO/Vela Decorativa/Vela Decorativa em Formato de Rosa com 6 unid - LY206 - Love Yes.png',19,1,'0.0000',0,0,'2016-05-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-03 16:49:54','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Sticker Comestivel Adesivo Cupido Chocolate 105423 Sexy Fantasy','105423C','','','','','','',3,6,'catalog/COMESTIVEIS/Adesivo Comestivel/Sticker Comestivel Adesivo Cupido - Chocolate - 105423 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-04 10:27:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'Sticker Comestivel Adesivo Cupido Menta 105423 Sexy Fantasy','105423M','','','','','','',3,6,'catalog/COMESTIVEIS/Adesivo Comestivel/Sticker Comestivel Adesivo Cupido - Menta - 105423 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-04 11:08:13','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'Sticker Comestivel Adesivo Cupido Uva 105423 Sexy Fantasy','105423U','','','','','','',3,6,'catalog/COMESTIVEIS/Adesivo Comestivel/Sticker Comestivel Adesivo Cupido - UVA- 105423 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 11:20:03','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'Sticker Comest.  Adesivo Sinalizador Choco. 105424 Sexy Fantasy','105424C','','','','','','',2,6,'catalog/COMESTIVEIS/Adesivo Comestivel/Sticker Comestivel Adesivo Sinalizador - 105424 - Sexy Fantasy chocolate.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 11:40:54','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'Sticker Comestivel Adesivo Sinalizador Uva 105424 Sexy Fantasy','105424U','','','','','','',2,6,'catalog/COMESTIVEIS/Adesivo Comestivel/Sticker Comestivel Adesivo Sinalizador - 105424 - Sexy Fantasy UVA.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 11:45:19','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'Calcinha Comestível Ai, Delícia sabores variados Sexy Fantasy','calcinha comest','','','','','','',20,6,'catalog/COMESTIVEIS/Calcinha Comestivel/Calcinha Comest°vel Ai, Del°cia - sabores variados - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-05-04 15:09:41','2016-05-04 15:12:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'Capinha Peniana Comestível Sabor Chocolate 105436 Sexy Fantasy','105436','','','','','','',2,6,'catalog/COMESTIVEIS/Capinha Comestivel/Capinha Peniana Comest°vel Sabor Chocolate - 105436 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-04 15:26:46','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'Capinha Peniana Comestível Sabor Menta 105437 Sexy Fantasy','105437','','','','','','',2,6,'catalog/COMESTIVEIS/Capinha Comestivel/Capinha Peniana Comest°vel Sabor Menta - 105437 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 15:33:34','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'Capinha Peniana Comestível Sabor Morango 105435 Sexy Fantasy','105435','','','','','','',2,6,'catalog/COMESTIVEIS/Capinha Comestivel/Capinha Peniana Comest°vel Sabor Morango - 105435 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 16:12:42','2016-05-04 16:13:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'Gel Comestível Black Ice 30ml SLIBI30 Soft Love','SLIBI30','','','','','','',3,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comest°vel Black Ice 30ml - SLIBI30 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-04 17:23:23','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Gel Comestivel Sabor uva Love Sex','uva','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comestivel Sabor uva Love Sex.jpg',24,1,'0.0000',0,0,'2016-06-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-06-06 20:51:53','2016-06-06 20:54:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Gel Vibrante Vibroquete Menta 12ml HC460 Hot Flowers','HC460','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Vibrante Vibroquete Menta 12ml - HC460 - Hot Flowers.jpg',25,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-04 17:38:51','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Gel Vibrante Vibroquete Morango 12ml HC459 Hot Flowers','HC459','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Vibrante Vibroquete Morango 12ml - HC459 - Hot Flowers.jpg',25,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-04 17:43:55','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'Lâmina Hortelã Fresh','lâ hortela','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/LÉmina Fresh - Hortel∆.jpg',26,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 17:53:31','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Lâmina Morango Leppin Heavy Fresh','lâ morango','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/LÉmina Fresh Morango - Leppin Heavy.jpg',26,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-04 17:58:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'Lâmina Paper Mint Menta Danilla','lâ menta paper','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/LÉmina Paper Mint Menta - Danilla.jpg',27,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 18:03:59','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'Chup Chup Bala Efervescente Menta 36g 7014 Sexy Fantasy','7014','','','','','','',2,6,'catalog/COMESTIVEIS/Sexo Oral/Chup Chup Bala Efervescente Menta 36g - 7014 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-04 18:16:27','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'Chup Chup Bala Efervescente Morango 36g 7012 Sexy Fantasy','7012','','','','','','',2,6,'catalog/COMESTIVEIS/Sexo Oral/Chup Chup Bala Efervescente Morango 36g - 7012 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 18:21:08','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,'Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','CO271','','','','','','',3,6,'catalog/COMESTIVEIS/Sexo Oral/Garganta Profunda Strawberry Ice Morango 15g - CO271 - Ad∆o e Eva.jpg',11,1,'45.1800',0,0,'2016-05-04','15.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,4,'2016-05-04 18:25:42','2016-06-07 18:04:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'Tapa Sexo Comestível Ai, Delícia Menta 105432 Sexy Fantasy','105432MENTA','','','','','','',2,6,'catalog/COMESTIVEIS/Tapa Sexo/Tapa Sexo Comest°vel Ai, Del°cia Menta - 105432 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-04 18:30:43','2016-05-04 18:33:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'Tapa Sexo Comestível Ai, Delícia Morango 105430 Sexy Fantasy','105430-morango','','','','','','',2,6,'catalog/COMESTIVEIS/Tapa Sexo/Tapa Sexo Comest°vel Ai, Del°cia Morango - 105430 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-04','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-04 18:44:11','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'Vela Beijavel Morango C/ Champagne Creme 20g 500 Sexy Fantasy','500','','','','','','',3,6,'catalog/COMESTIVEIS/Vela Comestivel/Vela Beijavel Morango Com Champagne Creme 20g - 500 - Sexy Fantasy.jpg',12,1,'14.3700',0,0,'2016-05-04','20.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,4,'2016-05-04 18:51:35','2016-06-07 18:11:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Vela Hidratante Beijável de Morango 4690 Sexy Fantasy','4690','','','','','','',2,6,'catalog/COMESTIVEIS/Vela Comestivel/Vela Hidratante Beij†vel de Morango - 4690 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 10:44:17','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,'Adstrigente Lua de Mel 15g CO036 Adão e Eva','CO036','','','','','','',4,6,'catalog/COSMESTICOS/Adstringente (apertar)/Adstrigente Lua de Mel 15g - CO036 - Ad∆o e Eva.jpg',11,1,'16.0800',0,0,'2016-05-05','15.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,3,'2016-05-05 10:52:40','2016-06-07 18:05:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,'Kit Love Sensations Funções Variadas 104400 Sexy Fantasy','104400','','','','','','',2,6,'catalog/COSMESTICOS/Adstringente (apertar)/Kit Love Sensations 5 Pomadas de Funá‰es Variadas - 104400 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 11:05:50','2016-05-05 11:21:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,'Pomada Adstringente Gota Mágica 7,5G 4414 Sexy Fantasy','4414','','','','','','',2,6,'catalog/COSMESTICOS/Adstringente (apertar)/Pomada Adstringente Gota M†gica 7,5G - 4414 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 11:26:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,'Virginity Hímen Artificial c/ 3 Unid. SLFVY3 Soft Love','SLFVY3','','','','','','',2,6,'catalog/COSMESTICOS/Adstringente (apertar)/Virginity H°men Artificial 3 Unidades - SLFVY3 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 11:30:47','2016-05-05 11:32:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Anestésico Anal 4x1 Facilit Bisnaga 15ml SLFFT15 Soft Love','SLFFT15','','','','','','',10,6,'catalog/COSMESTICOS/Anestesicos (anal)/AnestÇsico Anal 4x1 Facilit Bisnaga 15ml - SLFFT15 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 11:56:38','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'Anestésico Apollo 6,5g 042 Kalya','042','','','','','','',3,6,'catalog/COSMESTICOS/Anestesicos (anal)/Anestesico Apollo 6,5g - 042 - Kalya.jpg',28,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 12:01:35','2016-05-05 13:14:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'Anestésico Extra Forte Striper Relaxante Forte Intt','Anest. extra forte striper','','','','','','',13,6,'catalog/COSMESTICOS/Anestesicos (anal)/AnestÇsico Extra Forte Striper Relaxante Forte - Intt.jpg',29,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 12:07:23','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'Anestésico Facilit LUBY 4Gr SLLFT4 Soft Love','SLLFT4','','','','','','',10,6,'catalog/COSMESTICOS/Anestesicos (anal)/Anestesico Facilit LUBY 4Gr - SLLFT4 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 13:12:51','2016-05-05 13:15:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'Bisnaga Anestésico Sensory 10ml 4615 Sexy Fantasy','4615','','','','','','',10,6,'catalog/COSMESTICOS/Anestesicos (anal)/4615.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 13:29:40','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'Bolinha Func. p/ Sexo Anal Facilit 2 unid SLSBFFAC8 Soft Love','SLSBFFAC8','','','','','','',4,6,'catalog/COSMESTICOS/Anestesicos (anal)/Bolinha Funcional para Sexo Anal Facilit Hot Blackout 2 unid - SLSBFFAC8 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-05 13:41:52','2016-05-05 13:45:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'Gel Anestésico p/ Sexo Anal Sensibilité 6g 0036 Love Sex','0036','','','','','','',3,6,'catalog/COSMESTICOS/Anestesicos (anal)/Gel AnestÇsico para Sexo Anal SensibilitÇ 6g - 0036 - Love Sex.jpg',24,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 13:48:41','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'Pomada Anestésica Sensory 7,5G 4415 Sexy Fantasy','4415','','','','','','',3,6,'catalog/COSMESTICOS/Anestesicos (anal)/Pomada AnestÇsica Sensory 7,5G - 4415 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-05 13:53:09','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'Bolinha Beijável 2 unid  Sabores Variados Soft Love','Bolinha Beijável 2 unid  Sabores Vari','','','','','','',20,6,'catalog/COSMESTICOS/Bolinha Excitante/Bolinha Beij†vel- 2 unid. Sabores Variados Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 14:03:06','2016-05-07 15:27:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'Bolinha Beijável Morango c/ Champ HOT 2 unid SLSBAMC8 Soft Love','SLSBAMC8','','','','','','',1,6,'catalog/COSMESTICOS/Bolinha Excitante/Bolinha Beij†vel Morango com Champ. HOT 2 unid -SLSBAMC8 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 14:10:52','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'Bolinha Excitante Coração c/ 3 unid Cores Variadas Sexy Fantasy','bol coraçao variadas','','','','','','',2,6,'catalog/COSMESTICOS/Bolinha Excitante/Bolinha Excitante Embalagem Coraá∆o com 3 unid. - Cores Variadas - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 14:18:06','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'Bolinha Exci. c/ 2 Unid Morango C/ Champ 4659 Sexy Fantasy','4659','','','','','','',2,6,'catalog/COSMESTICOS/Bolinha Excitante/Bolinha Excitante Sexy Ball Pote com 2 Unid. Morango Com Champ. - 4659 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 14:56:35','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'Bolinha Func. 50 Tons de Cinza 2 unid SLSBFCIN8 Soft Love','SLSBFCIN8','','','','','','',13,6,'catalog/COSMESTICOS/Bolinha Excitante/Bolinha Funcional Excitante 50 Tons de Cinza 2 unid - SLSBFCIN8 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 15:01:34','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'Excitante Pomada Oriental 6g 0783 Love Sex','0783','','','','','','',3,6,'catalog/COSMESTICOS/Excitantes/Excitante Pomada Oriental 6g - 0783 - Love Sex.jpg',24,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 15:13:55','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'Excitante Unissex Expansor 5ml 562 Garji','562','','','','','','',2,6,'catalog/COSMESTICOS/Excitantes/Excitante Unissex Expansor 5ml - 562 - Garji.png',30,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 15:22:08','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'Pó Mágico Bruxinha Loka Sensação','pó loka sencão','','','','','','',10,6,'catalog/COSMESTICOS/Excitantes/P¢ M†gico Bruxinha - Loka Sensaá∆o.jpg',31,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 15:34:41','2016-05-05 15:39:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'Pó Magico da Bruxinha 100% Natural DJ013 Loka Sensação','DJ013','','','','','','',3,6,'catalog/COSMESTICOS/Excitantes/cosmeticos-po100n.png',31,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 15:46:40','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'Pomada Dragão Chines 4ml 104420 Sexy Fantasy','104420','','','','','','',2,6,'catalog/COSMESTICOS/Excitantes/Pomada Drag∆o Chines 4ml - 104420 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 15:49:53','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'Sexy Drink Pó Mágico Extra Forte HC475 Hot Flowers','HC475','','','','','','',2,6,'catalog/COSMESTICOS/Excitantes/Sexy Drink P¢ M†gico Extra Forte - HC475 - Hot Flowers.jpg',25,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 15:53:50','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'Tesão de Vaca Fuck Gotas Excitantes para Bebida RM','Tesao de vaca','','','','','','',19,6,'catalog/COSMESTICOS/Excitantes/Tes∆o de Vaca Fuck - Gotas Excitantes para Bebida.png',32,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-05 15:59:46','2016-06-06 19:59:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'Gel Lubrificante D-Lab Neutro 120ml Surreale','lub d-lab','','','','','','',3,6,'catalog/COSMESTICOS/Lubrificantes/Gel Lubrificante D-Lab Neutro 120ml - Surreale.jpg',33,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 16:28:20','2016-05-05 16:31:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'Gel Lubrificante Luby 6g 0781 Love Sex','0781','','','','','','',2,6,'catalog/COSMESTICOS/Lubrificantes/Gel Lubrificante Luby 6g - 0781 - Love Sex.jpg',24,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 16:46:39','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'Lubrificante Intimo Neutro 50g K-Med','lub k-med 50g','','','','','','',3,6,'catalog/COSMESTICOS/Lubrificantes/Lubrificante Intimo K-Med Neutro - 50g.jpg',34,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 16:53:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'Lubrificante Intimo LubriGel Sachê 5g 1715 Carbogel','1715','','','','','','',10,6,'catalog/COSMESTICOS/Lubrificantes/Lubrificante Intimo LubriGel Sachà 5g - 1715 - Carbogel.jpg',20,1,'0.0000',0,0,'2016-05-05','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 16:56:13','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'Lubrificante Lubes Neutro 30ml 564 Garji','564','','','','','','',2,6,'catalog/COSMESTICOS/Lubrificantes/Lubrificante Lubes Neutro 30ml - 564 - Garji.png',30,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 16:59:04','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'Óleo Bifasico Linda Morango e Avelã 250ml 0940 Love Sex','0940','','','','','','',2,6,'catalog/COSMESTICOS/Oleo de Massagem/Oleo Bifasico Linda Morango e Avel∆ 250ml - 0940 - Love Sex.jpg',24,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 17:09:29','2016-05-05 17:22:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'Óleo de Massagem Afrodisiaca in Blue 60ml KG402 KGel','KG402','','','','','','',1,6,'catalog/COSMESTICOS/Oleo de Massagem/Oleo de Massagem Afrodisiaca in Blue 60ml - KG402 - KGel.jpg',21,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:14:01','2016-05-05 17:23:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'Óleo de Massagem Siliconado Morango 60ml KG421 Kgel','KG421','','','','','','',2,6,'catalog/COSMESTICOS/Oleo de Massagem/Oleo de Massagem Siliconado Morango 60ml - KG421 - Kgel.jpg',21,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:22:07','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'Óleo P/ Massagem Afrodisiaca Sagha Especiaria 60ml 276 Kalya','276','','','','','','',2,6,'catalog/COSMESTICOS/Oleo de Massagem/Oleo Para Massagem Afrodisiaca Sagha Especiaria 60ml - 276 - Kalya.jpg',28,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 17:27:14','2016-05-05 17:31:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'Óleo Para Massagem Beijável Fogo e Gelo Everest CO232 Adão e Eva','CO232','','','','','','',3,6,'catalog/COSMESTICOS/Oleo de Massagem/‡leo Para Massagem Beij†vel Fogo e Gelo Everest - CO232 - Ad∆o e Eva.jpg',11,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:38:03','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'Óleo P/ Massagem Beijável Fogo e Gelo Menta Ice CO233 Adão e Eva','CO233','','','','','','',3,6,'catalog/COSMESTICOS/Oleo de Massagem/‡leo Para Massagem Beij†vel Fogo e Gelo Menta Ice - CO233 - Ad∆o e Eva.jpg',11,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:43:31','2016-05-05 17:44:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'Óleo P/ Massagem Bifasico Duo Morango 4630 Sexy Fantasy','4630','','','','','','',2,6,'catalog/COSMESTICOS/Oleo de Massagem/Oleo Para Massagem Bifasico Duo Morango - 4630 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:48:18','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'Bisnaga Retardante Action Retard 10ml 4616 Sexy Fantasy','4616','','','','','','',2,6,'catalog/COSMESTICOS/Prolongador de Erecao - Retardante/Bisnaga Retardante Action Retard 10ml - 4616 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 17:54:51','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'Excitante e Prolongador de Ereção 15ml SLFRP15 Soft Love','SLFRP15 ','','','','','','',2,6,'catalog/COSMESTICOS/Prolongador de Erecao - Retardante/Excitante e Prolongador de Ereção Rigid Plus Bisnaga 15ml - SLFRP15 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 17:59:37','2016-05-05 18:26:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'Gel Retardante Potenza 6g Love Sex','potenza','','','','','','',2,6,'catalog/COSMESTICOS/Prolongador de Erecao - Retardante/Gel Retardante Potenza 6g Love Sex.jpg',24,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 18:17:53','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'Retardante Retard Bisnaga 15ml SLFRD15 Soft Love','SLFRD15 ','','','','','','',20,6,'catalog/COSMESTICOS/Prolongador de Erecao - Retardante/Retardante Retard Bisnaga 15ml - SLFRD15 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 18:23:22','2016-05-05 18:30:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'Clitor Max Sensibilizante do Citóris 10ml Surreale','sen. clitoris','','','','','','',10,6,'catalog/COSMESTICOS/Sensibilizante Clitoris/Clitor Max Sensibilizante do Cit¢ris 10ml - Surreale.jpg',33,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 18:35:35','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'Vela Beijavel Creme 20g Sexy Fantasy','vela beijavel','','','','','','',10,6,'catalog/COSMESTICOS/Vela Funcional/Vela Beijavel Creme 20g - Sexy Fantasy.jpg',12,1,'12.8800',0,0,'2016-05-05','20.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,3,'2016-05-05 20:28:26','2016-06-08 14:44:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,'Vela Multifuncional Sex Sens Seduction 40g HC500 Hot Flowers','HC500','','','','','','',1,6,'catalog/COSMESTICOS/Vela Funcional/Vela Multifuncionais Sex Sens Seduction 40g - HC500 - Hot Flowers.jpg',25,1,'61.0400',0,0,'2016-05-05','40.00000000',2,'10.00000000','10.00000000','10.00000000',1,1,1,1,1,3,'2016-05-05 20:33:25','2016-06-08 14:48:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'Eletric Plus Vibrador líquido Spray Jatos 15ML SLJEP15 Soft Love','SLJEP15','','','','','','',2,6,'catalog/COSMESTICOS/Vibrador Liquido/Eletric Plus Vibrador l°quido Spray Jatos 15ML - SLJEP15 - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-05 20:56:29','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'Vibrador Líquido Gel Beijável Morango 15ML 4146 Sexy Fantasy','4146 ','','','','','','',2,6,'catalog/COSMESTICOS/Vibrador Liquido/Vibrador L°quido Power Shock Gel Beij†vel Morango 15ML - 4146 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 21:02:18','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'DVD Os Segredos do Pompoarismo Lu Riva','dvd pompoarismo','','','','','','',1,6,'catalog/DVD-LIVROS/DVDs/DVD Os Segredos do Pompoarismo - Lu Riva.jpg',35,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:09:39','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,'DVD 10 Lições Práticas para Strip Tease Lu Riva','dvd strip tease','','','','','','',1,6,'catalog/DVD-LIVROS/DVDs/DVD - 10 Liá‰es Pr†ticas para Strip Tease - Lu Riva.png',35,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:15:48','2016-05-05 21:18:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'O Manual do Kamasutra O livro do amor KT908 Importação','KT908','','','','','','',1,6,'catalog/DVD-LIVROS/Livros/O Manual do Kamasutra O livro do amor - KT908 - K Import.jpg',15,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:33:34','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,'Livro de Strip-Tease 10 Lições práticas para Strip-Tease Lu Riva','livro strip tease','','','','','','',1,6,'catalog/DVD-LIVROS/Livros/Livro de Strip-Tease 10 Liá‰es pr†ticas para Strip-Tease - Lu Riva.jpg',35,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:37:19','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,'Livro Massagens Sensuais Excitantes Lu Riva','livro massagens','','','','','','',1,6,'catalog/DVD-LIVROS/Livros/Livro Massagens Sensuais Excitantes - Lu Riva.jpg',35,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:39:51','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,'Fantasia Colegial 6542 Sexy Fantasy','6542','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Colegial - 6542.frente - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-05 21:46:26','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,'Fantasia Diabinha SL2016001 Soft Love','SL2016001 ','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Diabinha - SL2016001.FRENTE - Soft Love.jpg',13,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-05 21:51:46','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,'Fantasia Luxo Bombeira C/ Boina Kayo Valentin','bombeira c/ boina kayo','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Luxo Bombeira Com Boina - Kayo Valentin.png',36,1,'0.0000',0,0,'2016-05-05','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-05 21:56:44','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,'Fantasia Luxo Bombeira Vestido 6027 Kayo Valentin','6027','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Luxo Bombeira Vestido - 6027 - Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 14:06:36','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,'Fantasia Luxo Noiva Saia c/ Persex 6006 Kayo Valentin','6006','','','','','','',0,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Luxo Noiva Saia com Persex - 6006 - Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-06 14:10:59','2016-05-19 21:41:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,'Fantasia Empregada Kayo Valentin','fantasia emprega kayo','','','','','','',1,6,'catalog/FANTASIAS/Mini Fantasias/Fantasia Mini Empregada Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 14:16:13','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,'Fantasia Plus Size GG Gueixa 6905 Sexy Fantasy','6905','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Plus Size GG Gueixa - 6905 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 14:20:18','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,'Fantasia Sedução 6547 Sexy Fantasy','6547','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/Fantasia Seduá∆o - 6547 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 14:24:35','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,'Fantasia Mini Enfermeira Kayo Valentin','mini enfermeira','','','','','','',1,6,'catalog/FANTASIAS/Mini Fantasias/Fantasia Mini Enfermeira - Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 14:55:51','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,'Mini Fantasia Baba II 7056 Pimenta Sexy','7056','','','','','','',1,6,'catalog/FANTASIAS/Mini Fantasias/Mini Fantasia Baba II - 7056.FRENTE - Pimenta Sexy.jpg',37,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-06 15:07:38','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,'Mini Fantasia Diabinha 3359 Pimenta Sexy','3359','','','','','','',1,6,'catalog/FANTASIAS/Mini Fantasias/Mini Fantasia Diabinha - 3359 - Pimenta Sexy.jpg',37,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-06 15:19:45','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,'Mini Fantasia Mulher Maravilha 7053 Pimenta Sexy','7053','','','','','','',1,6,'catalog/FANTASIAS/Mini Fantasias/Mini Fantasia Mulher Maravilha - 7053.FRENTE - Pimenta Sexy.jpg',37,1,'0.0000',0,0,'2016-05-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-06 15:35:59','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,'Boneca Inflável Natalia 3 Orifí. Penet. ABM1023B-04 Importação','ABM1023B-04','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Boneca Infl†vel Natalia 3 Orif°cios Penetr†veis - ABM1023B-04 - K Import.jpg',15,1,'0.0000',0,0,'2016-05-06','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,7,'2016-05-06 16:19:02','2016-05-10 17:26:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,'Body Luxo Atrevida 6064 Kayo Valentin','6064','','','','','','',1,6,'catalog/LINGERIE/Body/Body Luxo Atrevida Vermelho - 6064 - Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-07','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-07 14:17:38','2016-05-07 14:27:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,'Body Luxo Perigosa 6072 Kayo Valentin','6072','','','','','','',1,6,'catalog/LINGERIE/Body/Body Luxo Perigosa - 6072 - Kayo Valentin CorˇPreto.jpg',36,1,'0.0000',0,0,'2016-05-07','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-07 14:23:44','2016-05-07 14:24:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,'Calcinha Perf. Morango na Caixinha c/ Persex Delirius Plus','calc. perf. morango','','','','','','',1,6,'catalog/LINGERIE/Calcinhas/Calcinha Perfumada Morango na Caixinha com Persex1 - Delirius Plus.jpg',38,1,'0.0000',0,0,'2016-05-07','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-07 14:40:42','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,'Tanga C/ Persex Inter Kayo Valentin','tanga inter','','','','','','',1,6,'catalog/LINGERIE/Calcinhas/Tanga Com Persex Inter Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-07','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-07 14:47:44','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,'Tanga Fio Dental Cores e Modelos Variados RM','tanga fio dental variados','','','','','','',1,6,'catalog/LINGERIE/Calcinhas/Tanga Fio Dental - Cores e Modelos Variados.jpg',32,1,'0.0000',0,0,'2016-05-07','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-07 14:57:33','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(193,'Camisola Ramila Estampas Variadas Kayo Valentin','Camisola Ramila','','','','','','',1,6,'catalog/LINGERIE/Camisolas/Camisola Ramila - Estampas Variadas Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-09 15:22:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(194,'Camisola Sensual Luciana Estampas Variadas Kayo Valentin','camisola Luciana','','','','','','',1,6,'catalog/LINGERIE/Camisolas/Camisola Sensual Luciana - Estampas Variadas Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-09 15:31:38','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195,'Camisola Gabi ref.020 Sempre Sexy RM','020','','','','','','',1,6,'catalog/LINGERIE/Camisolas/Camisola Gabi ref - 020 - Sempre Sexy PRETO M.jpg',32,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-05-09 15:38:03','2016-05-09 15:42:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(196,'Conjunto Doçura Kayo Valentin','cj doçura','','','','','','',1,6,'catalog/LINGERIE/Conjuntos/Conjunto Doáura -FRENTE Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-09 15:56:48','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(197,'Espartilho Adriel De Mel','espartilho','','','','','','',1,6,'catalog/LINGERIE/Espartilhos/Espartilho Adriele - De Mel  Branco - M.jpg',39,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-09 16:06:25','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(198,'Meia Lisa 7/8 Branca MB15 Perrutextil','MB15','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 7.8 Branca - MB15 - Perrutextil.jpg',40,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-09 16:14:40','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(199,'Meia Lisa 7/8 Preta MP15 Perrutextil','MP15','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 7.8 Preta - MP15 - Perrutextil.jpg',40,1,'0.0000',0,0,'2016-05-09','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-09 16:22:33','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'Meia Lisa 7/8 Vermelha MV15 Perrutextil','MV15','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 7.8 Vermelha - MV15 - Perrutextil.jpg',40,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 14:26:07','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'Meia Arrastão 7/8 Com Renda Preta MP06 Perrutextil','MP06','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Arrastao 7.8 Com Renda Preta1 - MP06 - Perrutextil.jpg',40,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 14:31:12','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'Meia Arrastao 7/8 Com Renda Vermelha MV06 Perrutextil','MV06','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Arrastao 7.8 Com Renda Vermelha - MV06 - Perrutextil.jpg',40,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 14:37:06','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'Meia Lisa 3/4 S/ Pé C/ Renda Branco Sexy Imperio','3/4 branco imperio','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 3.4 Sem PÇ Com Renda Branco - Sexy Imperio.jpg',41,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 15:09:24','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'Meia Lisa 3/4 S/ Pé C/ Renda Preto Sexy Imperio','meia lisa 3/4','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 3.4 Se m PÇ ComRenda Preto - Sexy Imperio.jpg',41,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 16:05:28','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'Meia Lisa 3/4 S/ Pé C/ Renda Vermelho Sexy Imperio','meia lisa 3/4','','','','','','',1,6,'catalog/LINGERIE/Meias/Meia Lisa 3.4 Sem PÇ Com Renda Vermelho - Sexy Imperio.jpg',41,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 16:10:39','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'Sainha Lolita 3310 Pimenta Sexy','3310','','','','','','',1,6,'catalog/LINGERIE/Saias/Sainha Lolita - 3310 - Pimenta Sexy  CorˇBranco.jpg',37,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-05-10 16:51:21','2016-05-10 17:01:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'Sainha Sedutora Liga 8043 Pimenta Sexy','8043','','','','','','',1,6,'catalog/LINGERIE/Saias/Sainha Sedutora Liga - 8043 - Pimenta Sexy - Cor preto.jpg',37,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-10 17:00:53','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Vestido Kristal Kayo Valentin','vestido Kristal','','','','','','',1,6,'catalog/LINGERIE/Vestido/Vestido Kristal - Kayo Valentin.jpg',36,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 17:20:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Masturbador Boca em Cyber Cor Pele SexDreams PK005 Importação','PK005','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Boca em Cyber Cor Pele SexDreams - PK005 - K Import.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 17:32:50','2016-05-31 10:11:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Masturbador Vagina em Cyber Cor Pele SexDreams PK006 Importação','PK006','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Vagina em Cyber Cor Pele SexDreams - PK006 - K Import.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 17:52:49','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Masturbador Vagina 1030AB Sexy Fantasy','1030AB','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Vagina - 1030A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-10 17:57:02','2016-05-10 20:40:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Vibrador em Formato de Batom Rosa MV007 Importação','MV007','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Vibrador em Formato de Batom Rosa - MV007 - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 18:01:05','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Butterfly com Mini Pênis Estimulador Fem. 1015CB Sexy Fantasy','1015CB','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Butterfly com Mini Pànis Estimulador Feminino -1015C.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 18:05:38','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Masturbador Vagina em Cyber Skin Importação','vagina cyber skin','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Vagina em Cyber Skin - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 20:33:22','2016-05-10 20:39:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Masturbador Vagina C/ Vibro VV001 Importação','VV001','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Vagina Com Vibro - VV001 - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 20:38:15','2016-05-10 20:39:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'Tenga Egg (ORIGINAL) Acomp. Lubrificante Mod. Variados','tenga egg','','','','','','',6,6,'catalog/MASTURBADORES/IMPORTADOS/Tenga Egg - (ORIGINAL) - Acompanha lubrificante - Modelos Variados - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 20:56:36','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'Masturbador Duplo Formato de Halter C/ Vagina e Ânus MA028','MA028','','','','','','',1,6,'catalog/MASTURBADORES/IMPORTADOS/Masturbador Duplo Formato de Halter Com Vagina e ∂nus - MA028 - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-10 21:02:09','2016-05-31 10:14:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'Vibrador Bullet Ovo Vibratório Cores Variadas Importação','Vibrador Bullet Ovo','','','','','','',10,6,'catalog/MASTURBADORES/IMPORTADOS/Vibrador Bullet - Ovo Vibrat¢rio Cores Variadas - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-10','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-10 21:08:58','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Plug Anal 9cm x 2cm 2310 Sexy Fantasy','2310','','','','','','',1,6,'catalog/PENIS E PROTESES/Plug anal/PLug Anal I 9cm x 2cm 2310 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-11 14:52:59','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Plug Cônico G 1944AB Sexy Fantasy','1944AB','','','','','','',1,6,'catalog/PENIS E PROTESES/Plug anal/Plug Cìnico G -1944A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 14:56:32','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Massageador de Prostata C/ Alça PL006 Importação','PL006','','','','','','',1,6,'catalog/PENIS E PROTESES/Plug anal/Massageador de Prostata Com Aláa - PL006 - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 15:00:19','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Pênis C/ Vibro 17,5 x 4,5cm Linha Eleg. 1BW001032 Sexy Fantasy','001032','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Penis Com Vibro 17,5 x 4,5 cm Linha Elegance - 1BW-001032 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 15:40:24','2016-05-11 15:54:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Pênis C/ Vibro 20 x 4,1 cm Linha Elegance 1BW001023 Sexy Fantasy','001023','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Penis Com Vibro 20 x 4,1 cm Linha Elegance - 1BW-001023 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 15:44:02','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Pênis C/ Mini Vibrador 12,5X3cm KT314P Importação','KT314P ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Penis Com Mini Vibrador Preto 12,5X3 cm - KT314P - K Import.jpg',15,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-11 15:58:38','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Pênis Cor Pele c/ Vibro e Ventosa 15,3x4cm 1431CVB Sexy Fantasy','1431CVB','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Pànis Cor Pele com Vibro e Ventosa 15,3x4 cm - 1431CV.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 19:59:33','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,'Pênis Aroma Morango c/ Vibrador 18X4,4cm F172550 Sexy Fantasy','F172550','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Penis Aroma Morango com Vibrador 18X4,4 cm - F1725.50 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 20:05:16','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'Pênis Aroma Tutti Frutti c/ Vibrador 18X4,4cm F172551 Sexy Fant.','F172551 ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Penis Aroma Tutti Frutti com Vibrador 18X4,4cm - F1725.51 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 20:13:44','2016-05-11 20:20:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Pênis Cor Pele c/ Vibro c/ Escroto c/ Ventosa 15x3,8cm 1475CVB','1475CVB ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Pànis Cor Pele com Vibro com Escroto com Ventosa 15x3,8 cm - 1475CV.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-11 20:26:36','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'Pênis Cor Pele Ponta Dupla c/ Vibrador 41,5x5,5cm 1976CB','1976CB ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Pànis Cor Pele Ponta Dupla com Vibrador 41,5x5,5cm - 1976C.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-11','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-05-11 20:32:42','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Pênis Cor Pele c/ Vibro e Ventosa 22 x 5,8cm 1830CVB','1830CVB ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Pànis Cor Pele com Vibro e Ventosa 22 x 5,8 cm - 1830CV.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 13:58:55','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'Prótese com cinta e vibro CT001 Importação','CT001','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Protese com cinta e vibro CT001.jpg',15,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 14:02:28','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'Pênis Cyber Skin C/ Vibro C/ Escroto 18X5cm 101650CB','101650CB ','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Pànis 101650C.B - Cyber Skin Com Vibro Com Escroto 18X5 cm - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 14:14:25','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Prótese Giratória (Rotativa) Cor Pele Importação','Prótese Gira.','','','','','','',1,6,'catalog/PENIS E PROTESES/C. Vibrador/Protese Girat¢ria (Rotativa) - Cor Pele - Importaá∆o.jpg',15,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 14:50:19','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Pênis Cor Pele s/ Vibro 9,5X3,2cm 1120AB Sexy Fantasy','1120AB ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele sem Vibro 9,5X3,2 cm - 1120A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 15:25:40','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Pênis Aroma Morango s/ Vibro 15,3x4cm F143150 Sexy Fantasy','F143150 ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Aroma Morango sem Vibro 15,3x4 cm - F1431.50 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 15:36:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Pênis Aroma Tutti Frutti s/ Vibro 15,3x4cm F143151 Sexy Fantasy','F143151 ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Aroma Tutti Frutti sem Vibro 15,3x4 cm - F1431.51 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 15:48:16','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Pênis Cor Pele s/ Vibro 18x4,5cm 1641AB Sexy Fantasy','1641AB ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele sem Vibro 18x4,5 cm - 1641A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 15:51:30','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'Pênis s/ Vibro c/ Ventosa c/ Escroto 16,2 x 3,7cm 1576AVB S.F','1576AVB ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele sem Vibro com Ventosa com Escroto 16,2x3,7 cm - 1576AV.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 15:58:55','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'Pênis s/ Vibro c/ Escroto 18x4,4cm 1577AB  Sexy Fantasy','1577AB  ','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis 1577A.B - Cor Marron sem Vibro com Escroto 18x4,4 cm Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 16:02:24','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'Pênis Cor Pele s/ Vibro c/ Escroto 18x4,7cm 1679AB Sexy Fantasy','1679AB','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele sem Vibro com Escroto 18x4,7 cm - 1679A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 17:29:02','2016-05-12 17:31:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Pênis Cor Pele s/ Vibro 22X5,8 cm 1830AB Sexy Fantasy','1830AB','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele sem Vibro 22X5,8 cm - 1830A.B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 17:36:25','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Pênis Cor Pele Ponta Dupla 32,5x3,9 cm 1976AS Sexy Fantasy','1976AS','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis Cor Pele Ponta Dupla 32,5x3,9 cm - 1976A.S - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 17:43:49','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'Pênis S/Vibro 17,5 x 3,8 cm Fosforescente KTF107 Importação','KTF107','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Penis Sem Vibro 17,5 x 3,8 cm Fosforescente - KTF107 K-import.png',0,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 17:47:09','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'Pênis Cor Pele s/ Vibro c/ Escroto 22x5,3 cm 1871AB Sexy Fantasy','1871AB','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis 1871A.B - Cor Pele sem Vibro com Escroto 22x5,3 cm Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-12 17:51:06','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'Pênis Cyber Skin Vertebra 16 X 5cm 1500120 Sexy Fantasy','1500120','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis 15001.20 - Cyber Skin Vertebra 16 X 5cm - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 17:54:33','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Pênis Cyber Skin C/ Vertebra 18 X 5cm 1500122 Sexy Fantasy','1500122','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Pànis 15001.22 - Cyber Skin Com Vertebra 18 X 5cm - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-12 17:57:25','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Pênis Gigante Big Jow 40x10cm 1899ASP Sexy Fantasy','1899ASP','','','','','','',1,6,'catalog/PENIS E PROTESES/S. Vibrador/Penis Gigante Big Jow 40x10CM - 1899A.SP - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-05-12 18:01:53','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,'Bolinha Tailandesa Pequena c/05 3302B Sexy Fantasy','3302B','','','','','','',1,6,'catalog/POMPORISMO/Bolinhas/Bolinha Tailandesa Pequena Com 05 - 3302B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-12 19:35:54','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Conjunto de Pompoar Cromado c/02 Bolas SLS04 Sexy Fantasy','SLS04','','','','','','',1,6,'catalog/POMPORISMO/Bolinhas/Conjunto de Pompoar Cromado 2 Bolas Submission - SLS04 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 19:41:54','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Bolinha Taila. Gr. C/ Esfera Inter. 4 Bolas Rosa 3142B Sexy F.','3142B','','','','','','',1,6,'catalog/POMPORISMO/Bolinhas/Bolinha Tailandesa Grande Com Esfera Interna 4 Bolas Rosa - 3142B - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 19:48:41','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Algemas de Metal c/ Pelúcia - Cores Variadas RM','Algemas','','','','','','',10,6,'catalog/SADO/Algemas/Algema de Metal com Pel£cia - Cores Variadas.jpg',32,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 19:58:36','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'Algemas de Metal Handccufs','algemas de metal','','','','','','',10,6,'catalog/SADO/Algemas/Algemas de Metal com Par de Chaves - Handccufs.jpg',42,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 20:03:58','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Algemas e Vendas em Pelúcia Cores Variadas Brasil Fetiche','algemas e vendas','','','','','','',10,6,'catalog/SADO/Algemas/Algemas e Vendas em Pelucia Cores Variadas - Brasil Fetiche.png',43,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 20:11:31','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Algemas em Couro Sintético Preta ACSP83 Brasil Fetiche','ACSP83','','','','','','',1,6,'catalog/SADO/Algemas/Algema em Couro Sintetico Preta - ACSP83 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 20:15:44','2016-05-12 20:16:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Amarras de Tecido Submission SLS10 Sexy Fantasy','SLS10 ','','','','','','',1,6,'catalog/SADO/Amarras/Amarras de Tecido Submission - SLS10 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-12 20:21:57','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Amarras de Vinil SLS11 Submission Sexy Fantasy','SLS11 ','','','','','','',1,6,'catalog/SADO/Amarras/Amarras de Vinil - SLS11 - Submission - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-12 20:28:12','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Chicote Reforçado c/ 6 Tiras 40cm preto CRP4050 Brasil Fetiche','CRP4050 ','','','','','','',1,6,'catalog/SADO/Chicotes - Chibatas/Chicote Reforáado com 6 Tiras 40cm preto - CRP4050 - Brasil Fetiche.png',43,1,'0.0000',0,0,'2016-05-12','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-12 20:37:39','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Kit Chicote Luxo Tiras 30cm C/ Venda Pélucia Preto KLVP73','KLVP73 ','','','','','','',1,6,'catalog/SADO/Chicotes - Chibatas/Kit Chicote Luxo Tiras 30cm Com Venda Pelucia Preto - KLVP73 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:03:35','2016-05-13 11:16:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Coleira com Guia CG55 Brasil Fetiche','CG55 ','','','','','','',1,6,'catalog/SADO/Coleira/Coleira com Guia - CG55 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:14:19','2016-05-13 11:15:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Coleira Submission SLS15 Sexy Fantasy','SLS15 ','','','','','','',1,6,'catalog/SADO/Coleira/Coleira Submission - SLS15 - Sexy Fantasy.jpg',12,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:19:27','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Caixinha Tons de Desejo 50 Tons de Cinza 1425 RM','1425 ','','','','','','',1,6,'catalog/SADO/Kits Sado/Caixinha Tons de Desejo 50 Tons de Cinza - 1425 - Pessini.jpg',32,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:42:55','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,'Kit bondagem 4 Amarras Bidim KBBP112 Brasil Fetiche','KBBP112 ','','','','','','',1,6,'catalog/SADO/Kits Sado/Kit bondagem 4 Amarras Bidim - KBBP112 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:46:52','2016-05-13 11:48:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,'Kit bondagem 4 Amarras + Venda Pelúcia Preto KBOP100','KBOP100','','','','','','',1,6,'catalog/SADO/Kits Sado/Kit bondagem 4 Amarras + Venda Pel£cia Preto - KBOP100 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:54:01','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,'Kit Dominadora Cores variadas Brasil Fetiche','KDP06','','','','','','',1,6,'catalog/SADO/Kits Sado/Kit Dominadora - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 11:58:15','2016-05-13 14:30:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,'Máscara Mulher Gato Preta MGP114 Brasil Fetiche','MGP114 ','','','','','','',1,6,'catalog/SADO/Mascara/M†scara Mulher Gato Preta - MGP114 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:21:29','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,'Máscara Tiazinha Fetiche Brasil','Mascara Tiazinha','','','','','','',10,6,'catalog/SADO/Mascara/M†scara Tiazinha - Fetiche Brasil.jpg',12,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:25:09','2016-05-13 17:28:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,'Mordaça Bastão MB52 Brasil Fetiche','MB52','','','','','','',1,6,'catalog/SADO/Mordaaa/Mordaáa Bast∆o - MB52 - Brasil Fetiche.jpg',0,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:27:56','2016-05-31 10:18:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,'Plug Bol 6 Esferas Preto Submission SLS02 Sexy Fantasy','SLS02 ','','','','','','',1,6,'catalog/SADO/Plug/Plug Bol 6 Esferas Preto Submission - SLS02 - Sexy Fantasy.png',12,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:34:21','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Separador de Braços 33cm SB56 Brasil fetiche','SB56 ','','','','','','',1,6,'catalog/SADO/Separador de Braaos e Pcs/Separador de Braáos 33cm - SB56 - Brasil fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:37:35','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,'Separador de Pés 35cm SP57 Brasil Fetiche','SP57 ','','','','','','',1,6,'catalog/SADO/Separador de Braaos e Pcs/Separador de PÇs 35cm - SP57 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:39:33','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Venda Tapa Olhos em Bidim Preto VBP26 Brasil Fetiche','VBP26 ','','','','','','',1,6,'catalog/SADO/Tapa Olhos - Venda/Venda Tapa Olhos em Bidim Preto - VBP26 - Brasil Fetiche.jpg',43,1,'0.0000',0,0,'2016-05-13','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-05-13 17:42:37','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Fantasia Luxo Noiva Sensual Kayo Valentin','Noiva Sensual','','','','','','',1,6,'catalog/FANTASIAS/Fantasias completas/fantasialingerie-fantasiakayovalentin-noivasensual.jpg',36,1,'0.0000',0,0,'2016-05-20','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-05-19 21:50:29','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,'Gel Comestivel Sabor morango Love Sex','morango','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comestivel Sabor morango Love Sex.jpg',24,1,'0.0000',0,0,'2016-06-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-06-06 20:40:27','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'Gel Comestivel Sabor menta Love Sex','menta','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comestivel Sabor menta Love Sex.jpg',24,1,'0.0000',0,0,'2016-06-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-06-06 20:43:00','2016-06-06 20:53:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Gel Comestivel Sabor choco-menta Love Sex','chcomenta','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comestivel Sabor choco menta Love Sex.jpg',24,1,'0.0000',0,0,'2016-06-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-06-06 20:48:27','2016-06-06 20:51:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Gel Comestivel Sabor tutti-frutti Love Sex','tutti','','','','','','',2,6,'catalog/COMESTIVEIS/Gel lmina - Comestivel/Gel Comestivel Sabor tutti-frutti Love Sex.jpg',24,1,'0.0000',0,0,'2016-06-06','0.00000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-06-06 20:54:57','2016-06-06 20:56:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (92,4,'Espuma de Banho Morango 110ml L068 La Pimienta','&lt;p&gt;Espuma de Banho : Hidratante, perfumado, delicioso e cheio de espuma! Para um banho cheio de sedução.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de Usar. &amp;nbsp;&lt;/p&gt;&lt;p&gt;No Chuveiro: Aplique em uma esponja e espalhe pelo corpo todo, enxaguando em seguida.&lt;/p&gt;&lt;p&gt;Na Banheira: Dissolva uma pequena quantidade e agite até obter a espuma desejada.&lt;/p&gt;&lt;p&gt;Contém: 110ml&lt;/p&gt;','','Espuma de Banho Morango 110ml L068 La Pimienta','',''),(89,4,'Anel Oriental com Plug Anal - Sexy Fantasy','&lt;p&gt;Anel peniano feito de gel com nódulos massageadores e plug anal.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ajuda a manter a ereção, retardar a ejaculação e também permite uma total estimulação do clitóris da mulher durante a relação sexual, contribuindo&amp;nbsp;&lt;/p&gt;&lt;p&gt;para atingir o orgasmo facilmente ao mesmo tempo em que estimula o homem. Produzido como produto sex shop atacado em elastômero atóxico, ajusta-se a qualquer espessura de pênis.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Super macio, pode ser usado como acessório para vibradores.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de Usar: Lubrifique para facilitar a penetração.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Coloque o anel com pênis ereto.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Recomendações: é recomendado o uso de preservativo e lubrificante.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar com água e sabão neutro antes e após o uso.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não compartilhar. Conservar fora da luz solar e não expor a temperatura superior a 50ºC.&lt;/p&gt;','','Anel Oriental com Plug Anal - Sexy Fantasy','',''),(90,4,'Anel Oriental Estimulador Duplo Cores Variadas 2220 Sexy Fantasy','&lt;p&gt;Anel Estimulador duplo em elastômero atóxico.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Possui duas áreas com pequenos cones que estimulam ainda mais a mulher.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Prolonga a ereção e ao mesmo tempo estimula a região anal e clitoriana.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Deve ser Usado com lubrificante.&lt;/p&gt;','','Anel Oriental Estimulador Duplo Cores Variadas 2220 Sexy Fantasy','',''),(91,4,'Ducha Higienica INM Sex Clean 2336 Carbogel','&lt;p&gt;CarbogelO In-M Sex Clean é uma ducha higienizadora descartável para injeção de água ou soluções medicamentosas nas cavidades íntimas, indicada ainda&amp;nbsp;&lt;/p&gt;&lt;p&gt;na prevenção e tratamento de pacientes com moléstias na região íntima, prisão de ventre e como auxiliador na preparação de exames clínicos.&lt;br&gt;&lt;/p&gt;&lt;p&gt;In-M também é recomendado para higienização anal pré relação sexual.&lt;/p&gt;&lt;p&gt;O In-M Sex Clean ducha íntima descartável apresenta resistência e performance apropriada à finalidade a qual se destina.&lt;/p&gt;&lt;p&gt;A capacidade da ducha higiênica In-M é de 300 ml de água ou outra solução líquida. É de fácil manuseio e descartável.&lt;/p&gt;&lt;p&gt;Não tem ação terapêutica.&lt;/p&gt;&lt;p&gt;Age higienizando a cavidade íntima (ânus), retirando resíduos naturalmente encontrados no local.&lt;/p&gt;&lt;p&gt;Composição:&lt;/p&gt;&lt;p&gt;Pouch:&lt;/p&gt;&lt;p&gt;- Filme de Polietileno Tereftalato (PET), também conhecido como Poliéster.&lt;/p&gt;&lt;p&gt;- Filme de Polietileno baixa densidade.&lt;/p&gt;&lt;p&gt;- Tintas Base Nitrocelulose e Poliuretano&lt;/p&gt;&lt;p&gt;- Adesivo base Poliuretano Bico:&lt;/p&gt;&lt;p&gt;- Resina de Polietileno de Alta densidade.&lt;/p&gt;&lt;p&gt;Embalagem plástica discreta que acomoda a ducha anal dobrada ocupando uma área de 7,5 x 6,5 cm, ideal para ter sempre em mãos.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Ducha Higienica INM Sex Clean 2336 Carbogel','',''),(56,4,'Mini Baralho Strip Sexy em Caixa 5186 Sexy Fantasy','&lt;p&gt;O Mini Baralho STRIP SEXY, foi criado para aguçar ainda mais a sua relação! Coloque uma boa música, uma lingerie provocante e faça seu parceiro delirar!!!&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;','','Mini Baralho Strip Sexy em Caixa 5186 Sexy Fantasy','',''),(57,4,'Chaveiro Mini Seio 5205 Sexy Fantasy','&lt;p&gt;Produzidos em plastisol, no tamanho de 5x3 cm.&lt;/p&gt;&lt;p&gt;Embalagem: Blister PET com cartela.&lt;/p&gt;','','Chaveiro Mini Seio 5205 Sexy Fantasy','',''),(58,4,'Dado Posições Gay 5015 Sexy Fantasy','&lt;div&gt;Jogo para adultos.&lt;/div&gt;&lt;div&gt;Contém 01 cubo impresso com desenhos de cinco posições sexuais diferentes e um curinga.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Dado Posições Gay 5015 Sexy Fantasy','',''),(59,4,'Dado Posições Hétero Glow Brilha no Escuro 5013 Sexy Fantasy','&lt;p&gt;Jogo para adultos.&lt;/p&gt;&lt;p&gt;Contém 01 cubo impresso com desenhos de cinco posições sexuais diferentes e um curinga.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Embalagem: Saco PP 88 cm com encarte.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Observação: Brilha no escuro.&lt;/p&gt;','','Dado Posições Hétero Glow Brilha no Escuro 5013 Sexy Fantasy','',''),(61,4,'Dado Posições Lesbicas 5016 Sexy Fantasy','&lt;p&gt;Jogo para adultos.&lt;/p&gt;&lt;p&gt;Contém 01 cubo impresso com desenhos de cinco posições sexuais diferentes e um curinga.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;','','Dado Posições Lesbicas 5016 Sexy Fantasy','',''),(62,4,'Capa Expansora Com Estimulador 13 Cm 2450 Sexy Fantasy','&lt;p&gt;Ajusta-se a qualquer tamanho de pênis para proporcionar intenso prazer e excitação. Auxilia também no aumento e rigidez do pênis. Produto macio, possui textura massageadora para garantir um clímax vibrante e intenso durante a relação. Fabricado em elastômero atóxico, expande em comprimento e largura. Suave, preserva o toque natural. Possuem nódulos que garantem extrema excitação. Para melhor desempenho do produto, utilize lubrificante a base de água. E lembre-se: higienize sempre sua peça antes e após o uso com SEXClean - Higienizador de brinquedos Eróticos.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;','','Capa Expansora Com Estimulador 13 Cm 2450 Sexy Fantasy','',''),(63,4,'Dado Striper Tease Para Casal 3 unidades 5060 Sexy Fantasy','&lt;p&gt;Jogo para adultos.&lt;/p&gt;&lt;p&gt;Contém 03 cubos impressos, sendo um com peças masculinas: cueca, camisa, calça, sapato, casaco e você decide; um com peças femininas: calcinha, soutien, sapato, saia, calça e blusa; e outro com as ações.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;','','Dado Striper Tease Para Casal 3 unidades 5060 Sexy Fantasy','',''),(64,4,'Capa Para Dedos Circulos 5612 Sexy Fantasy','&lt;p&gt;Capa em silicone atóxico.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Estimula o canal vaginal.&lt;/p&gt;&lt;p&gt;Dando muito mais prazer em seus relacionamentos e orgasmos incríveis.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Atenção: Este material não substitui o preservativo.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lavar antes e após o manuseio com água e sabão neutro.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cores variadas, enviadas conforme estoque.&lt;/p&gt;&lt;p&gt;Não compartilhe deste produto com outros parceiros.&lt;/p&gt;','','Capa Para Dedos Circulos 5612 Sexy Fantasy','',''),(65,4,'Capa para Língua 5605 Sexy Fantasy','&lt;p&gt;Capa excitante para língua com bolinhas massageadoras na parte superior para você provocar orgasmos inesquecíveis e intensificar o prazer do sexo oral..&lt;/p&gt;&lt;p&gt;Em silicone gel de alta qualidade.(Apenas para prazer, não protege contra microrganismos).&lt;/p&gt;&lt;p&gt;Cores sortidas.&lt;/p&gt;&lt;p&gt;Possui elástico para fixação na posição da boca.&lt;/p&gt;','','Capa para Língua 5605 Sexy Fantasy','',''),(66,4,'Capa Peniana 17,5 x 4,2cm 1925B Sexy Fantasy','&lt;p&gt;Capa oca para o pênis, acompanha cinta elástica para possibilitar a utilização em ambos os sexos.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Medidas: 17,5 x 4,2cm&lt;/p&gt;&lt;p&gt;Embalagem: blister PET com cartela.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Capa Peniana 17,5 x 4,2cm 1925B Sexy Fantasy','',''),(67,4,'Capa Peniana 20 x 5cm 1930B Sexy Fantasy','&lt;p&gt;Capa oca para o pênis, acompanha cinta elástica para possibilitar a utilização em ambos os sexos.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Medidas: 20 x 5cm&lt;/p&gt;&lt;p&gt;Embalagem: blister PET com cartela.&lt;/p&gt;','','Capa Peniana 20 x 5cm 1930B Sexy Fantasy','',''),(68,4,'Capa Peniana C/ Vibro Go Hard BI026204 Sexy Fantasy','&lt;p&gt;Capa peniana com vibrador e saliências estimuladoras em silicone. Super elástica e moderna é desenvolvida com material de altíssima qualidade e seu vibro fica em contato direto com o clitóris. &amp;nbsp;Se entregue ao prazer sem limites!&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Cor: Pele.&lt;/p&gt;&lt;p&gt;Medidas: 13 x 3,5 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Pilhas: Utiliza 3 baterias LR44, já inclusas.&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Capa Peniana C/ Vibro Go Hard BI026204 Sexy Fantasy','',''),(69,4,'Capa Peniana CyberSkin Linha Extreme 12X2 BI-016001F Sexy Fantasy','&lt;p&gt;Capa peniana com saliências estimuladoras em CyberSkin. Super elástica e moderna é desenvolvida com material de altíssima qualidade. &amp;nbsp;Se entregue ao prazer sem limites! &amp;nbsp;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Cor: Pele.&lt;/p&gt;&lt;p&gt;Medidas: 12 x 2 cm&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada.&lt;/p&gt;','','Capa Peniana CyberSkin Linha Extreme 12X2 BI-016001F Sexy Fantasy','',''),(70,4,'Conjunto Estimulador Ponto G 5611 Sexy Fantasy','&lt;p&gt;Ideal para massagens sensuais e eróticas. Enlouqueça seu (a) parceiro (a) e esquente ainda mais sua relação!&lt;/p&gt;&lt;p&gt;Dica: Como encontrar o Ponto G , Em primeiro lugar a mulher deve estar bem relaxada para que as paredes vaginais fiquem muito bem lubrificadas. Isso fará com que o ponto G fique inchado, cheio de sangue e portanto mais sensível e proeminente. O ponto poderá então ser identificado como uma pequena saliência enrugada, quase sempre com o diâmetro semelhante ao de uma moeda de 5 centavos, localizada embaixo do osso púbico, na parede frontal interna da vagina. Com a mulher deitada de frente poder-se-á penetrá-la com o dedo médio e a palma da mão virada para cima: a ponta do seu dedo deverá então estar tocando o Ponto G, onde sentirá ser uma área mais rugosa ou áspera que o normal, podendo vir a ser duro também devido à excitação feminina.&lt;/p&gt;&lt;p&gt;Tamanho: 9cm&lt;/p&gt;&lt;p&gt;Embalagem: Blister individual.&lt;/p&gt;','','Conjunto Estimulador Ponto G 5611 Sexy Fantasy','',''),(71,4,'Kit Dedeira Camisinha Para Dedo 5219 Sexy Fantasy','&lt;p&gt;Mini camisinha para dedo. Cada embalagem vem com 3 unidades para usar como a imaginação mandar!&lt;/p&gt;&lt;p&gt;Embalagem: Saco plástico PP com solapa.&lt;/p&gt;','','Kit Dedeira Camisinha Para Dedo 5219 Sexy Fantasy','',''),(72,4,'Cinto Duplo Em Couro Sintético c/ 2 Pênis Realísticos 6026 Sexy Fantasy','&lt;p&gt;Os Cintos em Couro Sintéticos são desenvolvidos para casais que buscam apimentar a relação e provar novas sensações! Cinto duplo em couro sintético com elásticos fixos, para utilização com pênis realístico.&lt;/p&gt;&lt;p&gt;Acompanha:&lt;/p&gt;&lt;p&gt;1 Pênis Realístico 15,5 x 3,8 cm;&lt;/p&gt;&lt;p&gt;1 Pênis Realístico 11,7 x 3,1 cm;&lt;/p&gt;&lt;p&gt;Orifício: 3,5 cm de diâmetro&lt;/p&gt;&lt;p&gt;Material: Couro sintético&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Cinto Duplo Em Couro Sintético c/ 2 Pênis Realísticos 6026 Sexy Fantasy','',''),(73,4,'Cinto Em Couro c/ Pênis Realístico 14,5x4cm 6015 Sexy Fantasy','&lt;p&gt;Os Cintos em Couro Sintéticos são desenvolvidos para casais que buscam apimentar a relação e provar novas sensações! Cinto duplo em couro sintético com elásticos fixos, para utilização com pênis realístico.&lt;/p&gt;&lt;p&gt;Acompanha:&lt;/p&gt;&lt;p&gt;1 Pênis Realístico 14,5 x 4 cm;&lt;/p&gt;&lt;p&gt;Orifício: 3,5 cm de diâmetro.&lt;/p&gt;&lt;p&gt;Material: Couro sintético.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Cinto Em Couro c/ Pênis Realístico 14,5x4cm 6015 Sexy Fantasy','',''),(75,4,'Bomba Peniana Manual com Anel Masturbador BB003 Importação','&lt;p&gt;Bomba peniana com sistema de alavanca, mangueira flexível e vagina em Cyberskin Produto: 25 cm (tubo) Diâmetro: 7 cm Penetráveis: 23 cm &amp;nbsp;Material: ABS e Cyberskin&lt;br&gt;&lt;/p&gt;','','Bomba Peniana Manual com Anel Masturbador BB003 Importação','',''),(76,4,'Mini Trufa Vagina KTB13 Importação','&lt;p&gt;Mini trufa vagina presenteie seus amigos com muito bom humor com essa trufa de borracha em formato de vagina.&lt;/p&gt;&lt;p&gt;Material: Polivinílico atóxico.&lt;/p&gt;&lt;p&gt;Embalagem: Saco Plástico.&lt;/p&gt;&lt;p&gt;Validade: Indeterminado.&lt;/p&gt;','','Mini Trufa Vagina KTB13 Importação','',''),(77,4,'Desenvolvedor Bomba Peniana Manual 3581 Sexy Fantasy','&lt;p&gt;Bomba peniana com sistema de alavanca, mangueira flexível e vagina em Cyberskin Produto: 25 cm (tubo) Diâmetro: 7 cm Penetráveis: 23 cm &amp;nbsp;Material: ABS e Cyberskin&lt;/p&gt;&lt;p&gt;Desenvolvido para homens que buscam soluções para incômodos de ereção, ejaculação precoce e aumento do pênis. A médio prazo, seguindo corretamente as instruções de uso, o pênis poderá aumentar significamente, e os problemas de ereção e ejaculação precoce serão amenizados de forma substancial.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Composto por uma luva cilíndrica plástica transparente e um anel de vedação, completam o conjunto uma mangueira de látex e uma seringa, que são utilizados para realizar o processo de sucção. Instruções de uso: Utilize um lubrificante à base d?água na área ao redor do pênis e no anel de vedação no final do cilindro.&amp;nbsp;&lt;/p&gt;&lt;p&gt;O lubrificante auxiliará a inserção do pênis, e ajudará a vedar o anel de silicone.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Coloque o pênis ainda em estado de descanso, pressione a luva cilíndrica contra seu corpo e certifique-se que está bem vedado.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Coloque o dedo sobre a válvula, e com a outra mão, retire o ar do cilindro através do movimento de sucção.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Defina o ritmo de bombeamento.(Sugerimos iniciar com 5 bombeamentos de forma ininterruptas, e aumentar de forma gradual conforme a necessidade, o importante é após o bombeamento, soltar rapidamente o ar que está na luva cilíndrica , este movimento é a base para obtenção dos melhores resultados para este acessório).&amp;nbsp;&lt;/p&gt;&lt;p&gt;Uma certa quantidade de tração ou tensão, será normal enquanto bombear. Portanto, você não poderá sentir dor.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Se estiver sentindo dor, pare o bombeamento e solte o dedo da válvula.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Se a finalidade é obter ereção, não há necessidade de continuar a bombear depois de mantido o estado de ereção.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Faça o exercício de 5 a 10 minutos por dia no primeiro mês de uso. No segundo mês, em dias alternados de 6 a 12 minutos. No terceiro mês em diante, apenas uma vez por semana. Não usar por tempo superior a 15 minutos. Se houver irritações ou sentir dor interrompa o uso. Acessório de uso pessoal e intransferível. Guardar em local arejado e não expor ao sol.&lt;/p&gt;','','Desenvolvedor Bomba Peniana Manual 3581 Sexy Fantasy','',''),(78,4,'Pintinho Pula Pula a Corda GTR Fantasias','&lt;div&gt;Jolly Pecker, pintinho pula pula.&lt;/div&gt;&lt;div&gt;De corda nele e de muita risada ......ele sai saltitando como se fosse um pintinho mesmo .....só falta piar!!!&lt;/div&gt;&lt;div&gt;Divertido para presentear e sacanear alguém!&lt;/div&gt;','','Pintinho Pula Pula a Corda GTR Fantasias','',''),(79,4,'Pintômetro (Medidor de Pênis) Use &amp; Abuse','&lt;p&gt;Régua para medir tamanho pênis.&lt;/p&gt;&lt;p&gt;Para tirar definitivamente as dúvidas em relação ao tamanho do pênis a ser avaliado, uma régua que mede o tamanho do pênis.&amp;nbsp;&lt;/p&gt;','','Pintômetro (Medidor de Pênis) Use &amp; Abuse','',''),(80,4,'Saquinho para Bolinha Importação','&lt;p&gt;Saquinho para embalar bolinhas.&lt;br&gt;&lt;/p&gt;','','Saquinho para Bolinha Importação','',''),(81,4,'Higienizador Para Protese Max Clean 120g L124 La Pimienta','&lt;p&gt;Higienizador Max Clean: Com ação bactericida e fungicida que proporciona mais higiene e segurança no uso de brinquedos eróticos.&lt;/p&gt;&lt;p&gt;Modo de Usar: Deve ser usado antes e depois do uso. Aplique sobre o produto distribuindo o gel uniformemente.&lt;/p&gt;','','Higienizador Para Protese Max Clean 120g L124 La Pimienta','',''),(82,4,'Sex Clean Gel Higienizador de Produtos Eróticos 4619 Sexy Fantasy','&lt;p&gt;O gel higienizador Sex Clean é a maneira mais rápida e prática de se higienizar qualquer brinquedo erótico e deve ser utilizado sempre antes e após o uso dos mesmos.&lt;/p&gt;&lt;p&gt;Possui como ingrediente ativo Álcool 70, que é o responsável pela higienização.&lt;/p&gt;&lt;p&gt;O gel age imediatamente após a aplicação.&lt;/p&gt;&lt;p&gt;Possui uma agradável e perfumada fragrância de Lavanda.&lt;/p&gt;&lt;p&gt;Frasco com 60ml.&lt;/p&gt;&lt;p&gt;Embalagem: frasco com bico aplicador.&lt;/p&gt;','','Sex Clean Gel Higienizador de Produtos Eróticos 4619 Sexy Fantasy','',''),(83,4,'Kit Sensual Eu Você LY208 Love Yes','&lt;p&gt;Conheça o Kit Sensual EU &amp;amp; VC da love yes.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém os seguintes itens :&lt;/p&gt;&lt;p&gt;01 Gel Comestível Morango 10ml.&lt;/p&gt;&lt;p&gt;01 Raspadinha sensual.&lt;/p&gt;&lt;p&gt;02 Velas de coração.&lt;/p&gt;&lt;p&gt;01 Fita para prender o seu amor.&lt;/p&gt;&lt;p&gt;01 Saquinho de Pétalas aromatizadas.&lt;/p&gt;&lt;p&gt;Imagem meramente ilustrativa.&lt;/p&gt;&lt;p&gt;Algumas das embalagens podem sofrer alterações pelo fornecedor, sem haver tempo hábil para ser atualizado em nosso site, porém, garantimos que as características do produto (quantidade, peso, matéria prima e funções) não serão alteradas.&lt;/p&gt;','','Kit Sensual Eu Você LY208 Love Yes','',''),(84,4,'Anel Peniano com Vibro Sexy Fantasy','&lt;p&gt;Anel peniano feito em material super macio com estimulador clitoriano em formato de bichinhos.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Vem com um mini cápsula vibratória que estimula o clítoris ao mesmo tempo que auxilia a manter a ereção.&lt;/p&gt;&lt;p&gt;Também pode ser usado em próteses de borracha.&lt;/p&gt;&lt;p&gt;Baterias já inclusas.&lt;/p&gt;','','Anel Peniano com Vibro Sexy Fantasy','',''),(85,4,'Anel Peniano C/ Vibro e Saliências Massageadoras Transp. AN020 Importação','&lt;p&gt;Anel Peniano com Vibro&lt;/p&gt;&lt;p&gt;Anel peniano com saliências massageadoras formato borboleta, ajuda a manter a ereção, retardar a ejaculação e também permite uma total estimulação do clitóris da mulher durante a relação sexual, contribuindo para atingir o orgasmo facilmente ao mesmo tempo em que estimula o homem. Combinação perfeita para proporcionar intensos orgasmos&lt;/p&gt;&lt;p&gt;IMAGEM ILUSTRATIVA, MODELOS ENVIADOS CONFORME ESTOQUE&lt;/p&gt;','','Anel Peniano C/ Vibro e Saliências Massageadoras Transp. AN020 Importação','',''),(86,4,'Anel Companheiro C/Vibro 1905CB Sexy Fantasy','&lt;p&gt;Anel peniano com aprox. 12,4x3 cm, que facilita a penetração anal. Acompanha cápsula vibratória.&lt;/p&gt;&lt;p&gt;Embalagem: Blister PET com cartela.&lt;/p&gt;','','Anel Companheiro C/Vibro 1905CB Sexy Fantasy','',''),(87,4,'Anel Companheiro 12,4x3cm 1905AB Sexy Fantasy','&lt;p&gt;Super macio, pode ser usado como acessório para vibradores.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Combinação perfeita para proporcionar intensos orgasmos.&lt;/p&gt;&lt;p&gt;Modo de Usar: Lubrifique para facilitar a penetração. Coloque o anel com pênis ereto.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Use preservativo, não compartilhar o uso com terceiros, suspenda o uso em caso de irritação.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não utilizar sobre alergias,ferimentos e inflamações,lubrificar somente com derivados de silicone e lave antes e após o uso com sabão neutro e água morna.&lt;/p&gt;','','Anel Companheiro 12,4x3cm 1905AB Sexy Fantasy','',''),(88,4,'Anel Oriental P/ Estimulador Cores Variadas 2210 Sexy Fantasy','&lt;p&gt;Indicado para massagear e estimular os órgãos sexuais. Fabricado em elastômero atóxico, possui pontas massageadoras nas extremidades, para sensações&amp;nbsp;&lt;/p&gt;&lt;p&gt;de prazer mais intensas. Para melhor desempenho do produto, utilize lubrificante a base d´água.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Cores: Diversas.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha&lt;/p&gt;','','Anel Oriental P/ Estimulador Cores Variadas 2210 Sexy Fantasy','',''),(50,4,'Baralho Kama Sutra Completo  KS008  Adão e Eva','&lt;div&gt;Baralho Kama Sutra com 52 posições&lt;br&gt;&lt;/div&gt;&lt;div&gt;Com nova embalagem e melhor acabamento, o Baralho Kama Sutra da Adão e Eva torna um simples jogo de cartas uma sugestiva partida de novas possibilidades para a relação a dois. São 52 fotos de posições originais do Livro Kama sutra, com nipes e números onde você pode jogar qualquer tipo de jogo de cartas que não precise de Coringa. Feito em papel de ótima qualidade é ideal para dar de presente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Baralho Kama Sutra Completo  KS008  Adão e Eva','',''),(51,4,'Dado Posições Hétero 5010  Sexy Fantasy','&lt;p&gt;Jogo para adultos.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém 01 cubo impresso com desenhos de cinco posições sexuais diferentes e um curinga.&lt;/p&gt;','','Dado Posições Hétero 5010  Sexy Fantasy','',''),(52,4,'Chaveiro Mini Pênis 5204 Sexy Fantasy','&lt;p&gt;Chaveiro mini pênis com escroto 1 unidade, corrente e argola.&lt;/p&gt;&lt;p&gt;Produzidos em plastisol, no tamanho de 5x3 cm.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Embalagem: Blister PET com cartela.&lt;br&gt;&lt;/p&gt;','','Chaveiro Mini Pênis 5204  Sexy Fantasy','',''),(53,4,'Baralho Kama Sutra Gay 54 Cartas SLDBG54 Soft Love','&lt;p&gt;Baralho Kama Sutra gay composto por 54 cartas com imagens de sexo explícito. Pode ser usado em todos os tipos de jogos de carta, pois possui todos os números, letras e naipes de um baralho tradicional.&lt;/p&gt;&lt;p&gt;Dimensões: As cartas medem 8,7 cm de comprimento por 6,3 cm de largura. Medidas aproximadas.&lt;/p&gt;&lt;p&gt;Cuidados: Não molhar, dobrar ou amassar as cartas.&lt;/p&gt;','','Baralho Kama Sutra Gay 54 Cartas SLDBG54 Soft Love','',''),(54,4,'Baralho Kama Sutra Lesbian 54 Cartas SLDBL54 Soft Love','&lt;p&gt;Baralho Kama Sutra Lesbian composto por 54 cartas com imagens de sexo explícito. Pode ser usado em todos os tipos de jogos de carta, pois possui&amp;nbsp;&lt;/p&gt;&lt;p&gt;todos os números, letras e naipes de um baralho tradicional.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Dimensões: As cartas medem 8,7 cm de comprimento por 6,3 cm de largura. Medidas aproximadas.&lt;/p&gt;&lt;p&gt;Cuidados: Não molhar, dobrar ou amassar as cartas.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Baralho Kama Sutra Lesbian 54 Cartas SLDBL54 Soft Love','',''),(55,4,'Baralho Kama Sutra Transexual 54 Cartas Soft Love','&lt;p&gt;Baralho Kama Sutra Transexual composto por 54 cartas com imagens de sexo explícito. Pode ser usado em todos os tipos de jogos de carta, pois possui todos os números, letras e naipes de um baralho tradicional.&lt;/p&gt;&lt;p&gt;Dimensões: As cartas medem 8,7 cm de comprimento por 6,3 cm de largura. Medidas aproximadas.&lt;/p&gt;&lt;p&gt;Cuidados: Não molhar, dobrar ou amassar as cartas.&lt;/p&gt;','','Baralho Kama Sutra Transexual 54 Cartas Soft Love','',''),(93,4,'Kit Para banho Oriental 5pç PK808 Kgel','&lt;p&gt;Kit &amp;nbsp;para banho oriental. Composto por:&amp;nbsp;&lt;/p&gt;&lt;p&gt;1 frasco de sais de banho&lt;/p&gt;&lt;p&gt;1 frasco de espuma de banho&lt;/p&gt;&lt;p&gt;1 frasco de óleo bifásico&lt;/p&gt;&lt;p&gt;1 frasco de shampoo&lt;/p&gt;&lt;p&gt;1 frasco de condicionador&lt;/p&gt;&lt;p&gt;Alta qualidade Kgel&lt;/p&gt;&lt;p&gt;Validade: 36 meses da data de fabricação&lt;/p&gt;&lt;p&gt;Embalagem: 30ml cada&amp;nbsp;&lt;/p&gt;&lt;p&gt;Produto notificado junto a ANVISA.&lt;/p&gt;','','Kit Para banho Oriental 5pç PK808 Kgel','',''),(94,4,'Espuma de Banho Tutti Frutti 110ml L067 La Pimienta','&lt;p&gt;Espuma de Banho : Hidratante, perfumado, delicioso e cheio de espuma! Para um banho cheio de sedução.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de Usar. &amp;nbsp;&lt;/p&gt;&lt;p&gt;No Chuveiro: Aplique em uma esponja e espalhe pelo corpo todo, enxaguando em seguida.&lt;/p&gt;&lt;p&gt;Na Banheira: Dissolva uma pequena quantidade e agite até obter a espuma desejada.&lt;/p&gt;&lt;p&gt;Contém: 110ml&lt;/p&gt;','','Espuma de Banho Tutti Frutti 110ml L067 La Pimienta','',''),(95,4,'Sabonete Líquido Feminino  200ml Aromas Variados Fashion','&lt;p&gt;Sabonete líquido feminino elaborado com extratos de Barbatimão, Aroeira, Malva e Aloe Vera,&lt;/p&gt;&lt;p&gt;oferece uma higiene prolongada e uma agradável sensação de frescor e bem estar, higiene e proteção todos os dias.&lt;/p&gt;&lt;p&gt;Contém 200ml&lt;/p&gt;','','Sabonete Líquido Feminino  200ml Aromas Variados Fashion','',''),(96,4,'Sabonete Intimo 220ml Morango 11 Apinil','&lt;p&gt;Sabonete íntimo Apinil foi desenvolvido para a sua higiene pessoal.&lt;/p&gt;&lt;p&gt;Sua formulação é delicada e confortante, além da fragrância suave.&lt;/p&gt;','','Sabonete Intimo 220ml Morango 11 Apinil','',''),(97,4,'Sabonete Intimo 220ml Menta - 10 - Apinil','&lt;p&gt;O sabonete íntimo Apinil foi desenvolvido para a sua higiene pessoal.&lt;/p&gt;&lt;p&gt;Sua formulação é delicada e confortante, além da fragrância suave.&lt;/p&gt;','','Sabonete Intimo 220ml Menta - 10 - Apinil','',''),(98,4,'Sais de Banho Morango 120g L055 La Pimienta','&lt;p&gt;Hidratante, esfoliante e perfumado, ideal para usar em banheiras. Trás sensação de fresco e hidratação na pele pós banho.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de Usar. Encher a banheira, despejar o produto e ligar a hidromassagem para causar o efeito de tratamento, esfoliante e relaxamento.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém: 120g&lt;/p&gt;','','Sais de Banho Morango 120g L055 La Pimienta','',''),(99,4,'Vela Decorativa em Formato de Morango com 6 unid LY205 Love Yes','&lt;p&gt;Vela decorativa perfumada em formato de Morango.&lt;/p&gt;&lt;p&gt;Um ambiente para ser romântico de verdade tem que ter velas. Se as velas forem perfumadas é ainda melhor! Mas se elas são perfumadas e flutuam sobre &lt;/p&gt;&lt;p&gt;a água... É perfeito!!! Surpreenda seu parceiro(a) com uma noite pra lá de sensual e romântica.&lt;/p&gt;&lt;p&gt;Modo de usar: Acenda o pavio. Use em decorações de ambientes.&amp;nbsp;&lt;/p&gt;','','Vela Decorativa em Formato de Morango com 6 unid LY205 Love Yes','',''),(100,4,'Vela Decorativa em Formato de Rosa com 6 unid LY206 Love Yes','&lt;p&gt;Vela decorativa perfumada em formato de Rosa.&lt;/p&gt;&lt;p&gt;Um ambiente para ser romântico de verdade tem que ter velas. Se as velas forem perfumadas é ainda melhor! Mas se elas são perfumadas e flutuam sobre&amp;nbsp;&lt;/p&gt;&lt;p&gt;a água... É perfeito!!! Surpreenda seu parceiro(a) com uma noite pra lá de sensual e romântica.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modo de usar: Acenda o pavio. Use em decorações de ambientes.&amp;nbsp;&lt;/p&gt;','','Vela Decorativa em Formato de Rosa com 6 unid LY206 Love Yes','',''),(101,4,'Sticker Comestivel Adesivo Cupido Chocolate 105423 Sexy Fantasy','&lt;p&gt;Os Stickers Ai, Delícia são adesivos decorativos para a aplicação sobre a pele e foram desenvolvidos para serem utilizados como uma fantasia sensual. Se dissolvem com o calor e com a umidade.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais, portanto não provoca quaisquer danos em caso de ingestão.&lt;/p&gt;&lt;p&gt;Contém: 12 adesivos em formato de coração, sabor chocolate.&lt;/p&gt;&lt;p&gt;Especificações: Tamanho único.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do gel, cole o adesivo.&lt;/p&gt;&lt;p&gt;BEIJÁVEL.&lt;/p&gt;','','Sticker Comestivel Adesivo Cupido Chocolate 105423 Sexy Fantasy','',''),(102,4,'Sticker Comestivel Adesivo Cupido Menta 105423 Sexy Fantasy','&lt;p&gt;Os Stickers Ai, Delícia são adesivos decorativos para a aplicação sobre a pele e foram desenvolvidos para serem utilizados como uma fantasia sensual. Se dissolvem com o calor e com a umidade.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais, portanto não provoca quaisquer danos em caso de ingestão.&lt;/p&gt;&lt;p&gt;Contém: 12 adesivos em formato de coração com sabor menta.&lt;/p&gt;&lt;p&gt;Especificações: Tamanho único.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do gel, cole o adesivo.&lt;/p&gt;&lt;p&gt;BEIJÁVEL.&lt;/p&gt;','','Sticker Comestivel Adesivo Cupido Menta 105423 Sexy Fantasy','',''),(103,4,'Sticker Comestivel Adesivo Cupido Uva 105423 Sexy Fantasy','&lt;p&gt;Os Stickers Ai, Delícia são adesivos decorativos para a aplicação sobre a pele e foram desenvolvidos para serem utilizados como uma fantasia sensual. Se dissolvem com o calor e com a umidade.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais, portanto não provoca quaisquer danos em caso de ingestão.&lt;/p&gt;&lt;p&gt;Contém: 12 adesivos em formato de coração com sabor uva.&lt;/p&gt;&lt;p&gt;Especificações: Tamanho único.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do gel, cole o adesivo.&lt;/p&gt;&lt;p&gt;BEIJÁVEL.&lt;/p&gt;','','Sticker Comestivel Adesivo Cupido Uva 105423 Sexy Fantasy','',''),(104,4,'Sticker Comestivel Adesivo Sinalizador Chocolate 105424 Sexy Fantasy','&lt;p&gt;Os Stickers Ai, Delícia são adesivos decorativos para a aplicação sobre a pele e foram desenvolvidos para serem utilizados como uma fantasia sensual. Se dissolvem com o calor e com a umidade.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos&amp;nbsp;&lt;/p&gt;&lt;p&gt;líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais,&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;portanto não provoca quaisquer danos em caso de ingestão.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Contém: 12 adesivos em formato de setas com sabor chocolate.&lt;/p&gt;&lt;p&gt;Especificações: Tamanho único.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel, cole o adesivo.&lt;br&gt;&lt;/p&gt;','','Sticker Comestivel Adesivo Sinalizador Chocolate 105424 Sexy Fantasy','',''),(105,4,'Sticker Comestivel Adesivo Sinalizador Uva 105424 Sexy Fantasy','&lt;p&gt;Os Stickers Ai, Delícia são adesivos decorativos para a aplicação sobre a pele e foram desenvolvidos para serem utilizados como uma fantasia&amp;nbsp;&lt;/p&gt;&lt;p&gt;sensual. Se dissolvem com o calor e com a umidade.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos&amp;nbsp;&lt;/p&gt;&lt;p&gt;líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais,&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;portanto não provoca quaisquer danos em caso de ingestão.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Contém: 12 adesivos em formato de setas com sabor de uva.&lt;/p&gt;&lt;p&gt;Especificações: Tamanho único.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel, cole o adesivo.&lt;br&gt;&lt;/p&gt;&lt;p&gt;BEIJÁVEL.&lt;/p&gt;','','Sticker Comestivel Adesivo Sinalizador Uva 105424 Sexy Fantasy','',''),(106,4,'Calcinha Comestível Ai, Delícia sabores variados Sexy Fantasy','&lt;p&gt;Ai, Delícia!&lt;/p&gt;&lt;p&gt;Para a mulher sedutora e ousada.&lt;/p&gt;&lt;p&gt;Calcinha produzida em gelatina solúvel, com aromas e sabores deliciosos! Tamanho único, com tiras ajustáveis que vestem manequins do P ao G.&lt;/p&gt;&lt;p&gt;Sabores variados.&lt;/p&gt;','','Calcinha Comestível Ai, Delícia sabores variados Sexy Fantasy','',''),(107,4,'Capinha Peniana Comestível Sabor Chocolate 105436 Sexy Fantasy','&lt;p&gt;A Capa Peniana Solúvel da linha Ai, Delícia foi desenvolvida para ser usada como uma fantasia sensual que se dissolve com o umedecimento.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, adoçante dietético, água e açúcar. Contém edulcorantes artificiais, sulcarose e acesulfame-k, extratos&amp;nbsp;&lt;/p&gt;&lt;p&gt;líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto, por ter denominação solúvel, não possui características&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;nutricionais e, em caso de ingestão não provoca danos.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Capinha Peniana Comestível Sabor Chocolate 105436 Sexy Fantasy','',''),(108,4,'Capinha Peniana Comestível Sabor Menta 105437 Sexy Fantasy','&lt;p&gt;A Capa Peniana Solúvel da linha Ai, Delícia foi desenvolvida para ser usada como uma fantasia sensual que se dissolve com o umedecimento.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, adoçante dietético, água e açúcar. Contém edulcorantes artificiais, sulcarose e acesulfame-k, extratos&amp;nbsp;&lt;/p&gt;&lt;p&gt;líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto, por ter denominação solúvel, não possui características&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;nutricionais e, em caso de ingestão não provoca danos.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Capinha Peniana Comestível Sabor Menta 105437 Sexy Fantasy','',''),(109,4,'Capinha Peniana Comestível Sabor Morango 105435 Sexy Fantasy','&lt;p&gt;A Capa Peniana Solúvel da linha Ai, Delícia foi desenvolvida para ser usada como uma fantasia sensual que se dissolve com o umedecimento.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, adoçante dietético, água e açúcar. Contém edulcorantes artificiais, sulcarose e acesulfame-k, extratos&amp;nbsp;&lt;/p&gt;&lt;p&gt;líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto, por ter denominação solúvel, não possui características&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;nutricionais e, em caso de ingestão não provoca danos.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Capinha Peniana Comestível Sabor Morango 105435 Sexy Fantasy','',''),(110,4,'Gel Comestível Black Ice 30ml SLIBI30 Soft Love','&lt;p&gt;Gel Ice Comestível com aromas variados, semelhante ao aroma extra forte usado em balas de alta refrescância.&lt;/p&gt;&lt;p&gt;Modo de Usar: Colocar a quantidade desejada na ponta dos dedos e aplicar no local, massageando delicadamente.&lt;/p&gt;&lt;p&gt;Contém 30ml&lt;br&gt;&lt;/p&gt;','','Gel Comestível Black Ice 30ml SLIBI30 Soft Love','',''),(276,4,'Gel Comestivel Sabor uva Love Sex','&lt;p&gt;O gel térmico Love Sex possui características marcantes que vão torna o prazer da sua relação muito mais excitante, seu aquecimento se dá quando o&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel térmico entra em contato com a pele e basta um leve sopro para que seu parceiro(a) vá ao delírio com uma sensação de aquecimento super excitante.&lt;/p&gt;','','Gel Comestivel Sabor uva Love Sex','',''),(112,4,'Gel Vibrante Vibroquete Menta 12ml HC460 Hot Flowers','&lt;p&gt;Excitante unissex,proporciona ao seu parceiro intensas sensações de vibração no sexo oral.&lt;/p&gt;&lt;p&gt;Aplique uma quantidade generosa na região íntima e em contato com a boca causa uma leve sensação parecida com pequenos choques.&lt;/p&gt;&lt;p&gt;Produto unissex.&lt;/p&gt;&lt;p&gt;Conteúdo 12ml.&lt;/p&gt;','','Gel Vibrante Vibroquete Menta 12ml HC460 Hot Flowers','',''),(113,4,'Gel Vibrante Vibroquete Morango 12ml HC459 Hot Flowers','&lt;p&gt;Excitante unissex,proporciona ao seu parceiro intensas sensações de vibração no sexo oral.&lt;/p&gt;&lt;p&gt;Aplique uma quantidade generosa na região íntima e em contato com a boca causa uma leve sensação parecida com pequenos choques.&lt;/p&gt;&lt;p&gt;Produto unissex.&lt;/p&gt;&lt;p&gt;Conteúdo 12ml.&lt;/p&gt;','','Gel Vibrante Vibroquete Morango 12ml HC459 Hot Flowers','',''),(114,4,'Lâmina Hortelã Fresh','&lt;p&gt;A Lâmina Refrescante FRESH MAIS é a nova sensação em pastilhas refrescante &quot;SUGAR FREE&quot;, dissolve instantaneamente em contato com a umidade bucal,&amp;nbsp;&lt;/p&gt;&lt;p&gt;proporcionando 20 minutos de hálito fresco.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Ideal para a pratica do Sexo Oral.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A Lâmina Refrescante FRESH MAIS é discreto, prático e age rapidamente.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém 16 lâminas em cada Blister.&lt;/p&gt;','','Lâmina Hortelã Fresh','',''),(115,4,'Lâmina Morango Leppin Heavy Fresh','&lt;p&gt;A Lâmina Refrescante FRESH MAIS é a nova sensação em pastilhas refrescante &quot;SUGAR FREE&quot;, dissolve instantaneamente em contato com a umidade bucal,&amp;nbsp;&lt;/p&gt;&lt;p&gt;proporcionando 20 minutos de hálito fresco.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Ideal para a pratica do Sexo Oral.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A Lâmina Refrescante FRESH MAIS é discreto, prático e age rapidamente.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém 16 lâminas em cada Blister.&lt;/p&gt;','','Lâmina Morango Leppin Heavy Fresh','',''),(116,4,'Lâmina Paper Mint Menta Danilla','&lt;p&gt;A Lâmina Refrescante é a nova sensação em pastilhas refrescante, dissolve instantaneamente em contato com a umidade bucal,&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ideal para a pratica do Sexo Oral.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A Lâmina Refrescante e discreto, prático e age rapidamente.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém 20 lâminas em cada Blister.&lt;/p&gt;','','Lâmina Paper Mint Menta Danilla','',''),(118,4,'Chup Chup Bala Efervescente Menta 36g 7014 Sexy Fantasy','&lt;p&gt;A bala efervescente Chup Chup, da nova linha Sexy Imagination, possui uma deliciosa fórmula, funcionando como uma ferramenta para turbinar o sexo&amp;nbsp;&lt;/p&gt;&lt;p&gt;oral, em contato com a saliva proporciona uma deliciosa sensação de sabores, suas bolinhas funcionam como um massageador, proporcionando momentos&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;únicos de prazer. Solte a imaginação e inove na relação.&lt;br&gt;&lt;/p&gt;','','Chup Chup Bala Efervescente Menta 36g 7014 Sexy Fantasy','',''),(119,4,'Chup Chup Bala Efervescente Morango 36g 7012 Sexy Fantasy','&lt;p&gt;A bala efervescente Chup Chup, da nova linha Sexy Imagination, possui uma deliciosa fórmula, funcionando como uma ferramenta para turbinar o sexo&amp;nbsp;&lt;/p&gt;&lt;p&gt;oral, em contato com a saliva proporciona uma deliciosa sensação de sabores, suas bolinhas funcionam como um massageador, proporcionando momentos&amp;nbsp;&lt;/p&gt;&lt;p&gt;únicos de prazer. Solte a imaginação e inove na relação,&lt;br&gt;&lt;/p&gt;','','Chup Chup Bala Efervescente Morango 36g 7012 Sexy Fantasy','',''),(120,4,'Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','&lt;p&gt;O sexo oral pode ficar ainda mais excitante e surpreendente!&lt;/p&gt;&lt;p&gt;Garganta Profunda é o lançamento exclusivo da Adão e Eva, sucesso absoluto de vendas no ano de 2015.&lt;/p&gt;&lt;p&gt;Nos sabores Menta Ice e Morango, esse gel comestível eletrizante une duas funções perfeitas para um sexo oral inesquecível: a refrescância da menta&amp;nbsp;&lt;/p&gt;&lt;p&gt;e a sensação eletrizante única do Jambú, Spilanthes oleracea ou Acnella oleracea.&lt;br&gt;&lt;/p&gt;&lt;p&gt;O produto deixa uma sensação muito refrescante na boca, que é repassada para os órgãos genitais, ao mesmo tempo em que &amp;nbsp;o efeito do Jambú entra em&amp;nbsp;&lt;/p&gt;&lt;p&gt;ação, dando uma sensação de formigamento deliciosa! Para intensificar o frescor, a dica é a de sempre: sopre &amp;nbsp;a região e leve seu parceiro (a) ao&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;êxtase de tanto prazer!&lt;br&gt;&lt;/p&gt;&lt;p&gt;Experimente! Vocês vão se deliciar com esta novidade! Surpreenda seu amor com um sexo oral inesquecível!&lt;/p&gt;&lt;p&gt;Contém 15 g&lt;/p&gt;&lt;p&gt;Modo de usar: Com o pênis ereto, aplique uma quantidade generosa do gel garganta profunda produto espalhando suavemente antes de retirar com a&amp;nbsp;&lt;/p&gt;&lt;p&gt;língua. Proceda da mesma forma com o clitóris. Aplique também nos lábios e na língua antes de iniciar o sexo oral. Prepare-se para babar muito...&lt;br&gt;&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Garganta Profunda Strawberry Ice Morango 15g CO271 Adão e Eva','',''),(121,4,'Tapa Sexo Comestível Ai, Delícia Menta 105432 Sexy Fantasy','&lt;p&gt;Tapa Sexo Ai, Delicia são adesivos corporais para aplicação sobre a pele. Foram desenvolvidos para serem usados como uma fantasia sensual. O produto se dissolve com a umidade e o calor.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do gel, cole o adesivo.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais, portanto não provoca quaisquer danos em caso de ingestão.&lt;/p&gt;&lt;p&gt;Validade: 12 meses após a data de fabricação.&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Tapa Sexo Comestível Ai, Delícia Menta 105432 Sexy Fantasy','',''),(122,4,'Tapa Sexo Comestível Ai, Delícia Morango 105430 Sexy Fantasy','&lt;p&gt;Tapa Sexo Ai, Delicia são adesivos corporais para aplicação sobre a pele. Foram desenvolvidos para serem usados como uma fantasia sensual. O produto se dissolve com a umidade e o calor.&lt;/p&gt;&lt;p&gt;Modo de uso: Abrir o sachê que acompanha a embalagem e aplicar o gel comestível sobre a região onde deseja-se fixar o adesivo. Após a aplicação do gel, cole o adesivo.&lt;/p&gt;&lt;p&gt;Composição: Gelatina, amido de milho, água, corante e adoçante dietético. Contém edulcorantes artificiais, sucralose e acesulfame-k, extratos líquidos e aromatizantes. Não contém nutrientes, não contém glúten. Este produto denominado solúvel, não possui características nutricionais, portanto não provoca quaisquer danos em caso de ingestão.&lt;/p&gt;&lt;p&gt;Validade: 12 meses após a data de fabricação.&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Tapa Sexo Comestível Ai, Delícia Morango 105430 Sexy Fantasy','',''),(123,4,'Vela Beijavel Morango C/ Champagne Creme 20g 500 Sexy Fantasy','&lt;p&gt;As velas da Linha Crème da Sexy Fantasy, chegam para proporcionar prazer e satisfação aos seus momentos mais íntimos. Feita com matérias-primas à&amp;nbsp;&lt;/p&gt;&lt;p&gt;base de manteiga e óleos vegetais que hidratam a pele, quando acesa transforma-se em um delicioso óleo para ser espalhado pela pele, perfumando o&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;corpo e o ambiente.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada, coração de acrílico com 20g.&lt;/p&gt;&lt;p&gt;Indicação: Produto unissex.&lt;/p&gt;','','Vela Beijavel Morango C/ Champagne Creme 20g 500 Sexy Fantasy','',''),(124,4,'Vela Hidratante Beijável de Morango 4690 Sexy Fantasy','&lt;p&gt;A Vela Hidratante Beijável de Morango é uma vela sensual para massagem corporal.&lt;/p&gt;&lt;p&gt;É desenvolvida à base de manteigas e óleos vegetais que substituem a tradicional parafina, eliminando o risco de queimaduras e danos.&lt;/p&gt;&lt;p&gt;Ideal para massagens corporais, depois de derretida torna-se um delicioso óleo envolvente.&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;/p&gt;&lt;p&gt;Pote com 35g.&lt;/p&gt;','','Vela Hidratante Beijável de Morango 4690 Sexy Fantasy','',''),(125,4,'Adstrigente Lua de Mel 15g CO036 Adão e Eva','&lt;p&gt;O Lua de Mel foi especialmente desenvolvido para a mulher que deseja surpreender o parceiro. Sua fórmula contrai o local massageado e dá uma&amp;nbsp;&lt;/p&gt;&lt;p&gt;sensação incrível para a relação a dois.&lt;br&gt;&lt;/p&gt;','','Adstrigente Lua de Mel 15g CO036 Adão e Eva','',''),(126,4,'Kit Love Sensations 5 Pomadas de Funções Variadas 104400 Sexy Fantasy','&lt;p&gt;Kit Love Sensations - 5 Pomadas de Funções Variadas&lt;/p&gt;&lt;p&gt;O Reduce é uma pomada de uso feminino com a função de adstringir/reduzir momentaneamente o canal vaginal. Deve ser aplicado 20 minutos antes da&amp;nbsp;&lt;/p&gt;&lt;p&gt;relação sexual.&lt;br&gt;&lt;/p&gt;&lt;p&gt;O Analle é uma pomada de uso unissex que tira a sensibilidade periférica e proporciona uma relação sexual agradável e prazerosa sem desconforto.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Deve-se aplicar o produto e massagear o local durante alguns minutos.&lt;br&gt;&lt;/p&gt;&lt;p&gt;O Retarde é uma pomada de uso masculino, destinado a retardar a ejaculação e prolongar o prazer. Possui dois princípios ativos: óleo de cravo (que&amp;nbsp;&lt;/p&gt;&lt;p&gt;proporciona pequeno amortecimento) e a menta (ajuda no frescor, provocando uma sensação refrescante). Passe na área desejada e massageie durante alguns minutos.&lt;/p&gt;&lt;p&gt;O Tropicale é uma pomada excitante, de uso unissex que tem ação de esquentar e esfriar simultaneamente.&lt;/p&gt;&lt;p&gt;O Ardente é uma pomada de uso feminino. Um excitante super quente que deve ser aplicado sobre o clitóris, provoca uma sensação de calor e intensa e&amp;nbsp;&lt;/p&gt;&lt;p&gt;duradoura, deixando a região híper sensível ao toque.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Conteúdo: 1 pomada de cada função.&lt;/p&gt;&lt;p&gt;Validade: 2 anos.&lt;/p&gt;','','Kit Love Sensations 5 Pomadas de Funções Variadas 104400 Sexy Fantasy','',''),(127,4,'Pomada Adstringente Gota Mágica 7,5G 4414 Sexy Fantasy','&lt;p&gt;Gota Mágica é um adstringente feminino desenvolvido com Extrato de Hamammelis que tem propriedade adstringente, além de ser um excelente lubrificante.&lt;/p&gt;&lt;p&gt;MODO DE USAR: Deve ser aplicado na região de 3 a 5 minutos antes da relação, espalhando e massageando suavemente.&lt;/p&gt;&lt;p&gt;Base siliconada que não sai na água.&lt;/p&gt;','','Pomada Adstringente Gota Mágica 7,5G 4414 Sexy Fantasy','',''),(128,4,'Virginity Hímen Artificial c/ 3 Unid. SLFVY3 Soft Love','&lt;p&gt;Virginity irá fazer você voltar a ser virgem novamente.&lt;/p&gt;&lt;p&gt;Uma na membrana biodegradável que colocada na entrada vaginal, hidrata-se com a própria lubricação da mulher e ao ocorrer à penetração a membrana se&amp;nbsp;&lt;/p&gt;&lt;p&gt;rompe liberando um corante vermelho que imita um sangue comestível.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Embalagem com 03 sachês.&lt;/p&gt;','','Virginity Hímen Artificial c/ 3 Unid. SLFVY3 Soft Love','',''),(129,4,'Anestésico Anal 4x1 Facilit Bisnaga 15ml SLFFT15 Soft Love','&lt;p&gt;Facilit Bisnaga 15ml Soft Love é um Anestésico Anal 4 x 1 - Anestésico, lubrificante, vasodilatador e cicatrizante. Tenha uma relação sem dor.&lt;/p&gt;&lt;p&gt;Modo de Usar: Agite bem antes de usar, aplique a uma distância de 10 cm da pele a quantidade desejada massageando delicadamente.&lt;/p&gt;&lt;p&gt;Contém 15ml.&lt;br&gt;&lt;/p&gt;','','Anestésico Anal 4x1 Facilit Bisnaga 15ml SLFFT15 Soft Love','',''),(130,4,'Anestésico Apollo 6,5g 042 Kalya','&lt;p&gt;Como apimentar a relação? Experimentando desejos secretos.Usando produto erótico para sexo anal,&lt;/p&gt;&lt;p&gt;pode-se conseguir ótimo deslizamento com muito conforto e segurança.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Anestésico Apollo 6,5g 042 Kalya','',''),(131,4,'Anestésico Extra Forte Striper Relaxante Forte Intt','&lt;p&gt;Gel para Massagem Relaxante Extra Forte Striper 8g Intt&lt;/p&gt;&lt;p&gt;O gel para massagem relaxante extra forte Striper é um produto desenvolvido especialmente para ampliar o desejo. Em contato com a pele proporciona&amp;nbsp;&lt;/p&gt;&lt;p&gt;uma agradável e estimulante sensação, que isenta qualquer desconforto.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modo de Usar: Aplicar sobre a pele com a ponta dos dedos massageando delicadamente.&lt;/p&gt;&lt;p&gt;Cuidados: Em caso de irritação, suspender o uso e procurar um médico. Não aplicar o produto na área dos olhos. Manter fora do alcance das crianças.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Conservar em temperatura ambiente.&lt;br&gt;&lt;/p&gt;','','Anestésico Extra Forte Striper Relaxante Forte Intt','',''),(132,4,'Anestésico Facilit LUBY 4Gr SLLFT4 Soft Love','&lt;p&gt;Facilit é um Creme Anestésico Anal 4 x 1, Anestésico, lubrificante, vasodilatador e cicatrizante.Tenha uma relação sem dor.&lt;/p&gt;&lt;p&gt;Contém 4gr.&lt;/p&gt;','','Anestésico Facilit LUBY 4Gr SLLFT4 Soft Love','',''),(133,4,'Bisnaga Anestésico Sensory 10ml 4615 Sexy Fantasy','&lt;p&gt;Sensory Sex é um dessensibilizante com função de diminuir a sensibilidade periférica da região, proporcionando uma relação agradável e prazerosa sem desconforto.&lt;/p&gt;&lt;p&gt;MODO DE USAR: Deve ser aplicado na região de 3 a 5 minutos antes da relação, espalhando e massageando suavemente.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Bisnaga com 10g.&lt;br&gt;&lt;/p&gt;','','Bisnaga Anestésico Sensory 10ml 4615 Sexy Fantasy','',''),(134,4,'Bolinha Func. p/ Sexo Anal Facilit Hot Blackout 2 unid SLSBFFAC8 Soft Love','&lt;p&gt;Indicado para sexo anal sem dor e desconforto. É um poderoso facilitador da penetração nas relações sexuais com penetração profunda.(lubrifica, dilata, anestesia e cicatriza).&lt;/p&gt;&lt;p&gt;Função: Creme anal 4x1 lubrificante, dilatador, anestésico e cicatrizante.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modo de usar: A cápsula gelatinosa de óleo beijável pode ser introduzida na vagina e com a penetração durante o ato sexual estoura liberando o óleo que perfuma, refresca e lubrifica, dando uma sensação maravilhosa para ambos!&lt;br&gt;&lt;/p&gt;&lt;p&gt;Pode se realizar o sexo oral, pois o óleo é beijável.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Observação: Lembrando que o ideal é colocá-la na boca durante as preliminares para amolecer a cápsula, visto que são mais rígidas (duras) que as explosivas.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Composta de gelatina higienizada. Em casos de alergia suspenda o uso e procure um médico.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Precauções: Manter em lugar fresco ao abrigo do calor e da luz intensa.&lt;br&gt;&lt;/p&gt;','','Bolinha Func. p/ Sexo Anal Facilit Hot Blackout 2 unid SLSBFFAC8 Soft Love','',''),(135,4,'Gel Anestésico p/ Sexo Anal Sensibilité 6g 0036 Love Sex','&lt;p&gt;Gel anal levemente anestésico que diminui a sensibilidade do local.&lt;/p&gt;&lt;p&gt;Muito já se discutiu sobre sexo anal, e chegaram ao entendimento que entre quatro paredes vale tudo, desde que seja com carinho e sem dor. Algumas&amp;nbsp;&lt;/p&gt;&lt;p&gt;mulheres a fim de saciar os desejos de seus parceiros, sofrem dores e desconfortos que poderiam ser evitados ou amenizados com o gel anal.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Este gel tira um pouco a sensibilidade do local, diminuindo assim a dor e o desconforto na hora da penetração.&lt;/p&gt;','','Gel Anestésico p/ Sexo Anal Sensibilité 6g 0036 Love Sex','',''),(136,4,'Pomada Anestésica Sensory 7,5G 4415 Sexy Fantasy','&lt;p&gt;Sensory Sex é um dessensibilizante com função de diminuir a sensibilidade periférica da região, proporcionando uma relação agradável e prazerosa sem desconforto.&lt;/p&gt;&lt;p&gt;MODO DE USAR: Deve ser aplicado na região de 3 a 5 minutos antes da relação, espalhando e massageando suavemente.&lt;/p&gt;&lt;p&gt;Base siliconada que não sai na água.&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;/p&gt;&lt;p&gt;Pote com 7,5g.&lt;/p&gt;','','Pomada Anestésica Sensory 7,5G 4415 Sexy Fantasy','',''),(137,4,'Bolinha Beijável 2 unid  Sabores Variados Soft Love','&lt;p&gt;Desenvolvidas para tornar a relação muito mais agradável e prazerosa, as bolinhas beijáveis se dissolvem com o calor e a umidade, podendo ser&amp;nbsp;&lt;/p&gt;&lt;p&gt;estouradas no corpo e utilizadas como óleo para massagem.&lt;br&gt;&lt;/p&gt;','','Bolinha Beijável 2 unid  Sabores Variados Soft Love','',''),(138,4,'Bolinha Beijável Morango c/ Champ HOT 2 unid SLSBAMC8 Soft Love','&lt;p&gt;As Bolinhas Beijáveis são cápsulas de óleo beijável aromatizadas e revestidas de gelatina com um delicioso sabor.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Se dissolvem com o calor e a umidade, podendo ser estouradas no corpo e utilizadas como óleo para massagem.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Desenvolvidas para tornar a relação muito mais agradável e prazerosa.&lt;/p&gt;&lt;p&gt;Sabores inrresistiveis.&lt;/p&gt;','','Bolinha Beijável Morango c/ Champ HOT 2 unid SLSBAMC8 Soft Love','',''),(139,4,'Bolinha Excitante Coração c/ 3 unid Cores Variadas Sexy Fantasy','&lt;p&gt;Bolinha gelatinosa com óleo corporal que provoca deliciosas sensações.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contém 3 unidades.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Bolinha gelatinosa com óleo corporal que provoca deliciosas sensações.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Uma inocente massagem de relaxamento pode se transformar em uma inesquecível massagem sensual.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A capa de gelatina se dissolve rapidamente liberando óleos essenciais que perfumam e aquecem.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de Usar: Usar nos locais desejados ou estourar a cápsula na banheira ou embaixo da água (chuveiro).&amp;nbsp;&lt;/p&gt;&lt;p&gt;A bolinha liberará óleos essenciais que perfumam e aquecem.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Em caso de irritação da pele ou sintomas de alergia, suspender o uso e procurar um médico.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não aplicar o produto na área dos olhos. Proteger da umidade e manter fora do alcance de criança.&lt;/p&gt;','','Bolinha Excitante Coração c/ 3 unid Cores Variadas Sexy Fantasy','',''),(140,4,'Bolinha Excitante Sexy Ball Pote c/ 2 Unid Morango C/ Champ 4659 Sexy Fantasy','&lt;p&gt;Para trazer ares sofisticados a uma noite quente de amor, as cápsulas de óleo corporal trazem deliciosas fragrâncias.&lt;/p&gt;&lt;p&gt;A cápsula de gelatina dissolve rapidamente em contato com o calor do corpo &amp;nbsp;e não deixa resíduos.&lt;/p&gt;','','Bolinha Excitante Sexy Ball Pote c/ 2 Unid Morango C/ Champ 4659 Sexy Fantasy','',''),(141,4,'Bolinha Funcional Excitante 50 Tons de Cinza 2 unid SLSBFCIN8 Soft Love','&lt;p&gt;50 Tons de Cinza soft ball, é um excitante feminino que esquenta e vibra.&lt;/p&gt;&lt;p&gt;Modo de usar: A cápsula gelatinosa de óleo beijável pode ser introduzida na vagina e com a penetração durante o ato sexual estoura liberando o óleo&amp;nbsp;&lt;/p&gt;&lt;p&gt;que perfuma, refresca e lubrifica, dando uma sensação maravilhosa para ambos!&lt;br&gt;&lt;/p&gt;&lt;p&gt;Pode se realizar o sexo oral, pois o óleo é beijável.&lt;/p&gt;&lt;p&gt;Observação: Lembrando que o ideal é colocá-la na boca durante as preliminares para amolecer a cápsula, visto que são mais rígidas (duras) que as explosivas.&lt;/p&gt;&lt;p&gt;Composta de gelatina higienizada. Em casos de alergia suspenda o uso e procure um médico.&lt;/p&gt;&lt;p&gt;Precauções: Manter em lugar fresco ao abrigo do calor e da luz intensa.&lt;/p&gt;','','Bolinha Funcional Excitante 50 Tons de Cinza 2 unid SLSBFCIN8 Soft Love','',''),(142,4,'Excitante Pomada Oriental 6g 0783 Love Sex','&lt;p&gt;Essa pomada vai lhe provocar sensações de aquecimento e frio, fazendo com que a circulação aumente lhe oferecendo ainda mais tempo em atividade&amp;nbsp;&lt;/p&gt;&lt;p&gt;sexual, envolvendo o clima em algo único e inesquecível.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Logo no instante que é aplicada, você sentirá uma sensação gelada, em segundos ela vai provocando calor, muito calor.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Excitante Pomada Oriental 6g 0783 Love Sex','',''),(143,4,'Excitante Unissex Expansor 5ml 562 Garji','&lt;p&gt;Vasodilatador (sensação de inchaço) O pênis e o clitóris ficam mais sensíveis ao contato, causando a sensação de que estão ainda maiores.&lt;/p&gt;&lt;p&gt;Ótimo para masturbação.&lt;/p&gt;','','Excitante Unissex Expansor 5ml 562 Garji','',''),(144,4,'Pó Mágico Bruxinha Loka Sensação','&lt;p&gt;Estimulante feito com ingredientes naturais, criando a mistura perfeita para uma noite de amor com muito mais fogo e intensidade.&amp;nbsp;&lt;/p&gt;&lt;p&gt;O pó mágico é uma inovação do mercado erótico. Ele traz uma louca sensação, excitante e estimulante.&amp;nbsp;&lt;/p&gt;&lt;p&gt;O frasco do pó mágico traz 2 gramas, você pode usa-lo em única vez ou até 2x, depende da intensidade desejada.&amp;nbsp;&lt;/p&gt;&lt;p&gt;O pó mágico é unissex, serve para todos os sexos. Inove e prove , você não pode ficar de fora desta novidade.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Pó mágico, feito para incendiar suas noites de prazer.&lt;/p&gt;&lt;p&gt;Mode de Usar: Misture na Água, Suco ou bebida destilada.&lt;/p&gt;&lt;p&gt;Não recomendado para bebidas gaseificadas.&lt;/p&gt;','','Pó Mágico Bruxinha Loka Sensação','',''),(145,4,'Pó Magico da Bruxinha 100% Natural DJ013 Loka Sensação','&lt;p&gt;O pó da bruxinha ou o pó mágico é um excitante e estimulante feito de extratos naturais.&lt;/p&gt;&lt;p&gt;Ele é uma mistura de cascas de pó legítimo do Amazonas que dá energia e aumenta o estado de libido.&lt;/p&gt;&lt;p&gt;É o único energético puro com uma dose certa de 5gr.&lt;/p&gt;&lt;p&gt;O frasco é lacrado e pode ser usado em dose única ou dividido em até 2 doses, isso dependerá da intensidade desejada.&lt;/p&gt;&lt;p&gt;O pó mágico é unissex, podendo ser usado por homens ou mulheres.&lt;/p&gt;','','Pó Magico da Bruxinha 100% Natural DJ013 Loka Sensação','',''),(146,4,'Pomada Dragão Chines 4ml 104420 Sexy Fantasy','&lt;p&gt;Pomada chinesa. Dragão Chinês da Sexy Fantasy é um creme excitante que, quando aplicado sobre a pele, proporciona uma sensação de aquecimento,&amp;nbsp;&lt;/p&gt;&lt;p&gt;aumentando o prazer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;/p&gt;&lt;p&gt;Aplique sobre a pele, massageando suavemente até a completa absorção.&lt;/p&gt;&lt;p&gt;Contém 4ml.&lt;/p&gt;','','Pomada Dragão Chines 4ml 104420 Sexy Fantasy','',''),(147,4,'Sexy Drink Pó Mágico Extra Forte HC475 Hot Flowers','&lt;p&gt;Maior concentração de pimenta e gengibre. Provoca a excitação sexual com efeito tônico marcante.&lt;/p&gt;&lt;p&gt;Não recomendamos a mistura em bebidas gasosas.&lt;/p&gt;&lt;p&gt;Conteúdo 1g. Dose unica.&lt;/p&gt;','','Sexy Drink Pó Mágico Extra Forte HC475 Hot Flowers','',''),(148,4,'Tesão de Vaca Fuck Gotas Excitantes para Bebida RM','&lt;p&gt;Tesão de Vaca Fuck é um excitante natural feminino feito com produtos 100% naturais.&lt;/p&gt;&lt;p&gt;Modo de Usar: Coloque de 20 a 30 gotas na bebida, os resultados variam de acordo com o metabolismo de cada pessoa.&lt;/p&gt;&lt;p&gt;Obs: Não é um medicamento.&lt;/p&gt;&lt;p&gt;Contém 10ml.&lt;/p&gt;','','Tesão de Vaca Fuck Gotas Excitantes para Bebida RM','',''),(149,4,'Gel Lubrificante D-Lab Neutro 120ml Surreale','&lt;p&gt;Lubrificante íntimo D-Lab neutro a base de água. Unissex. Pode ser usado com preservativos, não causa reações alérgicas e em contato com vestimentas&amp;nbsp;&lt;/p&gt;&lt;p&gt;e lençóis, não provoca manchas.&lt;br&gt;&lt;/p&gt;&lt;p&gt;D-lab é um gel lubrificante íntimo de base aquosa que se assemelha à lubrificação natural. Proporciona mais conforto e segurança, sem perder a sensibilidade.&lt;/p&gt;&lt;p&gt;Use tranquilamente em acessórios eróticos. Por ser à base de água não danifica produtos como próteses de pênis, vaginas, masturbadores, plugs anais, &lt;/p&gt;&lt;p&gt;anéis, capas, boneca inflável, etc.&lt;/p&gt;&lt;p&gt;Contém 120ml&lt;/p&gt;&lt;p&gt;Solúvel em água&lt;/p&gt;&lt;p&gt;Transparente&lt;/p&gt;&lt;p&gt;Não gorduroso&lt;/p&gt;&lt;p&gt;Não tem cheiro&lt;/p&gt;','','Gel Lubrificante D-Lab Neutro 120ml Surreale','',''),(150,4,'Gel Lubrificante Luby 6g 0781 Love Sex','&lt;p&gt;Lubrificante Íntimo Luby é neutro a base de água. Unissex. Pode ser usado com preservativos, não causa reações alérgicas e em contato com&amp;nbsp;&lt;/p&gt;&lt;p&gt;vestimentas e lençóis, não provoca manchas.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Contém 6gr&lt;/p&gt;','','Gel Lubrificante Luby 6g 0781 Love Sex','',''),(151,4,'Lubrificante Intimo Neutro 50g K-Med','&lt;p&gt;Lubrificante íntimo á base de água, sem cor &amp;nbsp;e sem cheiro.É utilizado para a lubrificação íntima durante as relações sexuais.&lt;/p&gt;&lt;p&gt;Com ou sem preservativos, reduzindo o atrito e proporcionando maior conforto e suavidade durante o ato.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de usar: K-med hot pode ser aplicado ao redor da superfície da vagina, diretamente no órgão genital ou no preservativo.&lt;/p&gt;&lt;p&gt;Precauções: Mantenha o produto fora do alcance das crianças.&lt;/p&gt;','','Lubrificante Intimo Neutro 50g K-Med','',''),(152,4,'Lubrificante Intimo LubriGel Sachê 5g 1715 Carbogel','&lt;p&gt;Lubrigel uma linha de lubrificantes íntimos que proporcionam maior conforto, proteção e lubrificação nas relações sexuais.&lt;/p&gt;&lt;p&gt;Lubrigel é um produto hipoalergêncico, portanto, não causa irritação a mucosa peniana e vaginal.&lt;/p&gt;&lt;p&gt;Lubrigel é um produto não gorduroso e de PH neutro.&lt;/p&gt;','','Lubrificante Intimo LubriGel Sachê 5g 1715 Carbogel','',''),(153,4,'Lubrificante Lubes Neutro 30ml 564 Garji','&lt;p&gt;Lubrificante em bisnaga, neutro a base de água,&amp;nbsp;&lt;/p&gt;&lt;p&gt;apropriado para o uso de preservativos&lt;/p&gt;','','Lubrificante Lubes Neutro 30ml 564 Garji','',''),(154,4,'Óleo Bifasico Linda Morango e Avelã 250ml 0940 Love Sex','&lt;p&gt;Óleo bifásico aromatizado, sua preliminares ficarão mais completas com esse óleo de massagem corporal,uma massagem alem de relaxar pode excitar seu&amp;nbsp;&lt;/p&gt;&lt;p&gt;parceiro ou parceira de modo enlouquecedor,experimente!!!&lt;br&gt;&lt;/p&gt;&lt;p&gt;Contem:&lt;/p&gt;&lt;p&gt;250g&lt;/p&gt;&lt;p&gt;Modo de usar:&lt;/p&gt;&lt;p&gt;Estoure o lacre abra a tampa flip click aplique sobre a pele massageando suavemente.&lt;/p&gt;&lt;p&gt;Embalagem:&lt;/p&gt;&lt;p&gt;Frasco de plastico transparente.&lt;/p&gt;&lt;p&gt;Cuidados:&lt;/p&gt;&lt;p&gt;* Manter fora do alcance de crianças&lt;/p&gt;&lt;p&gt;* Havendo irritação suspenda o uso&lt;/p&gt;&lt;p&gt;* Conservar fora da luz solar&lt;/p&gt;&lt;p&gt;* Não expor a altas temperaturas&lt;/p&gt;','','Óleo Bifasico Linda Morango e Avelã 250ml 0940 Love Sex','',''),(155,4,'Óleo de Massagem Afrodisiaca in Blue 60ml KG402 KGel','&lt;p&gt;Óleo de formulação exclusiva ideal para uma massagem afrodisíaca, excitante e agradável, criando uma sensação de estímulo e desejo.&lt;/p&gt;&lt;p&gt;Sua fórmula contém óleos que aumentam o desejo sensual.&lt;/p&gt;&lt;p&gt;Não irrita a pele.&lt;/p&gt;&lt;p&gt;Não causa sensação de engorduramento na pele.&lt;/p&gt;&lt;p&gt;Fragrância: Florata in Blue&lt;/p&gt;','','Óleo de Massagem Afrodisiaca in Blue 60ml KG402 KGel','',''),(156,4,'Óleo de Massagem Siliconado Morango 60ml KG421 Kgel','&lt;p&gt;Óleo de formulação exclusiva ideal para uma massagem afrodisíaca, excitante e agradável, criando uma sensação de estímulo e desejo.&lt;/p&gt;&lt;p&gt;Modo de usar: Espalhe a quantidade desejada no corpo após o banho e deixe secar, alem de óleo de massagem funciona como um maravilhoso óleo&amp;nbsp;&lt;/p&gt;&lt;p&gt;corporal. Use e abuse de sua criatividade.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Precauções: Manter fora do alcance de crianças. Havendo irritação suspenda o uso.&lt;/p&gt;&lt;p&gt;Composição: Paraffinum Liquido, Isopropyi Myristate. Cyelomethicone, BHT. Propylpafaben.&lt;/p&gt;&lt;p&gt;Validade: 36 meses da data de fabricação&lt;/p&gt;&lt;p&gt;Embalagem: 60ml.&lt;/p&gt;&lt;p&gt;Produto notificado junto a ANVISA.&lt;/p&gt;','','Óleo de Massagem Siliconado Morango 60ml KG421 Kgel','',''),(157,4,'Óleo P/ Massagem Afrodisiaca Sagha Especiaria 60ml 276 Kalya','&lt;p&gt;Óleo de formulação exclusiva ideal para uma massagem afrodisíaca, excitante e agradável, criando uma sensação de estímulo e desejo. Sua fórmula&amp;nbsp;&lt;/p&gt;&lt;p&gt;contém óleos que aumentam o desejo sensual. Não irrita a pele. Não causa sensação de engorduramento na pele.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Pode ser usado para diminuir o cansaço nas pernas, graças a sua composição que melhora a circulação dos membros.&lt;/p&gt;&lt;p&gt;Modo de usar: Aplique sobre a pele massageando suavemente.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Conteúdo: Frasco 60ml&lt;/p&gt;','','Óleo P/ Massagem Afrodisiaca Sagha Especiaria 60ml 276 Kalya','',''),(158,4,'Óleo Para Massagem Beijável Fogo e Gelo Everest CO232 Adão e Eva','&lt;p&gt;Óleo para massagem beijável FOGO E GELO - Everest ( Esquenta / Esfria)&lt;/p&gt;&lt;p&gt;Com 38 gramas&lt;/p&gt;&lt;p&gt;Descubra novas sensações. Aplique sobre a pele o Óleo Fogo e Gele - Menta Ice, massageando e explorando o corpo com as mãos em movimentos circulares.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A refrescância torna o tato muito mais agradável em toques mais prolongados.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modo de usar: Colocar a quantidade desejada na ponta dos dedos, e aplicar no local, massageando delicadamente.&lt;/p&gt;','','Óleo Para Massagem Beijável Fogo e Gelo Everest CO232 Adão e Eva','',''),(159,4,'Óleo Para Massagem Beijável Fogo e Gelo Menta Ice CO233 Adão e Eva','&lt;p&gt;Óleo para massagem beijável FOGO E GELO - Menta Ice ( Esquenta / Esfria)&lt;/p&gt;&lt;p&gt;Com 38 gramas&lt;/p&gt;&lt;p&gt;Descubra novas sensações. Aplique sobre a pele o Óleo Fogo e Gele - Menta Ice, massageando e explorando o corpo com as mãos em movimentos circulares.&amp;nbsp;&lt;/p&gt;&lt;p&gt;A refrescância torna o tato muito mais agradável em toques mais prolongados.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modo de usar: Colocar a quantidade desejada na ponta dos dedos, e aplicar no local, massageando delicadamente.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Óleo P/ Massagem Beijável Fogo e Gelo Menta Ice CO233 Adão e Eva','',''),(160,4,'Óleo P/ Massagem Bifasico Duo Morango 4630 Sexy Fantasy','&lt;p&gt;Óleo Duo é um óleo bifásico para massagem corporal com propriedades hidratantes, leve aquecimento e fragrância estimulante para uma massagem&amp;nbsp;&lt;/p&gt;&lt;p&gt;especial. Pode ser utilizado como óleo pós-banho.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Atenção: Agite bem antes de usar.&lt;/p&gt;&lt;p&gt;Embalagem: Frasco com 60ml.&lt;/p&gt;&lt;p&gt;NÃO BEIJÁVEL.&lt;/p&gt;','','Óleo P/ Massagem Bifasico Duo Morango 4630 Sexy Fantasy','',''),(161,4,'Bisnaga Retardante Action Retard 10ml 4616 Sexy Fantasy','&lt;p&gt;Action Retard é um produto de uso masculino cuja função é retardar a ejaculação e prolongar o prazer.&lt;/p&gt;&lt;p&gt;Possui cristais de menta com ação refrescante e, como princípio ativo, o Óleo de Cravo (proporciona uma leve dessensibilização) e o Menthol (provoca&amp;nbsp;&lt;/p&gt;&lt;p&gt;uma sensação de refrescância).&lt;br&gt;&lt;/p&gt;&lt;p&gt;MODO DE USAR: Deve ser aplicado na região de 3 a 5 minutos antes da relação, espalhando e massageando suavemente.&lt;/p&gt;&lt;p&gt;Bisnaga com 10g.&lt;/p&gt;','','Bisnaga Retardante Action Retard 10ml 4616 Sexy Fantasy','',''),(162,4,'Excitante e Prolongador de Ereção Rigid Plus15ml SLFRP15 Soft Love','&lt;p&gt;Rigid Plus Bisnaga 15ml Soft Love. Desenvolvido para Provocar a Ereção e prolongar o prazer, proporcionando maior controle na relação sexual.&lt;/p&gt;&lt;p&gt;Contém 15ml.&lt;/p&gt;&lt;p&gt;Modo de Usar: Colocar a quantidade desejada na ponta dos dedos e aplicar no local, massageando suavemente.&lt;/p&gt;','','Excitante e Prolongador de Ereção Rigid Plus15ml SLFRP15 Soft Love','',''),(163,4,'Gel Retardante Potenza 6g Love Sex','&lt;p&gt;Este gel retarda a ejaculação e prolonga o prazer. Então se a noite promete e você, homem, esta a fim de manter a performance por mais tempo, este é o produto ideal.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de usar: Massageie o produto por todo o pênis já ereto minutos antes da relação sexual.&lt;/p&gt;','','Gel Retardante Potenza 6g Love Sex','',''),(164,4,'Retardante Retard Bisnaga 15ml SLFRD15 Soft Love','&lt;p&gt;Retard Bisnaga 15ml Soft Love. Desenvolvido para prolongar o prazer e proporcionar maior controle na relação sexual.&lt;/p&gt;&lt;p&gt;Contém 15ml.&lt;/p&gt;&lt;p&gt;Modo de Usar: Colocar a quantidade desejada na ponta dos dedos e aplicar no local, massageando suavemente.&lt;/p&gt;&lt;p&gt;Precauções: Manter fora do alcance das crianças. Havendo irritação suspenda o uso.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Retardante Retard Bisnaga 15ml SLFRD15 Soft Love','',''),(165,4,'Clitor Max Sensibilizante do Citóris 10ml Surreale','&lt;p&gt;Clitor Max é um composto que foi desenvolvido para mulheres com disfunção sexual e também usado por mulheres normais para atingir um orgasmo mais&amp;nbsp;&lt;/p&gt;&lt;p&gt;prazeroso, proporciona sensações de formigamento, um leve calor, ligeiro ardor e uma maior lubrificação.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Contém 15ml.&lt;/p&gt;','','Clitor Max Sensibilizante do Citóris 10ml Surreale','',''),(166,4,'Vela Beijavel Creme 20g Sexy Fantasy','&lt;p&gt;As velas da Linha Creme da Sexy Fantasy, chegam para proporcionar prazer e satisfação aos seus momentos mais íntimos. Feita com matérias-primas à base de manteiga e óleos vegetais que hidratam a pele, quando acesa transforma-se em um delicioso óleo para ser espalhado pela pele, perfumando o corpo e o ambiente.&amp;nbsp;&lt;/p&gt;&lt;p&gt;SABORES VARIADOS&lt;/p&gt;&lt;p&gt;Enviamo Conforme disponibilidade.&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada, coração de acrílico com 20g.&lt;/p&gt;&lt;p&gt;Indicação: Produto unissex.&lt;/p&gt;&lt;p&gt;Modo de Usar: Aplique na região desejada e desfrute de uma sensação crescente de satisfação e prazer.&lt;/p&gt;&lt;p&gt;Validade: 2 anos.&amp;nbsp;&lt;/p&gt;','','Vela Beijavel Creme 20g Sexy Fantasy','',''),(167,4,'Vela Multifuncional Sex Sens Seduction 40g HC500 Hot Flowers','&lt;p&gt;Velas multifuncionais. Elas induzem 3 dos nossos sentidos: O olfato, a visão e o toque. Enquanto estão acesas deixam um clima e iluminação perfeito para a tão desejada interação corporal, ao mesmo tempo, a pequena chama esquenta a cera que pode ser usada como óleo corporal para uma massagem mais do que estimulante.&lt;/p&gt;&lt;p&gt;Detalhe importante que deve ser levado em consideração é o cheiro, a cera tem um forte pheromonio que deixará o ambiente propício as relações mais quentes.&lt;/p&gt;&lt;p&gt;Conteúdo 40g&lt;/p&gt;','','Vela Multifuncional Sex Sens Seduction 40g HC500 Hot Flowers','',''),(168,4,'Eletric Plus Vibrador líquido Spray Jatos 15ML SLJEP15 Soft Love','&lt;p&gt;Excitante unissex em spray que dá a sensação de &quot;choquinho&quot;.&lt;/p&gt;&lt;p&gt;Este excitante inovador mudará a vida sexual do casal. Além de excitar também dá a sensação de que está tudo &quot;vibrando&quot;, proporcionando assim muito mais prazer!&lt;/p&gt;&lt;p&gt;&quot;Os homens também não precisam mais se preocupar com uma possível concorrência de um acessório erótico no meio relação. Afinal, o vibrador liquido não tem tamanho e se dissolve sem deixar vestígios&quot;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Modo de usar: Aplique no clitóris e na glande (cabeça do pênis).&amp;nbsp;&lt;/p&gt;','','Eletric Plus Vibrador líquido Spray Jatos 15ML SLJEP15 Soft Love','',''),(169,4,'Vibrador Líquido Power Shock Gel Beijável Morango 15ML 4146 Sexy Fantasy','&lt;p&gt;Chega ao mercado o mais potente e duradouro shock, beijável com sabor de morango, possui sensação vibrante, intensa e estimulante, este produto promete revolucionar o que você conhece de cosmético erótico.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Embalagem: Caixa e frasco de 15ML.&lt;/p&gt;&lt;p&gt;Orientação de uso: Colocar a quantidade desejada na ponta dos dedos e aplicar no local desejado, massageando delicadamente até completa absorção.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Validade: 2 anos.&lt;/p&gt;','','Vibrador Líquido Power Shock Gel Beijável Morango 15ML 4146 Sexy Fantasy','',''),(170,4,'DVD Os Segredos do Pompoarismo Lu Riva','&lt;p&gt;DVD-Aula: Os Segredos do Pompoarismo&amp;nbsp;&lt;/p&gt;&lt;p&gt;Coloque mais prazer em sua vida !&lt;/p&gt;&lt;p&gt;Aprenda com a Professora Lu Riva todos os segredos desta arte milenar:&lt;/p&gt;&lt;p&gt;Desperta a libido e aumenta o prazer sexual do casal.&lt;/p&gt;&lt;p&gt;Melhora a auto-estima.&lt;/p&gt;&lt;p&gt;Traz grandes benefícios à saúde da mulher.&lt;/p&gt;&lt;p&gt;Protege a região pélvica do afrouxamento muscular&lt;/p&gt;&lt;p&gt;Mais energia para o dia-a-dia&lt;/p&gt;&lt;p&gt;Controle seus músculos circunvaginais, movimente de forma sensual a vagina e amplie seu orgasmo !&lt;/p&gt;&lt;p&gt;Renova as energias, rejuvenesce e você fica mais bonita.&lt;/p&gt;&lt;p&gt;O Pompoarismo é uma técnica milenar, indicada por ginecologistas e considerada como ?O Exercício do Prazer?&lt;/p&gt;','','DVD Os Segredos do Pompoarismo Lu Riva','',''),(171,4,'DVD 10 Lições Práticas para Strip Tease Lu Riva','&lt;p&gt;DVD aulas de &amp;nbsp;Strip Tease Lu Pompoar &quot; 10 Lições Práticas para Strip Tease&quot; é para vc que sempre quis ou sonhou ver um Strip Tease e mostrar a verdadeira diva que cada mulher traz dentro de si. Aprenda a ser &amp;nbsp;Segura, envolvente, provocativa. Olhe para ele demonstrando sua excitação.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','DVD 10 Lições Práticas para Strip Tease Lu Riva','',''),(172,4,'O Manual do Kamasutra O livro do amor KT908 Importação','&lt;p&gt;Este manual foi elaborado de uma forma simples e didática para que os casais possam ampliar suas opções de posições sexuais, tornando os relacionamentos mais excitantes, dinâmicos, além do conhecimento no tema.&lt;/p&gt;&lt;p&gt;Formato: 10 x 7,5 cm &amp;nbsp;&lt;/p&gt;&lt;p&gt;Números de pagina: 64 &amp;nbsp;&lt;/p&gt;&lt;p&gt;Gênero: Sexualidade&lt;/p&gt;','','O Manual do Kamasutra O livro do amor KT908 Importação','',''),(173,4,'Livro de Strip-Tease 10 Lições práticas para Strip-Tease Lu Riva','&lt;p&gt;Livro de Strip-Tease &quot;10 Lições Práticas para Strip-Tease&quot;, é para você que sempre quis fazer ou sonhou ver um strip-tease. Mostra a verdadeira diva que cada mulher traz dentro de si.&amp;nbsp;&lt;/p&gt;&lt;p&gt;* Primeira Lição: A Caixa de &quot;Pandora&quot;;&lt;/p&gt;&lt;p&gt;* Segunda Lição: Apaixone-se por você;&lt;/p&gt;&lt;p&gt;* Terceira Lição: Ser Sexy;&lt;/p&gt;&lt;p&gt;* Quarta Lição: Hipnotize;&lt;/p&gt;&lt;p&gt;* Quinta Lição: Dance, Solte e Sinta;&lt;/p&gt;&lt;p&gt;* Sexta Lição: Prepare-se;&lt;/p&gt;&lt;p&gt;* Sétima Lição: Seja Radiante;&lt;/p&gt;&lt;p&gt;* Oitava Lição: Treine;&lt;/p&gt;&lt;p&gt;* Nona Lição: Clima Erótico;&lt;/p&gt;&lt;p&gt;* Décima Lição: A Performance!&lt;/p&gt;','','Livro de Strip-Tease 10 Lições práticas para Strip-Tease Lu Riva','',''),(174,4,'Livro Massagens Sensuais Excitantes Lu Riva','&lt;p&gt;livro Manual De Massagem, neste guia de bolso Lu Riva traz as técnicas de massagens sensuais e excitantes mais apimentadas. A massagem corpo a corpo, a sensação de pele com pele, o prazer de receber e de fazer carícias, respiração ofegante, quente e intensa. Numa brincadeira erótica de conhecimento mútuo e profundo.&lt;br&gt;&lt;/p&gt;','','Livro Massagens Sensuais Excitantes Lu Riva','',''),(175,4,'Fantasia Colegial 6542 Sexy Fantasy','&lt;p&gt;Todas as fantasias da Sexy Fantasy são produzidas com tecidos de alta qualidade, priorizando os detalhes e acabamentos. Laços, babados, rendas, fitas... Belíssimas peças para deixar o encontro muito mais sexy. Enlouqueça seu parceiro e esquente ainda mais sua relação!&lt;/p&gt;&lt;p&gt;Tamanho: Único.&lt;/p&gt;&lt;p&gt;Embalagem: Saco plástico personalizado com foto.&lt;/p&gt;','','Fantasia Colegial 6542 Sexy Fantasy','',''),(176,4,'Fantasia Diabinha SL2016001 Soft Love','&lt;p&gt;Kit Fantasia Diabinha, confeccionada em poliamida.&lt;/p&gt;&lt;p&gt;Tamanho Único: Veste do tamanho 36 ao 44.&lt;/p&gt;&lt;p&gt;Acompanha:&lt;/p&gt;&lt;p&gt;01 Body Sexy&lt;/p&gt;&lt;p&gt;01 Tiara&lt;/p&gt;&lt;p&gt;Imagem meramente ilustrativa.&lt;/p&gt;&lt;p&gt;Algumas das embalagens podem sofrer alterações pelo fornecedor, sem haver tempo hábil para ser atualizado em nosso site, porém garantimos que as características do produto (quantidade, peso, matéria prima e funções) não serão alteradas.&lt;/p&gt;','','Fantasia Diabinha SL2016001 Soft Love','',''),(177,4,'Fantasia Luxo Bombeira C/ Boina Kayo Valentin','&lt;p&gt;Possui 4 peças :&lt;/p&gt;&lt;p&gt;- Saia&lt;/p&gt;&lt;p&gt;- Calcinha fio&amp;nbsp;&lt;/p&gt;&lt;p&gt;- Cap&lt;/p&gt;&lt;p&gt;- Blusinha&lt;/p&gt;','','Fantasia Luxo Bombeira C/ Boina Kayo Valentin','',''),(178,4,'Fantasia Luxo Bombeira Vestido 6027 Kayo Valentin','&lt;p&gt;Fantasia erótica bombeira de vestido da Kayo Valentim. Foi produzida para mulheres de atitudes, mulheres que utilizam a imaginação e leva o seu par ao delírio. A fantasia é composta por: &amp;nbsp;Mini Vestido com tecido e elastano, gravatinha com fecho em velcro, &amp;nbsp;viseira e calcinha fio dental. Venha apagar o fogo do seu par.&lt;br&gt;&lt;/p&gt;','','Fantasia Luxo Bombeira Vestido 6027 Kayo Valentin','',''),(179,4,'Fantasia Luxo Noiva Saia c/ Persex 6006 Kayo Valentin','&lt;p&gt;Com esta &amp;nbsp;fantasia você vai se sentir desejada. Destinada para a mulher que queira surpreender seu parceiro e esquentar ainda mais sua relação.&lt;/p&gt;&lt;p&gt;Kit &amp;nbsp;Completo fantasia luxo Noiva Saia com Persex.&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Fantasia Luxo Noiva Saia c/ Persex 6006 Kayo Valentin','',''),(180,4,'Fantasia Empregada Kayo Valentin','&lt;p&gt;Fantasia, tamanho único, veste P, M, G.&lt;/p&gt;&lt;p&gt;Composta por 4 peças (tanga, saia, sutiã e outro acessório de acordo com o modelo.(podendo ser persex, boina, tiara, gravata etc.)&lt;/p&gt;','','Fantasia Empregada Kayo Valentin','',''),(181,4,'Fantasia Plus Size GG Gueixa 6905 Sexy Fantasy','&lt;p&gt;Com a coleção de fantasias plus size da Sexy Fantasy, você vai se sentir única e desejada, destinada para as mulheres que querem surpreender, elas são feitas para enlouquecer seu parceiro e esquentar ainda mais sua relação.&lt;/p&gt;&lt;p&gt;Acompanha: Robe e tanga.&lt;/p&gt;&lt;p&gt;Tamanho: Único.&lt;/p&gt;','','Fantasia Plus Size GG Gueixa 6905 Sexy Fantasy','',''),(182,4,'Fantasia Sedução 6547 Sexy Fantasy','&lt;p&gt;Todas as fantasias da Sexy Fantasy são produzidas com tecidos de alta qualidade, priorizando os detalhes e acabamentos. Laços, babados, rendas, fitas... Belíssimas peças para deixar o encontro muito mais sexy. Enlouqueça seu parceiro e esquente ainda mais sua relação!&lt;/p&gt;&lt;p&gt;Tamanho: Único.&lt;/p&gt;&lt;p&gt;Embalagem: Saco plástico personalizado com foto.&lt;/p&gt;','','Fantasia Sedução 6547 Sexy Fantasy','',''),(183,4,'Fantasia Mini Enfermeira Kayo Valentin','&lt;p&gt;Mini Fantasia, tamanho único, veste P, M, G.&lt;/p&gt;&lt;p&gt;Composta por 4 peças (tanga, saia, sutiã e outro acessório de acordo com o modelo.(podendo ser persex, boina, tiara, gravata etc.)&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Fantasia Mini Enfermeira Kayo Valentin','',''),(184,4,'Mini Fantasia Baba II 7056 Pimenta Sexy','&lt;p&gt;Tamanho Único&amp;nbsp;&lt;/p&gt;&lt;p&gt;Imagem meramente ilustrativa.&lt;/p&gt;&lt;p&gt;Não acompanha meia.&lt;/p&gt;','','Mini Fantasia Baba II 7056 Pimenta Sexy','',''),(185,4,'Mini Fantasia Diabinha 3359 Pimenta Sexy','&lt;p&gt;Tamanho Único&amp;nbsp;&lt;/p&gt;&lt;p&gt;Imagem meramente ilustrativa.&lt;/p&gt;','','Mini Fantasia Diabinha 3359 Pimenta Sexy','',''),(186,4,'Mini Fantasia Mulher Maravilha 7053 Pimenta Sexy','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Mini Fantasia Mulher Maravilha 7053 Pimenta Sexy','',''),(187,4,'Boneca Inflável Natalia 3 Orifícios Penetráveis ABM1023B-04 Importação','&lt;p&gt;Boneca inflável , feita em pvc macio e flexível com 3 orifícios penetráveis, boca, ânus e vagina, rosto e cabelos pintados, cabelos ruivos&lt;/p&gt;&lt;p&gt;Medida: 160cm após inflada.&lt;/p&gt;','','Boneca Inflável Natalia 3 Orifícios Penetráveis ABM1023B-04 Importação','',''),(188,4,'Body Luxo Atrevida 6064 Kayo Valentin','&lt;p&gt;Body de luxo sensual.&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Body Luxo Atrevida 6064 Kayo Valentin','',''),(189,4,'Body Luxo Perigosa 6072 Kayo Valentin','&lt;p&gt;Body de luxo sensual.&lt;/p&gt;&lt;p&gt;Tamanho único.&lt;/p&gt;','','Body Luxo Perigosa 6072 Kayo Valentin','',''),(190,4,'Calcinha Perf. Morango na Caixinha c/ Persex Delirius Plus','&lt;p&gt;A Calcinha Perfumada vem em uma linda caixinha.&lt;/p&gt;&lt;p&gt;Ótima apresentação e deliciosa aroma.&lt;/p&gt;&lt;p&gt;Ideal para você presentear e surpreender a pessoa amada.&lt;/p&gt;&lt;p&gt;Tamanho único, cores e modelos variados.&lt;/p&gt;','','Calcinha Perf. Morango na Caixinha c/ Persex Delirius Plus','',''),(191,4,'Tanga C/ Persex Inter Kayo Valentin','&lt;p&gt;Composto por:&lt;/p&gt;&lt;p&gt;01 Fio dental&amp;nbsp;&lt;/p&gt;&lt;p&gt;01 Persex&lt;/p&gt;&lt;p&gt;Tamanho Único&lt;/p&gt;','','Tanga C/ Persex Inter Kayo Valentin','',''),(192,4,'Tanga Fio Dental Cores e Modelos Variados RM','&lt;p&gt;Tanga fio dental&lt;/p&gt;&lt;p&gt;Amarra dos lados&lt;/p&gt;&lt;p&gt;Serve todos os tamanhos&lt;/p&gt;&lt;p&gt;Tamanho único&lt;/p&gt;&lt;p&gt;Cores variadas, enviamos conforme disponibilidade.&lt;/p&gt;','','Tanga Fio Dental Cores e Modelos Variados RM','',''),(193,4,'Camisola Ramila Estampas Variadas Kayo Valentin','&lt;p&gt;É você seguindo a moda até na hora de dormir, leve para sua cama todo o glamour dessas camisolas com você! Encante e Provoque!... É Super Sexy!&lt;/p&gt;&lt;p&gt;Estampas variadas, enviadas conforme estoque.&lt;/p&gt;&lt;p&gt;FOTO MERAMENTE ILUSTRATIVA.&lt;/p&gt;','','Camisola Ramila Estampas Variadas Kayo Valentin','',''),(194,4,'Camisola Sensual Luciana Estampas Variadas Kayo Valentin','&lt;p&gt;É você seguindo a moda até na hora de dormir, leve para sua cama todo o glamour dessas camisolas com você! Encante e Provoque!... É Super Sexy!&lt;/p&gt;&lt;p&gt;Estampas variadas, enviadas conforme estoque.&lt;/p&gt;&lt;p&gt;FOTO MERAMENTE ILUSTRATIVA.&lt;/p&gt;','','Camisola Sensual Luciana Estampas Variadas Kayo Valentin','',''),(195,4,'Camisola Gabi ref.020 Sempre Sexy RM','&lt;p&gt;Precauções: Lavar a mão. Não usar alvejante. Não secar em secadora. Não passar a ferro.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Conteúdo da embalagem: Camisola e Calcinha.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Composição: 100% Poliéster, Renda 88% Poliamida, 12% Elastano.&lt;/p&gt;','','Camisola Gabi ref.020 Sempre Sexy RM','',''),(196,4,'Conjunto Doçura Kayo Valentin','&lt;p style=&quot;text-align: justify; &quot;&gt;Para você apimentar mais ainda sua relação.&lt;br&gt;&lt;/p&gt;','','Conjunto Doçura Kayo Valentin','',''),(197,4,'Espartilho Adriel De Mel','&lt;p&gt;Você irá se surpreender com a linha de espartilhos da De Mel, confeccionada com ótimos tecidos.... Surpreenda, crie novas possibilidades de sedução e divirta-se muito!&lt;/p&gt;&lt;p&gt;Modo de usar: Vista a calcinha amarre dos lados, vista o espartilho feche as costas encaixando os colchetes, às alças do bojo passe pelo ombro e amarra nas costas depois encaixe as presilhas na liga. (OBS: Costa fecha com colchetes sem regulagem).&lt;/p&gt;&lt;p&gt;Precauções: Lavar &amp;nbsp;à mão antes ,Não alvejar Não lavar na maquina, Não passar ferro ,Não lavar á seco.&lt;/p&gt;&lt;p&gt;Conteúdo da embalagem: Espartilho, Calcinha e Presilhas.&amp;nbsp;&lt;/p&gt;&lt;p&gt;imagens meramente ilustrativas.&lt;/p&gt;&lt;p&gt;Modelo tomara que caia.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Não acompanha meias..&lt;br&gt;&lt;/p&gt;','','Espartilho Adriel De Mel','',''),(198,4,'Meia Lisa 7/8 Branca MB15 Perrutextil','&lt;p&gt;Erótica e provocante par de meias 7/8 fio 40 Ideal para usar com cinta-liga, fantasias ou outras peças do vestuário feminino. Desperte toda a sua&amp;nbsp;&lt;/p&gt;&lt;p&gt;sensualidade com um visual transparente e elegante.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho: único.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cor: branca.&lt;/p&gt;&lt;p&gt;Composição: 80% Poliamida e 20% Elastodieno.&lt;/p&gt;&lt;p&gt;Obs.: A renda pode sofrer alterações no padrão da foto. Sapatos e saia não estão inclusos.&lt;/p&gt;','','Meia Lisa 7/8 Branca MB15 Perrutextil','',''),(199,4,'Meia Lisa 7/8 Preta MP15 Perrutextil','&lt;p&gt;Erótica e provocante par de meias 7/8 fio 40. Ideal para usar com cinta-liga, fantasias ou outras peças do vestuário feminino. Desperte toda a sua&amp;nbsp;&lt;/p&gt;&lt;p&gt;sensualidade com um visual transparente e elegante.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho: único.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cor: preto.&lt;/p&gt;&lt;p&gt;Composição: 80% Poliamida e 20% Elastodieno.&lt;/p&gt;&lt;p&gt;Obs.: A renda pode sofrer alterações no padrão da foto. Sapatos e saia não estão inclusos.&lt;/p&gt;','','Meia Lisa 7/8 Preta MP15 Perrutextil','',''),(200,4,'Meia Lisa 7/8 Vermelha MV15 Perrutextil','&lt;p&gt;Erótica e provocante par de meias 7/8 fio 40 Ideal para usar com cinta-liga, fantasias ou outras peças do vestuário feminino. Desperte toda a sua sensualidade com um visual transparente e elegante.&lt;/p&gt;&lt;p&gt;Tamanho: único.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cor: vermelha.&lt;/p&gt;&lt;p&gt;Composição: 80% Poliamida e 20% Elastodieno.&lt;/p&gt;&lt;p&gt;Obs.: A renda pode sofrer alterações no padrão da foto. Sapatos e saia não estão inclusos.&lt;/p&gt;','','Meia Lisa 7/8 Vermelha MV15 Perrutextil','',''),(201,4,'Meia Arrastao 7/8 Com Renda Preta MP06 Perrutextil','&lt;p&gt;Meia fina 7/8 com acabamento em renda no barrado, que dispensa persex. 80% poliamida e 20% elastano.&lt;/p&gt;&lt;p&gt;Tamanho único que veste P, M e G.&lt;/p&gt;&lt;p&gt;Cuidados: Lavar à mão. Não usar alvejante. Não secar em secadora. Não passar a ferro. Não lavar a seco. Lavar sempre com sabão neutro ou detergente neutro.&lt;/p&gt;&lt;p&gt;*Não acompanha acessórios: Sapatos, tanga, fantasia e liga.&lt;/p&gt;','','Meia Arrastao 7/8 Com Renda Preta MP06 Perrutextil','',''),(202,4,'Meia Arrastao 7/8 Com Renda Vermelha MV06 Perrutextil','&lt;p&gt;Meia fina 7/8 com acabamento em renda no barrado, que dispensa persex. 80% poliamida e 20% elastano.&lt;/p&gt;&lt;p&gt;Tamanho único que veste P, M e G.&lt;/p&gt;&lt;p&gt;Cuidados: Lavar à mão. Não usar alvejante. Não secar em secadora. Não passar a ferro. Não lavar a seco. Lavar sempre com sabão neutro ou detergente neutro.&lt;/p&gt;&lt;p&gt;*Não acompanha acessórios: Sapatos, tanga, fantasia e liga.&lt;/p&gt;','','Meia Arrastao 7/8 Com Renda Vermelha MV06 Perrutextil','',''),(203,4,'Meia Lisa 3/4 S/ Pé C/ Renda Branco Sexy Imperio','&lt;p&gt;Meia lisa com renda 3/4.&lt;/p&gt;&lt;p&gt;Foto Meramente Ilustrativa.&lt;/p&gt;&lt;p&gt;Podendo Variar modelo da renda.&lt;/p&gt;','','Meia Lisa 3/4 S/ Pé C/ Renda Branco Sexy Imperio','',''),(204,4,'Meia Lisa 3/4 S/ Pé C/ Renda Preto Sexy Imperio','&lt;p&gt;Meia lisa com renda 3/4.&lt;/p&gt;&lt;p&gt;Foto meramente ilustrativa&amp;nbsp;.&lt;/p&gt;&lt;p&gt;Podendo variar o modelo da renda.&lt;/p&gt;','','Meia Lisa 3/4 S/ Pé C/ Renda Preto Sexy Imperio','',''),(205,4,'Meia Lisa 3/4 S/ Pé C/ Renda Vermelho Sexy Imperio','&lt;p&gt;Meia lisa com renda 3/4.&lt;/p&gt;&lt;p&gt;Foto meramente ilustrativa .&lt;br&gt;&lt;/p&gt;&lt;p&gt;Podendo variar o modelo da renda.&lt;br&gt;&lt;/p&gt;','','Meia Lisa 3/4 S/ Pé C/ Renda Vermelho Sexy Imperio','',''),(206,4,'Sainha Lolita 3310 Pimenta Sexy','&lt;p&gt;Sainha Super Sexy&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tamanho Único: Veste do 36 ao 42&lt;/p&gt;','','Sainha Lolita 3310 Pimenta Sexy','',''),(207,4,'Sainha Sedutora Liga 8043 Pimenta Sexy','&lt;p&gt;Sainha Super Sexy com cinta liga.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tamanho Único: Veste do 36 ao 42&lt;br&gt;&lt;/p&gt;','','Sainha Sedutora Liga 8043 Pimenta Sexy','',''),(208,4,'Vestido Kristal Kayo Valentin','&lt;p&gt;Vestido em microfibra estampado ,frente única&lt;/p&gt;&lt;p&gt;Acompanha calcinha fio&lt;/p&gt;&lt;p&gt;Tamanho Único.&lt;/p&gt;','','Vestido Kristal Kayo Valentin','',''),(209,4,'Masturbador Boca em Cyber Cor Pele SexDreams PK005 Importação','&lt;p&gt;Delicioso masturbador masculino no formato de boca, extra macio, com textura estimuladora interna que proporciona incríveis sensações. Com boa elasticidade cobre bem o pênis deixando-o bem apertadinho.&lt;/p&gt;&lt;p&gt;Material: Cyber.&lt;/p&gt;&lt;p&gt;Medida: 12,5cm ( aproximadamente)&lt;/p&gt;&lt;p&gt;Embalagem: Caixa.&lt;/p&gt;&lt;p&gt;Validade: Indeterminado.&lt;/p&gt;','','Masturbador Boca em Cyber Cor Pele SexDreams PK005 Importação','',''),(210,4,'Masturbador Vagina em Cyber Cor Pele SexDreams PK006 Importação','&lt;p&gt;Delicioso masturbador masculino no formato de vagina, extra macio, com textura estimuladora interna que proporciona incríveis sensações. Com boa elasticidade cobre bem o pênis deixando-o bem apertadinho, com sensação de vagina virgem.&lt;/p&gt;&lt;p&gt;Material: Cyber.&lt;/p&gt;&lt;p&gt;Medida: 12,5cm ( aproximadamente)&lt;/p&gt;&lt;p&gt;Embalagem: Caixa.&lt;/p&gt;&lt;p&gt;Validade: Indeterminado.&lt;/p&gt;','','Masturbador Vagina em Cyber Cor Pele SexDreams PK006 Importação','',''),(211,4,'Masturbador Vagina 1030AB Sexy Fantasy','&lt;p&gt;Masturbador Formato Vagina cor pele com tubo liso e macio.&lt;/p&gt;&lt;p&gt;Realize suas fantasias.&lt;/p&gt;&lt;p&gt;Cuidados: lavar sempre antes e após o uso/reuso com água morna e sabão neutro. Utilize lubrificante a base de água para melhor lubrificação.&lt;/p&gt;','','Masturbador Vagina 1030AB Sexy Fantasy','',''),(212,4,'Vibrador em Formato de Batom Rosa MV007 Importação','&lt;p&gt;Vibrador clitoriano em formato de batom,&amp;nbsp;&lt;/p&gt;&lt;p&gt;prático e super discreto, pode ser levado na bolsa no bolso sem nenhum tipo de problema.&lt;/p&gt;','','Vibrador em Formato de Batom Rosa MV007 Importação','',''),(213,4,'Butterfly com Mini Pênis Estimulador Feminino 1015CB Sexy Fantasy','&lt;p&gt;Masturbador butterfly com mini pênis e vibro bullet. Possui várias velocidades de vibração que proporciona incríveis sensações dentro do carro, na&amp;nbsp;&lt;/p&gt;&lt;p&gt;cama ou em qualquer outro lugar que você possa imaginar!&lt;br&gt;&lt;/p&gt;','','Butterfly com Mini Pênis Estimulador Feminino 1015CB Sexy Fantasy','',''),(214,4,'Masturbador Vagina em Cyber Skin Importação','&lt;div&gt;Masturbador em formato de vagina lisa em Cyber Skin.&lt;/div&gt;&lt;div&gt;Delicioso masturbador masculino no formato de vagina, extra macio, com textura estimuladora.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Masturbador Vagina em Cyber Skin Importação','',''),(215,4,'Masturbador Vagina C/ Vibro VV001 Importação','&lt;p&gt;Vagina Realística em Cyberskin feito com material que imita a pele humana com nódulos internos para proporcionar mais prazer, acompanha bullet com fio de multivelocidade. Super macio e flexível, é vazado que permite a penetração de qualquer tamanho enquanto facilita a limpeza, lábios vaginais pintados para maior realismo e com formato ergonômico para maior firmeza ao segurá-lo.&lt;/p&gt;&lt;p&gt;Produto: 6x21x11cm Diâmetro: 3 cm Penetráveis: 15 cm &amp;nbsp;Bullet utiliza 2 pilhas AA, não inclusas.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Masturbador Vagina C/ Vibro VV001 Importação','',''),(216,4,'Tenga Egg (ORIGINAL) Acomp. Lubrificante Mod. Variados Importação','&lt;p&gt;Originalmente desenvolvido no Japão para o público masculino japonês, foi projetado especificamente para proporcionar uma experiência sexual única e excitante para homens.&lt;br&gt;&lt;/p&gt;&lt;p&gt;É um masturbador masculino diferenciado, que se adapta a qualquer tamanho de pênis, com maciez e suavidade &amp;nbsp;impressionantes ao toque. Vem ainda com texturas internas variadas (cada cor é uma textura diferente), para propiciar sensações deliciosas. Assista ao vídeo e entenda como funciona!&amp;nbsp;&lt;/p&gt;&lt;p&gt;Os produtos Tenca Egg são projetados para produzir um potente mas controlável prazer, sugando sem motores ou bombas, e proporcionando uma sensação indescritível de prazer solitário. Mas também possibilita que a parceira participe, gerando para ambos novas experiencias muito prazerosas, inacreditáveis, que simplesmente não poderiam ter sem o Tenga.&lt;/p&gt;&lt;p&gt;Com um Tenca na mão, você controla a experiência - quando, onde e como quiser.&lt;br&gt;&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Tenga Egg (ORIGINAL) Acomp. Lubrificante Mod. Variados Importação','',''),(217,4,'Masturbador Duplo Formato de Halter C/ Vagina e Ânus MA028 Importação','&lt;p&gt;Masturbador masculino duplo, em uma das pontas vagina e na outra ponta ânus, seu interior possui nódulos massageadores, sua embalagem discreta em formato de halter.&lt;/p&gt;&lt;p&gt;Produto: 20,5x6,5 cm Diâmetro: 0,5 cm (com elasticidade) Penetráveis: 20 cm &amp;nbsp;Material: TPE&lt;/p&gt;&lt;p&gt;Antes e após o uso, lavar com água fria e sabonete bactericida.Seque com papel toalha descartável ou deixar secar natural.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Masturbador Duplo Formato de Halter C/ Vagina e Ânus MA028 Importação','',''),(218,4,'Vibrador Bullet Ovo Vibratório Cores Variadas Importação','&lt;p&gt;Diversos designers, para estímulos e penetração diferenciada, tanto na vagina, clitóris e ânus,&lt;/p&gt;&lt;p&gt;aliadas ao poder de um vibrador proporcionam um novo prazer: misto de realidade e tecnologia&lt;/p&gt;&lt;p&gt;Cores conforme disponibilidade de estoque.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Vibrador Bullet Ovo Vibratório Cores Variadas Importação','',''),(219,4,'Plug Anal 9cm x 2cm 2310 Sexy Fantasy','&lt;p&gt;Produzido em Elastômero atóxico, o plug é o tradicional brinquedinho sexual cuja finalidade é ?esquentar? o sexo anal. Para melhor desempenho, lubrifique a peça antes de introduzir. &lt;/p&gt;&lt;p&gt;Lembre-se: higienize sempre sua peça antes e após o uso com SEXClean - Higienizador de Brinquedos Eróticos.&lt;/p&gt;&lt;p&gt;Cores Variadas&lt;/p&gt;&lt;p&gt;Tam. 9,0x2,0 cm&lt;/p&gt;&lt;p&gt;Embalagem: blister PET com cartela.&lt;/p&gt;','','Plug Anal 9cm x 2cm 2310 Sexy Fantasy','',''),(220,4,'Plug Cônico G 1944AB Sexy Fantasy','&lt;p&gt;Produzido em Plastisol, o plug é o tradicional brinquedinho sexual cuja finalidade é esquentar o sexo anal. Para melhor desempenho, lubrifique a peça antes de introduzir. &lt;/p&gt;&lt;p&gt;Lembre-se: higienize sempre sua peça antes e após o uso com SEXClean - Higienizador de Brinquedos Eróticos.&lt;/p&gt;&lt;p&gt;Tam. 14,3x5,5 cm&lt;/p&gt;&lt;p&gt;Embalagem: blister PET com cartela.&lt;/p&gt;','','Plug Cônico G 1944AB Sexy Fantasy','',''),(221,4,'Massageador de Prostata C/ Alça PL006 Importação','&lt;p&gt;Massageador de próstata simples, com alça de apoio para auxiliar melhor a penetração, possui também estimulador perineal para a estimulação da região próxima ao ânus.&lt;/p&gt;&lt;p&gt;&amp;nbsp;Produto: 10x2,5x6 cm Penetráveis: 7 cm Diâmetro: 2,5 cm &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;Validade: Indeterminada.&lt;/p&gt;&lt;p&gt;&amp;nbsp;Antes e após o uso lave com água e sabão neutro. Seque com papel tolha descartável ou deixe secar ao natural.&lt;/p&gt;','','Massageador de Prostata C/ Alça PL006 Importação','',''),(222,4,'Pênis C/ Vibro 17,5 x 4,5cm Linha Elegance 1BW001032 Sexy Fantasy','&lt;p&gt;Pênis com vibro muito potente, resistente e silencioso.Se entregue ao prazer sem limites! &amp;nbsp;&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Cor: Pele.&lt;/p&gt;&lt;p&gt;Medidas: 17,5 x 4,5 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Pilhas: Utiliza 2 pilhas AA, não inclusas.&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada.&lt;/p&gt;','','Pênis C/ Vibro 17,5 x 4,5cm Linha Elegance 1BW001032 Sexy Fantasy','',''),(223,4,'Pênis C/ Vibro 20 x 4,1 cm Linha Elegance 1BW001023 Sexy Fantasy','&lt;p&gt;Pênis com vibro muito potente, resistente e silencioso.Se entregue ao prazer sem limites! &amp;nbsp;&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Cor: Rosa.&lt;/p&gt;&lt;p&gt;Medidas: 20x 4,1 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Pilhas: Utiliza 2 pilhas AA, não inclusas.&lt;/p&gt;&lt;p&gt;Embalagem: Caixa personalizada.&lt;/p&gt;','','Pênis C/ Vibro 20 x 4,1 cm Linha Elegance 1BW001023 Sexy Fantasy','',''),(224,4,'Pênis C/ Mini Vibrador 12,5X3cm KT314P Importação','&lt;p&gt;Pênis com vibrador. &amp;nbsp;feito em polivinílico macio e flexível com veias salientes, totalmente realístico.&lt;/p&gt;&lt;p&gt;Material: Polivinílico atóxico.&lt;/p&gt;&lt;p&gt;Medida: Prótese 12x3cm (aproximadamente), Capsula 6x1,5cm.&lt;/p&gt;&lt;p&gt;Utiliza: 3 Baterias &quot;LR44&quot; inclusas&lt;/p&gt;&lt;p&gt;Embalagem: Caixa.&lt;/p&gt;&lt;p&gt;Validade: Indeterminada&lt;/p&gt;&lt;p&gt;Precauções:&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lave antes e após o uso com água e sabão neutro. Para a satisfação ser completa, utilize sempre o produto com lubrificante e preservativo.&lt;/p&gt;','','Pênis C/ Mini Vibrador 12,5X3cm KT314P Importação','',''),(225,4,'Pênis Cor Pele c/ Vibro e Ventosa 15,3x4cm 1431CVB Sexy Fantasy','&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;&lt;p&gt;Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores! Mas com o diferencial da vibração, para a exploração de novos prazeres.&lt;/p&gt;&lt;p&gt;Tam. 15,3x4 cm&lt;/p&gt;&lt;p&gt;Embalagem: blister com cartela.&lt;/p&gt;','','Pênis Cor Pele c/ Vibro e Ventosa 15,3x4cm 1431CVB Sexy Fantasy','',''),(226,4,'Pênis Aroma Morango c/ Vibrador 18X4,4cm F172550 Sexy Fantasy','&lt;p&gt;Pênis realístico com incrível aroma, e uma cor vibrante e intensa!&lt;/p&gt;&lt;p&gt;Cada peça tem um folder personalizado juntamente com o exclusivo blister abre e fecha da Sexy Fantasy.&lt;/p&gt;&lt;p&gt;Sucesso por onde passa, a coleção aromática é destaque nas maiores lojas do ramo.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Pênis Aroma Morango c/ Vibrador 18X4,4cm F172550 Sexy Fantasy','',''),(227,4,'Pênis Aroma Tutti Frutti c/ Vibrador 18X4,4cm F172551 Sexy Fantasy','&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;&lt;p&gt;Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores! Mas com o diferencial da vibração, para a exploração de novos prazeres.&lt;/p&gt;&lt;p&gt;Embalagem: blister com cartela.&lt;/p&gt;','','Pênis Aroma Tutti Frutti c/ Vibrador 18X4,4cm F172551 Sexy Fantasy','',''),(228,4,'Pênis Cor Pele c/ Vibro c/ Escroto c/ Ventosa 15x3,8cm 1475CVB Sexy Fantasy','&lt;p&gt;Prótese com vibro, com escroto e com ventosa na cor pele.&lt;/p&gt;&lt;p&gt;Tam. 15x3,8 cm.&lt;/p&gt;&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;','','Pênis Cor Pele c/ Vibro c/ Escroto c/ Ventosa 15x3,8cm 1475CVB Sexy Fantasy','',''),(229,4,'Pênis Cor Pele Ponta Dupla c/ Vibrador 41,5x5,5cm 1976CB Sexy Fantasy','&lt;p&gt;Prótese em formato de pênis 44cm de comprimento e 5cm de diâmetro com textura em veias e ponta dupla para penetração vaginal e anal, ou mesmo para penetração simultânea entre os parceiros.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Em PVC atóxico de fácil higienização.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar antes e após o manuseio com água e sabão neutro ou Higienize com Toy Cleaner.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não compartilhe deste produto com outros parceiros.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tamanho: 44x5 cm&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cor: Pele&lt;/p&gt;','','Pênis Cor Pele Ponta Dupla c/ Vibrador 41,5x5,5cm 1976CB Sexy Fantasy','',''),(230,4,'Pênis Cor Pele c/ Vibro e Ventosa 22 x 5,8cm 1830CVB Sexy Fantasy','&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;&lt;p&gt;Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores! Mas com o diferencial da vibração, para a exploração de novos prazeres.&lt;/p&gt;&lt;p&gt;Embalagem: blister com cartela.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Pênis Cor Pele c/ Vibro e Ventosa 22 x 5,8cm 1830CVB Sexy Fantasy','',''),(231,4,'Prótese com cinta e vibro CT001 Importação','&lt;p&gt;Prótese importada com cinta e vibro.&lt;/p&gt;&lt;p&gt;Ótima qualidade!&lt;/p&gt;&lt;p&gt;Tamanho aproximado 16cm.&lt;/p&gt;','','Prótese com cinta e vibro CT001 Importação','',''),(232,4,'Pênis Cyber Skin C/ Vibro C/ Escroto 18X5cm 101650CB Sexy Fantasy','&lt;p&gt;Pênis em cyber skin a prova d\' água.&lt;/p&gt;&lt;p&gt;Cyber skin é um material que foi desenvolvido pela NASA e que normalmente é usado para imitar a pele humana, uma vez que possui grande semelhança com a mesma.&lt;/p&gt;&lt;p&gt;Atenção: Não use óleo mineral ou produtos a base de óleo no Cyberskin porque podem causar deterioração. Use lubrificante à base de água ou à base de silicone.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Se qualquer outro lubrificante for usado, lave a peça imediatamente com SexClean ou água e sabão líquido antibacteriano para evitar a deterioração da mesma.&lt;/p&gt;&lt;p&gt;Prazo de validade indeterminado, conforme CDC Art. 31 Lei 8078/90 de 11 de setembro de 1999.&lt;/p&gt;&lt;p&gt;Características: composição química do cyber skin permite que o produto seja maleável, exatamente como a pele humana e ainda recupera seu formato original instantaneamente. Produtos fabricados com cyber skin são criados para manter seu formato por muito mais tempo. A linha cyber skin oferece a você o que há de mais avançado no mercado erótico.&lt;/p&gt;&lt;p&gt;Embalagem: Blister Personalizado.&lt;/p&gt;','','Pênis Cyber Skin C/ Vibro C/ Escroto 18X5cm 101650CB Sexy Fantasy','',''),(233,4,'Protese Giratória (Rotativa) Cor Pele Importação','&lt;p&gt;Prótese Giratória com Vibro importada.&lt;/p&gt;&lt;p&gt;Além de girar também vibra...&lt;/p&gt;&lt;p&gt;Regula intensidade de vibro e rotação sentido horário e anti horário.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Diversos designers, para estímulos e penetração diferenciada, tanto na vagina, clitóris e ânus, aliadas ao poder de um vibrador proporcionam um novo prazer: misto de realidade e tecnologia.&lt;/p&gt;&lt;p&gt;Tamanho Aproximado - 17cm&lt;/p&gt;','','Protese Giratória (Rotativa) Cor Pele Importação','',''),(234,4,'Pênis Cor Pele s/ Vibro 9,5X3,2cm 1120AB Sexy Fantasy','&lt;p&gt;As Próteses Sexy Fantasy foram desenvolvidas com plastisol atóxico, material de altíssima qualidade visando segurança e confiabilidade total. Descubra-se e entregue-se a esse prazer!&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Modelo: Pênis maciço.&lt;/p&gt;&lt;p&gt;Medidas: 9,5 x 3,2 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre/fecha personalizado com folder exclusivo.&lt;/p&gt;','','Pênis Cor Pele s/ Vibro 9,5X3,2cm 1120AB Sexy Fantasy','',''),(235,4,'Pênis Aroma Morango s/ Vibro 15,3x4cm F143150 Sexy Fantasy','&lt;p&gt;Pura tentação é uma linha de pênis realísticos com aromas incríveis e cores vibrantes e intensas!&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Modelo: Aromático maciço.&lt;/p&gt;&lt;p&gt;Medidas: 15,3 x 4 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre/fecha personalizado com folder exclusivo.&lt;/p&gt;','','Pênis Aroma Morango s/ Vibro 15,3x4cm F143150 Sexy Fantasy','',''),(236,4,'Pênis Aroma Tutti Frutti s/ Vibro 15,3x4cm F143151 Sexy Fantasy','&lt;p&gt;Pura tentação é uma linha de pênis realísticos com aromas incríveis e cores vibrantes e intensas!&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;/p&gt;&lt;p&gt;Modelo: Aromático maciço.&lt;/p&gt;&lt;p&gt;Medidas: 15,3 x 4 cm.&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre/fecha personalizado com folder exclusivo.&lt;/p&gt;','','Pênis Aroma Tutti Frutti s/ Vibro 15,3x4cm F143151 Sexy Fantasy','',''),(237,4,'Pênis Cor Pele s/ Vibro 18x4,5cm 1641AB Sexy Fantasy','&lt;p&gt;Prótese sem vibro, com escroto, com ventosa na cor pele. Tam. 18 x 4,5 cm&lt;/p&gt;&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois. Idênticos aos pênis reais, imitam a&amp;nbsp;&lt;/p&gt;&lt;p&gt;textura, os relevos, as formas, tamanhos e até cores!&lt;br&gt;&lt;/p&gt;','','Pênis Cor Pele s/ Vibro 18x4,5cm 1641AB Sexy Fantasy','',''),(238,4,'Pênis s/ Vibro c/ Ventosa c/ Escroto 16,2 x 3,7cm 1576AVB Sexy Fantasy','&lt;p&gt;Prótese sem vibro, com ventosa na cor pele. Tam. 16,2x3,7cm&lt;/p&gt;&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitárico ou um segundo pênis na relação a dois. Idênticos aos pênis reais, imitam a&amp;nbsp;&lt;/p&gt;&lt;p&gt;textura, os relevos, as formas, tamanhos e até cores!&lt;br&gt;&lt;/p&gt;&lt;p&gt;Pênis Cor Pele Ponta Dupla 32,5x3,9 cm - 1976A.S - Sexy Fantasy&lt;/p&gt;&lt;p&gt;Prótese em formato de pênis de diâmetro com textura em veias e ponta dupla para penetração vaginal e anal, ou mesmo para penetração simultânea entre&amp;nbsp;&lt;/p&gt;&lt;p&gt;os parceiros.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Em PVC atóxico de fácil higienização.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar antes e após o manuseio com água e sabão neutro ou Higienize com Toy Cleaner.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não compartilhe deste produto com outros parceiros.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tamanho: 33 x 4,5 cm&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cor: Pele&lt;/p&gt;','','Pênis s/ Vibro c/ Ventosa c/ Escroto 16,2 x 3,7cm 1576AVB Sexy Fantasy','',''),(239,4,'Pênis s/ Vibro c/ Escroto 18x4,4cm 1577AB  Sexy Fantasy','&lt;p&gt;Prótese sem vibro, com escroto na cor marrom.&lt;/p&gt;&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois. Idênticos aos pênis reais, imitam a&amp;nbsp;&lt;/p&gt;&lt;p&gt;textura, os relevos, as formas, tamanhos e até cores!&lt;br&gt;&lt;/p&gt;','','Pênis s/ Vibro c/ Escroto 18x4,4cm 1577AB  Sexy Fantasy','',''),(240,4,'Pênis Cor Pele s/ Vibro c/ Escroto 18x4,7cm 1679AB Sexy Fantasy','&lt;p&gt;Prótese sem vibro, com ventosa na cor pele. Tam. 18x4,7cm&lt;/p&gt;&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois. Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores!&lt;/p&gt;','','Pênis Cor Pele s/ Vibro c/ Escroto 18x4,7cm 1679AB Sexy Fantasy','',''),(241,4,'Pênis Cor Pele s/ Vibro 22X5,8 cm 1830AB Sexy Fantasy','&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;&lt;p&gt;Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores! Mas com o diferencial da vibração, para a exploração de novos prazeres.&lt;/p&gt;&lt;p&gt;Embalagem: blister com cartela.&lt;/p&gt;','','Pênis Cor Pele s/ Vibro 22X5,8 cm 1830AB Sexy Fantasy','',''),(242,4,'Pênis Cor Pele Ponta Dupla 32,5x3,9 cm 1976AS Sexy Fantasy','&lt;p&gt;Prótese em formato de pênis 32,5cm de comprimento e 3,9cm de diâmetro com textura em veias e ponta dupla para penetração vaginal e anal, ou mesmo para penetração simultânea entre os parceiros.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Em PVC atóxico de fácil higienização.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar antes e após o manuseio com água e sabão neutro ou Higienize com Toy Cleaner.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não compartilhe deste produto com outros parceiros.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tamanho: 32,5x3,9 cm&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Cor: Pele&lt;/p&gt;','','Pênis Cor Pele Ponta Dupla 32,5x3,9 cm 1976AS Sexy Fantasy','',''),(243,4,'Pênis S/Vibro 17,5 x 3,8 cm Fosforescente KTF107 Importação','&lt;p&gt;A prótese Fosforescente que realmente brilha no escuro.&lt;/p&gt;&lt;p&gt;Prótese feito em polivinílico macio e flexível com veias salientes, totalmente realístico.&lt;/p&gt;&lt;p&gt;Material: Polivinílico atóxico.&lt;/p&gt;&lt;p&gt;Medida: 17,5 x 3,8 cm ( aproximadamente)&lt;/p&gt;&lt;p&gt;Embalagem: Blister.&lt;/p&gt;&lt;p&gt;Validade: Indeterminada.&lt;/p&gt;&lt;p&gt;Precauções: Lave antes e após o uso com água e sabão neutro. Para a satisfação ser completa, utilize sempre o produto com lubrificante e preservativo.&lt;/p&gt;','','Pênis S/Vibro 17,5 x 3,8 cm Fosforescente KTF107 Importação','',''),(244,4,'Pênis Cor Pele s/ Vibro c/ Escroto 22x5,3 cm 1871AB Sexy Fantasy','&lt;p&gt;Pênis realísticos são ideais para quem procura o prazer solitário ou um segundo pênis na relação a dois.&lt;/p&gt;&lt;p&gt;Idênticos aos pênis reais, imitam a textura, os relevos, as formas, tamanhos e até cores! Mas com o diferencial da vibração, para a exploração de novos prazeres.&lt;/p&gt;&lt;p&gt;Embalagem: blister com cartela.&lt;/p&gt;','','Pênis Cor Pele s/ Vibro c/ Escroto 22x5,3 cm 1871AB Sexy Fantasy','',''),(245,4,'Pênis Cyber Skin Vertebra 16 X 5cm 1500120 Sexy Fantasy','&lt;p&gt;A Linha Pura Ambição da Sexy Fantasy é desenvolvida com o revolucionário CyberSkin, um material 100% atóxico, que imita com perfeição a pele humana, estimulando o tato e a visão e aumentando o prazer. Na composição do CyberSkin, os átomos se ligam com elasticidade, tornando o produto extremamente maleável.&lt;/p&gt;&lt;p&gt;Cuidados:&lt;/p&gt;&lt;p&gt;- Lave antes e após o uso com SexClean ou água e sabão líquido antibacteriano, depois colocar talco neutro para voltar a sua textura original;&lt;/p&gt;&lt;p&gt;- Não deve ser usado em áreas irritadas e em pele com erupções;&lt;/p&gt;&lt;p&gt;- Em caso de mudança de penetração, lave o produto;&lt;/p&gt;&lt;p&gt;- Use sempre o produto com preservativo;&lt;/p&gt;&lt;p&gt;- Para enxugar, utilizar papel toalha ou toalha de algodão. É importante que as áreas do produto que não foram secas com a toalha sequem ao vento, naturalmente;&lt;/p&gt;&lt;p&gt;- Para guardar o item, polvilhar com talco neutro;&amp;nbsp;&lt;/p&gt;&lt;p&gt;- Colocar o produto dentro de um saquinho plástico para que o produto não se misture com outros materiais e fique com aspecto pegajoso;&lt;/p&gt;&lt;p&gt;Atenção: Não use óleo mineral ou produtos a base de óleo no Cyberskin porque podem causar deterioração. Use lubrificante à base de água ou à base de silicone.&lt;/p&gt;&lt;p&gt;Se qualquer outro lubrificante for usado, lave a peça imediatamente com SexClean ou água e sabão líquido antibacteriano para evitar a deterioração da mesma.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;&lt;p&gt;Disponível apenas na Cor Pele.&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;/p&gt;','','Pênis Cyber Skin Vertebra 16 X 5cm 1500120 Sexy Fantasy','',''),(246,4,'Pênis Cyber Skin C/ Vertebra 18 X 5cm 1500122 Sexy Fantasy','&lt;p&gt;A Linha Pura Ambição da Sexy Fantasy é desenvolvida com o revolucionário CyberSkin, um material 100% atóxico, que imita com perfeição a pele humana, estimulando o tato e a visão e aumentando o prazer. Na composição do CyberSkin, os átomos se ligam com elasticidade, tornando o produto extremamente maleável.&lt;/p&gt;&lt;p&gt;&amp;nbsp;Cuidados:&lt;/p&gt;&lt;p&gt;- Lave antes e após o uso com SexClean ou água e sabão líquido antibacteriano, depois colocar talco neutro para voltar a sua textura original;&lt;/p&gt;&lt;p&gt;- Não deve ser usado em áreas irritadas e em pele com erupções;&lt;/p&gt;&lt;p&gt;- Em caso de mudança de penetração, lave o produto;&lt;/p&gt;&lt;p&gt;- Use sempre o produto com preservativo;&lt;/p&gt;&lt;p&gt;- Para enxugar, utilizar papel toalha ou toalha de algodão. É importante que as áreas do produto que não foram secas com a toalha sequem ao vento, naturalmente;&lt;/p&gt;&lt;p&gt;- Para guardar o item, polvilhar com talco neutro;&amp;nbsp;&lt;/p&gt;&lt;p&gt;- Colocar o produto dentro de um saquinho plástico para que o produto não se misture com outros materiais e fique com aspecto pegajoso;&lt;/p&gt;&lt;p&gt;Atenção: Não use óleo mineral ou produtos a base de óleo no Cyberskin porque podem causar deterioração. Use lubrificante à base de água ou à base de silicone.&lt;/p&gt;&lt;p&gt;Se qualquer outro lubrificante for usado, lave a peça imediatamente com SexClean ou água e sabão líquido antibacteriano para evitar a deterioração da mesma.&lt;/p&gt;&lt;p&gt;Embalagem: Blister abre e fecha personalizado com folder exclusivo.&lt;/p&gt;&lt;p&gt;Disponível apenas na Cor Pele.&lt;/p&gt;&lt;p&gt;Uso unissex.&lt;/p&gt;','','Pênis Cyber Skin C/ Vertebra 18 X 5cm 1500122 Sexy Fantasy','',''),(247,4,'Pênis Gigante Big Jow 40x10cm 1899ASP Sexy Fantasy','&lt;p&gt;As Próteses Sexy Fantasy foram desenvolvidas com plastisol atóxico, material de altíssima qualidade visando segurança e confiabilidade total. Descubra-se e entregue-se a esse prazer!&lt;/p&gt;&lt;p&gt;Lembre-se de higienizar sua peça antes e depois do uso com Sex Clean.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Modelo: Pênis maciço com escroto.&lt;/p&gt;&lt;p&gt;Medidas: 40 x 10&lt;/p&gt;&lt;p&gt;Material: Atóxico.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Pênis Gigante Big Jow 40x10cm 1899ASP Sexy Fantasy','',''),(248,4,'Bolinha Tailandesa Pequena c/05 3302B Sexy Fantasy','&lt;p&gt;São 5 bolinhas feitas de plástico ligadas por resistente fio de silicone e alça para facilitar o manuseio.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Dimensões: Cada bolinha mede 1,8 cm de diâmetro. Com o fio mede no total 40 cm de comprimento. Medidas aproximadas.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Não acompanha pilhas e baterias.&lt;/p&gt;&lt;p&gt;Modo de Usar: Lubrificar para facilitar a penetração. Puxar suavemente a alça para removê-las. Pode ser usado na vagina e no ânus.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Recomendações: É recomendado o uso de lubrificante.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar com água e sabão neutro antes e após o uso e não compartilhar.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cores Variadas.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Bolinha Tailandesa Pequena c/05 3302B Sexy Fantasy','',''),(249,4,'Conjunto de Pompoar Cromado c/02 Bolas Submission SLS04 Sexy Fantasy','&lt;p&gt;O pompoarismo permite maior controle sobre os músculos que circundam a vagina, deixando a mulher muito mais saudável e poderosa entre quatro paredes. Submission Linha Sado o maior castigo? vai ser você não experimentar!&lt;/p&gt;&lt;p&gt;Não deixe de acessar o making of exclusivo Submission Linha Sado no link &quot;Vídeo&quot;&amp;nbsp;&lt;/p&gt;&lt;p&gt;https://www.youtube.com/watch?v=V2cv3mI3cPA&amp;amp;feature=youtu.be&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Conjunto de Pompoar Cromado c/02 Bolas Submission SLS04 Sexy Fantasy','',''),(250,4,'Bolinha Tailandesa Grande C/ Esfera Interna 4 Bolas Rosa 3142B Sexy Fantasy','&lt;p&gt;Bolinhas Tailandesas para pratica de pompoarismo, são 4 bolinhas resistentes feitas de plástico ligadas por resistente fio de silicone e haste para facilitar o manuseio.&lt;/p&gt;&lt;p&gt;Modo de Usar: Lubrificar para facilitar a penetração. Puxar levemente a haste para removê-las. Pode ser usado na vagina e no ânus.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Recomendações: É recomendado o uso de lubrificante.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Cuidados: Lavar com água e sabão neutro antes e após o uso e não compartilhar.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Conservar fora da luz solar e não expor a temperatura superior a 50ºC.&lt;/p&gt;','','Bolinha Tailandesa Grande C/ Esfera Interna 4 Bolas Rosa 3142B Sexy Fantasy','',''),(251,4,'Algemas de Metal c/ Pelúcia - Cores Variadas RM','&lt;p&gt;Algemas de pulso, em metal, revestida em pelúcia.&lt;/p&gt;&lt;p&gt;Cores: conforme disponibilidade do estoque.&lt;/p&gt;','','Algemas de Metal c/ Pelúcia - Cores Variadas RM','',''),(252,4,'Algemas de Metal Handccufs','&lt;p&gt;Um lindo par de algema. para brincar e se divertir.&lt;/p&gt;&lt;p&gt;Use a imaginação e abuse da sensualidade, vai com as chaves e trava.&lt;/p&gt;&lt;p&gt;A embalagem deste produto pode sofrer alterações.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Algemas de Metal Handccufs','',''),(253,4,'Algemas e Vendas em Pelúcia Cores Variadas Brasil Fetiche','&lt;p&gt;O Kit Contem;&lt;/p&gt;&lt;p&gt;Algemas e venda.&lt;/p&gt;&lt;p&gt;Cores: Podendo variar conforme estoque.&lt;/p&gt;','','Algemas e Vendas em Pelúcia Cores Variadas Brasil Fetiche','',''),(254,4,'Algemas em Couro Sintético Preta ACSP83 Brasil Fetiche','&lt;p&gt;Produto confeccionado em courino com fino acabamento.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Produto para uso em braços ou como tornozeleira.&lt;/p&gt;&lt;p&gt;O uso das algemas é confortável devido a maciez do produto.&lt;/p&gt;','','Algemas em Couro Sintético Preta ACSP83 Brasil Fetiche','',''),(255,4,'Amarras de Tecido Submission SLS10 Sexy Fantasy','&lt;p&gt;As amarras permitem que a pessoa se amarre ou amarre alguém, com foco no prazer. Também podem serem utilizadas para prender na cama. O controle total da pessoa imobilizada fica com o parceiro. Submission Linha Sado o maior castigo? vai ser você não experimentar!&lt;/p&gt;&lt;p&gt;Não deixe de acessar o making of exclusivo Submission Linha Sado no link &quot;Vídeo&quot;&amp;nbsp;&lt;/p&gt;&lt;p&gt;https://www.youtube.com/watch?v=V2cv3mI3cPA&amp;amp;feature=youtu.be&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Amarras de Tecido Submission SLS10 Sexy Fantasy','',''),(256,4,'Amarras de Vinil SLS11 Submission Sexy Fantasy','&lt;p&gt;As amarras permitem que a pessoa se amarre ou amarre alguém, com foco no prazer.&lt;/p&gt;&lt;p&gt;Também podem serem utilizadas para prender na cama.&lt;/p&gt;&lt;p&gt;O controle total da pessoa imobilizada fica com o parceiro.&lt;/p&gt;&lt;p&gt;Submission Linha Sado o maior castigo? vai ser você não experimentar!&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Amarras de Vinil SLS11 Submission Sexy Fantasy','',''),(257,4,'Chicote Reforçado c/ 6 Tiras 40cm preto CRP4050 Brasil Fetiche','&lt;p&gt;Chicote Preto 6 Tiras 40cm Dominadora&lt;br&gt;&lt;/p&gt;','','Chicote Reforçado c/ 6 Tiras 40cm preto CRP4050 Brasil Fetiche','',''),(258,4,'Kit Chicote Luxo Tiras 30cm C/ Venda Pélucia Preto KLVP73 Brasil Fetiche','&lt;p&gt;Kit com 2 peças.&lt;/p&gt;&lt;p&gt;1 Chicote de tiras 30cm&lt;/p&gt;&lt;p&gt;1 Venda pelucia&lt;/p&gt;&lt;p&gt;Surpreenda seu parceiro (a)&lt;/p&gt;','','Kit Chicote Luxo Tiras 30cm C/ Venda Pélucia Preto KLVP73 Brasil Fetiche','',''),(259,4,'Coleira com Guia CG55 Brasil Fetiche','&lt;p&gt;Coleira confeccionada em couro sintético.&lt;/p&gt;&lt;p&gt;Kit composto por coleira e Guia&lt;/p&gt;','','Coleira com Guia CG55 Brasil Fetiche','',''),(260,4,'Coleira Submission SLS15 Sexy Fantasy','&lt;p&gt;Normalmente de couro, a coleira ajuda a confirmar a função de cada um na hora do sexo: quem é dominador e quem é dominado.&lt;/p&gt;&lt;p&gt; Submission Linha Sado o maior castigo? vai ser você não experimentar!&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Coleira Submission SLS15 Sexy Fantasy','',''),(261,4,'Caixinha Tons de Desejo 50 Tons de Cinza 1425 RM','&lt;p&gt;Caixinha contendo:&lt;/p&gt;&lt;p&gt;Fitas para amarrar&lt;/p&gt;&lt;p&gt;Penas para torturar&lt;/p&gt;&lt;p&gt;Gel para aquecer e saborear sabores diversos&lt;/p&gt;&lt;p&gt;Jogo que determinará quem será dominado.&lt;/p&gt;','','Caixinha Tons de Desejo 50 Tons de Cinza 1425 RM','',''),(262,4,'Kit bondagem 4 Amarras Bidim KBBP112 Brasil Fetiche','&lt;p&gt;Kit contendo 04 amarras&lt;/p&gt;&lt;p&gt;Kit bondagem 4 Amarras + Venda.&lt;/p&gt;&lt;p&gt;Deixe suas brincadeiras mais divertidas e ousadas!&lt;/p&gt;&lt;p&gt;Resistente fita de nylon que podem atar seu parceiro(a) aos quatros cantos da cama ou onde sua imaginação o levar,nesse momento de prazer e loucura.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Kit bondagem 4 Amarras Bidim KBBP112 Brasil Fetiche','',''),(263,4,'Kit bondagem 4 Amarras + Venda Pelúcia Preto KBOP100 Brasil Fetiche','&lt;p&gt;Deixe suas brincadeiras mais divertidas e ousadas!&lt;/p&gt;&lt;p&gt;Jogo de 4 amarras com pelúcia nos pulsos e tornozelos.&lt;/p&gt;&lt;p&gt;Resistente fita de nylon que podem atar seu parceiro(a) aos quatro cantos da cama ou onde sua imaginação o levar,nesse momento de prazer e loucura.&lt;/p&gt;&lt;p&gt;Acompanha venda em pelúcia para esquentar mais esta cena.&lt;/p&gt;','','Kit bondagem 4 Amarras + Venda Pelúcia Preto KBOP100 Brasil Fetiche','',''),(264,4,'Kit Dominadora Cores variadas Brasil Fetiche','&lt;p&gt;Kit contendo máscara e um mini chicote fino com franja em couro. Ideal para você que gosta de ser dominadora ou dominada.&lt;/p&gt;&lt;p&gt;&amp;nbsp;Cores variadas.&lt;br&gt;&lt;/p&gt;','','Kit Dominadora Cores variadas Brasil Fetiche','',''),(265,4,'Máscara Mulher Gato Preta MGP114 Brasil Fetiche','&lt;p&gt;Máscara estilo mulher gato, em couro sintético.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Diversão garantida para realizar suas fantasias.&lt;/p&gt;&lt;p&gt;Máscara Tiazinha - Fetiche Brasil&lt;/p&gt;&lt;p&gt;Máscara estilo Tiazinha, em couro sintético. Diversão garantida para realizar suas fantasias.&lt;/p&gt;&lt;p&gt;Disponibilidade de cores conforme estoque.&lt;/p&gt;','','Máscara Mulher Gato Preta MGP114 Brasil Fetiche','',''),(266,4,'Máscara Tiazinha Fetiche Brasil','&lt;p&gt;Cores variadas.&lt;/p&gt;&lt;p&gt;Envio conforme disponibilidade de estoque.&lt;/p&gt;','','Máscara Tiazinha Fetiche Brasil','',''),(267,4,'Mordaça Bastão MB52 Brasil Fetiche','&lt;p&gt;Muitas mulheres que têm como maior fantasia tomar o controle da relação a dois. Sua atitude deve ser assertiva, tomar o poder para si e mandar no parceiro e no ato sexual. Com essa mordaça bastão, feito em madeira e revestido por couro sintético, você vai seduzir e dominar o seu parceiro com muito prazer.&lt;/p&gt;&lt;p&gt;Material: Couro sintético.&lt;/p&gt;&lt;p&gt;Cor: Preta&lt;/p&gt;&lt;p&gt;Medida: Bastão 20 cm.&lt;/p&gt;','','Mordaça Bastão MB52 Brasil Fetiche','',''),(268,4,'Plug Bol 6 Esferas Preto Submission SLS02 Sexy Fantasy','&lt;p&gt;O plug ajuda nas primeiras relações e dá segurança para quem quer experimentar o sexo anal. Os plugs com diâmetro maior são indicados para quem já é fã da prática. Indica-se o uso de lubrificantes e/ou dessensibilizantes para evitar dores e desconfortos na hora da penetração. Submission Linha Sado o maior castigo? vai ser você não experimentar!&lt;br&gt;&lt;/p&gt;','','Plug Bol 6 Esferas Preto Submission SLS02 Sexy Fantasy','',''),(269,4,'Separador de Braços 33cm SB56 Brasil fetiche','&lt;p&gt;Fetiche entre os casais, as algemas são escolhidas para compor o clima de atração fatal. São os acessórios mais simples de imobilização e dominação. Permitem que o(a) dominador(a) possa tocar o corpo do(a) submisso(a) sem que ele(a) consiga impedir as suas excitantes provocações.&lt;br&gt;&lt;/p&gt;','','Separador de Braços 33cm SB56 Brasil fetiche','',''),(270,4,'Separador de Pés 35cm SP57 Brasil Fetiche','&lt;p&gt;Fetiche entre os casais, as algemas são escolhidas para compor o clima de atração fatal. São os acessórios mais simples de imobilização e dominação. Permitem que o(a) dominador(a) possa tocar o corpo do(a) submisso(a) sem que ele(a) consiga impedir as suas excitantes provocações.&lt;br&gt;&lt;/p&gt;','','Separador de Pés 35cm SP57 Brasil Fetiche','',''),(271,4,'Venda Tapa Olhos em Bidim Preto VBP26 Brasil Fetiche','&lt;p&gt;Um grande fetiche da maioria dos casais, entre chibatas, amarras, tapa olhos e algemas, que servem para diferentes momentos da relação sensual. Para uma lap-dance (dança da cadeira), para prender o parceiro na cama prolongando as preliminares, para compor um estilo de fantasia erótica, entre outros jogos sensuais aumentando a cumplicidade entre os pares.&lt;/p&gt;&lt;p&gt;Alimente suas fantasias com mascaras e tapa olhos. A libido vai subir pela entrega, vulnerabilidade, extrema confiança e uma cumplicidade fatal. Tiras elásticas para a cabeça.&lt;/p&gt;','','Venda Tapa Olhos em Bidim Preto VBP26 Brasil Fetiche','',''),(272,4,'Fantasia Luxo Noiva Sensual Kayo Valentin','&lt;p&gt;Fantasia erótica de noiva confeccionada em tule com elastano composta por top, saia c/tanga fio dental, luvas, véu e persex.&lt;br&gt;&lt;/p&gt;','','Fantasia Luxo Noiva Sensual Kayo Valentin','',''),(273,4,'Gel Comestivel Sabor morango Love Sex','&lt;p&gt;O gel térmico Love Sex possui características marcantes que vão torna o prazer da sua relação muito mais excitante, seu aquecimento se dá quando o&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel térmico entra em contato com a pele e basta um leve sopro para que seu parceiro(a) vá ao delírio com uma sensação de aquecimento super excitante.&lt;/p&gt;','','Gel Comestivel Sabor morango Love Sex','',''),(274,4,'Gel Comestivel Sabor menta Love Sex','&lt;p&gt;O gel térmico Love Sex possui características marcantes que vão torna o prazer da sua relação muito mais excitante, seu aquecimento se dá quando o&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel térmico entra em contato com a pele e basta um leve sopro para que seu parceiro(a) vá ao delírio com uma sensação de aquecimento super excitante.&lt;/p&gt;','','Gel Comestivel Sabor menta Love Sex','',''),(275,4,'Gel Comestivel Sabor choco-menta Love Sex','&lt;p&gt;O gel térmico Love Sex possui características marcantes que vão torna o prazer da sua relação muito mais excitante, seu aquecimento se dá quando o&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel térmico entra em contato com a pele e basta um leve sopro para que seu parceiro(a) vá ao delírio com uma sensação de aquecimento super excitante.&lt;/p&gt;','','Gel Comestivel Sabor choco-menta Love Sex','',''),(277,4,'Gel Comestivel Sabor tutti-frutti Love Sex','&lt;p&gt;O gel térmico Love Sex possui características marcantes que vão torna o prazer da sua relação muito mais excitante, seu aquecimento se dá quando o&amp;nbsp;&lt;/p&gt;&lt;p&gt;gel térmico entra em contato com a pele e basta um leve sopro para que seu parceiro(a) vá ao delírio com uma sensação de aquecimento super excitante.&lt;/p&gt;','','Gel Comestivel Sabor tutti-frutti Love Sex','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3436 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (3425,176,'catalog/FANTASIAS/Fantasias completas/Fantasia Diabinha - SL2016001.ATRAS - Soft Love.jpg',0),(3434,206,'catalog/LINGERIE/Saias/Sainha Lolita - 3310 - Pimenta Sexy Cor Vermelho.jpg',0),(3433,207,'catalog/LINGERIE/Saias/Sainha Sedutora Liga - 8043.ATRAS - Pimenta Sexy - Cor preto.jpg',0),(3428,186,'catalog/FANTASIAS/Mini Fantasias/Mini Fantasia Mulher Maravilha - 7053 .ATRAS- Pimenta Sexy.jpg',0),(3424,175,'catalog/FANTASIAS/Fantasias completas/Fantasia Colegial - 6542.atras - Sexy Fantasy.png',0),(3423,93,'catalog/BANHO-SENSUAL-ROMANTISMO/Espuma de Banho/Kit Para banho Oriental2 5pá - PK808 - Kgel.jpg',0),(3421,91,'catalog/BANHO-SENSUAL-ROMANTISMO/Ducha Ginecologica/Ducha Higienica IN-M Sex Clean2 - 2336 - Carbogel.jpg',0),(3422,91,'catalog/BANHO-SENSUAL-ROMANTISMO/Ducha Ginecologica/Ducha Higienica IN-M Sex Clean - 2336 - Carbogel.jpg',0),(3435,208,'catalog/LINGERIE/Vestido/Vestido KristalATRAS - Kayo Valentin.jpg',0),(3427,184,'catalog/FANTASIAS/Mini Fantasias/Mini Fantasia Baba II - 7056.ATRAS - Pimenta Sexy.jpg',0),(3431,201,'catalog/LINGERIE/Meias/Meia Arrastao 7.8 Com Renda Preta2 - MP06 - Perrutextil.jpg',0),(3430,196,'catalog/LINGERIE/Conjuntos/Conjunto Doáura-ATRAS - Kayo Valentin.jpg',0),(3429,190,'catalog/LINGERIE/Calcinhas/Calcinha Perfumada Morango na Caixinha com Persex2 - Delirius Plus.jpg',0),(3426,182,'catalog/FANTASIAS/Fantasias completas/Fantasia Seduá∆o - 6547.ATRAS- Sexy Fantasy.png',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (274,197,13,'',1),(275,197,14,'',1),(276,206,13,'',1),(277,207,13,'',1),(271,195,13,'',1),(269,189,13,'',1),(270,188,13,'',1),(272,195,14,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (139,277,207,13,49,1,1,'0.0000','+',0,'+','0.00000000','+'),(138,276,206,13,51,1,1,'0.0000','+',0,'+','0.00000000','+'),(137,276,206,13,50,1,1,'0.0000','+',0,'+','0.00000000','+'),(133,272,195,14,53,1,1,'0.0000','+',0,'+','0.00000000','+'),(132,271,195,13,49,1,1,'0.0000','+',0,'+','0.00000000','+'),(130,269,189,13,49,1,1,'0.0000','+',0,'+','0.00000000','+'),(131,270,188,13,51,1,1,'0.0000','+',0,'+','0.00000000','+'),(136,275,197,14,53,1,1,'0.0000','+',0,'+','0.00000000','+'),(135,274,197,13,50,1,1,'0.0000','+',0,'+','0.00000000','+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (50,65),(50,72),(51,65),(51,73),(52,65),(52,74),(53,65),(53,72),(54,65),(54,72),(55,65),(55,72),(56,65),(56,72),(57,65),(57,74),(58,65),(58,73),(59,65),(59,73),(61,65),(61,73),(62,65),(62,76),(63,65),(63,73),(64,65),(64,76),(65,65),(65,76),(66,65),(66,76),(67,65),(67,76),(68,65),(68,76),(69,65),(69,76),(70,65),(70,76),(71,65),(71,76),(72,65),(72,77),(73,65),(73,77),(75,65),(75,79),(76,65),(76,80),(77,65),(77,79),(78,65),(78,80),(79,65),(79,80),(80,65),(80,80),(81,65),(81,81),(82,65),(82,81),(83,65),(83,82),(84,66),(84,83),(85,66),(85,83),(86,66),(86,83),(87,66),(87,84),(88,66),(88,84),(89,66),(89,84),(90,66),(90,84),(91,67),(91,85),(92,67),(92,86),(93,67),(93,86),(94,67),(94,86),(95,67),(95,87),(96,67),(96,87),(97,67),(97,87),(98,67),(98,88),(99,67),(99,89),(100,67),(100,89),(101,68),(101,90),(102,68),(102,90),(103,68),(103,90),(104,68),(104,90),(105,68),(105,90),(106,68),(106,91),(107,68),(107,92),(108,68),(108,92),(109,68),(109,92),(110,68),(110,93),(112,69),(112,93),(113,68),(113,93),(114,68),(114,93),(115,68),(115,93),(116,68),(116,93),(118,68),(118,94),(119,68),(119,94),(120,68),(120,94),(121,68),(121,95),(122,68),(122,95),(123,68),(123,96),(124,68),(124,96),(125,69),(125,97),(126,69),(126,97),(127,69),(127,97),(128,69),(128,97),(129,69),(129,98),(130,69),(130,98),(131,69),(131,98),(132,69),(132,98),(133,69),(133,98),(134,69),(134,98),(135,69),(135,98),(136,69),(136,98),(137,69),(137,99),(138,69),(138,99),(139,69),(139,99),(140,69),(140,99),(141,69),(141,99),(142,69),(142,100),(143,69),(143,100),(144,69),(144,100),(145,69),(145,100),(146,69),(146,100),(147,69),(147,100),(148,69),(148,100),(149,69),(149,101),(150,69),(150,101),(151,69),(151,101),(152,69),(152,101),(153,69),(153,101),(154,69),(154,102),(155,69),(155,102),(156,69),(156,102),(157,69),(157,102),(158,69),(158,102),(159,69),(159,102),(160,69),(160,102),(161,69),(161,103),(162,69),(162,103),(163,69),(163,103),(164,69),(164,103),(165,69),(165,104),(166,69),(166,96),(167,69),(167,96),(168,69),(168,106),(169,69),(169,106),(170,43),(170,49),(171,43),(171,49),(172,43),(172,50),(173,43),(173,50),(174,43),(174,50),(175,70),(175,107),(176,70),(176,107),(177,70),(177,107),(178,70),(178,107),(179,70),(179,107),(180,70),(180,107),(181,70),(181,107),(182,70),(182,107),(183,70),(183,108),(184,70),(184,108),(185,70),(185,108),(186,70),(186,108),(187,110),(188,71),(188,109),(189,71),(189,109),(190,71),(190,111),(191,71),(191,111),(192,71),(192,111),(193,71),(193,112),(194,71),(194,112),(195,71),(195,112),(196,71),(196,113),(197,71),(197,114),(198,71),(198,115),(199,71),(199,115),(200,71),(200,115),(201,71),(201,115),(202,71),(202,115),(203,71),(203,115),(204,71),(204,115),(205,71),(205,115),(206,71),(206,116),(207,71),(207,116),(208,71),(208,117),(209,44),(209,110),(210,44),(210,110),(211,44),(211,110),(212,44),(212,110),(213,110),(214,44),(214,110),(215,44),(215,110),(216,110),(217,44),(217,110),(218,44),(218,110),(219,44),(219,118),(220,44),(220,118),(221,44),(221,118),(222,44),(222,52),(223,44),(223,52),(224,44),(224,52),(225,44),(225,52),(226,44),(226,52),(227,52),(228,52),(229,52),(230,52),(231,44),(231,52),(232,52),(233,44),(233,52),(234,44),(234,53),(235,44),(235,53),(236,44),(236,53),(237,44),(237,53),(238,53),(239,44),(239,53),(240,44),(240,53),(241,44),(241,53),(242,44),(242,53),(244,44),(244,53),(245,44),(245,53),(246,44),(246,53),(247,44),(247,53),(248,46),(248,119),(249,119),(250,119),(251,47),(251,56),(252,47),(252,56),(253,47),(253,56),(254,47),(254,56),(255,47),(255,57),(256,47),(256,57),(257,47),(257,58),(258,47),(258,58),(259,47),(259,63),(260,47),(260,63),(261,47),(261,59),(262,59),(263,59),(264,59),(265,47),(265,61),(266,61),(267,47),(267,62),(268,47),(268,120),(269,47),(269,64),(270,47),(270,64),(271,47),(271,60),(272,70),(272,107),(273,68),(273,93),(274,68),(274,93),(275,68),(275,93),(276,68),(276,93),(277,68),(277,93);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (51,0,0),(67,0,0),(64,0,0),(68,0,0),(69,0,0),(66,0,0),(65,0,0),(50,0,0),(63,0,0),(54,0,0),(62,0,0),(61,0,0),(59,0,0),(58,0,0),(57,0,0),(55,0,0),(56,0,0),(53,0,0),(52,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0),(83,0,0),(84,0,0),(85,0,0),(86,0,0),(87,0,0),(88,0,0),(89,0,0),(90,0,0),(91,0,0),(92,0,0),(93,0,0),(94,0,0),(95,0,0),(96,0,0),(97,0,0),(98,0,0),(99,0,0),(100,0,0),(101,0,0),(102,0,0),(103,0,0),(104,0,0),(105,0,0),(106,0,0),(107,0,0),(108,0,0),(109,0,0),(110,0,0),(276,0,0),(112,0,0),(113,0,0),(114,0,0),(115,0,0),(116,0,0),(118,0,0),(119,0,0),(120,0,0),(121,0,0),(122,0,0),(123,0,0),(124,0,0),(125,0,0),(126,0,0),(127,0,0),(128,0,0),(129,0,0),(130,0,0),(131,0,0),(132,0,0),(133,0,0),(134,0,0),(135,0,0),(136,0,0),(137,0,0),(138,0,0),(139,0,0),(140,0,0),(141,0,0),(142,0,0),(143,0,0),(144,0,0),(145,0,0),(146,0,0),(147,0,0),(148,0,0),(149,0,0),(150,0,0),(151,0,0),(152,0,0),(153,0,0),(154,0,0),(155,0,0),(156,0,0),(157,0,0),(158,0,0),(159,0,0),(160,0,0),(161,0,0),(162,0,0),(163,0,0),(164,0,0),(165,0,0),(166,0,0),(167,0,0),(168,0,0),(169,0,0),(170,0,0),(171,0,0),(172,0,0),(173,0,0),(174,0,0),(175,0,0),(176,0,0),(177,0,0),(178,0,0),(179,0,0),(180,0,0),(181,0,0),(182,0,0),(183,0,0),(184,0,0),(185,0,0),(186,0,0),(187,0,0),(188,0,0),(189,0,0),(190,0,0),(191,0,0),(192,0,0),(193,0,0),(194,0,0),(195,0,0),(196,0,0),(197,0,0),(198,0,0),(199,0,0),(200,0,0),(201,0,0),(202,0,0),(203,0,0),(204,0,0),(205,0,0),(206,0,0),(207,0,0),(208,0,0),(209,0,0),(210,0,0),(211,0,0),(212,0,0),(213,0,0),(214,0,0),(215,0,0),(216,0,0),(217,0,0),(218,0,0),(219,0,0),(220,0,0),(221,0,0),(222,0,0),(223,0,0),(224,0,0),(225,0,0),(226,0,0),(227,0,0),(228,0,0),(229,0,0),(230,0,0),(231,0,0),(232,0,0),(233,0,0),(234,0,0),(235,0,0),(236,0,0),(237,0,0),(238,0,0),(239,0,0),(240,0,0),(241,0,0),(242,0,0),(243,0,0),(244,0,0),(245,0,0),(246,0,0),(247,0,0),(248,0,0),(249,0,0),(250,0,0),(251,0,0),(252,0,0),(253,0,0),(254,0,0),(255,0,0),(256,0,0),(257,0,0),(258,0,0),(259,0,0),(260,0,0),(261,0,0),(262,0,0),(263,0,0),(264,0,0),(265,0,0),(266,0,0),(267,0,0),(268,0,0),(269,0,0),(270,0,0),(271,0,0),(272,0,0),(273,0,0),(274,0,0),(275,0,0),(277,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(112,0),(113,0),(114,0),(115,0),(116,0),(118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(139,0),(140,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0),(164,0),(165,0),(166,0),(167,0),(168,0),(169,0),(170,0),(171,0),(172,0),(173,0),(174,0),(175,0),(176,0),(177,0),(178,0),(179,0),(180,0),(181,0),(182,0),(183,0),(184,0),(185,0),(186,0),(187,0),(188,0),(189,0),(190,0),(191,0),(192,0),(193,0),(194,0),(195,0),(196,0),(197,0),(198,0),(199,0),(200,0),(201,0),(202,0),(203,0),(204,0),(205,0),(206,0),(207,0),(208,0),(209,0),(210,0),(211,0),(212,0),(213,0),(214,0),(215,0),(216,0),(217,0),(218,0),(219,0),(220,0),(221,0),(222,0),(223,0),(224,0),(225,0),(226,0),(227,0),(228,0),(229,0),(230,0),(231,0),(232,0),(233,0),(234,0),(235,0),(236,0),(237,0),(238,0),(239,0),(240,0),(241,0),(242,0),(243,0),(244,0),(245,0),(246,0),(247,0),(248,0),(249,0),(250,0),(251,0),(252,0),(253,0),(254,0),(255,0),(256,0),(257,0),(258,0),(259,0),(260,0),(261,0),(262,0),(263,0),(264,0),(265,0),(266,0),(267,0),(268,0),(269,0),(270,0),(271,0),(272,0),(273,0),(274,0),(275,0),(276,0),(277,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
INSERT INTO `oc_return` VALUES (1,0,0,0,'dsfgeas','dsfgdsfg','dsfds@com.com','324534535','fgdhsdf','grhfdg',1,0,1,0,2,'','0000-00-00','2015-08-13 15:36:19','2015-08-13 15:36:19');
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,4,'Refunded'),(2,4,'Credit Issued'),(3,4,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,4,'Dead On Arrival'),(2,4,'Received Wrong Item'),(3,4,'Order Error'),(4,4,'Faulty, please supply details'),(5,4,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,4,'Pending'),(3,4,'Complete'),(2,4,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(9668,0,'pagseguro','pagseguro_order_devolvida','13',0),(9667,0,'pagseguro','pagseguro_order_disputa','17',0),(9666,0,'pagseguro','pagseguro_order_paga','5',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(9411,0,'correios','correios_declarar_valor','n',0),(9410,0,'correios','correios_aviso_recebimento','n',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(837,0,'category','category_status','1',0),(158,0,'account','account_status','1',0),(954,0,'affiliate','affiliate_status','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(9665,0,'pagseguro','pagseguro_order_analise','18',0),(9664,0,'pagseguro','pagseguro_order_aguardando_pagamento','1',0),(9663,0,'pagseguro','pagseguro_tipo_frete','0',0),(10019,0,'config','config_google_captcha_secret','',0),(10018,0,'config','config_google_captcha_public','',0),(10005,0,'config','config_seo_url','1',0),(10006,0,'config','config_file_max_size','30000000',0),(10007,0,'config','config_file_ext_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(10008,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(10009,0,'config','config_maintenance','1',0),(10010,0,'config','config_password','1',0),(10011,0,'config','config_encryption','cd0599370ea4515378b6d42ad00502bb',0),(10012,0,'config','config_compression','9',0),(10013,0,'config','config_error_display','0',0),(10014,0,'config','config_error_log','1',0),(10015,0,'config','config_error_filename','error.log',0),(10016,0,'config','config_google_analytics','',0),(10017,0,'config','config_google_analytics_status','0',0),(9653,0,'tm_social_list','tm_social_list_google_plus','https://plus.google.com/100525777783796120950/posts',0),(9652,0,'tm_social_list','tm_social_list_facebook','https://www.facebook.com/intimus0604',0),(9651,0,'tm_social_list','tm_social_list_youtube','https://www.youtube.com/channel/UCEcNao-Uf5J44clx4yWuWNQ',0),(9650,0,'tm_social_list','tm_social_list_status','1',0),(7545,0,'filter','filter_status','1',0),(10020,0,'config','config_google_captcha_status','0',0),(10004,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(10003,0,'config','config_shared','0',0),(9995,0,'config','config_mail_parameter','',0),(9996,0,'config','config_mail_smtp_hostname','',0),(9997,0,'config','config_mail_smtp_username','',0),(9998,0,'config','config_mail_smtp_password','',0),(9999,0,'config','config_mail_smtp_port','25',0),(10000,0,'config','config_mail_smtp_timeout','5',0),(10001,0,'config','config_mail_alert','',0),(10002,0,'config','config_secure','0',0),(9994,0,'config','config_mail_protocol','mail',0),(9993,0,'config','config_ftp_status','1',0),(9992,0,'config','config_ftp_root','/',0),(9991,0,'config','config_ftp_password','37hfweufh37',0),(9990,0,'config','config_ftp_username','intimussexy',0),(9989,0,'config','config_ftp_port','21',0),(9988,0,'config','config_ftp_hostname','127.0.0.1',0),(9987,0,'config','config_image_location_height','50',0),(9986,0,'config','config_image_location_width','268',0),(9985,0,'config','config_image_cart_height','100',0),(9983,0,'config','config_image_wishlist_height','47',0),(9984,0,'config','config_image_cart_width','100',0),(9982,0,'config','config_image_wishlist_width','47',0),(9981,0,'config','config_image_compare_height','180',0),(9980,0,'config','config_image_compare_width','180',0),(9979,0,'config','config_image_related_height','270',0),(9978,0,'config','config_image_related_width','270',0),(9977,0,'config','config_image_additional_height','88',0),(9976,0,'config','config_image_additional_width','88',0),(9975,0,'config','config_image_product_height','220',0),(9973,0,'config','config_image_popup_height','800',0),(9974,0,'config','config_image_product_width','220',0),(9970,0,'config','config_image_thumb_width','800',0),(9971,0,'config','config_image_thumb_height','800',0),(9972,0,'config','config_image_popup_width','800',0),(9969,0,'config','config_image_category_height','190',0),(9968,0,'config','config_image_category_width','190',0),(9967,0,'config','config_icon','catalog/favicon.png',0),(9966,0,'config','config_logo','catalog/logo.png',0),(9965,0,'config','config_return_status_id','2',0),(9964,0,'config','config_return_id','0',0),(9963,0,'config','config_affiliate_mail','0',0),(9962,0,'config','config_affiliate_id','4',0),(9961,0,'config','config_affiliate_commission','5',0),(9960,0,'config','config_affiliate_auto','0',0),(9959,0,'config','config_affiliate_approval','0',0),(9958,0,'config','config_stock_checkout','0',0),(9957,0,'config','config_stock_warning','0',0),(9956,0,'config','config_stock_display','0',0),(9955,0,'config','config_order_mail','0',0),(9954,0,'config','config_complete_status','a:1:{i:0;s:1:\"5\";}',1),(9953,0,'config','config_processing_status','a:1:{i:0;s:1:\"2\";}',1),(9952,0,'config','config_order_status_id','1',0),(9951,0,'config','config_checkout_id','5',0),(9950,0,'config','config_checkout_guest','1',0),(9949,0,'config','config_cart_weight','1',0),(9948,0,'config','config_api_id','25',0),(9947,0,'config','config_invoice_prefix','INV-2013-00',0),(9945,0,'config','config_account_id','3',0),(9946,0,'config','config_account_mail','0',0),(9662,0,'pagseguro','pagseguro_update_status_alert','1',0),(9661,0,'pagseguro','pagseguro_posfixo','',0),(9660,0,'pagseguro','pagseguro_total','1',0),(9659,0,'pagseguro','pagseguro_email','ricaardosb@gmail.com',0),(9658,0,'pagseguro','pagseguro_token','C61D5378971A4033BD9C0BD500F7AE12',0),(9409,0,'correios','correios_mao_propria','n',0),(9408,0,'correios','correios_contrato_senha','',0),(9407,0,'correios','correios_contrato_codigo','',0),(9406,0,'correios','correios_total_81850','',0),(9405,0,'correios','correios_total_81833','',0),(9404,0,'correios','correios_total_81868','',0),(9403,0,'correios','correios_total_81035','',0),(9402,0,'correios','correios_total_81027','',0),(9401,0,'correios','correios_total_81019','',0),(9400,0,'correios','correios_total_41300','',0),(9399,0,'correios','correios_total_41068','',0),(9398,0,'correios','correios_total_40606','',0),(9397,0,'correios','correios_total_40568','',0),(9396,0,'correios','correios_total_40444','',0),(9395,0,'correios','correios_total_40436','',0),(9394,0,'correios','correios_total_40096','',0),(9393,0,'correios','correios_total_40126','',0),(9392,0,'correios','correios_total_41262','',0),(9391,0,'correios','correios_total_41106','',0),(9390,0,'correios','correios_41106','1',0),(9389,0,'correios','correios_total_40290','',0),(9388,0,'correios','correios_total_40169','',0),(9387,0,'correios','correios_total_40215','',0),(9386,0,'correios','correios_total_40045','',0),(9385,0,'correios','correios_total_40010','',0),(9384,0,'correios','correios_40010','1',0),(9383,0,'correios','correios_postcode','90540040',0),(9944,0,'config','config_login_attempts','5',0),(9943,0,'config','config_customer_price','0',0),(9942,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(9941,0,'config','config_customer_group_id','1',0),(9940,0,'config','config_customer_online','0',0),(9939,0,'config','config_tax_customer','shipping',0),(9938,0,'config','config_tax_default','shipping',0),(9937,0,'config','config_tax','0',0),(9936,0,'config','config_voucher_max','1000',0),(9935,0,'config','config_voucher_min','1',0),(9934,0,'config','config_review_mail','0',0),(9932,0,'config','config_review_status','1',0),(9933,0,'config','config_review_guest','1',0),(9931,0,'config','config_limit_admin','20',0),(9930,0,'config','config_product_description_length','100',0),(9929,0,'config','config_product_limit','24',0),(9928,0,'config','config_product_count','1',0),(9927,0,'config','config_weight_class_id','1',0),(9926,0,'config','config_length_class_id','1',0),(9925,0,'config','config_currency_auto','0',0),(9924,0,'config','config_currency','BRL',0),(9923,0,'config','config_admin_language','pt-br',0),(9922,0,'config','config_language','pt-br',0),(9918,0,'config','config_template','theme613',0),(9919,0,'config','config_layout_id','4',0),(9920,0,'config','config_country_id','30',0),(9921,0,'config','config_zone_id','',0),(9917,0,'config','config_meta_keyword','',0),(9412,0,'correios','correios_adicional','',0),(9413,0,'correios','correios_prazo_adicional','',0),(9414,0,'correios','correios_tax_class_id','0',0),(9415,0,'correios','correios_geo_zone_id','0',0),(9416,0,'correios','correios_status','1',0),(9417,0,'correios','correios_sort_order','',0),(9916,0,'config','config_meta_description','IntimusSexy - O portal do prazer',0),(9914,0,'config','config_comment','',0),(9915,0,'config','config_meta_title','IntimusSexy - O portal do prazer',0),(9913,0,'config','config_open','Seg-Sex das 9:00 am até 5:00 pm',0),(9911,0,'config','config_fax','',0),(9912,0,'config','config_image','',0),(9910,0,'config','config_telephone','(51) 3907-5924',0),(9909,0,'config','config_email','fernando.mendes@webca.com.br',0),(9908,0,'config','config_geocode','40.6700, -73.9400',0),(9654,0,'tm_social_list','tm_social_list_twitter','',0),(9655,0,'tm_social_list','tm_social_list_pinterest','',0),(9656,0,'tm_social_list','tm_social_list_instagram','',0),(9657,0,'tm_social_list','tm_social_list_vimeo','',0),(9669,0,'pagseguro','pagseguro_order_cancelada','1',0),(9670,0,'pagseguro','pagseguro_geo_zone_id','0',0),(9671,0,'pagseguro','pagseguro_status','1',0),(9672,0,'pagseguro','pagseguro_sort_order','',0),(9907,0,'config','config_address','contato@intimussexy.com.br',0),(9906,0,'config','config_owner','IntimusSexy - O portal do prazer',0),(9905,0,'config','config_name','IntimusSexy - O portal do prazer',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,4,'In Stock'),(8,4,'Pre-Order'),(5,4,'Out Of Stock'),(6,4,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)','20.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tm_newsletter`
--

DROP TABLE IF EXISTS `oc_tm_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tm_newsletter` (
  `tm_newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_newsletter_email` varchar(255) NOT NULL,
  PRIMARY KEY (`tm_newsletter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tm_newsletter`
--

LOCK TABLES `oc_tm_newsletter` WRITE;
/*!40000 ALTER TABLE `oc_tm_newsletter` DISABLE KEYS */;
INSERT INTO `oc_tm_newsletter` VALUES (1,'sadsa@r.ru'),(2,''),(3,'intimussexy0604@gmail.com');
/*!40000 ALTER TABLE `oc_tm_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1711 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (834,'category_id=26','pc'),(835,'category_id=27','mac'),(1233,'manufacturer_id=12','sexy-fantasy'),(1682,'information_id=4','sobre'),(1229,'manufacturer_id=11','adao-e-eva'),(775,'category_id=46','macs'),(1679,'category_id=44','masturbadores'),(1203,'category_id=50',''),(1196,'category_id=43',''),(785,'category_id=57','tablet'),(1199,'category_id=46',''),(790,'category_id=43','test11'),(1202,'category_id=49',''),(794,'category_id=49','test17'),(795,'category_id=50','test18'),(1571,'product_id=220','plug-conico-g-1944ab-sexy-fantasy'),(1577,'category_id=52','protese-com-vibro'),(798,'category_id=58','test25'),(1578,'category_id=53','protese-sem-vibro'),(1570,'product_id=219','plug-anal-9cm-x-2cm-2310-sexy-fantasy'),(802,'category_id=56','test24'),(1255,'product_id=55','baralho-kama-sutra -transexual-54-cartas-soft-love'),(1254,'product_id=54','baralho-kama-sutra-lesbian-54-cartas-sldbl54-soft-Love'),(1253,'product_id=53','baralho-kama-sutra-gay-54-cartas-sldbg54-soft-love'),(1246,'product_id=52','chaveiro-mini-penis-5204-sexy-fantasy'),(1661,'category_id=74','chaveiros'),(1251,'manufacturer_id=13','soft-love'),(1662,'category_id=73','dadinhos'),(1248,'product_id=50','baralho-kama-sutra-completo-ks008-adao-e-eva'),(1659,'category_id=72','baralhos'),(1260,'product_id=51','dado-posicoes-hetero-5010-sexy-fantasy'),(1261,'product_id=59','dado-posicoes-hetero-glow-brilha-no-escuro-5013-sexy-fantasy'),(1647,'information_id=6','entrega'),(1683,'information_id=3','privacidade'),(1650,'information_id=5','termos'),(845,'common/home',''),(846,'information/contact','contact-us'),(847,'information/sitemap','sitemap'),(848,'product/special','specials'),(849,'product/manufacturer','brands'),(850,'product/compare','compare-products'),(851,'product/search','search'),(852,'checkout/cart','cart'),(853,'checkout/checkout','checkout'),(854,'account/login','login'),(855,'account/logout','logout'),(856,'account/voucher','vouchers'),(857,'account/wishlist','wishlist'),(858,'account/account','my-account'),(859,'account/order','order-history'),(860,'account/newsletter','newsletter'),(861,'account/return/add','return-add'),(862,'account/forgotten','forgot-password'),(863,'account/download','downloads'),(864,'account/return','returns'),(865,'account/transaction','transactions'),(866,'account/register','create-account'),(867,'account/recurring','recurring'),(868,'account/address','address-book'),(869,'account/reward','reward-points'),(870,'affiliate/forgotten','affiliate-forgot-password'),(871,'affiliate/register','create-affiliate-account'),(872,'affiliate/login','affiliate-login'),(873,'affiliate/account','affiliates'),(1567,'category_id=118','plug-anal'),(1209,'category_id=56',''),(1210,'category_id=57',''),(1211,'category_id=58',''),(1212,'category_id=59',''),(1213,'category_id=60',''),(1214,'category_id=61',''),(1215,'category_id=62',''),(1216,'category_id=63',''),(1217,'category_id=64',''),(1219,'category_id=66',''),(1678,'category_id=67','banho-sensual'),(1222,'category_id=69',''),(1223,'category_id=70',''),(1680,'category_id=71','lingerie'),(1256,'product_id=56','mini-baralho-strip-sexy-em-caixa-5186-sexy-fantasy'),(1257,'product_id=57','chaveiro-mini-seio-5205-sexy-fantasy'),(1262,'product_id=58','dado-posicoes-gay-5015-sexy-fantasy'),(1273,'product_id=61','dado-posicoes-lesbicas-5016-sexy-fantasy'),(1660,'category_id=76','capa-peniana-dedo-lingua'),(1272,'product_id=62','capa-expansora-com-estimulador-13-cm-2450-sexy-fantasy'),(1274,'product_id=63','dado-striper-tease-para-casal-3-unidades-5060-sexy-fantasy'),(1275,'product_id=64','capa-para-dedos-circulos-5612-sexy-fantasy'),(1276,'product_id=65','capa-para-lingua-5605-sexy-fantasy'),(1652,'product_id=66','capa-peniana-17-5-x-4-2cm-1925b-sexy-fantasy'),(1651,'product_id=67','capa-peniana-20-x-5cm-1930b-sexy-fantasy'),(1281,'product_id=68','capa-peniana-c-vibro-go-hard-bi026204-sexy-fantasy'),(1282,'product_id=69','capa-peniana-cyberskin-linha-extreme-12x2-bi-016001f-sexy-fantasy'),(1284,'product_id=70','conjunto-estimulador-ponto-g-5611-sexy-fantasy'),(1285,'product_id=71','kit-dedeira-camisinha-para-dedo-5219-sexy-fantasy'),(1658,'category_id=77','cinta-para-protese'),(1288,'product_id=72','cinto-duplo-em-couro-sintetico -c-2-penis-realisticos-6026-sexy-fantasy'),(1289,'product_id=73','cinto-em-couro c-penis-realistico-14,5-x-4cm-6015-sexy-fantasy'),(1311,'product_id=75','bomba-peniana-manual-com-anel-masturbador-bb003-importacao'),(1296,'manufacturer_id=15','importacao'),(1677,'category_id=79','desenvolvedor-bomba-peniana'),(1676,'category_id=80','diversos'),(1312,'product_id=76','mini-trufa-vaginaktb13-importacao'),(1314,'product_id=77','desenvolvedor-bomba-peniana-manual-3581-sexy-fantasy'),(1315,'manufacturer_id=16','gtr-fantasias'),(1317,'product_id=78','pintinho-pula-pula-a-corda-gtr-fantasias'),(1318,'manufacturer_id=17','use-&amp;-abuse'),(1322,'product_id=79','pintometro-(medidor-de-penis)-use-e-abuse'),(1323,'product_id=80','saquinho-para-bolinha-importacao'),(1324,'manufacturer_id=18','la-pimienta'),(1675,'category_id=81','higienizador-de-acessorios'),(1326,'product_id=81','higienizador-para-protese-max-clean-120g-l124-la-pimienta'),(1327,'product_id=82','sex-clean-gel-higienizador-de-produtos-eroticos-4619-sexy-fantasy'),(1674,'category_id=82','kits-sensuais'),(1329,'manufacturer_id=19','love-yes'),(1330,'product_id=83','kit-sensual-eu-voce-ly208-love-yes'),(1673,'category_id=83','com-vibrador'),(1332,'product_id=84','anel-peniano-com-vibro-sexy-fantasy'),(1333,'product_id=85','anel-peniano-c-vibro-e-saliencias-massageadora-transp-an020-importacao'),(1334,'product_id=86','anel-companheiro-C-vibro-1905CB-sexy-fantasy'),(1672,'category_id=84','s-vibrador'),(1336,'product_id=87','anel-companheiro-12-4x3cm-1905ab-sexy-fantasy'),(1337,'product_id=88','anel-oriental p--estimulador-cores-variadas-2210-sexy-fantasy'),(1339,'product_id=89','anel-oriental-com-plug-anal-sexy-fantasy'),(1340,'product_id=90','anel-oriental-estimulador-duplo-cores-variadas-2220-sexy-fantasy'),(1671,'category_id=85','ducha-ginecologica'),(1342,'manufacturer_id=20','carbogel'),(1343,'product_id=91','ducha-higienica-inm-sex-clean-2336-carbogel'),(1670,'category_id=86','espuma-de-banho'),(1345,'product_id=92','espuma-de-banho-morango-110ml-l068-la-pimienta'),(1346,'manufacturer_id=21','kgel'),(1347,'product_id=93','kit-para-banho-oriental-5pç-pk808-kgel'),(1348,'product_id=94','espuma-de-banho-tutti-frutti-110ml-l067-la-pimienta'),(1349,'manufacturer_id=22','fashion'),(1669,'category_id=87','sabonete-intimo'),(1351,'product_id=95','sabonete-liquido-feminino-200ml-aromas-variados-fashion'),(1352,'manufacturer_id=23','apinil'),(1353,'product_id=96','sabonete-intimo-220ml-morango-11-apinil'),(1354,'product_id=97','sabonete-intimo-220ml-menta-10-apinil'),(1668,'category_id=88','sais-de-banho'),(1356,'product_id=98','sais-de-banho-morango-120g-l055-la-pimienta'),(1667,'category_id=89','vela-decorativa'),(1358,'product_id=99','vela-decorativa-em-formato-de-morango-com-6-unid-ly205-Love-Yes'),(1359,'product_id=100','vela-decorativa-em-formato-de-rosa-com-6-unid-ly206-love-yes'),(1360,'category_id=90','adesivo-comestivel'),(1361,'product_id=101','sticker-comestivel-adesivo-cupido-chocolate-105423-sexy-fantasy'),(1362,'product_id=102','sticker-comestivel-adesivo-cupido-menta-105423-sexy-fantasy'),(1363,'product_id=103','sticker-comestivel-adesivo-cupido-uva-105423-sexy-fantasy'),(1364,'product_id=104','sticker-comestivel-adesivo-sinalizador-105424-sexy-fantasy'),(1365,'product_id=105','sticker-comestivel-adesivo-sinalizador-uva-105424-sexy-fantasy'),(1366,'category_id=91','calcinha-comestivel'),(1368,'product_id=106','calcinha-comestivel-ai-delicia-sabores-variados-sexy-fantasy'),(1369,'category_id=92','capinha-comestivel'),(1370,'product_id=107','capinha-peniana-comestivel-sabor-chocolate-105436-sexy-fantasy'),(1371,'product_id=108','capinha-peniana-comestivel-sabor-menta-105437-sexy-fantasy'),(1373,'product_id=109','capinha-peniana-comestivel-sabor-morango105435-sexy-fantasy'),(1374,'category_id=93','gel-lamina-comestivel'),(1375,'product_id=110','gel-comestivel-black-ice-30mlslibi30-soft-love'),(1376,'manufacturer_id=24','love-sex'),(1379,'manufacturer_id=25','hot-flowers'),(1380,'product_id=112','gel-vibrante-vibroquete-menta-12ml-hc460-hot-flowers'),(1381,'product_id=113','gel-vibrante-vibroquete-morango-12ml-hc459-hot-flowers'),(1382,'manufacturer_id=26','Fresh'),(1383,'product_id=114','lamina-hortela-fresh'),(1384,'product_id=115','lamina-morango-leppin-heavy-fresh'),(1385,'manufacturer_id=27','danilla'),(1386,'product_id=116','lamina-paper-mint-menta-danilla'),(1388,'category_id=94','sexo-oral'),(1389,'product_id=118','chup-chup-bala-efervescente-menta-36g-7014-sexy-fantasy'),(1390,'product_id=119','chup-chup-bala-efervescente-morango-36g-7012-sexy-fantasy'),(1699,'product_id=120','garganta-profunda-strawberry-ice-morango-15g-co271-Adao-e-eva'),(1392,'category_id=95','tapa-sexo'),(1395,'product_id=121','tapa-sexo-comestivel-ai-delicia-menta-105432-sexy-fantasy'),(1396,'product_id=122','tapa-sexo-comestivel-ai-delicia-morango-105430-sexy-fantasy'),(1397,'category_id=96','vela-comestivel'),(1701,'product_id=123','vela-beijavel-morango c-champagne-creme-20g-500-sexy-fantasy'),(1399,'product_id=124','vela-hidratante-beijavel-de-morango-4690-sexy-fantasy'),(1400,'category_id=97','adstringente-apertar'),(1700,'product_id=125','adstrigente-lua-de-mel-15g-co036-adao-e-eva'),(1403,'product_id=126','kit-love-sensations-5-pomadas-de-funcoes-variadas-104400-sexy-fantasy'),(1404,'product_id=127','pomada-adstringente-gota-magica-7-5g-4414-sexy-fantasy'),(1406,'product_id=128','virginity-himen-artificial-c-3-unid-slfvy3-soft-love'),(1408,'category_id=98','anestesicos-anal'),(1409,'product_id=129','anestesico-anal-4x1-facilit-bisnaga-15ml-slfft15-soft-love'),(1410,'manufacturer_id=28','kalya'),(1415,'product_id=130','anestesico-apollo-6-5g-042-kalya'),(1412,'manufacturer_id=29','Intt'),(1413,'product_id=131','anestesico-extra-forte-striper-relaxante-forte-intt'),(1416,'product_id=132','anestesico-facilit-luby4gr-sllft4-soft-love'),(1417,'product_id=133','bisnaga-anestesico-sensory-10ml-4615-sexy-fantasy'),(1420,'product_id=134','bolinha-func-p-sexo-anal-facilit-hot-blackout-2-unid-slsbffac8-soft-love'),(1421,'product_id=135','gel-anestesico-p-sexo-anal-sensibilite-6g-0036-love-sex'),(1422,'product_id=136','pomada-anestesica-sensory-7-5G-4415-sexy-fantasy'),(1423,'category_id=99','bolinha-excitante'),(1519,'product_id=137','bolinha-beijavel-2-unid-sabores-variados-soft-love'),(1425,'product_id=138','bolinha-beijavel-morango-c-champ-hot-2-unid-slsbamc8-soft-love'),(1426,'product_id=139','bolinha-excitante-coracao-c-3-unid-cores-variadas-sexy-fantasy'),(1427,'product_id=140','bolinha-excitante-sexy-ball-pote-c-2-unid-morango-c-champ-4659-sexy-fantasy'),(1428,'product_id=141','bolinha-funcional-excitante-50-tons-de-cinza-2-unid-slsbfcin8-soft-love'),(1429,'category_id=100','excitantes'),(1430,'product_id=142','excitante-pomada-oriental-6g-0783-love-sex'),(1431,'manufacturer_id=30','garji'),(1432,'product_id=143','excitante-unissex-expansor-5ml-562-garji'),(1433,'manufacturer_id=31','loka-sensacao'),(1435,'product_id=144','po-magico-bruxinha-loka-sensacao'),(1436,'product_id=145','po-magico-da-bruxinha-100-natural-dJ013-loka-sensacao'),(1437,'product_id=146','pomada-dragao-chines-4ml-104420-sexy-fantasy'),(1438,'product_id=147','sexy-drink-po-magico-extra-forte-hc475-hot-flowers'),(1441,'manufacturer_id=32','rm'),(1684,'product_id=148','tesao-de-vaca-fuck-gotas-excitantes-para-bebida-rm'),(1443,'category_id=101','lubrificantes'),(1444,'manufacturer_id=33','surreale'),(1447,'product_id=149','gel-lubrificante-d-lab-neutro-120ml-surreale'),(1448,'product_id=150','gel-lubrificante-luby-6g-0781-love-sex'),(1449,'manufacturer_id=34','k-med'),(1450,'product_id=151','lubrificante-intimo-neutro-50g-k-med'),(1451,'product_id=152','lubrificante-intimo-lubrigel-sache-5g-1715-carbogel'),(1452,'product_id=153','lubrificante-lubes-neutro-30ml-564-garji'),(1453,'category_id=102','oleo-de-massagem'),(1457,'product_id=154','oleo-bifasico-linda-morango-e-avela-250ml-0940-love-sex'),(1458,'product_id=155','oleo-de-massagem-afrodisiaca-in-blue-60ml-kg402-kgel'),(1456,'product_id=156','oleo-de-massagem-siliconado-morango-60ml-kg421-kgel'),(1461,'product_id=157','oleo-p-massagem-afrodisiaca-sagha-especiaria-60ml-276-kalya'),(1462,'product_id=158','oleo-p-massagem-beijavel-fogo-e-gelo-everest-co232-Adao-e-eva'),(1464,'product_id=159','oleo-p-massagem-beijavel-fogo-e-gelo-menta-ice-co233-adao-e-eva'),(1465,'product_id=160','oleo-p-massagem-bifasico-duo-morango-4630-sexy-fantasy'),(1466,'category_id=103','prolongador-de-erecao-retardante'),(1467,'product_id=161','bisnaga-retardante-action-retard-10ml-4616-sexy-fantasy'),(1471,'product_id=162','excitante-e-prolongador-de-erecao-rigid-plus-15ml-slfrp15-soft-love'),(1469,'product_id=163','gel-retardante-potenza-6g-love-sex'),(1472,'product_id=164','retardante-retard-bisnaga-15ml-slfrd15-soft-love'),(1475,'category_id=104','sensibilizante-clitoris'),(1474,'product_id=165','clitor-max-sensibilizante-do-citoris-10ml-surreale'),(1706,'category_id=105','vela-funcional'),(1702,'product_id=166','vela-beijavel-creme-20g-sexy-fantasy'),(1705,'product_id=167','vela-multifuncional-sex-sens-seduction-40g-hc500-hot-flowers'),(1479,'category_id=106','vibrador-liquido'),(1480,'product_id=168','eletric-plus-vibrador-liquido-spray-jatos-15ml-sljep15-soft-love'),(1481,'product_id=169','vibrador-liquido-power-shock-gel-beijavel-morango-15ml-4146-sexy-fantasy'),(1482,'manufacturer_id=35','lu-riva'),(1483,'product_id=170','dvd-os-segredos-do-pompoarismo-lu-riva'),(1486,'product_id=171','dvd-10-licoes-praticas-para-strip-tease-lu-riva'),(1487,'product_id=172','o-manual-do-kamasutra-o-livro-do-amor-kt908-importacao'),(1488,'product_id=173','livro-de-strip-tease-10-licoes-praticas-para-strip-tease-lu-riva'),(1489,'product_id=174','livro-massagens-sensuais-excitantes-lu-riva'),(1490,'category_id=107','fantasias-completas'),(1491,'product_id=175','fantasia-colegial-6542-sexy-fantasy'),(1492,'product_id=176','fantasia-diabinha-sl2016001-soft-love'),(1493,'manufacturer_id=36','kayo-valentin'),(1494,'product_id=177','fantasia-luxo-bombeira-c-boina-kayo-valentin'),(1495,'product_id=178','fantasia-luxo-bombeira-vestido-6027-kayo-valentin'),(1653,'product_id=179','fantasia-luxo-noiva-saia-c-persex-6006-kayo-valentin'),(1497,'product_id=180','fantasia-empregada-kayo-valentin'),(1498,'product_id=181','fantasia-plus-size-gg-gueixa-6905-sexy-fantasy'),(1499,'product_id=182','fantasia-seducao-6547-sexy-fantasy'),(1500,'category_id=108','mini-fantasias'),(1501,'product_id=183','fantasia-mini-enfermeira-kayo-valentin'),(1502,'manufacturer_id=37','pimenta-sexy'),(1503,'product_id=184','mini-fantasia-baba-II-7056-pimenta-sexy'),(1504,'product_id=185','mini-fantasia-diabinha-3359-pimenta-sexy'),(1505,'product_id=186','mini-fantasia-mulher-maravilha-7053-pimenta-sexy'),(1506,'category_id=109','body-erotico'),(1569,'category_id=110','importados'),(1550,'product_id=187','boneca-inflavel-natalia-3-orificios-penetraveis-abm1023b-04-importacao'),(1513,'product_id=188','body-luxo-atrevida-6064-kayo-valentin'),(1511,'product_id=189','body-luxo-perigosa-6072-kayo-valentin'),(1514,'category_id=111','calcinhas'),(1515,'manufacturer_id=38','delirius-plus'),(1516,'product_id=190','calcinha-perf-morango-na-caixinha-c-persex-delirius-plus'),(1517,'product_id=191','tanga-c-persex-inter-kayo-valentin'),(1518,'product_id=192','tanga-fio-dental-cores-e-modelos-variados-rm'),(1520,'category_id=112','camisolas'),(1521,'product_id=193','camisola-ramila-estampas-variadas-kayo-valentin'),(1522,'product_id=194','camisola-sensual-luciana-estampas-variadas-kayo-valentin'),(1526,'product_id=195','camisola-gabi-ref-020-sempre-sexy-rm'),(1527,'category_id=113','conjuntos'),(1528,'product_id=196','conjunto-docura-kayo-valentin'),(1529,'category_id=114','espartilhos'),(1530,'manufacturer_id=39','de-mel'),(1531,'product_id=197','espartilho-adriel-de-mel'),(1532,'category_id=115','meias'),(1533,'manufacturer_id=40','perrutextil'),(1534,'product_id=198','meia-lisa-7-8-branca-mb15-perrutextil'),(1535,'product_id=199','meia-lisa-7-8-preta-mp15-perrutextil'),(1537,'product_id=200','meia-lisa-7-8-vermelha-mv15-perrutextil'),(1538,'product_id=201','meia-arrastao-7-8-com-renda-preta-mp06-perrutextil'),(1539,'product_id=202','meia-arrastao-7-8-com-renda-vermelha-mv06-perrutextil'),(1540,'manufacturer_id=41','sexy-imperio'),(1541,'product_id=203','meia-lisa-3-4-s-pe-c-renda-branco-sexy-imperio'),(1542,'product_id=204','meia-lisa-3-4-s-pe-c-renda-preto-sexy-Imperio'),(1543,'product_id=205','meia-lisa-3-4-s-pe-c-renda-vermelho-sexy-imperio'),(1544,'category_id=116','saia'),(1546,'product_id=207','sainha-sedutora-liga-8043-pimenta-sexy'),(1547,'product_id=206','sainha-lolita-3310-pimenta-sexy'),(1548,'category_id=117','vestido'),(1549,'product_id=208','vestido-kristal-kayo-valentin'),(1655,'product_id=209','masturbador-boca-em-cyber-cor-pele-sexdreams-pk005-importacao'),(1552,'product_id=210','masturbador-vagina-em-cyber-cor-pele-sexdreams-pk006-importacao'),(1560,'product_id=211','masturbador-vagina-1030ab-sexy-fantasy'),(1554,'product_id=212','vibrador-em-formato-de-batom-rosa-mv007-importacao'),(1555,'product_id=213','butterfly-com-mini-penis-estimulador-feminino-1015CB-sexy-fantasy'),(1559,'product_id=214','masturbador-vagina-em-cyber-skin-importacao'),(1558,'product_id=215','masturbador-vagina-c-vibrovv001-importacao'),(1564,'product_id=216','tenga-egg-original-acomp-lubrificante-mod-variados-importacao'),(1656,'product_id=217','masturbador-duplo-formato-de-halter-c-vagina-e-anus-ma028-importacao'),(1566,'product_id=218','vibrador-bullet-ovo-vibratorio-cores-variadas-importacao'),(1572,'product_id=221','massageador-de-prostata-c-alca-pl006-importacao'),(1580,'product_id=222','penis-c-vibro-17-5-x-4-5cm-linha-elegance-1bw001032-sexy-fantasy'),(1574,'product_id=223','penis-c-vibro-20-x-4-1-cm-linha-elegance-1bw001023-sexy-fantasy'),(1581,'product_id=224','penis-c-mini-vibrador-12-5x3cm-kt314p-importacao'),(1582,'product_id=225','penis-cor-pele-c-vibro-e-ventosa-15-3x4cm-1431-cvb-sexy-fantasy'),(1583,'product_id=226','penis-aroma-morango c-vibrador-18X4-4cm-f172550-sexy-fantasy'),(1585,'product_id=227','penis-aroma-tutti-frutti-c-vibrador-18X4,4cm-f172551-sexy-fantasy'),(1586,'product_id=228','penis-cor-pele-c-vibro-c-escroto-c-ventosa-15x3-8cm-1475-cvb-sexy-fantasy'),(1587,'product_id=229','penis-cor-pele-ponta-dupla-c-vibrador-41-5x5-5cm-1976-cb-sexy-fantasy'),(1588,'product_id=230','penis-cor-pele-c-vibro-e-ventosa-22x5-8cm-1830cvb-sexy-fantasy'),(1589,'product_id=231','protese-com-cinta-e-vibro-ct001-importacao'),(1590,'product_id=232','penis-cyber-skin-c-vibro-c-escroto-18X5cm-101650cb-sexy-fantasy'),(1591,'product_id=233','protese-giratoria-rotativa-cor-pele-importacao'),(1592,'product_id=234','penis-cor-pele-s-vibro-9-5x3-2cm-1120ab-sexy-fantasy'),(1593,'product_id=235','penis-aroma-morango-s-vibro-15-3x4cm-f143150-sexy-fantasy'),(1594,'product_id=236','penis-aroma-tutti-frutti-s-vibro-15-3x4cm-f143151-sexy-fantasy'),(1595,'product_id=237','penis-cor-pele-s-vibro-18x4-5cm-1641ab-sexy-fantasy'),(1596,'product_id=238','penis-s-vibro-c-ventosa-c-escroto-16-2x3-7cm-1576avb-sexy-fantasy'),(1597,'product_id=239','penis-s-vibro-c-escroto-18x4,4cm-1577ab-sexy-fantasy'),(1599,'product_id=240','penis-cor-pele-s-vibro-c-escroto-18x4-7cm-1679-ab-sexy-fantasy'),(1600,'product_id=241','penis-cor-pele-s-vibro-22x5-8cm-1830ab-sexy-fantasy'),(1601,'product_id=242','penis-cor-pele-ponta-dupla-32-5x3-9cm-1976as-sexy-fantasy'),(1602,'product_id=243','penis-s-vibro-17-5x3-8cm-fosforescente-ktf107-importacao'),(1603,'product_id=244','penis-cor-pele-s-vibro-c-escroto-22x5-3cm-1871ab-sexy-fantasy'),(1604,'product_id=245','penis-cyber-skin-vertebra-16x5cm-1500120-sexy-fantasy'),(1605,'product_id=246','penis-cyber-skin-c-vertebra-18x5cm-1500122-sexy-fantasy'),(1606,'product_id=247','penis-gigante-big-jow-40x10cm-1899asp-sexy-fantasy'),(1607,'category_id=119','bolinhas'),(1608,'product_id=248','bolinha-tailandesa-pequena-c-05-3302b-sexy-fantasy'),(1609,'product_id=249','conjunto-de-pompoar-cromado-c-02-bolas-submission-sls04-sexy-fantasy'),(1610,'product_id=250','bolinha-tailandesa-grande-c-esfera-interna-4-bolas-rosa-3142-b-sexy-fantasy'),(1611,'product_id=251','algemas-de-metal-c-pelucia-cores-variadas-rm'),(1612,'manufacturer_id=42','handccufs'),(1613,'product_id=252','algemas-de-metal-handccufs'),(1614,'manufacturer_id=43','brasil-fetiche'),(1615,'product_id=253','algemas-e-vendas-em-pelucia-cores-variadas-brasil-fetiche'),(1617,'product_id=254','algemas-em-couro-sintetico-preta-acsp83-brasil-fetiche'),(1618,'product_id=255','amarras-de-tecido-submission-sls10-sexy-fantasy'),(1619,'product_id=256','amarras-de-vinil-sls11-submission-sexy-fantasy'),(1620,'product_id=257','chicote-reforçado-c-6-tiras-40cm-preto-crp4050-brasil-fetiche'),(1624,'product_id=258','kit-chicote-luxo-tiras-30cm-c-venda-pelucia-preto-klvp73-brasil-fetiche'),(1623,'product_id=259','coleira-com-guia-cg55-brasil-fetiche'),(1625,'product_id=260','coleira-submission-sls15-sexy-fantasy'),(1626,'product_id=261','caixinha-tons-de-desejo-50-tons-de-cinza-1425rm'),(1628,'product_id=262','kit-bondagem-4-amarras-bidim-kbbp-112-brasil-fetiche'),(1629,'product_id=263','kit-bondagem-4-amarras-venda-pelucia-preto-kbop100-brasil-fetiche'),(1631,'product_id=264','kit-dominadora-cores-variadas-brasil-fetiche'),(1632,'product_id=265','mascara-mulher-gato-preta-mgp114-brasil-fetiche'),(1635,'product_id=266','mascara-tiazinha-fetiche-brasil'),(1657,'product_id=267','mordaca-bastao-mb52-brasil-fetiche'),(1637,'category_id=120','plug'),(1638,'product_id=268','plug-bol-6-esferas-preto-submission-sls02-sexy-fantasy'),(1639,'product_id=269','separador-de-bracos-33cm-sb56-brasil-fetiche'),(1640,'product_id=270','separador-de-pes-35cm-sp57-brasil-fetiche'),(1641,'product_id=271','venda-tapa-olhos-em-bidim-preto-vbp26-brasil-fetiche'),(1654,'product_id=272','fantasia-luxo-noiva-sensual-kayo-valentin'),(1681,'category_id=68','comestiveis'),(1686,'product_id=273','gel-comestivel-sabor-morango-love-sex'),(1693,'product_id=274','gel-comestivel-sabor-menta-love-sex'),(1691,'product_id=275','gel-comestivel-sabor-choco-menta-love-sex'),(1694,'product_id=276','gel-comestivel-sabor-uva-love-sex'),(1696,'product_id=277','gel-comestivel-sabor-tutti-frutti-love-sex'),(1707,'mercadolivre=mercadolivre/cron','mercadolivre_cron'),(1708,'mercadolivre=mercadolivre','mercadolivre_auth'),(1709,'mercadolivre=mercadolivre/callback','mercadolivre_callback'),(1710,'mercadolivre=mercadolivre/cron','mercadolivre_cron');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','5f4dcc3b5aa765d61d8327deb882cf99','0c8701a63','Intimus','Sexy','fernando.mendes@webca.com.br','','','177.148.188.73',1,'2016-04-05 22:30:47'),(2,1,'intimussexy','a1d33ab76f14f23d8a5717f04dd192cf7b61f454','d06a29d72','intimussexy','intimussexy','','','','201.47.194.178',1,'2016-04-14 15:07:17');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:220:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:15:\"module/parallax\";i:182;s:11:\"module/html\";i:183;s:18:\"module/tm_category\";i:184;s:15:\"module/tm_fbbox\";i:185;s:15:\"module/tm_fbbox\";i:186;s:17:\"module/bestseller\";i:187;s:13:\"module/latest\";i:188;s:14:\"module/special\";i:189;s:16:\"module/affiliate\";i:190;s:18:\"module/information\";i:191;s:19:\"module/tm_slideshow\";i:192;s:20:\"module/tm_google_map\";i:193;s:12:\"module/olark\";i:194;s:23:\"module/tm_cookie_policy\";i:195;s:20:\"module/tm_google_map\";i:196;s:19:\"module/tm_instagram\";i:197;s:20:\"module/tm_module_tab\";i:198;s:23:\"module/tm_cookie_policy\";i:199;s:20:\"module/tm_newsletter\";i:200;s:23:\"module/tm_cookie_policy\";i:201;s:21:\"module/tm_social_list\";i:202;s:21:\"module/tm_social_list\";i:203;s:17:\"module/tm_videobg\";i:204;s:18:\"module/tm_category\";i:205;s:23:\"module/tm_category_menu\";i:206;s:18:\"module/tm_category\";i:207;s:23:\"module/tm_category_menu\";i:208;s:26:\"module/tm_newsletter_popup\";i:209;s:23:\"module/tm_progress_bars\";i:210;s:23:\"module/tm_progress_bars\";i:211;s:13:\"module/filter\";i:212;s:23:\"module/tm_category_menu\";i:213;s:20:\"module/tm_newsletter\";i:214;s:11:\"module/html\";i:215;s:33:\"module/tm_single_category_product\";i:216;s:26:\"module/tm_newsletter_popup\";i:217;s:17:\"payment/pagseguro\";i:218;s:17:\"shipping/correios\";i:219;s:19:\"module/mercadolivre\";}s:6:\"modify\";a:220:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:15:\"module/parallax\";i:182;s:11:\"module/html\";i:183;s:18:\"module/tm_category\";i:184;s:15:\"module/tm_fbbox\";i:185;s:15:\"module/tm_fbbox\";i:186;s:17:\"module/bestseller\";i:187;s:13:\"module/latest\";i:188;s:14:\"module/special\";i:189;s:16:\"module/affiliate\";i:190;s:18:\"module/information\";i:191;s:19:\"module/tm_slideshow\";i:192;s:20:\"module/tm_google_map\";i:193;s:12:\"module/olark\";i:194;s:23:\"module/tm_cookie_policy\";i:195;s:20:\"module/tm_google_map\";i:196;s:19:\"module/tm_instagram\";i:197;s:20:\"module/tm_module_tab\";i:198;s:23:\"module/tm_cookie_policy\";i:199;s:20:\"module/tm_newsletter\";i:200;s:23:\"module/tm_cookie_policy\";i:201;s:21:\"module/tm_social_list\";i:202;s:21:\"module/tm_social_list\";i:203;s:17:\"module/tm_videobg\";i:204;s:18:\"module/tm_category\";i:205;s:23:\"module/tm_category_menu\";i:206;s:18:\"module/tm_category\";i:207;s:23:\"module/tm_category_menu\";i:208;s:26:\"module/tm_newsletter_popup\";i:209;s:23:\"module/tm_progress_bars\";i:210;s:23:\"module/tm_progress_bars\";i:211;s:13:\"module/filter\";i:212;s:23:\"module/tm_category_menu\";i:213;s:20:\"module/tm_newsletter\";i:214;s:11:\"module/html\";i:215;s:33:\"module/tm_single_category_product\";i:216;s:26:\"module/tm_newsletter_popup\";i:217;s:17:\"payment/pagseguro\";i:218;s:17:\"shipping/correios\";i:219;s:19:\"module/mercadolivre\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,4,'Christmas'),(7,4,'Birthday'),(8,4,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000'),(5,'2.20460000'),(6,'35.27400000');
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,4,'Kilogram','kg'),(2,4,'Gram','g'),(5,4,'Pound ','lb'),(6,4,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-23 16:10:16
