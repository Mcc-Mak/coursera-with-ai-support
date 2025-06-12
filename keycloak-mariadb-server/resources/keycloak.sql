/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.5.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: keycloak
-- ------------------------------------------------------
-- Server version	10.5.29-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text DEFAULT NULL,
  `REPRESENTATION` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  `DETAILS_JSON` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('234bbf14-a2bb-44dd-9e80-aae37f35f48d',1749684292074,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100',NULL,NULL,NULL,'REALM',NULL),('2d71f414-b458-4d17-9292-585bf70d454e',1749685108576,'98c61bee-7a7c-47d6-8721-3559b9e905c2','CREATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL,NULL,'CLIENT',NULL),('3210d401-6b17-4192-8390-e399339e2c2f',1749685029152,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','events/config',NULL,NULL,'REALM',NULL),('3e4c22cb-822a-4446-8336-18df32c59a69',1749685119755,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL,NULL,'CLIENT',NULL),('409f349f-c37a-4698-a95a-39499c09610c',1749684368637,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','CREATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/a0a419e8-c60e-47b3-8d61-da85fb6e9f78',NULL,NULL,'AUTHORIZATION_RESOURCE_SERVER',NULL),('496ed344-5681-41e1-9b03-d8c5e68bc817',1749731063193,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/90e8a704-9d8a-4871-9896-2fc957d2ec97',NULL,NULL,'USER',NULL),('5801b691-8488-4633-aa74-14efefc494ab',1749685073344,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/profile',NULL,NULL,'USER_PROFILE',NULL),('5c05cf22-413c-4b97-8993-7acc9a3375a3',1749684568970,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/a0a419e8-c60e-47b3-8d61-da85fb6e9f78',NULL,NULL,'CLIENT',NULL),('6de9412b-b048-4591-a1d8-0d0b35c3917f',1749684332710,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/profile',NULL,NULL,'USER_PROFILE',NULL),('981cbf79-c6ef-4edd-ad91-3af81a8cae2d',1749684368611,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','CREATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/a0a419e8-c60e-47b3-8d61-da85fb6e9f78',NULL,NULL,'CLIENT',NULL),('ad3699d1-564a-4202-bc34-404b70b760ae',1749684496421,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/e4b11f6e-3b23-44be-92b5-b1916a13416f',NULL,NULL,'USER',NULL),('b83c3789-682f-4ce6-894b-2113354307b2',1749684380149,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/a0a419e8-c60e-47b3-8d61-da85fb6e9f78',NULL,NULL,'CLIENT',NULL),('beb13ecc-c2f7-4588-a12e-debb0a2245e5',1749685041689,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100',NULL,NULL,NULL,'REALM',NULL),('c4bbef44-6d52-462e-9d46-420e1b4254fe',1749685215509,'98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/cbb43578-36af-4afb-8d5e-6633877a5b44',NULL,NULL,'USER',NULL),('e83c0333-b365-4fe9-ab0a-bb92ad63e697',1749685108606,'98c61bee-7a7c-47d6-8721-3559b9e905c2','CREATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','clients/f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL,NULL,'AUTHORIZATION_RESOURCE_SERVER',NULL),('f91b239e-5b3b-4a2c-9ed0-4a579777267e',1749684278738,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','events/config',NULL,NULL,'REALM',NULL),('fd875f64-0709-4fcb-b1c9-0dbf5486c647',1749684319041,'2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','UPDATE','ef0f7d6a-26f1-4659-a607-d27c64903c50','086256da-6641-415d-9469-ddd99f6588c0','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192.168.68.100','users/profile',NULL,NULL,'USER_PROFILE',NULL);
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
INSERT INTO `ASSOCIATED_POLICY` VALUES ('15215677-790f-4a0f-8483-28ea59195e99','4d87a056-5c35-4bf7-b0fc-1145f758aded');
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` tinyint(1) NOT NULL DEFAULT 0,
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0140781a-caab-41c3-9ece-8bcb9219c403',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','0c78e91e-4051-4443-a506-668031557bc8',2,20,1,'339f64cd-cd09-4705-b26a-9fafce0e4b63',NULL),('01e054bb-728d-4177-bf84-ee78f505e6fa',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','bd6bfbd5-4e48-4f5d-9626-982a4c749207',1,50,1,'17ac5652-dfe8-46e7-a0ab-584d65f32bb1',NULL),('06bd2ab8-5668-407f-82aa-0ddbd0cb6313',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','17ac5652-dfe8-46e7-a0ab-584d65f32bb1',0,10,0,NULL,NULL),('0725d2e1-99de-4c22-8942-19213cb261a1',NULL,'reset-credential-email','ef0f7d6a-26f1-4659-a607-d27c64903c50','6047b663-7f0a-46e6-8511-0ce2f4b6d2bd',0,20,0,NULL,NULL),('08299f87-110d-4eff-9e98-7251de19403e',NULL,'registration-page-form','ef0f7d6a-26f1-4659-a607-d27c64903c50','68cdd294-effa-41d7-84a4-3ff6382e5e1f',0,10,1,'f5402c76-3b15-4282-96bd-b735d83348d6',NULL),('08f7cbd2-9486-4845-9bfc-92357d4587fd',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','ec9de6ac-74e8-4485-8fe6-1be6c667aabb',1,40,1,'25ad3438-2380-4793-9cdc-3475c47d2e61',NULL),('091c4664-ee95-4c71-ab4f-0b9349c01a73',NULL,'auth-otp-form','ef0f7d6a-26f1-4659-a607-d27c64903c50','bd5bceb7-0350-49de-831e-4ca074550664',0,20,0,NULL,NULL),('0c6c39fc-3446-4d97-aed8-a29cdadc03dc',NULL,'conditional-user-configured','ef0f7d6a-26f1-4659-a607-d27c64903c50','8db1cb81-7d56-46bb-bafd-418e700b862e',0,10,0,NULL,NULL),('0d30330c-bbbe-45b3-967e-7b6d3e7ce648',NULL,'reset-credentials-choose-user','98c61bee-7a7c-47d6-8721-3559b9e905c2','ec9de6ac-74e8-4485-8fe6-1be6c667aabb',0,10,0,NULL,NULL),('0d3fcda7-c5fd-4422-90e4-ce2cc5993619',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','6047b663-7f0a-46e6-8511-0ce2f4b6d2bd',1,40,1,'55254652-984a-4c74-85e6-37c3f8f4ff89',NULL),('1181cb31-9084-4007-b4be-109cb8db892c',NULL,'conditional-user-configured','ef0f7d6a-26f1-4659-a607-d27c64903c50','bd5bceb7-0350-49de-831e-4ca074550664',0,10,0,NULL,NULL),('127a3353-6987-4e83-9b60-4b9e5b42e0d2',NULL,'idp-confirm-link','98c61bee-7a7c-47d6-8721-3559b9e905c2','6ea07c7c-593f-4cbc-8307-83999a05898c',0,10,0,NULL,NULL),('1afe1f42-60f3-45b1-a2e6-87889a02f319',NULL,'identity-provider-redirector','ef0f7d6a-26f1-4659-a607-d27c64903c50','7f3f2602-fd2d-468d-b55f-6574621d00d2',2,25,0,NULL,NULL),('1bb917fa-2951-4f55-b7f7-0765a56f1791',NULL,'idp-review-profile','ef0f7d6a-26f1-4659-a607-d27c64903c50','dea72237-f818-468d-9bff-859b8b029351',0,10,0,NULL,'bd323501-1ec3-455f-b931-2435bbc01b48'),('1d6d22e1-355f-4d19-bd4d-c15dce76f291',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','03ed8cfb-c430-47e4-9a05-04f725207db9',0,10,0,NULL,NULL),('1e593efd-88b3-4ae8-959c-07affb29ba95',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','c186625a-7448-4ded-8012-56d3d0d92950',2,20,1,'3613c781-b998-4bdf-8a6f-7399ac9374cf',NULL),('20290ad9-4e76-4a1e-a6e4-683ae00b37a9',NULL,'direct-grant-validate-otp','98c61bee-7a7c-47d6-8721-3559b9e905c2','6ab9c966-95b8-43d1-b27f-ff9f0898fbc1',0,20,0,NULL,NULL),('2523128b-5bb8-4e12-bcd6-3f12835e6154',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','25ad3438-2380-4793-9cdc-3475c47d2e61',0,10,0,NULL,NULL),('25697db2-582e-4096-869e-cb0b06ad58ef',NULL,'direct-grant-validate-password','98c61bee-7a7c-47d6-8721-3559b9e905c2','40633b82-bccd-406b-9167-f8ad9087bd53',0,20,0,NULL,NULL),('282ab7a2-e5f5-458a-9b8b-0a8468990cca',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9',2,30,1,'e4efca71-d5d6-425d-9231-ef7148869ddf',NULL),('2ccf479d-4e5e-40fd-a2be-f3f853598ee4',NULL,'auth-spnego','ef0f7d6a-26f1-4659-a607-d27c64903c50','7f3f2602-fd2d-468d-b55f-6574621d00d2',3,20,0,NULL,NULL),('303be561-5e93-443f-969c-9068330cd41f',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','491394dc-0737-4fbf-bdf1-723e86241d61',0,10,0,NULL,NULL),('342af0fd-a633-4c4c-aa68-0c0ae55c7c8a',NULL,'registration-terms-and-conditions','ef0f7d6a-26f1-4659-a607-d27c64903c50','f5402c76-3b15-4282-96bd-b735d83348d6',3,70,0,NULL,NULL),('34c4f912-102f-4ff7-9b82-ea5077f43f8d',NULL,'auth-otp-form','98c61bee-7a7c-47d6-8721-3559b9e905c2','a5c47659-255a-4e4b-b61b-1aa1b4b7c3bb',0,20,0,NULL,NULL),('35494325-8503-4b69-b877-eecb8944238b',NULL,'idp-create-user-if-unique','98c61bee-7a7c-47d6-8721-3559b9e905c2','5864911d-cb3b-47a3-af8d-a4a97c8ca59a',2,10,0,NULL,'a25b4260-80f6-4f7f-b570-a5833cb91bdf'),('37e824ac-182c-4821-91f7-ee66884f03e4',NULL,'client-secret-jwt','ef0f7d6a-26f1-4659-a607-d27c64903c50','259e1b01-b141-425b-b6b1-1c9880b5711f',2,30,0,NULL,NULL),('38a53cc6-7d03-4c83-abbe-d4af5ab50885',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','7f3f2602-fd2d-468d-b55f-6574621d00d2',2,30,1,'6f4f9c53-a87e-421b-ba2f-6350421986e8',NULL),('396debdc-165e-40b3-9cdd-f51ce8c37f6a',NULL,'client-jwt','98c61bee-7a7c-47d6-8721-3559b9e905c2','2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2',2,20,0,NULL,NULL),('3bac2823-8714-4102-9765-ae1a877ac66c',NULL,'direct-grant-validate-otp','ef0f7d6a-26f1-4659-a607-d27c64903c50','8db1cb81-7d56-46bb-bafd-418e700b862e',0,20,0,NULL,NULL),('3e359f49-2deb-45d4-babe-936297bcb7d1',NULL,'registration-recaptcha-action','98c61bee-7a7c-47d6-8721-3559b9e905c2','6be737fb-858b-4f75-99e9-e1911fe3fbcd',3,60,0,NULL,NULL),('3f468fdf-b163-41d9-9d22-b7c262772f47',NULL,'registration-terms-and-conditions','98c61bee-7a7c-47d6-8721-3559b9e905c2','6be737fb-858b-4f75-99e9-e1911fe3fbcd',3,70,0,NULL,NULL),('406d1f9f-c24f-4047-b03e-5814937bf88e',NULL,'reset-otp','ef0f7d6a-26f1-4659-a607-d27c64903c50','55254652-984a-4c74-85e6-37c3f8f4ff89',0,20,0,NULL,NULL),('411d0376-e742-4702-a2da-13fc29afe6c6',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','6ab9c966-95b8-43d1-b27f-ff9f0898fbc1',0,10,0,NULL,NULL),('4142568c-3a6c-4eae-b75c-44fb0d1ca1fb',NULL,'direct-grant-validate-username','98c61bee-7a7c-47d6-8721-3559b9e905c2','40633b82-bccd-406b-9167-f8ad9087bd53',0,10,0,NULL,NULL),('435aa1c9-542a-4657-aefd-065e40e96281',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','6ea07c7c-593f-4cbc-8307-83999a05898c',0,20,1,'0c78e91e-4051-4443-a506-668031557bc8',NULL),('4743cb89-1014-485c-93a2-6389ecfb2d5c',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9',2,26,1,'40aa9f60-8e24-4c36-b50b-1820bb77f365',NULL),('4748c1b9-ca56-4a01-9cb7-2be40da72213',NULL,'direct-grant-validate-password','ef0f7d6a-26f1-4659-a607-d27c64903c50','aee14a5a-90a5-4faf-939c-71adb5d1f754',0,20,0,NULL,NULL),('4a6f4b08-5895-463f-846b-98b12eb77e12',NULL,'reset-password','ef0f7d6a-26f1-4659-a607-d27c64903c50','6047b663-7f0a-46e6-8511-0ce2f4b6d2bd',0,30,0,NULL,NULL),('4ae4a77d-a30e-426f-bdec-cee607b9edf5',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','40aa9f60-8e24-4c36-b50b-1820bb77f365',1,10,1,'491394dc-0737-4fbf-bdf1-723e86241d61',NULL),('4cce4c25-9da0-4533-ae10-dfeb16f7bf26',NULL,'auth-otp-form','98c61bee-7a7c-47d6-8721-3559b9e905c2','03ed8cfb-c430-47e4-9a05-04f725207db9',0,20,0,NULL,NULL),('50ed15d2-a6ee-4633-a815-6bdef1361e33',NULL,'http-basic-authenticator','ef0f7d6a-26f1-4659-a607-d27c64903c50','d5189fb7-4c09-44fd-a5ed-daae5cc8c2ce',0,10,0,NULL,NULL),('58477cde-c85e-491f-beb5-bb7f4391e775',NULL,'client-secret','ef0f7d6a-26f1-4659-a607-d27c64903c50','259e1b01-b141-425b-b6b1-1c9880b5711f',2,10,0,NULL,NULL),('58a4b2bf-27d5-411d-ae70-6ed209565e2f',NULL,'reset-credentials-choose-user','ef0f7d6a-26f1-4659-a607-d27c64903c50','6047b663-7f0a-46e6-8511-0ce2f4b6d2bd',0,10,0,NULL,NULL),('5986473c-eedc-47a2-a0ba-0f52a08f6a23',NULL,'docker-http-basic-authenticator','ef0f7d6a-26f1-4659-a607-d27c64903c50','623ee054-d256-4bc5-957f-f4ac29750414',0,10,0,NULL,NULL),('6a9cfd3d-ccac-409a-b793-011e783d41ea',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','339f64cd-cd09-4705-b26a-9fafce0e4b63',1,20,1,'03ed8cfb-c430-47e4-9a05-04f725207db9',NULL),('6c237bcc-3d47-44cb-bafc-c3787f1620d0',NULL,'auth-cookie','ef0f7d6a-26f1-4659-a607-d27c64903c50','7f3f2602-fd2d-468d-b55f-6574621d00d2',2,10,0,NULL,NULL),('743e5a94-0fb5-4ac9-a29e-1ae15c3a4303',NULL,'client-secret-jwt','98c61bee-7a7c-47d6-8721-3559b9e905c2','2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2',2,30,0,NULL,NULL),('76db81c4-878d-4dc0-8841-bbe1c0d35cd9',NULL,'registration-user-creation','98c61bee-7a7c-47d6-8721-3559b9e905c2','6be737fb-858b-4f75-99e9-e1911fe3fbcd',0,20,0,NULL,NULL),('7769818c-ac76-4eca-9cc9-113ea6838014',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','6d8811b3-dca9-446f-87b1-64a9f5f22fd1',1,20,1,'f672abbe-5090-4e76-9baf-7e34f0408e60',NULL),('79d57df9-d733-4682-97ab-3235072070f9',NULL,'registration-user-creation','ef0f7d6a-26f1-4659-a607-d27c64903c50','f5402c76-3b15-4282-96bd-b735d83348d6',0,20,0,NULL,NULL),('7a714c43-e4e1-4cc6-99fa-e00ce76a7a53',NULL,'registration-page-form','98c61bee-7a7c-47d6-8721-3559b9e905c2','5786ac93-6c6e-470f-92a9-8e700c5792b2',0,10,1,'6be737fb-858b-4f75-99e9-e1911fe3fbcd',NULL),('7ccdb916-bdc8-4c87-b9ce-16532cc07c11',NULL,'idp-add-organization-member','98c61bee-7a7c-47d6-8721-3559b9e905c2','17ac5652-dfe8-46e7-a0ab-584d65f32bb1',0,20,0,NULL,NULL),('80bd3fac-fb96-4564-a06f-e0d6b99d41a9',NULL,'idp-confirm-link','ef0f7d6a-26f1-4659-a607-d27c64903c50','3613c781-b998-4bdf-8a6f-7399ac9374cf',0,10,0,NULL,NULL),('817d5af7-338f-4754-b055-6b8a7b2d4a61',NULL,'conditional-user-configured','ef0f7d6a-26f1-4659-a607-d27c64903c50','f672abbe-5090-4e76-9baf-7e34f0408e60',0,10,0,NULL,NULL),('8442f128-fe94-42db-8795-457ca2a6659c',NULL,'auth-username-password-form','ef0f7d6a-26f1-4659-a607-d27c64903c50','6f4f9c53-a87e-421b-ba2f-6350421986e8',0,10,0,NULL,NULL),('852782d5-f2a3-4139-8114-2d7f5b00a501',NULL,'auth-spnego','98c61bee-7a7c-47d6-8721-3559b9e905c2','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9',3,20,0,NULL,NULL),('8560509a-b767-4250-8170-cfcff40ba9ce',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','06174a29-6edf-4231-8c62-08b4e3006987',2,20,1,'6d8811b3-dca9-446f-87b1-64a9f5f22fd1',NULL),('89f3b4ad-0c6a-4b0c-9ebc-3ac2ec706652',NULL,'auth-otp-form','ef0f7d6a-26f1-4659-a607-d27c64903c50','f672abbe-5090-4e76-9baf-7e34f0408e60',0,20,0,NULL,NULL),('8eadb97f-3715-4c40-9cae-daff673af7c6',NULL,'reset-credential-email','98c61bee-7a7c-47d6-8721-3559b9e905c2','ec9de6ac-74e8-4485-8fe6-1be6c667aabb',0,20,0,NULL,NULL),('9208cd8e-45d3-4d03-bf74-66570017f56e',NULL,'auth-cookie','98c61bee-7a7c-47d6-8721-3559b9e905c2','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9',2,10,0,NULL,NULL),('922e7f8c-dc89-482d-87f7-7842348180d7',NULL,'registration-password-action','98c61bee-7a7c-47d6-8721-3559b9e905c2','6be737fb-858b-4f75-99e9-e1911fe3fbcd',0,50,0,NULL,NULL),('992b18cd-1b24-4e35-a92d-a804f12554b3',NULL,'conditional-user-configured','98c61bee-7a7c-47d6-8721-3559b9e905c2','a5c47659-255a-4e4b-b61b-1aa1b4b7c3bb',0,10,0,NULL,NULL),('9a61046a-8976-40f0-8199-fb413118958c',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','40633b82-bccd-406b-9167-f8ad9087bd53',1,30,1,'6ab9c966-95b8-43d1-b27f-ff9f0898fbc1',NULL),('a6bbbf2a-02ba-42a4-ac61-2d2bef9dbf46',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','e4efca71-d5d6-425d-9231-ef7148869ddf',1,20,1,'a5c47659-255a-4e4b-b61b-1aa1b4b7c3bb',NULL),('a8e9d469-618d-476b-b3f9-9a7305304527',NULL,'idp-username-password-form','ef0f7d6a-26f1-4659-a607-d27c64903c50','6d8811b3-dca9-446f-87b1-64a9f5f22fd1',0,10,0,NULL,NULL),('ac356f42-285e-415b-8f37-70d8f93a5175',NULL,'http-basic-authenticator','98c61bee-7a7c-47d6-8721-3559b9e905c2','e5d3174a-664b-40e9-b804-09d8aebc7c3c',0,10,0,NULL,NULL),('ad045751-dcca-47dc-8831-179398ee2075',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','bd6bfbd5-4e48-4f5d-9626-982a4c749207',0,20,1,'5864911d-cb3b-47a3-af8d-a4a97c8ca59a',NULL),('ad956283-164c-43db-8fb0-3330de4640e2',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','3613c781-b998-4bdf-8a6f-7399ac9374cf',0,20,1,'06174a29-6edf-4231-8c62-08b4e3006987',NULL),('b7e87cf1-9aa5-43e3-9447-d433a0fa2d94',NULL,'registration-password-action','ef0f7d6a-26f1-4659-a607-d27c64903c50','f5402c76-3b15-4282-96bd-b735d83348d6',0,50,0,NULL,NULL),('be612dfe-4291-4d0a-94ce-7ccd4c281916',NULL,'docker-http-basic-authenticator','98c61bee-7a7c-47d6-8721-3559b9e905c2','ac0ee61a-32cc-43e8-8fb7-653c0f2a161e',0,10,0,NULL,NULL),('be95217a-b769-4896-989b-e24952f29978',NULL,'idp-username-password-form','98c61bee-7a7c-47d6-8721-3559b9e905c2','339f64cd-cd09-4705-b26a-9fafce0e4b63',0,10,0,NULL,NULL),('c43eeb9c-6c6a-4277-a86d-f280b215d770',NULL,'direct-grant-validate-username','ef0f7d6a-26f1-4659-a607-d27c64903c50','aee14a5a-90a5-4faf-939c-71adb5d1f754',0,10,0,NULL,NULL),('c60dd251-7d34-48fb-9123-bb3c6af67580',NULL,'organization','98c61bee-7a7c-47d6-8721-3559b9e905c2','491394dc-0737-4fbf-bdf1-723e86241d61',2,20,0,NULL,NULL),('c69f124e-4d9c-4416-aa33-d30566dcfd2d',NULL,'client-secret','98c61bee-7a7c-47d6-8721-3559b9e905c2','2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2',2,10,0,NULL,NULL),('cac5e979-6df8-4cc6-98d1-1eb20c381028',NULL,'idp-review-profile','98c61bee-7a7c-47d6-8721-3559b9e905c2','bd6bfbd5-4e48-4f5d-9626-982a4c749207',0,10,0,NULL,'cca35572-e583-43ae-aa48-ef3e675d1a26'),('cbef8cfc-5f8f-435f-9b64-fd8f3c02ae46',NULL,'client-x509','98c61bee-7a7c-47d6-8721-3559b9e905c2','2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2',2,40,0,NULL,NULL),('cf8b229b-b8d0-4ace-897d-6a02c5bf3925',NULL,'registration-recaptcha-action','ef0f7d6a-26f1-4659-a607-d27c64903c50','f5402c76-3b15-4282-96bd-b735d83348d6',3,60,0,NULL,NULL),('cff1bada-56b2-4018-943b-e54276cc9bfc',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','6f4f9c53-a87e-421b-ba2f-6350421986e8',1,20,1,'bd5bceb7-0350-49de-831e-4ca074550664',NULL),('d4d05d52-42dd-44a7-8c3a-02d33263ca49',NULL,'conditional-user-configured','ef0f7d6a-26f1-4659-a607-d27c64903c50','55254652-984a-4c74-85e6-37c3f8f4ff89',0,10,0,NULL,NULL),('ddced7b8-4c2d-49f4-af62-ecf97d039b55',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','aee14a5a-90a5-4faf-939c-71adb5d1f754',1,30,1,'8db1cb81-7d56-46bb-bafd-418e700b862e',NULL),('df1ec394-9da2-4c51-beb4-23e27a8a1326',NULL,'client-jwt','ef0f7d6a-26f1-4659-a607-d27c64903c50','259e1b01-b141-425b-b6b1-1c9880b5711f',2,20,0,NULL,NULL),('e33c6119-bdc9-4813-ac25-6deb1a00c2fe',NULL,'reset-password','98c61bee-7a7c-47d6-8721-3559b9e905c2','ec9de6ac-74e8-4485-8fe6-1be6c667aabb',0,30,0,NULL,NULL),('e3605d76-34b6-446a-9a8a-58fda1abfc08',NULL,'reset-otp','98c61bee-7a7c-47d6-8721-3559b9e905c2','25ad3438-2380-4793-9cdc-3475c47d2e61',0,20,0,NULL,NULL),('e661bc50-1c31-4101-a240-46d9dcb65ff1',NULL,'client-x509','ef0f7d6a-26f1-4659-a607-d27c64903c50','259e1b01-b141-425b-b6b1-1c9880b5711f',2,40,0,NULL,NULL),('e8c67c35-8b49-4f99-b280-825f85446965',NULL,'idp-create-user-if-unique','ef0f7d6a-26f1-4659-a607-d27c64903c50','c186625a-7448-4ded-8012-56d3d0d92950',2,10,0,NULL,'f5ad47e1-fb08-4432-bd65-e1daacc20463'),('e8ef9650-a03d-44e0-97af-c4607ccc438e',NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','dea72237-f818-468d-9bff-859b8b029351',0,20,1,'c186625a-7448-4ded-8012-56d3d0d92950',NULL),('eb3e6f64-62f2-4257-80ff-a1656411c76e',NULL,'idp-email-verification','98c61bee-7a7c-47d6-8721-3559b9e905c2','0c78e91e-4051-4443-a506-668031557bc8',2,10,0,NULL,NULL),('ee638669-880e-47d9-82c3-eddd07b15152',NULL,'auth-username-password-form','98c61bee-7a7c-47d6-8721-3559b9e905c2','e4efca71-d5d6-425d-9231-ef7148869ddf',0,10,0,NULL,NULL),('f23bf6e7-b764-431f-85a0-d017b7eeda5e',NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','5864911d-cb3b-47a3-af8d-a4a97c8ca59a',2,20,1,'6ea07c7c-593f-4cbc-8307-83999a05898c',NULL),('f990abd8-5dd7-4031-8094-472b7227ff04',NULL,'identity-provider-redirector','98c61bee-7a7c-47d6-8721-3559b9e905c2','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9',2,25,0,NULL,NULL),('fdc11ee0-4fce-4667-a184-52583be82505',NULL,'idp-email-verification','ef0f7d6a-26f1-4659-a607-d27c64903c50','06174a29-6edf-4231-8c62-08b4e3006987',2,10,0,NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` tinyint(1) NOT NULL DEFAULT 0,
  `BUILT_IN` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('03ed8cfb-c430-47e4-9a05-04f725207db9','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('06174a29-6edf-4231-8c62-08b4e3006987','Account verification options','Method with which to verity the existing account','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('0c78e91e-4051-4443-a506-668031557bc8','Account verification options','Method with which to verity the existing account','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('17ac5652-dfe8-46e7-a0ab-584d65f32bb1','First Broker Login - Conditional Organization','Flow to determine if the authenticator that adds organization members is to be used','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('259e1b01-b141-425b-b6b1-1c9880b5711f','clients','Base authentication for clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','client-flow',1,1),('25ad3438-2380-4793-9cdc-3475c47d2e61','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2','clients','Base authentication for clients','98c61bee-7a7c-47d6-8721-3559b9e905c2','client-flow',1,1),('339f64cd-cd09-4705-b26a-9fafce0e4b63','Verify Existing Account by Re-authentication','Reauthentication of existing account','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('3613c781-b998-4bdf-8a6f-7399ac9374cf','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('40633b82-bccd-406b-9167-f8ad9087bd53','direct grant','OpenID Connect Resource Owner Grant','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('40aa9f60-8e24-4c36-b50b-1820bb77f365','Organization',NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('491394dc-0737-4fbf-bdf1-723e86241d61','Browser - Conditional Organization','Flow to determine if the organization identity-first login is to be used','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('55254652-984a-4c74-85e6-37c3f8f4ff89','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('5786ac93-6c6e-470f-92a9-8e700c5792b2','registration','Registration flow','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('5864911d-cb3b-47a3-af8d-a4a97c8ca59a','User creation or linking','Flow for the existing/non-existing user alternatives','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('6047b663-7f0a-46e6-8511-0ce2f4b6d2bd','reset credentials','Reset credentials for a user if they forgot their password or something','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('623ee054-d256-4bc5-957f-f4ac29750414','docker auth','Used by Docker clients to authenticate against the IDP','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('68cdd294-effa-41d7-84a4-3ff6382e5e1f','registration','Registration flow','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('6a3aa2ab-8d27-48fe-95fb-f5e751e659d9','browser','Browser based authentication','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('6ab9c966-95b8-43d1-b27f-ff9f0898fbc1','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('6be737fb-858b-4f75-99e9-e1911fe3fbcd','registration form','Registration form','98c61bee-7a7c-47d6-8721-3559b9e905c2','form-flow',0,1),('6d8811b3-dca9-446f-87b1-64a9f5f22fd1','Verify Existing Account by Re-authentication','Reauthentication of existing account','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('6ea07c7c-593f-4cbc-8307-83999a05898c','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('6f4f9c53-a87e-421b-ba2f-6350421986e8','forms','Username, password, otp and other auth forms.','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('7f3f2602-fd2d-468d-b55f-6574621d00d2','browser','Browser based authentication','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('8db1cb81-7d56-46bb-bafd-418e700b862e','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('a5c47659-255a-4e4b-b61b-1aa1b4b7c3bb','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('ac0ee61a-32cc-43e8-8fb7-653c0f2a161e','docker auth','Used by Docker clients to authenticate against the IDP','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('aee14a5a-90a5-4faf-939c-71adb5d1f754','direct grant','OpenID Connect Resource Owner Grant','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('bd5bceb7-0350-49de-831e-4ca074550664','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('bd6bfbd5-4e48-4f5d-9626-982a4c749207','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('c186625a-7448-4ded-8012-56d3d0d92950','User creation or linking','Flow for the existing/non-existing user alternatives','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1),('d5189fb7-4c09-44fd-a5ed-daae5cc8c2ce','saml ecp','SAML ECP Profile Authentication Flow','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('dea72237-f818-468d-9bff-859b8b029351','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',1,1),('e4efca71-d5d6-425d-9231-ef7148869ddf','forms','Username, password, otp and other auth forms.','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',0,1),('e5d3174a-664b-40e9-b804-09d8aebc7c3c','saml ecp','SAML ECP Profile Authentication Flow','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('ec9de6ac-74e8-4485-8fe6-1be6c667aabb','reset credentials','Reset credentials for a user if they forgot their password or something','98c61bee-7a7c-47d6-8721-3559b9e905c2','basic-flow',1,1),('f5402c76-3b15-4282-96bd-b735d83348d6','registration form','Registration form','ef0f7d6a-26f1-4659-a607-d27c64903c50','form-flow',0,1),('f672abbe-5090-4e76-9baf-7e34f0408e60','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','ef0f7d6a-26f1-4659-a607-d27c64903c50','basic-flow',0,1);
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('a25b4260-80f6-4f7f-b570-a5833cb91bdf','create unique user config','98c61bee-7a7c-47d6-8721-3559b9e905c2'),('bd323501-1ec3-455f-b931-2435bbc01b48','review profile config','ef0f7d6a-26f1-4659-a607-d27c64903c50'),('cca35572-e583-43ae-aa48-ef3e675d1a26','review profile config','98c61bee-7a7c-47d6-8721-3559b9e905c2'),('f5ad47e1-fb08-4432-bd65-e1daacc20463','create unique user config','ef0f7d6a-26f1-4659-a607-d27c64903c50');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('a25b4260-80f6-4f7f-b570-a5833cb91bdf','false','require.password.update.after.registration'),('bd323501-1ec3-455f-b931-2435bbc01b48','missing','update.profile.on.first.login'),('cca35572-e583-43ae-aa48-ef3e675d1a26','missing','update.profile.on.first.login'),('f5ad47e1-fb08-4432-bd65-e1daacc20463','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FULL_SCOPE_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` tinyint(1) NOT NULL DEFAULT 0,
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` tinyint(1) NOT NULL DEFAULT 0,
  `CONSENT_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 1,
  `IMPLICIT_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DIRECT_ACCESS_GRANTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ALWAYS_DISPLAY_IN_CONSOLE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('086256da-6641-415d-9469-ddd99f6588c0',1,1,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('0fd5882a-c4c8-4457-95f0-5f89a8597738',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('4387613f-eb90-477c-b8b0-9fa4060fe812',1,0,'flask-sso-auth-service-realm',0,0,NULL,NULL,1,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,0,0,0,'flask-sso-auth-service Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('4fc7920c-8cbe-4912-a717-06be56307f91',1,1,'security-admin-console',0,1,NULL,'/admin/flask-sso-auth-service/console/',0,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('96f573cb-2003-4405-85e5-d28199d685ca',1,0,'account',0,1,NULL,'/realms/flask-sso-auth-service/account/',0,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('9b911691-b2ce-4556-a424-ff4a30b305ba',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('e0cabf11-0745-40c5-859e-a2b76e8d7fef',1,0,'account-console',0,1,NULL,'/realms/flask-sso-auth-service/account/',0,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('f10c3dba-78e8-4963-ab91-2a1954abe79c',1,1,'flask-sso-auth-service-client-id',0,0,'gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M','',0,'',0,'98c61bee-7a7c-47d6-8721-3559b9e905c2','openid-connect',-1,0,0,'',1,'client-secret','','',NULL,1,0,1,1);
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('086256da-6641-415d-9469-ddd99f6588c0','client.use.lightweight.access.token.enabled','true'),('086256da-6641-415d-9469-ddd99f6588c0','pkce.code.challenge.method','S256'),('086256da-6641-415d-9469-ddd99f6588c0','post.logout.redirect.uris','+'),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','post.logout.redirect.uris','+'),('4fc7920c-8cbe-4912-a717-06be56307f91','client.use.lightweight.access.token.enabled','true'),('4fc7920c-8cbe-4912-a717-06be56307f91','pkce.code.challenge.method','S256'),('4fc7920c-8cbe-4912-a717-06be56307f91','post.logout.redirect.uris','+'),('96f573cb-2003-4405-85e5-d28199d685ca','post.logout.redirect.uris','+'),('9b911691-b2ce-4556-a424-ff4a30b305ba','pkce.code.challenge.method','S256'),('9b911691-b2ce-4556-a424-ff4a30b305ba','post.logout.redirect.uris','+'),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','client.use.lightweight.access.token.enabled','true'),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','pkce.code.challenge.method','S256'),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','post.logout.redirect.uris','+'),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','client.use.lightweight.access.token.enabled','true'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','backchannel.logout.revoke.offline.tokens','true'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','backchannel.logout.session.required','true'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','client.secret.creation.time','1749685108'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','display.on.consent.screen','false'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','frontchannel.logout.session.required','true'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','oauth2.device.authorization.grant.enabled','false'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','oidc.ciba.grant.enabled','true'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','realm_client','false'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','standard.token.exchange.enabled','false');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('00d610af-b423-4f64-a47c-907f808adc0f','profile','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect built-in scope: profile','openid-connect'),('01a2ef70-d710-43a4-a181-5b953efcf9a7','offline_access','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect built-in scope: offline_access','openid-connect'),('054ecf3f-39b2-4f10-b055-7e787955f0f6','profile','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect built-in scope: profile','openid-connect'),('0c978674-88ce-4f0f-bb9c-230ccf1f71f7','phone','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect built-in scope: phone','openid-connect'),('0d0d5ccf-26f9-4494-969a-65ac3900374a','basic','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect scope for add all basic claims to the token','openid-connect'),('21f6d292-9b24-4d45-84e5-f5fc3c9bcc46','organization','98c61bee-7a7c-47d6-8721-3559b9e905c2','Additional claims about the organization a subject belongs to','openid-connect'),('29b03bcf-1b4b-4f39-9e09-a0fc922a295e','offline_access','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect built-in scope: offline_access','openid-connect'),('31a4bb19-6f25-4673-a114-2a9a3cda776b','basic','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect scope for add all basic claims to the token','openid-connect'),('36d24ee9-9ff5-48f7-b03a-72707c68d95f','service_account','ef0f7d6a-26f1-4659-a607-d27c64903c50','Specific scope for a client enabled for service accounts','openid-connect'),('4acf4fc0-45e8-4f36-af11-66e474c9934f','roles','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect scope for add user roles to the access token','openid-connect'),('59aa9164-3bb9-4c0a-a38d-628212ef73c1','role_list','98c61bee-7a7c-47d6-8721-3559b9e905c2','SAML role list','saml'),('5a48cabd-7e3a-4275-aa05-0956af6e6735','address','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect built-in scope: address','openid-connect'),('5d7aecde-44a2-4e78-abe3-45795bcb035b','web-origins','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('5d939e30-118f-47d1-856c-820bcb459b71','web-origins','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('67dbae1c-6d6d-4e26-9b51-9cd7c80a120c','acr','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('692bbe19-3867-4cb7-9d5b-187720ea297b','organization','ef0f7d6a-26f1-4659-a607-d27c64903c50','Additional claims about the organization a subject belongs to','openid-connect'),('9451ff1d-f601-4a96-b754-835207ef041e','microprofile-jwt','ef0f7d6a-26f1-4659-a607-d27c64903c50','Microprofile - JWT built-in scope','openid-connect'),('a17eaa62-ae1e-42a4-93e9-102d5c330b59','service_account','98c61bee-7a7c-47d6-8721-3559b9e905c2','Specific scope for a client enabled for service accounts','openid-connect'),('a78c1cce-38ba-4578-a4f6-cb54cde4cbdd','roles','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect scope for add user roles to the access token','openid-connect'),('b5d84c98-d4c4-454e-b82b-34303ce4ba64','saml_organization','98c61bee-7a7c-47d6-8721-3559b9e905c2','Organization Membership','saml'),('bb3de131-cea1-4657-a371-6bbde8e4b91a','email','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect built-in scope: email','openid-connect'),('da86d8fb-ae19-4e11-9836-46b881afdb50','address','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect built-in scope: address','openid-connect'),('e4fa9f2e-9701-412a-b739-2226c23cf233','email','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect built-in scope: email','openid-connect'),('eaecb163-5a87-43c1-916a-7dfdc319cbf6','saml_organization','ef0f7d6a-26f1-4659-a607-d27c64903c50','Organization Membership','saml'),('eb2ddb56-5028-4388-a250-d2c5ded97da8','role_list','ef0f7d6a-26f1-4659-a607-d27c64903c50','SAML role list','saml'),('f3972f8d-7535-4532-8991-7771970734fa','acr','ef0f7d6a-26f1-4659-a607-d27c64903c50','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f56a4b39-19e0-4be5-8c54-bf7eb6317c16','phone','98c61bee-7a7c-47d6-8721-3559b9e905c2','OpenID Connect built-in scope: phone','openid-connect'),('f921dace-2cba-4af9-9620-0404f2f4446f','microprofile-jwt','98c61bee-7a7c-47d6-8721-3559b9e905c2','Microprofile - JWT built-in scope','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('00d610af-b423-4f64-a47c-907f808adc0f','${profileScopeConsentText}','consent.screen.text'),('00d610af-b423-4f64-a47c-907f808adc0f','true','display.on.consent.screen'),('00d610af-b423-4f64-a47c-907f808adc0f','true','include.in.token.scope'),('01a2ef70-d710-43a4-a181-5b953efcf9a7','${offlineAccessScopeConsentText}','consent.screen.text'),('01a2ef70-d710-43a4-a181-5b953efcf9a7','true','display.on.consent.screen'),('054ecf3f-39b2-4f10-b055-7e787955f0f6','${profileScopeConsentText}','consent.screen.text'),('054ecf3f-39b2-4f10-b055-7e787955f0f6','true','display.on.consent.screen'),('054ecf3f-39b2-4f10-b055-7e787955f0f6','true','include.in.token.scope'),('0c978674-88ce-4f0f-bb9c-230ccf1f71f7','${phoneScopeConsentText}','consent.screen.text'),('0c978674-88ce-4f0f-bb9c-230ccf1f71f7','true','display.on.consent.screen'),('0c978674-88ce-4f0f-bb9c-230ccf1f71f7','true','include.in.token.scope'),('0d0d5ccf-26f9-4494-969a-65ac3900374a','false','display.on.consent.screen'),('0d0d5ccf-26f9-4494-969a-65ac3900374a','false','include.in.token.scope'),('21f6d292-9b24-4d45-84e5-f5fc3c9bcc46','${organizationScopeConsentText}','consent.screen.text'),('21f6d292-9b24-4d45-84e5-f5fc3c9bcc46','true','display.on.consent.screen'),('21f6d292-9b24-4d45-84e5-f5fc3c9bcc46','true','include.in.token.scope'),('29b03bcf-1b4b-4f39-9e09-a0fc922a295e','${offlineAccessScopeConsentText}','consent.screen.text'),('29b03bcf-1b4b-4f39-9e09-a0fc922a295e','true','display.on.consent.screen'),('31a4bb19-6f25-4673-a114-2a9a3cda776b','false','display.on.consent.screen'),('31a4bb19-6f25-4673-a114-2a9a3cda776b','false','include.in.token.scope'),('36d24ee9-9ff5-48f7-b03a-72707c68d95f','false','display.on.consent.screen'),('36d24ee9-9ff5-48f7-b03a-72707c68d95f','false','include.in.token.scope'),('4acf4fc0-45e8-4f36-af11-66e474c9934f','${rolesScopeConsentText}','consent.screen.text'),('4acf4fc0-45e8-4f36-af11-66e474c9934f','true','display.on.consent.screen'),('4acf4fc0-45e8-4f36-af11-66e474c9934f','false','include.in.token.scope'),('59aa9164-3bb9-4c0a-a38d-628212ef73c1','${samlRoleListScopeConsentText}','consent.screen.text'),('59aa9164-3bb9-4c0a-a38d-628212ef73c1','true','display.on.consent.screen'),('5a48cabd-7e3a-4275-aa05-0956af6e6735','${addressScopeConsentText}','consent.screen.text'),('5a48cabd-7e3a-4275-aa05-0956af6e6735','true','display.on.consent.screen'),('5a48cabd-7e3a-4275-aa05-0956af6e6735','true','include.in.token.scope'),('5d7aecde-44a2-4e78-abe3-45795bcb035b','','consent.screen.text'),('5d7aecde-44a2-4e78-abe3-45795bcb035b','false','display.on.consent.screen'),('5d7aecde-44a2-4e78-abe3-45795bcb035b','false','include.in.token.scope'),('5d939e30-118f-47d1-856c-820bcb459b71','','consent.screen.text'),('5d939e30-118f-47d1-856c-820bcb459b71','false','display.on.consent.screen'),('5d939e30-118f-47d1-856c-820bcb459b71','false','include.in.token.scope'),('67dbae1c-6d6d-4e26-9b51-9cd7c80a120c','false','display.on.consent.screen'),('67dbae1c-6d6d-4e26-9b51-9cd7c80a120c','false','include.in.token.scope'),('692bbe19-3867-4cb7-9d5b-187720ea297b','${organizationScopeConsentText}','consent.screen.text'),('692bbe19-3867-4cb7-9d5b-187720ea297b','true','display.on.consent.screen'),('692bbe19-3867-4cb7-9d5b-187720ea297b','true','include.in.token.scope'),('9451ff1d-f601-4a96-b754-835207ef041e','false','display.on.consent.screen'),('9451ff1d-f601-4a96-b754-835207ef041e','true','include.in.token.scope'),('a17eaa62-ae1e-42a4-93e9-102d5c330b59','false','display.on.consent.screen'),('a17eaa62-ae1e-42a4-93e9-102d5c330b59','false','include.in.token.scope'),('a78c1cce-38ba-4578-a4f6-cb54cde4cbdd','${rolesScopeConsentText}','consent.screen.text'),('a78c1cce-38ba-4578-a4f6-cb54cde4cbdd','true','display.on.consent.screen'),('a78c1cce-38ba-4578-a4f6-cb54cde4cbdd','false','include.in.token.scope'),('b5d84c98-d4c4-454e-b82b-34303ce4ba64','false','display.on.consent.screen'),('bb3de131-cea1-4657-a371-6bbde8e4b91a','${emailScopeConsentText}','consent.screen.text'),('bb3de131-cea1-4657-a371-6bbde8e4b91a','true','display.on.consent.screen'),('bb3de131-cea1-4657-a371-6bbde8e4b91a','true','include.in.token.scope'),('da86d8fb-ae19-4e11-9836-46b881afdb50','${addressScopeConsentText}','consent.screen.text'),('da86d8fb-ae19-4e11-9836-46b881afdb50','true','display.on.consent.screen'),('da86d8fb-ae19-4e11-9836-46b881afdb50','true','include.in.token.scope'),('e4fa9f2e-9701-412a-b739-2226c23cf233','${emailScopeConsentText}','consent.screen.text'),('e4fa9f2e-9701-412a-b739-2226c23cf233','true','display.on.consent.screen'),('e4fa9f2e-9701-412a-b739-2226c23cf233','true','include.in.token.scope'),('eaecb163-5a87-43c1-916a-7dfdc319cbf6','false','display.on.consent.screen'),('eb2ddb56-5028-4388-a250-d2c5ded97da8','${samlRoleListScopeConsentText}','consent.screen.text'),('eb2ddb56-5028-4388-a250-d2c5ded97da8','true','display.on.consent.screen'),('f3972f8d-7535-4532-8991-7771970734fa','false','display.on.consent.screen'),('f3972f8d-7535-4532-8991-7771970734fa','false','include.in.token.scope'),('f56a4b39-19e0-4be5-8c54-bf7eb6317c16','${phoneScopeConsentText}','consent.screen.text'),('f56a4b39-19e0-4be5-8c54-bf7eb6317c16','true','display.on.consent.screen'),('f56a4b39-19e0-4be5-8c54-bf7eb6317c16','true','include.in.token.scope'),('f921dace-2cba-4af9-9620-0404f2f4446f','false','display.on.consent.screen'),('f921dace-2cba-4af9-9620-0404f2f4446f','true','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('086256da-6641-415d-9469-ddd99f6588c0','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('086256da-6641-415d-9469-ddd99f6588c0','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('086256da-6641-415d-9469-ddd99f6588c0','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('086256da-6641-415d-9469-ddd99f6588c0','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('086256da-6641-415d-9469-ddd99f6588c0','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('086256da-6641-415d-9469-ddd99f6588c0','5d939e30-118f-47d1-856c-820bcb459b71',1),('086256da-6641-415d-9469-ddd99f6588c0','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('086256da-6641-415d-9469-ddd99f6588c0','9451ff1d-f601-4a96-b754-835207ef041e',0),('086256da-6641-415d-9469-ddd99f6588c0','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('086256da-6641-415d-9469-ddd99f6588c0','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('086256da-6641-415d-9469-ddd99f6588c0','f3972f8d-7535-4532-8991-7771970734fa',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','00d610af-b423-4f64-a47c-907f808adc0f',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('0fd5882a-c4c8-4457-95f0-5f89a8597738','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('0fd5882a-c4c8-4457-95f0-5f89a8597738','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('0fd5882a-c4c8-4457-95f0-5f89a8597738','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('0fd5882a-c4c8-4457-95f0-5f89a8597738','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('0fd5882a-c4c8-4457-95f0-5f89a8597738','f921dace-2cba-4af9-9620-0404f2f4446f',0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','00d610af-b423-4f64-a47c-907f808adc0f',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('2ccbd56b-81b4-446a-a53e-c8cc92099f60','f921dace-2cba-4af9-9620-0404f2f4446f',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','5d939e30-118f-47d1-856c-820bcb459b71',1),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','9451ff1d-f601-4a96-b754-835207ef041e',0),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','f3972f8d-7535-4532-8991-7771970734fa',1),('4fc7920c-8cbe-4912-a717-06be56307f91','00d610af-b423-4f64-a47c-907f808adc0f',1),('4fc7920c-8cbe-4912-a717-06be56307f91','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('4fc7920c-8cbe-4912-a717-06be56307f91','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('4fc7920c-8cbe-4912-a717-06be56307f91','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('4fc7920c-8cbe-4912-a717-06be56307f91','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('4fc7920c-8cbe-4912-a717-06be56307f91','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('4fc7920c-8cbe-4912-a717-06be56307f91','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('4fc7920c-8cbe-4912-a717-06be56307f91','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('4fc7920c-8cbe-4912-a717-06be56307f91','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('4fc7920c-8cbe-4912-a717-06be56307f91','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('4fc7920c-8cbe-4912-a717-06be56307f91','f921dace-2cba-4af9-9620-0404f2f4446f',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','5d939e30-118f-47d1-856c-820bcb459b71',1),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','9451ff1d-f601-4a96-b754-835207ef041e',0),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('84d4dd90-4750-49dc-9b53-d87c6cbc61c7','f3972f8d-7535-4532-8991-7771970734fa',1),('96f573cb-2003-4405-85e5-d28199d685ca','00d610af-b423-4f64-a47c-907f808adc0f',1),('96f573cb-2003-4405-85e5-d28199d685ca','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('96f573cb-2003-4405-85e5-d28199d685ca','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('96f573cb-2003-4405-85e5-d28199d685ca','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('96f573cb-2003-4405-85e5-d28199d685ca','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('96f573cb-2003-4405-85e5-d28199d685ca','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('96f573cb-2003-4405-85e5-d28199d685ca','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('96f573cb-2003-4405-85e5-d28199d685ca','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('96f573cb-2003-4405-85e5-d28199d685ca','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('96f573cb-2003-4405-85e5-d28199d685ca','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('96f573cb-2003-4405-85e5-d28199d685ca','f921dace-2cba-4af9-9620-0404f2f4446f',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('9b911691-b2ce-4556-a424-ff4a30b305ba','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('9b911691-b2ce-4556-a424-ff4a30b305ba','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','5d939e30-118f-47d1-856c-820bcb459b71',1),('9b911691-b2ce-4556-a424-ff4a30b305ba','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','9451ff1d-f601-4a96-b754-835207ef041e',0),('9b911691-b2ce-4556-a424-ff4a30b305ba','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('9b911691-b2ce-4556-a424-ff4a30b305ba','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('9b911691-b2ce-4556-a424-ff4a30b305ba','f3972f8d-7535-4532-8991-7771970734fa',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','5d939e30-118f-47d1-856c-820bcb459b71',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','9451ff1d-f601-4a96-b754-835207ef041e',0),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('a56140eb-af5c-44d9-acf6-b03ea1ba51a0','f3972f8d-7535-4532-8991-7771970734fa',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','5d939e30-118f-47d1-856c-820bcb459b71',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','9451ff1d-f601-4a96-b754-835207ef041e',0),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('a6a915ec-1e15-4e8d-9e78-8323e9eb7f42','f3972f8d-7535-4532-8991-7771970734fa',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','00d610af-b423-4f64-a47c-907f808adc0f',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','f921dace-2cba-4af9-9620-0404f2f4446f',0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','00d610af-b423-4f64-a47c-907f808adc0f',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('eea1e5af-a73a-4a14-ace8-6cf5047ca4c7','f921dace-2cba-4af9-9620-0404f2f4446f',0),('f10c3dba-78e8-4963-ab91-2a1954abe79c','00d610af-b423-4f64-a47c-907f808adc0f',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('f10c3dba-78e8-4963-ab91-2a1954abe79c','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('f10c3dba-78e8-4963-ab91-2a1954abe79c','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','a17eaa62-ae1e-42a4-93e9-102d5c330b59',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('f10c3dba-78e8-4963-ab91-2a1954abe79c','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('f10c3dba-78e8-4963-ab91-2a1954abe79c','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('f10c3dba-78e8-4963-ab91-2a1954abe79c','f921dace-2cba-4af9-9620-0404f2f4446f',0);
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('01a2ef70-d710-43a4-a181-5b953efcf9a7','2a4372ff-ff1f-4542-af29-6a231182129c'),('29b03bcf-1b4b-4f39-9e09-a0fc922a295e','6b3dfbe6-738a-48a3-90c6-1d4cd82f82ba');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('0a5519a1-bbeb-45b1-af27-5eac09284ccc','Full Scope Disabled','98c61bee-7a7c-47d6-8721-3559b9e905c2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous'),('116e4f1c-8e8f-428e-8d24-e3e3ead23957',NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL),('2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','Allowed Protocol Mapper Types','ef0f7d6a-26f1-4659-a607-d27c64903c50','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('2f93ba4e-6c88-4f78-acb3-2afda5b5996b','rsa-enc-generated','98c61bee-7a7c-47d6-8721-3559b9e905c2','rsa-enc-generated','org.keycloak.keys.KeyProvider','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL),('2fcee3c0-10c9-473d-9cfd-c2f89b6f75cd','aes-generated','98c61bee-7a7c-47d6-8721-3559b9e905c2','aes-generated','org.keycloak.keys.KeyProvider','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL),('3d5b467b-a5e9-4a90-aa7d-bca62d671905','hmac-generated-hs512','98c61bee-7a7c-47d6-8721-3559b9e905c2','hmac-generated','org.keycloak.keys.KeyProvider','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL),('50456a94-9c28-4f41-8ba5-91daea9973b8','rsa-generated','98c61bee-7a7c-47d6-8721-3559b9e905c2','rsa-generated','org.keycloak.keys.KeyProvider','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL),('673946a0-8ae8-422a-a6ff-c8ea977854fa','Full Scope Disabled','ef0f7d6a-26f1-4659-a607-d27c64903c50','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('6bb4ed29-dbf2-46ea-9427-513078aba3ac','Allowed Client Scopes','98c61bee-7a7c-47d6-8721-3559b9e905c2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous'),('7ea58bde-cb2b-4e50-8cb2-8d9663d11ad2','Allowed Client Scopes','ef0f7d6a-26f1-4659-a607-d27c64903c50','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','authenticated'),('8f8128e3-580e-4bee-bd29-95c7ff888f58','Trusted Hosts','ef0f7d6a-26f1-4659-a607-d27c64903c50','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('90d0142a-dfc9-4770-ace1-a685990147bd','Trusted Hosts','98c61bee-7a7c-47d6-8721-3559b9e905c2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous'),('97460cbd-ffc5-4734-b5ab-f98dd24f7ec6','Allowed Client Scopes','98c61bee-7a7c-47d6-8721-3559b9e905c2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','authenticated'),('a405cba7-c9af-4d29-ac37-09965cdd3705','Allowed Protocol Mapper Types','98c61bee-7a7c-47d6-8721-3559b9e905c2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','authenticated'),('a74e6321-32ca-404f-b2d0-bbd8d60a36d2','Consent Required','ef0f7d6a-26f1-4659-a607-d27c64903c50','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('ae745d7d-ed3d-4e96-88c2-fdb182056803','Consent Required','98c61bee-7a7c-47d6-8721-3559b9e905c2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous'),('b14a1b2b-e5ca-4fa7-b868-fc7f6ae8b198','rsa-generated','ef0f7d6a-26f1-4659-a607-d27c64903c50','rsa-generated','org.keycloak.keys.KeyProvider','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL),('b2c947ad-92af-439b-a959-a812ada713c4','Allowed Protocol Mapper Types','ef0f7d6a-26f1-4659-a607-d27c64903c50','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','authenticated'),('b7cd7d7d-7979-4756-908d-1461487c17fd','Allowed Client Scopes','ef0f7d6a-26f1-4659-a607-d27c64903c50','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('beaa26e5-6973-4ff8-838e-2eefdc43083a','Max Clients Limit','ef0f7d6a-26f1-4659-a607-d27c64903c50','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','anonymous'),('cc57bf78-8190-4795-9385-b6e440302f5f','Max Clients Limit','98c61bee-7a7c-47d6-8721-3559b9e905c2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous'),('cd2b09b2-bf73-4e39-bf17-ca5960d5d2f5','hmac-generated-hs512','ef0f7d6a-26f1-4659-a607-d27c64903c50','hmac-generated','org.keycloak.keys.KeyProvider','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL),('d9828bbc-0d5b-41cd-b6f2-f02f690be465','rsa-enc-generated','ef0f7d6a-26f1-4659-a607-d27c64903c50','rsa-enc-generated','org.keycloak.keys.KeyProvider','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL),('da5aeca8-527a-4c59-acc4-2ad515d5fccf',NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL),('de90c961-3963-4a47-943a-9821621a627b','aes-generated','ef0f7d6a-26f1-4659-a607-d27c64903c50','aes-generated','org.keycloak.keys.KeyProvider','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL),('e24853cc-4625-447d-8e97-5794945d3fce','Allowed Protocol Mapper Types','98c61bee-7a7c-47d6-8721-3559b9e905c2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0469100f-4491-4416-8013-81b94e63ec82','d9828bbc-0d5b-41cd-b6f2-f02f690be465','privateKey','MIIEowIBAAKCAQEAnFHrwInNGssmtnoPNXSoPi6GLOwZTNLSXhAdXrLwXJcuNZKPwbDezKp+00vpXp82XnLF4fiDjvSSqjfSQuoeCbqw7GFdp6yb0ZiGr+fwD9Jz9gKGFlTTja+anG/GXOOghyX2PnrZq8Bj3/vG3plobJPEpSdm4FBHzK8J//b0UyWO+SB0QrKIf9Rd0yXVq+zNP/Y/H4QsolTJIeNMF+nuUVDPU2zB7WiJCjvzsKTUuXBROtoqjJRktP815T9v0XEaZJ6p7wuIzdG9dLCf6ECRcaKgKd4MjjxaQ9uor3Qni7ybA/rfC7n+F0tQ8WRpTA8yHNLOxCsMOUkNossp3UxyyQIDAQABAoIBABMdF7HaT6JM8In7pQAs6FT5GJYl1MaeWRNgDk1J3Sa/JArwJaSB8U4uczU4GRwFJO9Zwo0pt0FbsZK/YlXk/UEEizVOBvb1fbR8PUzFNAblPWFZZ+aTXu46SHIEH0m0mghoaYJ0gEjWTIgCx8toT9rF2zOz/InlOxBBn1wFSNThJ87wjj8vsozlCdgsSbJrMexpUJQ3Mh2AsUAffbjzQKsYfKgSCcAVUDvcX0wXjX0pD5B4zAfBEXb/2T9Xx9CcPQDO9f6U/A2hJ3u8j9lxL8kRiivyPudyQgj6OPp+BSHpXfMKKgmw0dJQeIiVmM6k9cV7GJEVu05RVobQcXBzu+ECgYEA2gia9qQ03LlNz0tTxyay0OWauDIE0Ihc0XnPWQUY8866Eg5rKk10mC81bj0s6cxjICYp3hSEBopSFmFQjNZ+c0p5CSlpkhA8QUe0tHzwv2nO2gauOFYREknNL7Gc5lbYbRll8V/LtpAnqSJq6JhVbxzDfEWfyNRORaDwe2820KkCgYEAt4pG2HCEffUHbf180cNtDKeAPO0tX88TdA74XVRpVQDwy/SFxeVEWCIhlkSgpqc/JBn57G2M5IQTptvkqKAVAvytalFS5EaZp4v0sWReyLzqAU+bciMikoM8JUrpevG7S9E8iqx7f7i+NLsq5Ug8nh2kg+n1eBzcDbrUdrHORSECgYBQOW5bZhwVQxGAPqU61+BfwLvnHnBrEmGkqf9DL/74Zo5MaoW/8PP/sw8j2tqVxCCNCb3J+x6BEZAWsAPlbl7kqPhUCKrRlau2EV5KMtaad6Im0uJz1Cc/5WvcKqwijL3hlsDNyYO5Tt1o/EL+Bl8ZHSpIpY2fZY7PS+JwaIFw0QKBgBNAQ7IMCzmS69aTkfYGg3eiUgcR8YJtG+M+drqDUhECaj9aRHW/WG3OFqvGQvt3612EA/zSeMa3O8ByrAcr00he7GmMYh9jcFZsjZvVpUN03S6KBQnxuXyYm0RmGRs2I6kOJ0V8Ve/NltW9FAC8lO8YuNrFPWP90u71u7c/ax1BAoGBALlR9PUeCzRsCMAMxTKrdlC5cII7yIzPYsYC6LCbsA3cUexnQI6MHdNC2BCS3JcgYOaVCCUXmuxb6auGm3+7IGWqJ49t4qGxNW/20qjQYoziVyeMdoU8Bd9GBxJcKz/PxEhlBNwmg9Yl2707fBsF4riDMRdm2sVPqY5IH2f60gUP'),('04906869-e323-4319-a767-2c731376f15b','3d5b467b-a5e9-4a90-aa7d-bca62d671905','secret','WHgfrlEm2ZMtnwqeKVeF3ZLVdxcxFvCGCoDHCQkcag_sQYLs9tmu8l3L9Zji9KmQ5rigUvI00hHTlnZYTiO7fWTDhlGpgDZFYrO_6f3JO2Zm8NhDLmhELFKIa0nHSk1OWpLYYnZKaad5tzG9oVFdzxQnQiGQ-dMPpOcgBIAGWxQ'),('0c2fbfdc-cb72-4961-909d-d6625cc07d55','cd2b09b2-bf73-4e39-bf17-ca5960d5d2f5','kid','afc4da8c-b5be-4bc6-878a-c6dfbc1bae35'),('0f02e2e1-8be5-4725-a37b-7e1a9c2a32b3','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','oidc-address-mapper'),('0fe73e78-9972-406e-83bb-7a29ace8cb2f','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('14c74b1b-0667-4999-888d-3c3a09fa82e2','2f93ba4e-6c88-4f78-acb3-2afda5b5996b','keyUse','ENC'),('178b78ab-6be6-4de6-af62-58d7abc54985','97460cbd-ffc5-4734-b5ab-f98dd24f7ec6','allow-default-scopes','true'),('179fd4b5-47e0-4a4a-9d1f-206397a4cd47','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('18cc1f9e-fe3f-4de4-94c7-5a08e65d40e6','2fcee3c0-10c9-473d-9cfd-c2f89b6f75cd','kid','caf1a151-ca7f-48e1-a254-c5535105bbf7'),('1ca3c2ba-4ba8-437a-aec8-0c2180db321f','50456a94-9c28-4f41-8ba5-91daea9973b8','privateKey','MIIEogIBAAKCAQEAtl5h0pp/h0j0e25IhkrAGLleV5YWs5LgzX1hTISFOQd1UcfxPESLs+ZreVJ/flRYJ8J5pZXftIZUX7lBblrOAx3lGtfh9tCzyWF8xmERijc4v+20jg10eGjj9u2HyQGwZAp8eNdCKH2fJmFW1vv7VJ8QX7DSzrZ/J+Eu67KRKT4QpklrC5k7p4Qz0j0KU0W/T/YnJmZKs7Tg+8ktJ3xZL7q8axlBOVFGl4suxjtVrE9dnyKPNpYmAXayo+rKdnQBCTHD9xgIc92YM5tK2mazA/qaodjexHwZS8ANdC20EhOa24aSnsdMNzB+zjvmYPBhh7yFeZzdEMho32Dpv7cAbwIDAQABAoIBADC8ZFQN6crTmlJqFIOe8lspHqc1eveeZulDen8iYx/seFPUpQlAID2BdHNFssCl9bEabbvso43w4Bd8wJmnNqrqkFFuI/r7pzBIFzpEspVHUKkp8ziLK/cJwPI6ZDE5fFQf4UfB7vI3MBLnrHdje7UPlSadcJjBeJXFve5LGDP26GUIALyPM99m5Rk1hLpdMqNcSR1fquFbOJHvn2hHQFPhZ7NvTmGx8A8Z9BxpEzgiKBNGa/5XR9j2f5IQif0TS/F6779PxSUg/YmFUqn8pRUm96wzsuwkOiroK4cJvyGWiZpHJmADjJ/iC9iAyHn1rZtePBuYuvpMETQkgxkvF2ECgYEA54fenreTZOlbJ+bm6zPBYlAwV3I/ZnrFff5Cmcr4Txy9JGgNrjtQuZ/UsOW59MufQRfhV2VmWCahToO1hVOru9F4FdL6PymSjeWA4VOBT2JfZRR4b/vAe+A6ZekBIRXBWkIKAQJA6JApGHC5s4nx0t3yqNxUrdScVwtEX9dQZ2kCgYEAyaRrPXRirc6FICXEAx5vvSQJzVc8UO2CslfTcNZ4KV3zKdjJp53ZAEAYb7F67FWS2GwH5r2j1IQ89WFPYAHgI7RWASHQXl6FWhOYBub/XMOpsnN0nelIT/4Q43SHUDI7shoxG1+D5SMWUCO7xlet2WYOZLMx7eHxBlYtNomfRhcCgYAhZyHABj4WjfAfxplED5hzxZvj0dDByS6a6cbUB0thpoTHLtfibh5MWXnG962nWoUkT/yrri5gw1n8SNY0YQjitOq9Q03lNOs224iHeZOrT0bx/00M4uY3OPdT4pTOICRgECz/TkLtCndTVlgERf+Ea47pu7ffyE+x4yc/KIIqGQKBgD0H4t2K6IMqyuhcBePbxn489iqMiNkFylUod/rjLyN2KC82SnLNN+z3eW31DfuSOwv+RrX0GC4uiDTM6zVn2+tyncVh8qtdeIc2/wC30frFzgsRHu7cuOJdR8dQcdQ4IBFcFBjw4/7qi8pdxmvWBeyTEzAvfKE/jbAZTT4AkZCpAoGAQEgs3odQPUEvS4l+q/e+qJ0SUUmSruqZPo6SmieplufUYp5PurpJiZOasLyEumuVJF1gVvgJTNbnbEX8qcWKCht9hLMtouPpn1CRQrNXNG1LXFjJTtiHHR5C7tpqZbO3qTmgE4+QHjmG4BOAIoCfh5nNBNm2Te98vyilc/IcYx8='),('1d3ecc9f-41b5-4190-b468-ef95e350983d','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','saml-user-property-mapper'),('20405095-ab88-40d7-aa4c-d7981a850a81','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','oidc-address-mapper'),('218bf74b-98e8-471f-b93c-2570bd303356','3d5b467b-a5e9-4a90-aa7d-bca62d671905','priority','100'),('221a0532-ab4d-4fd9-8c54-ebed401cc3b8','2fcee3c0-10c9-473d-9cfd-c2f89b6f75cd','priority','100'),('22f76d6b-dd3f-41f4-99df-7a0ed0316f19','d9828bbc-0d5b-41cd-b6f2-f02f690be465','keyUse','ENC'),('25eae1cf-1b6f-4e9e-8fa8-618289967837','cd2b09b2-bf73-4e39-bf17-ca5960d5d2f5','algorithm','HS512'),('2784fe78-66a3-497d-bcba-e951bb26ecaf','d9828bbc-0d5b-41cd-b6f2-f02f690be465','algorithm','RSA-OAEP'),('27adffbb-080c-45a1-b49f-83817e694933','d9828bbc-0d5b-41cd-b6f2-f02f690be465','priority','100'),('29b642b3-ca30-4fa3-828e-1531eb61bca2','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','saml-user-property-mapper'),('30c7f6ec-baf9-4f35-9c26-1217093caa1c','116e4f1c-8e8f-428e-8d24-e3e3ead23957','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"address\",\"displayName\":\"${profile.attributes.address}\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('340ef702-e9f1-4742-8453-575022976683','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('3defbe2f-4fc1-4832-aaf9-58fe626b1ad7','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','saml-role-list-mapper'),('3df2f29f-769f-4896-ba36-b972171a14bd','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('4086ec0f-f4e8-423a-9b15-b4de111d2c15','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('41d15572-0b2a-4db0-b646-a7c7516ecf13','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','oidc-full-name-mapper'),('44da1475-e9fe-445e-a18f-e11bd58975e3','cd2b09b2-bf73-4e39-bf17-ca5960d5d2f5','secret','BRSMGGBV-a2elMmR8mpKcrpqw4cjMnWDwePk7cpo3bovRj6Kwtr0lJD00bq8pPah0peWTuWqyUjNo21HcYcRGuwRnnb5MzbB0wkEqd_qkKIuTZuaiemh-z_lW7dcNqSvxSpKjSZV_1-1nNOHaOAyMez9E_f3FzFwHUwtIGO3RWM'),('477b3c2f-a060-4a20-aa63-140ea4203d92','50456a94-9c28-4f41-8ba5-91daea9973b8','keyUse','SIG'),('5a417926-b186-46fd-8cfa-aaac7944be08','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('5ad7dea0-0aba-4c60-a54d-26bd865b05cc','b14a1b2b-e5ca-4fa7-b868-fc7f6ae8b198','privateKey','MIIEowIBAAKCAQEA8piSGfzn6OPRewan2rjGDG6K5Sl0S5FyxSBvk559xoDLQgEydoWmi+eNBHksEPoarl7kM7ua3dVkGsrBBFfX1dEATuNLv4EirSlzvbOJUk9QlDQfm9/IQcOUe/7tFSlbev3ax23g5bNcXv50NnDcTfi4odvDz/nx/q3F0mEdXmpu743+Z7aLTBNRdtsw1RUjeTubapbF/uRVi0LuG/qJBpXWobaukdPNzRsv6l//TiMWkSlZ4yMqUeSi3etD/+ulrSKbzYad5dlgFSZd/YgR3UNieCS4P435puPS+794qDUz06FOasTaLBfBMKdUZ0pvXYMRiD3Liv5UeRmzp8EW9wIDAQABAoIBABr+FuOFXFhxYNGLgAm6HW8srY+p+SKfYGHGpiOKsvvvQK5ra638WPegH/Srdte8vFNCg6mt6iFcqPLCNI/DJmTICHy+laMNP0p9Hj+xRko+QPz8f7fcQm/uzwqs5rxACcm5jSo7c5abSl/XeB7Gl/yk/AYmabcuXFq2AxjRbW8fuRsYe/Xys8RqocWEdSa+aKQd8WDnnWOJZBnKZE58w61nWCiudN0BF0wAE93mp5I4/E3SvWzgSWfvdk0gtWwZFTtxO193QZjNlAVt8a1RDPNoVNvOY+TfdBtMmpzB6QM5kv1gHQqLmVC3OIWISmNtm//rX4r+yGPaOvFtiiKG+gECgYEA+eeJ2tnR5q/z979UtlF96OGM7f3q9ddtLSXOkXaV4WmmaYNh07x0qJBgv0bnIxdw0HCS0ZHyCk7BskLbhlPdX4d/ejrRB8UZ7QzdTWoTqC/YpsORVDYwFxmOCAAs68kxox76AT00JOQ4fPG7D0eJYEkxCF7R/KTdgmXU3Xi4dkECgYEA+INlfQ/V+nE1Li3T5qvostm7r0pfMwuQKqwAk2HPTc2ytOBPmtE7C4An1oUNGbC1akJTA1hvHTImO0rpdHsZUjSTldKm8dNCuHBGAbdy7c3PjRQX0yQSKPNCxJ2bna7BoHhxAvBQ9XH7TwhEmhe/9KARdTVGncwOm3X5BV157zcCgYAZiHalTawMjd23am0VU64xpRnpFxByndghzMMWSa92oHzIOww7vf2NW3MHGA91nmeAZIAbuXWpZ/KSbBJR3y+3GvkDXA8PZCwJ9E6IIlZv0LOqFkE7AW5Ybdv9JUdxr9TKfde9WKuDOW4sFeau4PhARjokSMvbrFyVfiIJntP6AQKBgQCXkXQ9oYHtXEyGHLdH0gN7yaZZ0+9aL6w/CmbTfO0108Yx4TlMAF6VthUWFlIWIBuVclw1ByPF18dPlHHsdAPOiniVAUSG60WfPgLEm0GCXms+7UlWooJc7XkEd+fodSRtHeg3VaDbAii3XCCTJvcRWOss5FBsf39NO9ekeQ2cYwKBgB8mI/hHThuiGwmDr7bb2SPO02nMm6NH0O9pTVpOWRqAyUZAZnO5Mj+x6mOI4Eg8LS/pHzJQLL9r0lP40rJRlZ2z6hBq/HYCgy9/UmehMd5zgb0fSvYqFvcB+Ug1/AxhglYmxrQCR59nPxFZiFov2aSJ2atSjr9y90N4oP9HkLAq'),('5beccc21-3035-4c43-8017-e711a2fda6fc','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('635666fa-477a-45a2-b556-02035f1e8dfb','b14a1b2b-e5ca-4fa7-b868-fc7f6ae8b198','priority','100'),('63a168db-f138-43ed-bf2c-3990b2333768','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('66262703-b7c7-410e-a9d2-947af9e70994','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','saml-role-list-mapper'),('6a101d70-826a-44b1-8568-6834fd7cc3a9','da5aeca8-527a-4c59-acc4-2ad515d5fccf','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('6bd40137-ec99-4cad-842e-ddcf0f00da50','8f8128e3-580e-4bee-bd29-95c7ff888f58','host-sending-registration-request-must-match','true'),('7aec7fee-d279-489c-8914-86b7f4f7dbe3','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7b0a28f5-52fd-4861-9ea8-83157a794d0f','2f93ba4e-6c88-4f78-acb3-2afda5b5996b','algorithm','RSA-OAEP'),('7cc7c774-cdfa-4151-9dcf-e433625ef5ec','90d0142a-dfc9-4770-ace1-a685990147bd','host-sending-registration-request-must-match','true'),('7e27d49a-39fb-40c8-ae7e-cddb05824e74','2fcee3c0-10c9-473d-9cfd-c2f89b6f75cd','secret','hI5z5zuKUd8MNf3rjEaL4Q'),('7f7ff617-4177-469a-9d1b-8305bc1815ff','50456a94-9c28-4f41-8ba5-91daea9973b8','priority','100'),('840e3a7a-1087-4439-88cf-b3ea4e42f7c0','beaa26e5-6973-4ff8-838e-2eefdc43083a','max-clients','200'),('8c5c4ca8-42cf-409c-a8a5-e15fdde7b467','3d5b467b-a5e9-4a90-aa7d-bca62d671905','algorithm','HS512'),('8c8f9c27-ed39-473f-a519-3ea6d1a6c052','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('906f1b9f-94ca-4651-8a2d-b118ada9fd47','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','saml-user-property-mapper'),('9708b093-ae01-4265-a3c6-56011443978b','de90c961-3963-4a47-943a-9821621a627b','secret','aeTxRGYBS8cWwkOI4VdgbA'),('97a74b07-70e2-4a6b-b54d-a5a1f27ede31','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('97ca858b-9ace-4f01-be9a-2d07055f0051','2f93ba4e-6c88-4f78-acb3-2afda5b5996b','certificate','MIICuzCCAaMCBgGXYVnlCzANBgkqhkiG9w0BAQsFADAhMR8wHQYDVQQDDBZmbGFzay1zc28tYXV0aC1zZXJ2aWNlMB4XDTI1MDYxMTIzMzQzMFoXDTM1MDYxMTIzMzYxMFowITEfMB0GA1UEAwwWZmxhc2stc3NvLWF1dGgtc2VydmljZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMC1UaGSCXJs/H3pR7H7v9D/pB+7aEmeouX7lpNAaptVbmuy5X2eOYhUrQXqsmz2x1SBC4cJCgA9W+TNiJipnM+ENELDGhLX/LnSoIzq+HXgw1I+/rhSIoutSlCE3Agg0q7c8TExWAwMY7HxhZ3v8yTKR0BqzKeJcXnjN7Nk70uycYYYqkBKiZLG3dw6M3vFaYAYda2b2elqrOrJkcKMUjjYTrv7wBI19k+4sk+cjR+YwaYUpnecwObmWh3SvpRKftpASqFlVw1+BurdZmkWcR/iYGT4Y2MAWiubLTNb1KLHp59vx2l/fCsxJ4c79exvkMBNtNhTxrIhqJOEIyF9vNMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAeCE91VVwa939pGkqVTQXPRhV7BDIneKZfSjCNq3CUnOfF1FUoynHBWiNi6pGtNmVXyBxmKqliTX8L+UpL2xGoJuoArM9PthN67juyaPMrgOtbAdTc0QnBaVWb4AfDnMZGFm9x8zLp1zw0oZU64JIlORAT60hEL5vbAUQ28h80H36NPnUUsHOuvSPCikXx33dtXBkoCMgv9Z7Ubnm8S8X/zCiMnN3L3+0q75gNZYgC6gKJRzMo5DbfoXP9c1LxjDMcgt/UV2be/crQw/Ap06KpLGkul3zhbnWr/aynH7Y+82rG2hBnE0zZ3HjnTcUi0g3M/3E/pzK1Z3xH3EehY5nAA=='),('9a2a0289-cbea-4d34-90c3-a60360e4d2b2','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9a9c1dbf-1765-4b96-a8df-88a92d32db6d','b7cd7d7d-7979-4756-908d-1461487c17fd','allow-default-scopes','true'),('9e694285-01eb-48d1-8cff-5c8ff01870ed','2f93ba4e-6c88-4f78-acb3-2afda5b5996b','privateKey','MIIEowIBAAKCAQEAwLVRoZIJcmz8felHsfu/0P+kH7toSZ6i5fuWk0Bqm1Vua7LlfZ45iFStBeqybPbHVIELhwkKAD1b5M2ImKmcz4Q0QsMaEtf8udKgjOr4deDDUj7+uFIii61KUITcCCDSrtzxMTFYDAxjsfGFne/zJMpHQGrMp4lxeeM3s2TvS7JxhhiqQEqJksbd3Doze8VpgBh1rZvZ6Wqs6smRwoxSONhOu/vAEjX2T7iyT5yNH5jBphSmd5zA5uZaHdK+lEp+2kBKoWVXDX4G6t1maRZxH+JgZPhjYwBaK5stM1vUosenn2/HaX98KzEnhzv17G+QwE202FPGsiGok4QjIX280wIDAQABAoIBACdQtrNCYogEQS0E+1oN9O/UP+0zZE7kvPIztmAbW8SOFOWHDXfn4G/2aohS/gzp+fe9DheCGha7bfSLlCslK3dQzwKx4C9o/kgA9z1YsNEHxoGQlZIQO7kIZSlxOZy06ZbAP7rcCM0IeAx1LF/w9MeUNx4my9MAYPTPjO0eEg38oqH5KabEa7QlNUXUYK9EVXUmeNS4Dh2W0ZDrQJZ4MFtLF+AeZajUMfBjep0iEdWYipOBsdTy9SEMegL8Mi6z0u96IhHi0Rl9CfPzoMbDiRnq0viiiLxyB5s0mEhWe7NWq6kCt2k+2fBtjrEEkOJ9M//cIcDSOeGxhI5mkLv6qIUCgYEA6Bz3BF88BH5CMw04/Rmp19cIOqXZ3psycJAOjsBAiKHLtkAsd+6mUv0RoAKpvpDIpD024wlEnouQz3ZpFQYCoxq/Cw06l1iXTf/6VIncEKsFIB2DsJo/ptIQRLKkCu10+J1lQ4HIf+Dck5gIhY631tjwGYlI+QBNgu2yHGmqGs0CgYEA1Io69RmCWRIC/40Fx1R8CPQq2rWj2RjqresIVdVCBDUxFfxYagif42ojNWdeB1MPBwRIqYD1deco8q2mi585r+9QDNlzhBGRe4/1Rh2aDhkiWnj1mJAytUxYw2+sHgiQv1ida1THTfIEQWbB0x+TW32T+KsqpmhE72DQSneydh8CgYEAzNwToEY1gHm3D7vR2oD2CEv/NVP/8Jrlb7eVQaSo0G6MjzQgi1GUdpZpIeJ30nuSunJUqRka+RuRGaoWoLmHRlFq3+QzHDTShcMxO7/Y/NUUVv31pr7dAu1P8nIAmqxtmqfAIk6/mS3rQFDk5IvL8dHSR5eFUk9UGgSUOMOBoNkCgYAUip+UHLkKXsFHbZvHXhT20JJrvO5vBwd3c6XEle3hdjqeQ1tQNDEvy4xHlwvxbUegh/t11m7izEqa2cmk6OisZla4RzPw6bnD1XABLM882ZUGZXZnHlioSQ6zJNHfvTgwJiJgwzrX/7IFmCbXfs/BIevxNqnSl3VCJXs8F0F6RQKBgCvvkSTZqOvDvw1Ga20w+YimBgN+Z8WQBH/a+uRybqawuaBoFxIcm7sJXzSDd0b6kN6r0M6zNlwkDcdsdO5wj3qvMDrVpw+8mr58HP+VkfK3lKG0pNc549kZCGQRmGXRM4NTGR5KS/0epMe7kJeVkuCSHxQzdZP9GzU5XdaD7A83'),('af1c0cba-fe21-4567-8edc-9935cc8ad0d7','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('be08321c-e07e-40bb-b19a-3c37904d9b49','de90c961-3963-4a47-943a-9821621a627b','priority','100'),('c041e53b-ad28-4c9a-be9a-c8c9517de6f9','2f93ba4e-6c88-4f78-acb3-2afda5b5996b','priority','100'),('c2f8e048-8930-4135-8de2-b61d02e286c0','d9828bbc-0d5b-41cd-b6f2-f02f690be465','certificate','MIICmzCCAYMCBgGXYT69yDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwNjExMjMwNDUxWhcNMzUwNjExMjMwNjMxWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCcUevAic0ayya2eg81dKg+LoYs7BlM0tJeEB1esvBcly41ko/BsN7Mqn7TS+lenzZecsXh+IOO9JKqN9JC6h4JurDsYV2nrJvRmIav5/AP0nP2AoYWVNONr5qcb8Zc46CHJfY+etmrwGPf+8bemWhsk8SlJ2bgUEfMrwn/9vRTJY75IHRCsoh/1F3TJdWr7M0/9j8fhCyiVMkh40wX6e5RUM9TbMHtaIkKO/OwpNS5cFE62iqMlGS0/zXlP2/RcRpknqnvC4jN0b10sJ/oQJFxoqAp3gyOPFpD26ivdCeLvJsD+t8Luf4XS1DxZGlMDzIc0s7EKww5SQ2iyyndTHLJAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD/LfwaoxSYIIbj7fSoxz9qmO6SlwjpTTYh+DKD08nT/WnQgLygKKR/APqkNSRz7JgmsgO94F9LnsoVdXqkXcHQytE3k6wwVcn06p2lZZUBR4ZHWOF9vWhAH/Avb/3HydOvee9R95hUv7gO6rYkiisMWYQZLDQtu1/Rrjg6tMDZGky21qS1Yr2OU8+d8b5dieimzfjeUzI0Zhl1aLTKe2WKYmsNyMz2hm22m/5THj9E6FvJH6p7PH2yDSiUQqgAsHznCUV6tr0vJHk8OlBO60tL2eOJZSv9f243G8U9Lm1Igc515VgoEFEYti0LquGMvPGIZ8uzZPP06hz4XbkF6rW0='),('c95f6d3b-aab8-4e20-b543-7fd154d2a2c0','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('cd583022-8527-469e-a2a1-38269aa4aced','b14a1b2b-e5ca-4fa7-b868-fc7f6ae8b198','keyUse','SIG'),('cd6fc702-f749-463c-bea2-e246f65fdcea','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','oidc-full-name-mapper'),('d6166104-0309-4bad-b3a8-925ec568fc20','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d80b57b7-391b-4bfa-b36f-17bcc4d028f4','cd2b09b2-bf73-4e39-bf17-ca5960d5d2f5','priority','100'),('d8b76a65-467f-4f2a-90fc-1eac0aeb2ab2','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','oidc-address-mapper'),('d9da76ea-450f-41c9-afd4-70aa3301d508','7ea58bde-cb2b-4e50-8cb2-8d9663d11ad2','allow-default-scopes','true'),('da5fd2c7-a9fa-447c-a3bb-108d444657ac','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','saml-user-property-mapper'),('dbc32e16-0088-413a-8994-e275bdd77a8c','50456a94-9c28-4f41-8ba5-91daea9973b8','certificate','MIICuzCCAaMCBgGXYVnjYjANBgkqhkiG9w0BAQsFADAhMR8wHQYDVQQDDBZmbGFzay1zc28tYXV0aC1zZXJ2aWNlMB4XDTI1MDYxMTIzMzQzMFoXDTM1MDYxMTIzMzYxMFowITEfMB0GA1UEAwwWZmxhc2stc3NvLWF1dGgtc2VydmljZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALZeYdKaf4dI9HtuSIZKwBi5XleWFrOS4M19YUyEhTkHdVHH8TxEi7Pma3lSf35UWCfCeaWV37SGVF+5QW5azgMd5RrX4fbQs8lhfMZhEYo3OL/ttI4NdHho4/bth8kBsGQKfHjXQih9nyZhVtb7+1SfEF+w0s62fyfhLuuykSk+EKZJawuZO6eEM9I9ClNFv0/2JyZmSrO04PvJLSd8WS+6vGsZQTlRRpeLLsY7VaxPXZ8ijzaWJgF2sqPqynZ0AQkxw/cYCHPdmDObStpmswP6mqHY3sR8GUvADXQttBITmtuGkp7HTDcwfs475mDwYYe8hXmc3RDIaN9g6b+3AG8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAf/lLZz/VBASxBCpukvPLLgMXjgqnlS4KnqS9L1BN7US6iM0U836B53TZM3xV9UYDe96EPFypAvPVH0eDw+n+QtiuTv3M37AubcMHYS4WxlDrS6tlVNMK9ZBFEgH/pJfkalg5ozQiaM1fc2T7YCCu8eFLnqihmd1bxSNpQNQe7Yrnga43DUOXjqu4VhtrkQfF12OUl9TRyjf/mgBO1l+caQmtvXbkCOwFKLF2Q3qc1DVf0KriezTg2LurjOyWeaFziRaHXVyNG1LEfu87QC0BZOR+D44OzyIGxwhayOHpCfzLR3dB3TaS0OZkIENFud6imhDyYj9z5Q+b6hvo4c/BxA=='),('dbf477f0-cf56-4892-b669-2cd0121ac5fb','cc57bf78-8190-4795-9385-b6e440302f5f','max-clients','200'),('deb47eed-0f5a-4afd-90d6-89cfc8cd7654','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dfeaa17d-4bf4-4262-b896-acd81fca8fc1','a405cba7-c9af-4d29-ac37-09965cdd3705','allowed-protocol-mapper-types','saml-role-list-mapper'),('e67d45a2-3385-4f8b-8ac8-311136b8cf1b','b2c947ad-92af-439b-a959-a812ada713c4','allowed-protocol-mapper-types','saml-role-list-mapper'),('e903e812-a557-42bb-b487-75d5f53f1792','8f8128e3-580e-4bee-bd29-95c7ff888f58','client-uris-must-match','true'),('ef490d83-2636-44d6-a2ab-2de308a27d7a','b14a1b2b-e5ca-4fa7-b868-fc7f6ae8b198','certificate','MIICmzCCAYMCBgGXYT682zANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwNjExMjMwNDUxWhcNMzUwNjExMjMwNjMxWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDymJIZ/Ofo49F7BqfauMYMborlKXRLkXLFIG+Tnn3GgMtCATJ2haaL540EeSwQ+hquXuQzu5rd1WQaysEEV9fV0QBO40u/gSKtKXO9s4lST1CUNB+b38hBw5R7/u0VKVt6/drHbeDls1xe/nQ2cNxN+Lih28PP+fH+rcXSYR1eam7vjf5ntotME1F22zDVFSN5O5tqlsX+5FWLQu4b+okGldahtq6R083NGy/qX/9OIxaRKVnjIypR5KLd60P/66WtIpvNhp3l2WAVJl39iBHdQ2J4JLg/jfmm49L7v3ioNTPToU5qxNosF8Ewp1RnSm9dgxGIPcuK/lR5GbOnwRb3AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGHE2wdue78+dZcAUiiogRtKXGajekF7kW34Kh2rY1p+9suOPX9zmdjrWc0fIqPhjfILy03/kiE+9PN9WkHjNuReJsJvJ38+k6gDLl7cqSJctXYMwf0L6ulI7UBopiOeDixxpGalBpgZaLNwsgvNc0ivMNqjVxuz7ZMWNwIzGSQ7YSjp+dnK/LUD74Aqc6vocc4nYXQ0SAtMjD8KalTtZmI29dK+YvmV7l7HORDirifNoEPQ51/RpxaKUHqeouXQDKml3o+Stno01ee1u5+AN1yf4jbF7u+ExUID3IgNcI5iPH6W3WBCYX5aGmzhXkxnrENJn8N1Ck1Y+5MTEbyU1zM='),('f225b7ba-d814-4de7-9a10-1445fccbc1f5','3d5b467b-a5e9-4a90-aa7d-bca62d671905','kid','b1e6b520-e672-4629-a18d-4e06cf399aec'),('f3d5b2d9-d123-45a1-b0f9-02214bebc759','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('f4657362-7287-4dc9-a588-5814d6a9b3c7','2acbdfc0-e37e-42ca-b5bc-fee5f87a8e42','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f52f72e7-400f-4ec3-a687-54c883fa9cca','e24853cc-4625-447d-8e97-5794945d3fce','allowed-protocol-mapper-types','oidc-address-mapper'),('f81fe2b1-6cab-4163-a98e-cbe937cbfcfb','de90c961-3963-4a47-943a-9821621a627b','kid','4dcb7afa-6b5e-46ad-8361-43c41bc99617'),('f8a6f5e8-fcef-485b-9041-3a2b992a01fc','90d0142a-dfc9-4770-ace1-a685990147bd','client-uris-must-match','true'),('ffd09687-f520-4b4e-8516-eb97d79e6a58','6bb4ed29-dbf2-46ea-9427-513078aba3ac','allow-default-scopes','true');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('12b14bb7-8b6e-4fa9-8511-0fbb3a869deb','18270ee4-f434-4ebc-a96c-3540c5caad12'),('12b14bb7-8b6e-4fa9-8511-0fbb3a869deb','9941909c-96f0-42b4-b549-73f1d2ace883'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','0303cc78-402f-48cd-be35-0583549fa838'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','1ad1a682-0bd1-4c3f-9086-5d35b91117b8'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','21222a0e-d51a-411f-abad-de4e962b7232'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','21b64064-e4e7-43d1-9a66-f3f9d3f3b490'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','31727480-9ce8-430d-9d6f-505f927e4dd3'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','4012c0e3-d22d-41d1-8e75-4f466989653b'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','4254080b-6d7f-44a5-a3ac-df0add200732'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','491a4f23-8149-48c4-b6de-c675ce82ee21'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','49f95c5d-43fb-4019-89a7-7dadda0fb881'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','5e9ef607-470c-4577-a02c-6c18f841b9e6'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','759ebc06-208d-446e-924b-e6853e3468c2'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','831131c9-206e-4f74-bce1-fbf3776945c6'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','9b7a9a0e-b7e5-4964-99a0-e8bed8b7b5a1'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','a48781dc-85d2-435c-acc6-44e1e435c70c'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','b862c890-3401-4cb8-a53b-171782672709'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','bbd2c341-217d-42cd-b070-b63ecebfb965'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','da2549fe-94b6-4a04-bd08-4bb29c53e5e3'),('211f1fb1-855b-4e53-b58d-910be5c7b04a','fb0d5212-b601-41b2-91a4-62625dd8d912'),('28c20821-abf0-428b-8752-aa1213619f8e','6e876d18-80b6-4fbd-be8d-95c315abb275'),('4254080b-6d7f-44a5-a3ac-df0add200732','491a4f23-8149-48c4-b6de-c675ce82ee21'),('4254080b-6d7f-44a5-a3ac-df0add200732','5e9ef607-470c-4577-a02c-6c18f841b9e6'),('44ceba81-c0f5-4ab0-998e-0bd0aba951cb','8c9dc4f1-83ff-458c-8f59-941cbb73bff2'),('57796b5f-0dc5-47a7-8edb-0ef9517670ea','ae549259-39bb-4b50-a81b-d7723a5d7e1b'),('5d37e9ca-4abd-40fb-9ef1-f1e3246eb3a3','138c1ed1-58da-4153-b804-f696374cae4e'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','09356b3d-a389-4cd1-a4a1-ab5fe773be10'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','0e0042a3-d32a-4234-abec-fb9e0a9224b9'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','110b4c8f-49cc-49de-9657-4730cc13afa2'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','124328a3-e05d-42b6-b9b8-0da7a7b712df'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','12b14bb7-8b6e-4fa9-8511-0fbb3a869deb'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','138c1ed1-58da-4153-b804-f696374cae4e'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','159720a4-e51b-419c-ad66-1ee18d08ec87'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','18270ee4-f434-4ebc-a96c-3540c5caad12'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','19365c94-6117-4411-8c7c-e95830149857'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','2de1e3da-01da-4ec4-ab56-5a838fb62796'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','34f32bd0-7517-4fb3-b18f-db22ca72e80c'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','362effd4-88fc-4c16-a458-1ca774540026'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','3bd2171e-787f-44b9-a3d7-c81e6de14ade'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','4414e944-a0ad-4004-9b0e-dc8d8e98c204'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','4692a325-3a21-437b-910b-5c6657b43f87'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','57796b5f-0dc5-47a7-8edb-0ef9517670ea'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','59aba6e9-6983-4353-b232-c92137018e78'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','5d37e9ca-4abd-40fb-9ef1-f1e3246eb3a3'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','6a1825b6-bac5-4485-bf9e-d9e4f6fba597'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','6ba33348-ec39-475a-9a8d-709c411a4290'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','70bb4df8-a1bf-464e-97ff-13e4ce0e44e5'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','79f606ed-e3bb-42d8-a2ab-82069519c60c'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','7e70a2b9-9e34-4f07-bbd4-418d9e024d5f'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','8150afa0-5799-45df-85b6-24ec382a7a05'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','8685ac4c-6dbc-49bf-8f1b-4a3f0ca7a97a'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','8e33d8df-4f60-4f39-9a84-bb41e9521a6e'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','98c1fe05-8e2e-416f-b583-dce2b4ad4841'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','9941909c-96f0-42b4-b549-73f1d2ace883'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','9b9d4948-59d1-44ca-b8f9-2f4220fc7b4d'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','9c5d310d-3eac-40cb-99b4-93f2872faef8'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','a06b3db5-a976-41a5-840c-772f501d2d53'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','ae549259-39bb-4b50-a81b-d7723a5d7e1b'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','c4032313-6f03-40cd-b942-763a0e6789a6'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','c4cdb728-2ba9-4000-881b-cf86f838b87e'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','e462563c-17f3-433c-9c4c-ed368304be5d'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','fb167dbc-3924-4161-9a8e-8ba39d9fcf77'),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','ffaf8997-a56d-41d7-8270-92aaaa9ccf74'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','44ceba81-c0f5-4ab0-998e-0bd0aba951cb'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','6b3dfbe6-738a-48a3-90c6-1d4cd82f82ba'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','8491c198-0ec9-480c-b4fe-1d870c06dceb'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','c541765d-0c0d-4ab6-9649-cecac7c98f9f'),('831131c9-206e-4f74-bce1-fbf3776945c6','21222a0e-d51a-411f-abad-de4e962b7232'),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','1f285be6-819e-42a4-93b9-b0eea2104da3'),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','2a4372ff-ff1f-4542-af29-6a231182129c'),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','43c045c5-351e-4114-a879-30722bb916cb'),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','cee3f87e-3ae4-45c0-825c-e8cb994a534d'),('a9af30f0-f860-45d3-93ca-4ec30f6e5b24','92ee4361-e66e-4455-9b02-7fec0b0a6f2a'),('cee3f87e-3ae4-45c0-825c-e8cb994a534d','0cac6bb1-13df-45e3-af65-40f5c0cd3cca'),('e462563c-17f3-433c-9c4c-ed368304be5d','c4032313-6f03-40cd-b942-763a0e6789a6'),('e462563c-17f3-433c-9c4c-ed368304be5d','ffaf8997-a56d-41d7-8270-92aaaa9ccf74');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('78737d48-15b4-4104-9024-b17d275260aa',NULL,'password','90e8a704-9d8a-4871-9896-2fc957d2ec97',1749731037801,NULL,'{\"value\":\"vnqTpxifzfR3tmmDm8Rm5MTUv4uEL/i5ODoC8Vzmp+Y=\",\"salt\":\"MXV0ctNp5fOie84zubX25w==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0),('842b5d05-766c-4d37-ab52-c43ebac8546d',NULL,'password','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14',1749683191506,NULL,'{\"value\":\"ZN2ri6Nn8H+okC/yYnVBaTAFOFJQVAoTkAYmFZ1hRKM=\",\"salt\":\"O/8hXaVfkoKjfSuLmlLDcQ==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0),('f80051c3-6597-47a8-9725-e4a91c4b3d5c',NULL,'password','cbb43578-36af-4afb-8d5e-6633877a5b44',1749685184763,NULL,'{\"value\":\"6sX+Lka8og5lPh/pLlF8d0jr/wR8yW6zMrKJB5FwQrk=\",\"salt\":\"xSj9WNHmbFugwpcm0oNF+Q==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2025-06-11 23:06:23',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2025-06-11 23:06:23',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2025-06-11 23:06:24',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2025-06-11 23:06:24',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2025-06-11 23:06:24',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2025-06-11 23:06:24',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2025-06-11 23:06:24',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2025-06-11 23:06:24',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2025-06-11 23:06:24',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2025-06-11 23:06:25',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2025-06-11 23:06:25',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2025-06-11 23:06:25',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2025-06-11 23:06:25',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-06-11 23:06:25',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-06-11 23:06:25',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-06-11 23:06:25',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-06-11 23:06:25',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2025-06-11 23:06:25',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2025-06-11 23:06:25',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2025-06-11 23:06:25',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2025-06-11 23:06:25',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2025-06-11 23:06:25',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2025-06-11 23:06:25',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2025-06-11 23:06:25',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2025-06-11 23:06:25',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2025-06-11 23:06:25',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2025-06-11 23:06:26',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2025-06-11 23:06:26',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2025-06-11 23:06:26',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2025-06-11 23:06:26',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2025-06-11 23:06:26',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2025-06-11 23:06:26',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-06-11 23:06:26',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-06-11 23:06:26',34,'MARK_RAN','9:737ee933fd399814ed5e24f3b1bbe39d','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-06-11 23:06:26',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2025-06-11 23:06:26',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-06-11 23:06:26',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.29.1',NULL,NULL,'9683182995'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2025-06-11 23:06:26',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2025-06-11 23:06:26',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-06-11 23:06:26',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-06-11 23:06:26',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2025-06-11 23:06:26',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-06-11 23:06:26',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2025-06-11 23:06:26',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-06-11 23:06:26',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-06-11 23:06:26',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-06-11 23:06:26',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-06-11 23:06:27',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-06-11 23:06:27',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2025-06-11 23:06:27',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2025-06-11 23:06:27',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2025-06-11 23:06:27',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2025-06-11 23:06:27',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2025-06-11 23:06:27',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-06-11 23:06:27',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-06-11 23:06:27',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-06-11 23:06:27',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-06-11 23:06:27',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2025-06-11 23:06:27',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2025-06-11 23:06:27',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2025-06-11 23:06:27',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2025-06-11 23:06:27',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2025-06-11 23:06:27',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2025-06-11 23:06:27',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2025-06-11 23:06:27',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2025-06-11 23:06:27',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2025-06-11 23:06:27',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2025-06-11 23:06:27',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2025-06-11 23:06:27',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2025-06-11 23:06:27',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.29.1',NULL,NULL,'9683182995'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2025-06-11 23:06:28',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.29.1',NULL,NULL,'9683182995'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-06-11 23:06:28',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-06-11 23:06:28',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-06-11 23:06:28',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-06-11 23:06:28',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-06-11 23:06:28',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-06-11 23:06:28',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-06-11 23:06:28',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-06-11 23:06:28',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-06-11 23:06:28',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-06-11 23:06:28',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-06-11 23:06:28',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-06-11 23:06:28',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-06-11 23:06:28',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.29.1',NULL,NULL,'9683182995'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-06-11 23:06:28',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2025-06-11 23:06:28',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.29.1',NULL,NULL,'9683182995'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2025-06-11 23:06:28',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2025-06-11 23:06:28',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.29.1',NULL,NULL,'9683182995'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.29.1',NULL,NULL,'9683182995'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-06-11 23:06:28',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-06-11 23:06:28',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2025-06-11 23:06:28',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2025-06-11 23:06:28',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2025-06-11 23:06:28',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2025-06-11 23:06:28',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2025-06-11 23:06:28',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-06-11 23:06:28',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-06-11 23:06:28',110,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-06-11 23:06:28',111,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2025-06-11 23:06:28',112,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-06-11 23:06:28',113,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.29.1',NULL,NULL,'9683182995'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-06-11 23:06:28',114,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-06-11 23:06:28',115,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-06-11 23:06:28',116,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-06-11 23:06:28',117,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.29.1',NULL,NULL,'9683182995'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-06-11 23:06:28',118,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-06-11 23:06:28',119,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-06-11 23:06:28',120,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-06-11 23:06:28',121,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-06-11 23:06:28',122,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-06-11 23:06:28',123,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-06-11 23:06:28',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-06-11 23:06:28',125,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',126,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',127,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',128,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',129,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',130,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',131,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',132,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',133,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',134,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.29.1',NULL,NULL,'9683182995'),('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',135,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',136,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-06-11 23:06:28',137,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',138,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',139,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',140,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',141,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.29.1',NULL,NULL,'9683182995'),('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',142,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.29.1',NULL,NULL,'9683182995'),('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',143,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',144,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',145,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',146,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-06-11 23:06:28',147,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.29.1',NULL,NULL,'9683182995'),('29399-jdbc-ping-default','keycloak','META-INF/jpa-changelog-26.1.0.xml','2025-06-11 23:06:28',148,'EXECUTED','9:007dbe99d7203fca403b89d4edfdf21e','createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.1.0-34013','keycloak','META-INF/jpa-changelog-26.1.0.xml','2025-06-11 23:06:28',149,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.1.0-34380','keycloak','META-INF/jpa-changelog-26.1.0.xml','2025-06-11 23:06:28',150,'EXECUTED','9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01','dropTable tableName=USERNAME_LOGIN_FAILURE','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.2.0-36750','keycloak','META-INF/jpa-changelog-26.2.0.xml','2025-06-11 23:06:28',151,'EXECUTED','9:b49ce951c22f7eb16480ff085640a33a','createTable tableName=SERVER_CONFIG','',NULL,'4.29.1',NULL,NULL,'9683182995'),('26.2.0-26106','keycloak','META-INF/jpa-changelog-26.2.0.xml','2025-06-11 23:06:28',152,'EXECUTED','9:b5877d5dab7d10ff3a9d209d7beb6680','addColumn tableName=CREDENTIAL','',NULL,'4.29.1',NULL,NULL,'9683182995');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL),(1000,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','00d610af-b423-4f64-a47c-907f808adc0f',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','0d0d5ccf-26f9-4494-969a-65ac3900374a',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','21f6d292-9b24-4d45-84e5-f5fc3c9bcc46',0),('98c61bee-7a7c-47d6-8721-3559b9e905c2','29b03bcf-1b4b-4f39-9e09-a0fc922a295e',0),('98c61bee-7a7c-47d6-8721-3559b9e905c2','4acf4fc0-45e8-4f36-af11-66e474c9934f',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','59aa9164-3bb9-4c0a-a38d-628212ef73c1',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','5d7aecde-44a2-4e78-abe3-45795bcb035b',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','67dbae1c-6d6d-4e26-9b51-9cd7c80a120c',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','b5d84c98-d4c4-454e-b82b-34303ce4ba64',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','da86d8fb-ae19-4e11-9836-46b881afdb50',0),('98c61bee-7a7c-47d6-8721-3559b9e905c2','e4fa9f2e-9701-412a-b739-2226c23cf233',1),('98c61bee-7a7c-47d6-8721-3559b9e905c2','f56a4b39-19e0-4be5-8c54-bf7eb6317c16',0),('98c61bee-7a7c-47d6-8721-3559b9e905c2','f921dace-2cba-4af9-9620-0404f2f4446f',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','01a2ef70-d710-43a4-a181-5b953efcf9a7',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','054ecf3f-39b2-4f10-b055-7e787955f0f6',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','0c978674-88ce-4f0f-bb9c-230ccf1f71f7',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','31a4bb19-6f25-4673-a114-2a9a3cda776b',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','5a48cabd-7e3a-4275-aa05-0956af6e6735',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','5d939e30-118f-47d1-856c-820bcb459b71',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','692bbe19-3867-4cb7-9d5b-187720ea297b',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','9451ff1d-f601-4a96-b754-835207ef041e',0),('ef0f7d6a-26f1-4659-a607-d27c64903c50','a78c1cce-38ba-4578-a4f6-cb54cde4cbdd',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','bb3de131-cea1-4657-a371-6bbde8e4b91a',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','eaecb163-5a87-43c1-916a-7dfdc319cbf6',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','eb2ddb56-5028-4388-a250-d2c5ded97da8',1),('ef0f7d6a-26f1-4659-a607-d27c64903c50','f3972f8d-7535-4532-8991-7771970734fa',1);
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON_LONG_VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
INSERT INTO `EVENT_ENTITY` VALUES ('02dfca59-9d3b-457a-8f03-8bf1807cbe82','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','e194ebec-9fc3-4ef6-bda8-aeefd87213d8',1749684791218,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:afeaaaf7-04b1-45b3-bc85-109c831e4330\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"90aeda2e-0a4b-4569-991f-4d7f478c1325\",\"client_auth_method\":\"client-secret\",\"username\":\"ccmak\"}'),('07a209cd-0132-4da9-a809-2502c8babc39','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','4c7cb5b0-6233-4229-8a1d-031315a51156',1749684615919,'LOGOUT','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\"}'),('0bf64cd8-38a7-4e50-8697-d11bbaf4e074','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684446284,'REGISTER','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"register_method\":\"form\",\"last_name\":\"Mak\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"first_name\":\"Cc\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"email\":\"hko.ccmak.timesheet.5804@gmail.com\",\"username\":\"ccmak\"}'),('0d75eae9-b115-437a-be5e-d6cf6c1a31e2','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2','748a35d7-c022-4e82-a10e-843a6e1e945f',1749728831202,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:f4794fab-960f-4263-85e9-7fba9aea6683\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"email profile\",\"refresh_token_id\":\"187225ff-8a20-4bc9-8b72-affbdf14c859\",\"client_auth_method\":\"client-secret\",\"username\":\"ccmak\"}'),('0e9744ab-fe35-44af-a5bd-8c66f7c8d7cc','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5',1749728841220,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"consent\":\"no_consent_required\",\"code_id\":\"90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5\",\"username\":\"ccmak\"}'),('23d8fe30-9585-44c8-9c5d-822123aeb5fe','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749731064622,'CUSTOM_REQUIRED_ACTION','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"custom_required_action\":\"VERIFY_EMAIL\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"response_mode\":\"query\",\"username\":\"benny\"}'),('24753adf-eed7-4f04-a324-c6e18fb4eaa6','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','f1b4de67-2bd2-4a65-b56d-b77270f49c9f',1749685219397,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=f1b4de67-2bd2-4a65-b56d-b77270f49c9f&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=cbc5af21-3b99-44a7-9daf-a2693cbe6398.f1b4de67-2bd2-4a65-b56d-b77270f49c9f.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"consent\":\"no_consent_required\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('2587e665-5f05-47aa-9840-0738ff57edfa','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2','bd6df360-b76c-4dd6-9d2c-9b55122b618a',1749685346392,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:631d8106-7cff-4e45-a53b-fc7bacd1c462\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"email profile\",\"refresh_token_id\":\"a5d67cae-35b7-461d-b29d-d4d437dcdf5f\",\"client_auth_method\":\"client-secret\",\"username\":\"ccmak\"}'),('2ecf5db0-1891-4b50-8b5c-415321169746','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684466357,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('3dde54f6-dffe-4274-be08-d373fc57e852','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','a4c8ef14-2803-427d-bfbe-c4b90f1912a6',1749684642231,'CODE_TO_TOKEN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"token_id\":\"onrtac:d573c72b-2a73-4d2c-ab4b-d5658084cbc2\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid profile email\",\"refresh_token_id\":\"eb96eb08-c491-4540-b173-b35eb07e5db3\",\"code_id\":\"a4c8ef14-2803-427d-bfbe-c4b90f1912a6\",\"client_auth_method\":\"client-secret\"}'),('3e0aeb97-276d-4ca8-b542-aff95f0ee347','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685314152,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('3eece103-5a06-4468-8d25-6a2f18d391b1','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684515485,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('419c02cc-c93f-4e9a-9453-1f8662741eba','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684695424,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('45e62c8d-bb5e-44cb-a2e2-73fb40e554dc','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','f1b4de67-2bd2-4a65-b56d-b77270f49c9f',1749685219770,'CODE_TO_TOKEN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"token_id\":\"onrtac:93a9dd57-860d-45b7-9d03-bd6b0f40490b\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid email profile\",\"refresh_token_id\":\"2e842217-530f-451c-9444-5c2f161220a3\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"client_auth_method\":\"client-secret\"}'),('47f69cfd-a4b5-4631-b0e4-68e7883441d1','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','f1b4de67-2bd2-4a65-b56d-b77270f49c9f',1749685218929,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"consent\":\"no_consent_required\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('55557dcb-e6a7-480d-a901-0b2dd9acc526','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5',1749728841674,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=95ac769b-b796-4fcc-a79e-b651d725bfcb.90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"consent\":\"no_consent_required\",\"code_id\":\"90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('664b13e1-e921-4b78-9fe1-e6e964994d07','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685320511,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('672d5436-8f01-47f9-ba8c-842fed4822d2','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2','0df64239-f110-4134-80e9-cac03a03dcec',1749731072269,'LOGIN','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:0d9d02b0-272c-4f40-8fdc-e0b9b98a40ac\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"email profile\",\"refresh_token_id\":\"5c69159b-730a-4b8f-9a1e-5c513e2c0ba2\",\"client_auth_method\":\"client-secret\",\"username\":\"benny\"}'),('6ab71228-f394-4c4b-8566-1a690c3a5c8f','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685225691,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('6e7df275-44e0-4da3-a421-c46ae770539a','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','4c7cb5b0-6233-4229-8a1d-031315a51156',1749684502813,'CODE_TO_TOKEN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"token_id\":\"onrtac:4e000d2f-a527-4e2f-bb98-988ce4794902\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid profile email\",\"refresh_token_id\":\"afa2ebf9-a8e3-48e6-b5aa-ed623df8ecc4\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"client_auth_method\":\"client-secret\"}'),('7f54d3fe-fccd-4eb6-970e-8e2bea2f1066','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','a4c8ef14-2803-427d-bfbe-c4b90f1912a6',1749684641583,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"consent\":\"no_consent_required\",\"code_id\":\"a4c8ef14-2803-427d-bfbe-c4b90f1912a6\",\"username\":\"ccmak\"}'),('8c08ea92-7551-40f6-9633-695650fcd978','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684573463,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('91d7c729-2a1f-4a3d-9b7e-ecec629ece66','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','4c7cb5b0-6233-4229-8a1d-031315a51156',1749684502311,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=4c7cb5b0-6233-4229-8a1d-031315a51156&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=8232302a-aea6-40e9-81fc-5914036371c2.4c7cb5b0-6233-4229-8a1d-031315a51156.a69bf9c3-17b0-4fab-9db1-323419ca3a1e\",\"consent\":\"no_consent_required\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('97ee8196-c2ac-467a-a2e1-9c640285b8df','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684501743,'CUSTOM_REQUIRED_ACTION','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"custom_required_action\":\"VERIFY_EMAIL\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('9bda767a-2209-4ab8-9b89-0516345897fd','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','050b0889-804c-4297-9123-be0e828b862b',1749684737633,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:11593e31-d637-4a1b-a94a-3e1097bf54b2\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"98121b5c-0a36-40a7-828a-a2e03f38774c\",\"client_auth_method\":\"client-secret\",\"username\":\"ccmak\"}'),('a3a96366-4099-453e-bba4-8e6af39b77b2','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685188041,'SEND_VERIFY_EMAIL','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"email\":\"hko.ccmak.timesheet.5804@gmail.com\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('a5092f0b-308e-45c0-b0f3-13a618d780b0','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','fc97588c-7620-4833-b2ea-e571c4a2d6ca',1749731065320,'CODE_TO_TOKEN','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"token_id\":\"onrtac:fa032c90-9503-415a-9548-843879e08811\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid email profile\",\"refresh_token_id\":\"bde6029b-6dac-4749-990f-e837a64430b9\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"client_auth_method\":\"client-secret\"}'),('a61afd67-2fe3-49f0-8ba5-b77a637b07ab','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','fc97588c-7620-4833-b2ea-e571c4a2d6ca',1749731064984,'LOGIN','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=fc97588c-7620-4833-b2ea-e571c4a2d6ca&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=eee15311-5e23-4d12-ada2-08f0280af790.fc97588c-7620-4833-b2ea-e571c4a2d6ca.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"consent\":\"no_consent_required\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"response_mode\":\"query\",\"username\":\"benny\"}'),('a86d8321-8e32-4792-92a8-d7c5af499779','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5',1749728845773,'LOGOUT','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\"}'),('b7938571-f2ed-4452-8b4a-42d18b3b2400','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5',1749728842007,'CODE_TO_TOKEN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"token_id\":\"onrtac:a0a6270e-cb1f-433a-8b15-fa355cb97749\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid email profile\",\"refresh_token_id\":\"46d034e2-d454-4421-b1f0-068dc29245d3\",\"code_id\":\"90fa2ed2-bf99-4bca-84df-d4ab01a1c7a5\",\"client_auth_method\":\"client-secret\"}'),('b8102428-5ef2-4a52-9dd3-b8f06ee02a41','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685156852,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('d063fdb8-a2a6-4a60-92f2-fa12dc95efdd','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2','fc97588c-7620-4833-b2ea-e571c4a2d6ca',1749731064637,'LOGIN','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"consent\":\"no_consent_required\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"response_mode\":\"query\",\"username\":\"benny\"}'),('d4a2ff2d-2607-47c5-80d7-68ba7cf74ccd','flask-sso-auth-service-client-id',NULL,'invalid_client_credentials','172.18.0.1','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684512318,'LOGIN_ERROR',NULL,'{\"grant_type\":\"password\"}'),('d687d136-c96d-436e-b6ed-17b3f06628eb','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749731041878,'SEND_VERIFY_EMAIL','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"email\":\"makchunchi2468@gmail.com\",\"response_mode\":\"query\",\"username\":\"benny\"}'),('d7db4fca-f326-4ba3-b843-4c4d4b0f95d8','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','a4c8ef14-2803-427d-bfbe-c4b90f1912a6',1749684824562,'LOGOUT','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\"}'),('ddf2ffcf-19a6-41c7-8c40-b98edefcf5a5','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749731037760,'REGISTER','90e8a704-9d8a-4871-9896-2fc957d2ec97','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"register_method\":\"form\",\"last_name\":\"Mak\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"first_name\":\"Chun Wing\",\"code_id\":\"fc97588c-7620-4833-b2ea-e571c4a2d6ca\",\"email\":\"makchunchi2468@gmail.com\",\"username\":\"benny\"}'),('e04944d4-d8d1-4390-97dd-656594b09179','flask-sso-auth-service-client-id',NULL,NULL,'172.18.0.1','98c61bee-7a7c-47d6-8721-3559b9e905c2','76b600b8-58a4-4888-818d-8753a7474b9c',1749730835143,'LOGIN','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"token_id\":\"onrtro:7dbf9e9a-aeee-47d5-8db0-10d52a315eff\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"email profile\",\"refresh_token_id\":\"d66f544a-91a3-4d5a-99c5-d7c95fdbfc5c\",\"client_auth_method\":\"client-secret\",\"username\":\"ccmak\"}'),('e6e3770f-760c-4fc0-9e69-9e15a0a1ab4f','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685218910,'CUSTOM_REQUIRED_ACTION','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"custom_required_action\":\"VERIFY_EMAIL\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('e7951c5c-bee4-4422-a048-67dc7b1e11b0','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','a4c8ef14-2803-427d-bfbe-c4b90f1912a6',1749684641884,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=a4c8ef14-2803-427d-bfbe-c4b90f1912a6&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=19a46f41-2921-4a85-aad6-646cf6a3357a.a4c8ef14-2803-427d-bfbe-c4b90f1912a6.a69bf9c3-17b0-4fab-9db1-323419ca3a1e\",\"consent\":\"no_consent_required\",\"code_id\":\"a4c8ef14-2803-427d-bfbe-c4b90f1912a6\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('e7b52108-5d97-417f-abdf-7d0e5562fd53','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8',NULL,1749684450881,'SEND_VERIFY_EMAIL','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"email\":\"hko.ccmak.timesheet.5804@gmail.com\",\"response_mode\":\"query\",\"username\":\"ccmak\"}'),('f9f8d21a-81a2-4775-8a19-5f8172b8d955','account-console',NULL,NULL,'192.168.68.100','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,1749685184708,'REGISTER','cbb43578-36af-4afb-8d5e-6633877a5b44','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"register_method\":\"form\",\"last_name\":\"Mak\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"first_name\":\"Cc\",\"code_id\":\"f1b4de67-2bd2-4a65-b56d-b77270f49c9f\",\"email\":\"hko.ccmak.timesheet.5804@gmail.com\",\"username\":\"ccmak\"}'),('ffcb80b9-6194-4976-8ecc-23da16c78b62','account-console',NULL,NULL,'192.168.68.100','2b222e56-66f3-42c9-bf0c-ab213ca7aeb8','4c7cb5b0-6233-4229-8a1d-031315a51156',1749684501754,'LOGIN','e4b11f6e-3b23-44be-92b5-b1916a13416f','{\"auth_method\":\"openid-connect\",\"response_type\":\"code\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account\",\"remember_me\":\"false\",\"consent\":\"no_consent_required\",\"code_id\":\"4c7cb5b0-6233-4229-8a1d-031315a51156\",\"response_mode\":\"query\",\"username\":\"ccmak\"}');
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` tinyint(1) NOT NULL DEFAULT 0,
  `AUTHENTICATE_BY_DEFAULT` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` tinyint(1) NOT NULL DEFAULT 1,
  `TRUST_EMAIL` tinyint(1) NOT NULL DEFAULT 0,
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` tinyint(1) NOT NULL DEFAULT 0,
  `ORGANIZATION_ID` varchar(255) DEFAULT NULL,
  `HIDE_ON_LOGIN` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  KEY `IDX_IDP_REALM_ORG` (`REALM_ID`,`ORGANIZATION_ID`),
  KEY `IDX_IDP_FOR_LOGIN` (`REALM_ID`,`ENABLED`,`LINK_ONLY`,`HIDE_ON_LOGIN`,`ORGANIZATION_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JGROUPS_PING`
--

DROP TABLE IF EXISTS `JGROUPS_PING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `JGROUPS_PING` (
  `address` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `coord` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JGROUPS_PING`
--

LOCK TABLES `JGROUPS_PING` WRITE;
/*!40000 ALTER TABLE `JGROUPS_PING` DISABLE KEYS */;
/*!40000 ALTER TABLE `JGROUPS_PING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` tinyint(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0303cc78-402f-48cd-be35-0583549fa838','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-users}','manage-users','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('07713896-a2d5-464e-813c-5652cfeee421','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_view-groups}','view-groups','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('09356b3d-a389-4cd1-a4a1-ab5fe773be10','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-authorization}','manage-authorization','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('0cac6bb1-13df-45e3-af65-40f5c0cd3cca','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_manage-account-links}','manage-account-links','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('0e0042a3-d32a-4234-abec-fb9e0a9224b9','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-authorization}','view-authorization','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('110b4c8f-49cc-49de-9657-4730cc13afa2','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,'${role_create-realm}','create-realm','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,NULL),('124328a3-e05d-42b6-b9b8-0da7a7b712df','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_query-realms}','query-realms','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('12b14bb7-8b6e-4fa9-8511-0fbb3a869deb','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-users}','view-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('138c1ed1-58da-4153-b804-f696374cae4e','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_query-clients}','query-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('159720a4-e51b-419c-ad66-1ee18d08ec87','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-clients}','manage-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('18270ee4-f434-4ebc-a96c-3540c5caad12','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_query-users}','query-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('19365c94-6117-4411-8c7c-e95830149857','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-identity-providers}','manage-identity-providers','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('1ad1a682-0bd1-4c3f-9086-5d35b91117b8','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-clients}','manage-clients','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('1f285be6-819e-42a4-93b9-b0eea2104da3','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_view-profile}','view-profile','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('211f1fb1-855b-4e53-b58d-910be5c7b04a','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_realm-admin}','realm-admin','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('21222a0e-d51a-411f-abad-de4e962b7232','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_query-clients}','query-clients','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('21b64064-e4e7-43d1-9a66-f3f9d3f3b490','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_create-client}','create-client','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('28c20821-abf0-428b-8752-aa1213619f8e','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_manage-consent}','manage-consent','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('2a4372ff-ff1f-4542-af29-6a231182129c','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,'${role_offline-access}','offline_access','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,NULL),('2de1e3da-01da-4ec4-ab56-5a838fb62796','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-realm}','view-realm','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('31727480-9ce8-430d-9d6f-505f927e4dd3','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_impersonation}','impersonation','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('34f32bd0-7517-4fb3-b18f-db22ca72e80c','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-authorization}','manage-authorization','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('362effd4-88fc-4c16-a458-1ca774540026','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-realm}','manage-realm','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('3bd2171e-787f-44b9-a3d7-c81e6de14ade','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_impersonation}','impersonation','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('4012c0e3-d22d-41d1-8e75-4f466989653b','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-events}','view-events','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('4254080b-6d7f-44a5-a3ac-df0add200732','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-users}','view-users','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('43c045c5-351e-4114-a879-30722bb916cb','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,'${role_uma_authorization}','uma_authorization','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,NULL),('4414e944-a0ad-4004-9b0e-dc8d8e98c204','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-identity-providers}','view-identity-providers','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('44ceba81-c0f5-4ab0-998e-0bd0aba951cb','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_manage-account}','manage-account','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('4692a325-3a21-437b-910b-5c6657b43f87','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-identity-providers}','manage-identity-providers','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('491a4f23-8149-48c4-b6de-c675ce82ee21','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_query-groups}','query-groups','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('49f95c5d-43fb-4019-89a7-7dadda0fb881','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_query-realms}','query-realms','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('57796b5f-0dc5-47a7-8edb-0ef9517670ea','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-clients}','view-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('59aba6e9-6983-4353-b232-c92137018e78','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-authorization}','view-authorization','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('5d37e9ca-4abd-40fb-9ef1-f1e3246eb3a3','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-clients}','view-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('5e9ef607-470c-4577-a02c-6c18f841b9e6','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_query-users}','query-users','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('626ab729-164f-4add-88e6-eae10d66d393','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_view-groups}','view-groups','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('6a1825b6-bac5-4485-bf9e-d9e4f6fba597','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-events}','manage-events','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,'${role_admin}','admin','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,NULL),('6b3dfbe6-738a-48a3-90c6-1d4cd82f82ba','98c61bee-7a7c-47d6-8721-3559b9e905c2',0,'${role_offline-access}','offline_access','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,NULL),('6ba33348-ec39-475a-9a8d-709c411a4290','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_query-realms}','query-realms','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('6e876d18-80b6-4fbd-be8d-95c315abb275','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_view-consent}','view-consent','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('70bb4df8-a1bf-464e-97ff-13e4ce0e44e5','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_create-client}','create-client','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','98c61bee-7a7c-47d6-8721-3559b9e905c2',0,'${role_default-roles}','default-roles-flask-sso-auth-service','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,NULL),('759ebc06-208d-446e-924b-e6853e3468c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-realm}','view-realm','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('79f606ed-e3bb-42d8-a2ab-82069519c60c','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-users}','manage-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('7e70a2b9-9e34-4f07-bbd4-418d9e024d5f','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-realm}','view-realm','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('8150afa0-5799-45df-85b6-24ec382a7a05','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-events}','manage-events','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('831131c9-206e-4f74-bce1-fbf3776945c6','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-clients}','view-clients','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('8491c198-0ec9-480c-b4fe-1d870c06dceb','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_view-profile}','view-profile','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('85548de1-b883-403e-9d04-40bb3ab179ca','2ccbd56b-81b4-446a-a53e-c8cc92099f60',1,'${role_read-token}','read-token','98c61bee-7a7c-47d6-8721-3559b9e905c2','2ccbd56b-81b4-446a-a53e-c8cc92099f60',NULL),('8685ac4c-6dbc-49bf-8f1b-4a3f0ca7a97a','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_impersonation}','impersonation','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('8c9dc4f1-83ff-458c-8f59-941cbb73bff2','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_manage-account-links}','manage-account-links','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('8e33d8df-4f60-4f39-9a84-bb41e9521a6e','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_view-events}','view-events','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('92ee4361-e66e-4455-9b02-7fec0b0a6f2a','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_view-consent}','view-consent','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('98c1fe05-8e2e-416f-b583-dce2b4ad4841','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_manage-clients}','manage-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('9941909c-96f0-42b4-b549-73f1d2ace883','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_query-groups}','query-groups','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('9b7a9a0e-b7e5-4964-99a0-e8bed8b7b5a1','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-authorization}','manage-authorization','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('9b9d4948-59d1-44ca-b8f9-2f4220fc7b4d','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_create-client}','create-client','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('9bac16a8-a926-4dda-b18f-549526f6bfd5','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_delete-account}','delete-account','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('9c5d310d-3eac-40cb-99b4-93f2872faef8','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-identity-providers}','view-identity-providers','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,'${role_default-roles}','default-roles-master','ef0f7d6a-26f1-4659-a607-d27c64903c50',NULL,NULL),('a06b3db5-a976-41a5-840c-772f501d2d53','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-events}','view-events','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('a48781dc-85d2-435c-acc6-44e1e435c70c','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-identity-providers}','manage-identity-providers','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('a9af30f0-f860-45d3-93ca-4ec30f6e5b24','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_manage-consent}','manage-consent','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('add03087-f826-42f5-8b00-07ef0d65f79c','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_view-applications}','view-applications','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('ae549259-39bb-4b50-a81b-d7723a5d7e1b','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_query-clients}','query-clients','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('b862c890-3401-4cb8-a53b-171782672709','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-events}','manage-events','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('bbd2c341-217d-42cd-b070-b63ecebfb965','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-authorization}','view-authorization','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('c4032313-6f03-40cd-b942-763a0e6789a6','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_query-users}','query-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('c4cdb728-2ba9-4000-881b-cf86f838b87e','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-realm}','manage-realm','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('c541765d-0c0d-4ab6-9649-cecac7c98f9f','98c61bee-7a7c-47d6-8721-3559b9e905c2',0,'${role_uma_authorization}','uma_authorization','98c61bee-7a7c-47d6-8721-3559b9e905c2',NULL,NULL),('cca4d673-3c6e-47bb-a598-f2189c09dd79','f10c3dba-78e8-4963-ab91-2a1954abe79c',1,NULL,'uma_protection','98c61bee-7a7c-47d6-8721-3559b9e905c2','f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL),('cee3f87e-3ae4-45c0-825c-e8cb994a534d','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_manage-account}','manage-account','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('da2549fe-94b6-4a04-bd08-4bb29c53e5e3','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_manage-realm}','manage-realm','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('dacd6074-d99e-4ca1-b6d2-e065f32feb38','84d4dd90-4750-49dc-9b53-d87c6cbc61c7',1,'${role_read-token}','read-token','ef0f7d6a-26f1-4659-a607-d27c64903c50','84d4dd90-4750-49dc-9b53-d87c6cbc61c7',NULL),('e08f74a3-d461-4f87-b4bb-5f21ff2efc67','96f573cb-2003-4405-85e5-d28199d685ca',1,'${role_delete-account}','delete-account','98c61bee-7a7c-47d6-8721-3559b9e905c2','96f573cb-2003-4405-85e5-d28199d685ca',NULL),('e462563c-17f3-433c-9c4c-ed368304be5d','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_view-users}','view-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL),('fb0d5212-b601-41b2-91a4-62625dd8d912','0fd5882a-c4c8-4457-95f0-5f89a8597738',1,'${role_view-identity-providers}','view-identity-providers','98c61bee-7a7c-47d6-8721-3559b9e905c2','0fd5882a-c4c8-4457-95f0-5f89a8597738',NULL),('fb167dbc-3924-4161-9a8e-8ba39d9fcf77','4387613f-eb90-477c-b8b0-9fa4060fe812',1,'${role_manage-users}','manage-users','ef0f7d6a-26f1-4659-a607-d27c64903c50','4387613f-eb90-477c-b8b0-9fa4060fe812',NULL),('fb2c4dea-6de6-4815-b322-eee0af95b389','44b05109-88cd-4bd9-ad5c-cffffcf97b36',1,'${role_view-applications}','view-applications','ef0f7d6a-26f1-4659-a607-d27c64903c50','44b05109-88cd-4bd9-ad5c-cffffcf97b36',NULL),('ffaf8997-a56d-41d7-8270-92aaaa9ccf74','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1,'${role_query-groups}','query-groups','ef0f7d6a-26f1-4659-a607-d27c64903c50','a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('2jqim','26.2.5',1749683189);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_CLIENT_SESSION` VALUES ('0df64239-f110-4134-80e9-cac03a03dcec','f10c3dba-78e8-4963-ab91-2a1954abe79c','0',1749731072,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"f10c3dba-78e8-4963-ab91-2a1954abe79c\",\"userSessionStartedAt\":\"1749731072\",\"iss\":\"http://192.168.56.101:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749731072\",\"level-of-authentication\":\"-1\"}}','local','local',0),('748a35d7-c022-4e82-a10e-843a6e1e945f','f10c3dba-78e8-4963-ab91-2a1954abe79c','0',1749728831,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"f10c3dba-78e8-4963-ab91-2a1954abe79c\",\"userSessionStartedAt\":\"1749728831\",\"iss\":\"http://192.168.56.101:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749728831\",\"level-of-authentication\":\"-1\"}}','local','local',0),('76b600b8-58a4-4888-818d-8753a7474b9c','f10c3dba-78e8-4963-ab91-2a1954abe79c','0',1749730835,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"f10c3dba-78e8-4963-ab91-2a1954abe79c\",\"userSessionStartedAt\":\"1749730835\",\"iss\":\"http://192.168.56.101:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749730835\",\"level-of-authentication\":\"-1\"}}','local','local',0),('7fdcbd3d-5fd2-443e-be9c-d6ece992533b','086256da-6641-415d-9469-ddd99f6588c0','0',1749731052,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://192.168.68.130:8080/admin/master/console/\",\"notes\":{\"clientId\":\"086256da-6641-415d-9469-ddd99f6588c0\",\"iss\":\"http://192.168.68.130:8080/realms/master\",\"startedAt\":\"1749731052\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"nonce\":\"5764cb1e-a360-4e72-9e17-f7b30367a76e\",\"response_mode\":\"query\",\"scope\":\"openid\",\"userSessionStartedAt\":\"1749731052\",\"redirect_uri\":\"http://192.168.68.130:8080/admin/master/console/\",\"state\":\"f6946e11-b64b-4db6-bf6e-5e1823e50c49\",\"code_challenge\":\"td-j2w9-I308qRKSFXsd7y7HUNk5KxKFnp-mkdjsOi8\"}}','local','local',0),('b7ebbad0-56c6-4d74-bab2-524b842b7585','086256da-6641-415d-9469-ddd99f6588c0','0',1749685358,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://192.168.68.130:8080/admin/master/console/\",\"notes\":{\"clientId\":\"086256da-6641-415d-9469-ddd99f6588c0\",\"iss\":\"http://192.168.68.130:8080/realms/master\",\"startedAt\":\"1749684173\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"nonce\":\"f3c2e4aa-e69e-4d94-941e-bc260a10012c\",\"response_mode\":\"query\",\"scope\":\"openid\",\"userSessionStartedAt\":\"1749684173\",\"redirect_uri\":\"http://192.168.68.130:8080/admin/master/console/\",\"state\":\"078be32d-a5c2-4af3-b3c2-5e1a257ca457\",\"code_challenge\":\"-g6JM6NIZqT14D1Arpt7n51hRuqIbijBNnHgiVxtd6s\",\"prompt\":\"none\",\"SSO_AUTH\":\"true\"}}','local','local',15),('bd6df360-b76c-4dd6-9d2c-9b55122b618a','f10c3dba-78e8-4963-ab91-2a1954abe79c','0',1749685346,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"f10c3dba-78e8-4963-ab91-2a1954abe79c\",\"userSessionStartedAt\":\"1749685346\",\"iss\":\"http://192.168.56.101:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749685346\",\"level-of-authentication\":\"-1\"}}','local','local',0),('f1b4de67-2bd2-4a65-b56d-b77270f49c9f','e0cabf11-0745-40c5-859e-a2b76e8d7fef','0',1749685219,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=f1b4de67-2bd2-4a65-b56d-b77270f49c9f&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=cbc5af21-3b99-44a7-9daf-a2693cbe6398.f1b4de67-2bd2-4a65-b56d-b77270f49c9f.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"notes\":{\"login_hint\":\"ccmak\",\"clientId\":\"e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"userSessionStartedAt\":\"1749685218\",\"iss\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749685218\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=f1b4de67-2bd2-4a65-b56d-b77270f49c9f&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=cbc5af21-3b99-44a7-9daf-a2693cbe6398.f1b4de67-2bd2-4a65-b56d-b77270f49c9f.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"code_challenge\":\"BfWR6YVVI_Y0N5SL7SsykplkeE7RPc5djrK-XPJd54I\",\"nonce\":\"3e7192f5-cb6c-4425-b2ee-aadb5ad8db36\",\"response_mode\":\"query\",\"scope\":\"openid\",\"state\":\"3ae811ff-a1e4-43d7-98a4-ef34deb7adbe\",\"prompt\":\"none\",\"SSO_AUTH\":\"true\"}}','local','local',1),('fc97588c-7620-4833-b2ea-e571c4a2d6ca','e0cabf11-0745-40c5-859e-a2b76e8d7fef','0',1749731065,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=fc97588c-7620-4833-b2ea-e571c4a2d6ca&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=eee15311-5e23-4d12-ada2-08f0280af790.fc97588c-7620-4833-b2ea-e571c4a2d6ca.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"notes\":{\"login_hint\":\"benny\",\"clientId\":\"e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"userSessionStartedAt\":\"1749731064\",\"iss\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service\",\"startedAt\":\"1749731064\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"redirect_uri\":\"http://192.168.68.130:8080/realms/flask-sso-auth-service/account?session_state=fc97588c-7620-4833-b2ea-e571c4a2d6ca&iss=http%3A%2F%2F192.168.68.130%3A8080%2Frealms%2Fflask-sso-auth-service&code=eee15311-5e23-4d12-ada2-08f0280af790.fc97588c-7620-4833-b2ea-e571c4a2d6ca.e0cabf11-0745-40c5-859e-a2b76e8d7fef\",\"code_challenge\":\"6QhU7LXEMrfAlvpE_oxJ_hwgKfbgWqo6TikD2NhQmMM\",\"nonce\":\"cf584529-fe39-45d7-b9d1-af8c077b85a2\",\"response_mode\":\"query\",\"scope\":\"openid\",\"state\":\"e54231c6-12e2-49b9-b56b-988be4b4ccdc\",\"prompt\":\"none\",\"SSO_AUTH\":\"true\"}}','local','local',2);
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  `BROKER_SESSION_ID` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH` (`REALM_ID`,`OFFLINE_FLAG`,`LAST_SESSION_REFRESH`),
  KEY `IDX_OFFLINE_USS_BY_BROKER_SESSION_ID` (`BROKER_SESSION_ID`(255),`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_USER_SESSION` VALUES ('0df64239-f110-4134-80e9-cac03a03dcec','90e8a704-9d8a-4871-9896-2fc957d2ec97','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749731072,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzIiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"4142568c-3a6c-4eae-b75c-44fb0d1ca1fb\\\":1749731072,\\\"25697db2-582e-4096-869e-cb0b06ad58ef\\\":1749731072}\"},\"state\":\"LOGGED_IN\"}',1749731072,NULL,0),('748a35d7-c022-4e82-a10e-843a6e1e945f','cbb43578-36af-4afb-8d5e-6633877a5b44','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749728831,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzIiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"4142568c-3a6c-4eae-b75c-44fb0d1ca1fb\\\":1749728830,\\\"25697db2-582e-4096-869e-cb0b06ad58ef\\\":1749728830}\"},\"state\":\"LOGGED_IN\"}',1749728831,NULL,0),('76b600b8-58a4-4888-818d-8753a7474b9c','cbb43578-36af-4afb-8d5e-6633877a5b44','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749730835,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzIiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"4142568c-3a6c-4eae-b75c-44fb0d1ca1fb\\\":1749730834,\\\"25697db2-582e-4096-869e-cb0b06ad58ef\\\":1749730835}\"},\"state\":\"LOGGED_IN\"}',1749730835,NULL,0),('7fdcbd3d-5fd2-443e-be9c-d6ece992533b','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','ef0f7d6a-26f1-4659-a607-d27c64903c50',1749731052,'0','{\"ipAddress\":\"192.168.68.100\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjY4LjEwMCIsIm9zIjoiV2luZG93cyIsIm9zVmVyc2lvbiI6IjEwIiwiYnJvd3NlciI6IkNocm9tZS8xMzcuMC4wIiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"AUTH_TIME\":\"1749731052\",\"authenticators-completed\":\"{\\\"8442f128-fe94-42db-8795-457ca2a6659c\\\":1749731051}\"},\"state\":\"LOGGED_IN\"}',1749731052,NULL,0),('b7ebbad0-56c6-4d74-bab2-524b842b7585','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','ef0f7d6a-26f1-4659-a607-d27c64903c50',1749684173,'0','{\"ipAddress\":\"192.168.68.100\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjY4LjEwMCIsIm9zIjoiV2luZG93cyIsIm9zVmVyc2lvbiI6IjEwIiwiYnJvd3NlciI6IkNocm9tZS8xMzcuMC4wIiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"AUTH_TIME\":\"1749684173\",\"authenticators-completed\":\"{\\\"8442f128-fe94-42db-8795-457ca2a6659c\\\":1749684173,\\\"6c237bcc-3d47-44cb-bafc-c3787f1620d0\\\":1749685358}\"},\"state\":\"LOGGED_IN\"}',1749685358,NULL,15),('bd6df360-b76c-4dd6-9d2c-9b55122b618a','cbb43578-36af-4afb-8d5e-6633877a5b44','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749685346,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzIiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"4142568c-3a6c-4eae-b75c-44fb0d1ca1fb\\\":1749685346,\\\"25697db2-582e-4096-869e-cb0b06ad58ef\\\":1749685346}\"},\"state\":\"LOGGED_IN\"}',1749685346,NULL,0),('f1b4de67-2bd2-4a65-b56d-b77270f49c9f','cbb43578-36af-4afb-8d5e-6633877a5b44','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749685218,'0','{\"ipAddress\":\"192.168.68.100\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjY4LjEwMCIsIm9zIjoiV2luZG93cyIsIm9zVmVyc2lvbiI6IjEwIiwiYnJvd3NlciI6IkNocm9tZS8xMzcuMC4wIiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"AUTH_TIME\":\"1749685218\",\"authenticators-completed\":\"{\\\"9208cd8e-45d3-4d03-bf74-66570017f56e\\\":1749685219}\"},\"state\":\"LOGGED_IN\"}',1749685219,NULL,1),('fc97588c-7620-4833-b2ea-e571c4a2d6ca','90e8a704-9d8a-4871-9896-2fc957d2ec97','98c61bee-7a7c-47d6-8721-3559b9e905c2',1749731064,'0','{\"ipAddress\":\"192.168.68.100\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjY4LjEwMCIsIm9zIjoiV2luZG93cyIsIm9zVmVyc2lvbiI6IjEwIiwiYnJvd3NlciI6IkNocm9tZS8xMzcuMC4wIiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"AUTH_TIME\":\"1749731064\",\"authenticators-completed\":\"{\\\"9208cd8e-45d3-4d03-bf74-66570017f56e\\\":1749731064}\"},\"state\":\"LOGGED_IN\"}',1749731065,NULL,2);
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG`
--

DROP TABLE IF EXISTS `ORG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG` (
  `ID` varchar(255) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `REALM_ID` varchar(255) NOT NULL,
  `GROUP_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `REDIRECT_URL` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_NAME` (`REALM_ID`,`NAME`),
  UNIQUE KEY `UK_ORG_GROUP` (`GROUP_ID`),
  UNIQUE KEY `UK_ORG_ALIAS` (`REALM_ID`,`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG`
--

LOCK TABLES `ORG` WRITE;
/*!40000 ALTER TABLE `ORG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG_DOMAIN`
--

DROP TABLE IF EXISTS `ORG_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG_DOMAIN` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VERIFIED` tinyint(1) NOT NULL,
  `ORG_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`,`NAME`),
  KEY `IDX_ORG_DOMAIN_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_DOMAIN`
--

LOCK TABLES `ORG_DOMAIN` WRITE;
/*!40000 ALTER TABLE `ORG_DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
INSERT INTO `POLICY_CONFIG` VALUES ('15215677-790f-4a0f-8483-28ea59195e99','defaultResourceType','urn:flask-sso-auth-service-client-id:resources:default'),('4d87a056-5c35-4bf7-b0fc-1145f758aded','code','// by default, grants any permission associated with this policy\n$evaluation.grant();\n');
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0742df1e-d8ba-4bda-a368-b1bec67e4075','locale','openid-connect','oidc-usermodel-attribute-mapper','4fc7920c-8cbe-4912-a717-06be56307f91',NULL),('0994f96e-03e6-4334-abb5-50a9140b504c','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'a17eaa62-ae1e-42a4-93e9-102d5c330b59'),('148341af-48ca-4c6d-959f-107f3d597706','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4acf4fc0-45e8-4f36-af11-66e474c9934f'),('15e73915-612e-4f05-882f-d8a4029467cf','full name','openid-connect','oidc-full-name-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'bb3de131-cea1-4657-a371-6bbde8e4b91a'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'4acf4fc0-45e8-4f36-af11-66e474c9934f'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'a17eaa62-ae1e-42a4-93e9-102d5c330b59'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9451ff1d-f601-4a96-b754-835207ef041e'),('33c94ec5-9afc-4aff-910f-9448be6260b6','sub','openid-connect','oidc-sub-mapper',NULL,'0d0d5ccf-26f9-4494-969a-65ac3900374a'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('35fe1c75-4bc4-48d8-bd9f-9694fe35d555','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'a78c1cce-38ba-4578-a4f6-cb54cde4cbdd'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('3b27be11-3e77-490c-afde-f2117c3d098c','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'5d7aecde-44a2-4e78-abe3-45795bcb035b'),('3df98c75-8d34-4d84-a487-ce161e157bb4','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a78c1cce-38ba-4578-a4f6-cb54cde4cbdd'),('40464299-f08e-4c33-a187-e22b30e89e4c','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('417df603-9e0a-4f97-9a9d-7c84dd60792a','full name','openid-connect','oidc-full-name-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('44cbbcb7-e042-4b15-8763-3b829bfc9282','organization','saml','saml-organization-membership-mapper',NULL,'b5d84c98-d4c4-454e-b82b-34303ce4ba64'),('461b78db-c835-4863-ae30-e7c7aeabad0f','sub','openid-connect','oidc-sub-mapper',NULL,'31a4bb19-6f25-4673-a114-2a9a3cda776b'),('4670f2dc-e271-4871-83c0-dbb867459a36','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'4acf4fc0-45e8-4f36-af11-66e474c9934f'),('472f9e83-4286-4750-8902-953132489162','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('47fc660a-c61c-4489-961d-18c5db333fc5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'36d24ee9-9ff5-48f7-b03a-72707c68d95f'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('59ed8aab-150b-47e7-95b1-95180f4791d3','organization','openid-connect','oidc-organization-membership-mapper',NULL,'692bbe19-3867-4cb7-9d5b-187720ea297b'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'31a4bb19-6f25-4673-a114-2a9a3cda776b'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'a78c1cce-38ba-4578-a4f6-cb54cde4cbdd'),('703083f4-6c43-47e5-a208-cd40edd48e86','audience resolve','openid-connect','oidc-audience-resolve-mapper','9b911691-b2ce-4556-a424-ff4a30b305ba',NULL),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('8356fb8d-01b8-4a13-bcf3-434f75c9694e','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'5d939e30-118f-47d1-856c-820bcb459b71'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'36d24ee9-9ff5-48f7-b03a-72707c68d95f'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('8df48c16-204b-45e6-b04e-0465bf9db153','address','openid-connect','oidc-address-mapper',NULL,'da86d8fb-ae19-4e11-9836-46b881afdb50'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('96a9d627-3747-461e-b155-61af95b3657a','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('98bad57c-eb27-44e1-997a-1752a1429c87','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f56a4b39-19e0-4be5-8c54-bf7eb6317c16'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'36d24ee9-9ff5-48f7-b03a-72707c68d95f'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bb3de131-cea1-4657-a371-6bbde8e4b91a'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f921dace-2cba-4af9-9620-0404f2f4446f'),('ae6cd0a8-bacb-41c4-b768-2c8b9d9c4193','organization','saml','saml-organization-membership-mapper',NULL,'eaecb163-5a87-43c1-916a-7dfdc319cbf6'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0c978674-88ce-4f0f-bb9c-230ccf1f71f7'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'a17eaa62-ae1e-42a4-93e9-102d5c330b59'),('bb7291e7-04b4-4023-8704-d5755d2f3302','role list','saml','saml-role-list-mapper',NULL,'59aa9164-3bb9-4c0a-a38d-628212ef73c1'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','organization','openid-connect','oidc-organization-membership-mapper',NULL,'21f6d292-9b24-4d45-84e5-f5fc3c9bcc46'),('bef991a1-4bdf-4262-bf3b-012585092522','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('c2705853-2b72-4845-a205-996f4c8ab4e8','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'9451ff1d-f601-4a96-b754-835207ef041e'),('cb918249-5808-4b02-a4af-938646a63667','acr loa level','openid-connect','oidc-acr-mapper',NULL,'67dbae1c-6d6d-4e26-9b51-9cd7c80a120c'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f56a4b39-19e0-4be5-8c54-bf7eb6317c16'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e4fa9f2e-9701-412a-b739-2226c23cf233'),('df620818-bc11-4c3b-8de8-3a415e188c7a','audience resolve','openid-connect','oidc-audience-resolve-mapper','e0cabf11-0745-40c5-859e-a2b76e8d7fef',NULL),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f921dace-2cba-4af9-9620-0404f2f4446f'),('e218ee9d-ff20-4523-901d-0961610ddfe6','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('e456ff47-f117-4b71-a963-e28ddc912065','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('e79d91ec-2649-439c-ab36-1a945cb624ca','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'00d610af-b423-4f64-a47c-907f808adc0f'),('e7b16bc8-b1ee-4401-83d2-049232b954a4','acr loa level','openid-connect','oidc-acr-mapper',NULL,'f3972f8d-7535-4532-8991-7771970734fa'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e4fa9f2e-9701-412a-b739-2226c23cf233'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0c978674-88ce-4f0f-bb9c-230ccf1f71f7'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','address','openid-connect','oidc-address-mapper',NULL,'5a48cabd-7e3a-4275-aa05-0956af6e6735'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'054ecf3f-39b2-4f10-b055-7e787955f0f6'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','locale','openid-connect','oidc-usermodel-attribute-mapper','086256da-6641-415d-9469-ddd99f6588c0',NULL),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'0d0d5ccf-26f9-4494-969a-65ac3900374a'),('fef0e215-535a-4a71-a5ac-94dfca309b74','role list','saml','saml-role-list-mapper',NULL,'eb2ddb56-5028-4388-a250-d2c5ded97da8');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0742df1e-d8ba-4bda-a368-b1bec67e4075','true','access.token.claim'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','locale','claim.name'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','true','id.token.claim'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','true','introspection.token.claim'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','String','jsonType.label'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','locale','user.attribute'),('0742df1e-d8ba-4bda-a368-b1bec67e4075','true','userinfo.token.claim'),('0994f96e-03e6-4334-abb5-50a9140b504c','true','access.token.claim'),('0994f96e-03e6-4334-abb5-50a9140b504c','zoneinfo','claim.name'),('0994f96e-03e6-4334-abb5-50a9140b504c','true','id.token.claim'),('0994f96e-03e6-4334-abb5-50a9140b504c','true','introspection.token.claim'),('0994f96e-03e6-4334-abb5-50a9140b504c','String','jsonType.label'),('0994f96e-03e6-4334-abb5-50a9140b504c','zoneinfo','user.attribute'),('0994f96e-03e6-4334-abb5-50a9140b504c','true','userinfo.token.claim'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','true','access.token.claim'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','clientHost','claim.name'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','true','id.token.claim'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','true','introspection.token.claim'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','String','jsonType.label'),('0d0739a4-f00f-4f34-b284-7f9ac5e684c3','clientHost','user.session.note'),('148341af-48ca-4c6d-959f-107f3d597706','true','access.token.claim'),('148341af-48ca-4c6d-959f-107f3d597706','realm_access.roles','claim.name'),('148341af-48ca-4c6d-959f-107f3d597706','true','introspection.token.claim'),('148341af-48ca-4c6d-959f-107f3d597706','String','jsonType.label'),('148341af-48ca-4c6d-959f-107f3d597706','true','multivalued'),('148341af-48ca-4c6d-959f-107f3d597706','foo','user.attribute'),('15e73915-612e-4f05-882f-d8a4029467cf','true','access.token.claim'),('15e73915-612e-4f05-882f-d8a4029467cf','true','id.token.claim'),('15e73915-612e-4f05-882f-d8a4029467cf','true','introspection.token.claim'),('15e73915-612e-4f05-882f-d8a4029467cf','true','userinfo.token.claim'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','true','access.token.claim'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','locale','claim.name'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','true','id.token.claim'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','true','introspection.token.claim'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','String','jsonType.label'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','locale','user.attribute'),('16abe6d7-0977-4ac5-a952-d70f3ec856eb','true','userinfo.token.claim'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','true','access.token.claim'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','email_verified','claim.name'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','true','id.token.claim'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','true','introspection.token.claim'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','boolean','jsonType.label'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','emailVerified','user.attribute'),('1a793e59-00c6-4d2e-b613-241f2bcef3ca','true','userinfo.token.claim'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','true','access.token.claim'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','resource_access.${client_id}.roles','claim.name'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','true','introspection.token.claim'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','String','jsonType.label'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','true','multivalued'),('2be1a603-0589-42c8-aa2d-bb1886437eb5','foo','user.attribute'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','true','access.token.claim'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','clientAddress','claim.name'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','true','id.token.claim'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','true','introspection.token.claim'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','String','jsonType.label'),('2c05da21-af5a-4801-a7ee-6255c0b624ad','clientAddress','user.session.note'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','true','access.token.claim'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','upn','claim.name'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','true','id.token.claim'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','true','introspection.token.claim'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','String','jsonType.label'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','username','user.attribute'),('2e1ba096-0c21-4243-b3d2-cdc9bdfaa179','true','userinfo.token.claim'),('33c94ec5-9afc-4aff-910f-9448be6260b6','true','access.token.claim'),('33c94ec5-9afc-4aff-910f-9448be6260b6','true','introspection.token.claim'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','true','access.token.claim'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','family_name','claim.name'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','true','id.token.claim'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','true','introspection.token.claim'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','String','jsonType.label'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','lastName','user.attribute'),('34aaca1e-3a9a-4941-88ca-055c2e20e041','true','userinfo.token.claim'),('35fe1c75-4bc4-48d8-bd9f-9694fe35d555','true','access.token.claim'),('35fe1c75-4bc4-48d8-bd9f-9694fe35d555','true','introspection.token.claim'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','true','access.token.claim'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','picture','claim.name'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','true','id.token.claim'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','true','introspection.token.claim'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','String','jsonType.label'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','picture','user.attribute'),('3ad144e4-82ec-469c-95f8-7a57f6bececb','true','userinfo.token.claim'),('3b27be11-3e77-490c-afde-f2117c3d098c','true','access.token.claim'),('3b27be11-3e77-490c-afde-f2117c3d098c','true','introspection.token.claim'),('3df98c75-8d34-4d84-a487-ce161e157bb4','true','access.token.claim'),('3df98c75-8d34-4d84-a487-ce161e157bb4','birthdate','claim.name'),('3df98c75-8d34-4d84-a487-ce161e157bb4','true','id.token.claim'),('3df98c75-8d34-4d84-a487-ce161e157bb4','true','introspection.token.claim'),('3df98c75-8d34-4d84-a487-ce161e157bb4','String','jsonType.label'),('3df98c75-8d34-4d84-a487-ce161e157bb4','birthdate','user.attribute'),('3df98c75-8d34-4d84-a487-ce161e157bb4','true','userinfo.token.claim'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','true','access.token.claim'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','realm_access.roles','claim.name'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','true','introspection.token.claim'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','String','jsonType.label'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','true','multivalued'),('3e29a8d1-85dc-4ea6-900c-4eb9a4fa41f7','foo','user.attribute'),('40464299-f08e-4c33-a187-e22b30e89e4c','true','access.token.claim'),('40464299-f08e-4c33-a187-e22b30e89e4c','middle_name','claim.name'),('40464299-f08e-4c33-a187-e22b30e89e4c','true','id.token.claim'),('40464299-f08e-4c33-a187-e22b30e89e4c','true','introspection.token.claim'),('40464299-f08e-4c33-a187-e22b30e89e4c','String','jsonType.label'),('40464299-f08e-4c33-a187-e22b30e89e4c','middleName','user.attribute'),('40464299-f08e-4c33-a187-e22b30e89e4c','true','userinfo.token.claim'),('417df603-9e0a-4f97-9a9d-7c84dd60792a','true','access.token.claim'),('417df603-9e0a-4f97-9a9d-7c84dd60792a','true','id.token.claim'),('417df603-9e0a-4f97-9a9d-7c84dd60792a','true','introspection.token.claim'),('417df603-9e0a-4f97-9a9d-7c84dd60792a','true','userinfo.token.claim'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','true','access.token.claim'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','given_name','claim.name'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','true','id.token.claim'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','true','introspection.token.claim'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','String','jsonType.label'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','firstName','user.attribute'),('419d117e-f256-4c12-ba0c-da7b0e1c2b87','true','userinfo.token.claim'),('461b78db-c835-4863-ae30-e7c7aeabad0f','true','access.token.claim'),('461b78db-c835-4863-ae30-e7c7aeabad0f','true','introspection.token.claim'),('4670f2dc-e271-4871-83c0-dbb867459a36','true','access.token.claim'),('4670f2dc-e271-4871-83c0-dbb867459a36','true','introspection.token.claim'),('472f9e83-4286-4750-8902-953132489162','true','access.token.claim'),('472f9e83-4286-4750-8902-953132489162','website','claim.name'),('472f9e83-4286-4750-8902-953132489162','true','id.token.claim'),('472f9e83-4286-4750-8902-953132489162','true','introspection.token.claim'),('472f9e83-4286-4750-8902-953132489162','String','jsonType.label'),('472f9e83-4286-4750-8902-953132489162','website','user.attribute'),('472f9e83-4286-4750-8902-953132489162','true','userinfo.token.claim'),('47fc660a-c61c-4489-961d-18c5db333fc5','true','access.token.claim'),('47fc660a-c61c-4489-961d-18c5db333fc5','client_id','claim.name'),('47fc660a-c61c-4489-961d-18c5db333fc5','true','id.token.claim'),('47fc660a-c61c-4489-961d-18c5db333fc5','true','introspection.token.claim'),('47fc660a-c61c-4489-961d-18c5db333fc5','String','jsonType.label'),('47fc660a-c61c-4489-961d-18c5db333fc5','client_id','user.session.note'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','true','access.token.claim'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','website','claim.name'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','true','id.token.claim'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','true','introspection.token.claim'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','String','jsonType.label'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','website','user.attribute'),('4fc11a7c-0b73-4436-85be-42e470fcb2b5','true','userinfo.token.claim'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','true','access.token.claim'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','updated_at','claim.name'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','true','id.token.claim'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','true','introspection.token.claim'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','long','jsonType.label'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','updatedAt','user.attribute'),('5925ff75-d0df-4cbb-972e-b8bbd516d453','true','userinfo.token.claim'),('59ed8aab-150b-47e7-95b1-95180f4791d3','true','access.token.claim'),('59ed8aab-150b-47e7-95b1-95180f4791d3','organization','claim.name'),('59ed8aab-150b-47e7-95b1-95180f4791d3','true','id.token.claim'),('59ed8aab-150b-47e7-95b1-95180f4791d3','true','introspection.token.claim'),('59ed8aab-150b-47e7-95b1-95180f4791d3','String','jsonType.label'),('59ed8aab-150b-47e7-95b1-95180f4791d3','true','multivalued'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','true','access.token.claim'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','auth_time','claim.name'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','true','id.token.claim'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','true','introspection.token.claim'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','long','jsonType.label'),('5bc82979-2bf5-4bd2-9cfb-5467fcc8b310','AUTH_TIME','user.session.note'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','true','access.token.claim'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','resource_access.${client_id}.roles','claim.name'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','true','introspection.token.claim'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','String','jsonType.label'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','true','multivalued'),('6df7edaf-07fb-4502-9e0a-c9fac88c8b40','foo','user.attribute'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','true','access.token.claim'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','middle_name','claim.name'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','true','id.token.claim'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','true','introspection.token.claim'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','String','jsonType.label'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','middleName','user.attribute'),('70cc3341-dd0c-4fa8-88d2-6292be7eea32','true','userinfo.token.claim'),('8356fb8d-01b8-4a13-bcf3-434f75c9694e','true','access.token.claim'),('8356fb8d-01b8-4a13-bcf3-434f75c9694e','true','introspection.token.claim'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','true','access.token.claim'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','locale','claim.name'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','true','id.token.claim'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','true','introspection.token.claim'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','String','jsonType.label'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','locale','user.attribute'),('85c60e06-60d2-4402-83ef-5fffe3fd18a8','true','userinfo.token.claim'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','true','access.token.claim'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','clientHost','claim.name'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','true','id.token.claim'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','true','introspection.token.claim'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','String','jsonType.label'),('8aeb79ab-1049-46b1-8834-bdfb4614c358','clientHost','user.session.note'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','true','access.token.claim'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','given_name','claim.name'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','true','id.token.claim'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','true','introspection.token.claim'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','String','jsonType.label'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','firstName','user.attribute'),('8cbc3a8c-bffd-41aa-aef9-5b222d0497a8','true','userinfo.token.claim'),('8df48c16-204b-45e6-b04e-0465bf9db153','true','access.token.claim'),('8df48c16-204b-45e6-b04e-0465bf9db153','true','id.token.claim'),('8df48c16-204b-45e6-b04e-0465bf9db153','true','introspection.token.claim'),('8df48c16-204b-45e6-b04e-0465bf9db153','country','user.attribute.country'),('8df48c16-204b-45e6-b04e-0465bf9db153','formatted','user.attribute.formatted'),('8df48c16-204b-45e6-b04e-0465bf9db153','locality','user.attribute.locality'),('8df48c16-204b-45e6-b04e-0465bf9db153','postal_code','user.attribute.postal_code'),('8df48c16-204b-45e6-b04e-0465bf9db153','region','user.attribute.region'),('8df48c16-204b-45e6-b04e-0465bf9db153','street','user.attribute.street'),('8df48c16-204b-45e6-b04e-0465bf9db153','true','userinfo.token.claim'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','true','access.token.claim'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','profile','claim.name'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','true','id.token.claim'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','true','introspection.token.claim'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','String','jsonType.label'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','profile','user.attribute'),('92d6bf8f-8bf0-4321-8ba1-4f0da737202a','true','userinfo.token.claim'),('96a9d627-3747-461e-b155-61af95b3657a','true','access.token.claim'),('96a9d627-3747-461e-b155-61af95b3657a','picture','claim.name'),('96a9d627-3747-461e-b155-61af95b3657a','true','id.token.claim'),('96a9d627-3747-461e-b155-61af95b3657a','true','introspection.token.claim'),('96a9d627-3747-461e-b155-61af95b3657a','String','jsonType.label'),('96a9d627-3747-461e-b155-61af95b3657a','picture','user.attribute'),('96a9d627-3747-461e-b155-61af95b3657a','true','userinfo.token.claim'),('98bad57c-eb27-44e1-997a-1752a1429c87','true','access.token.claim'),('98bad57c-eb27-44e1-997a-1752a1429c87','updated_at','claim.name'),('98bad57c-eb27-44e1-997a-1752a1429c87','true','id.token.claim'),('98bad57c-eb27-44e1-997a-1752a1429c87','true','introspection.token.claim'),('98bad57c-eb27-44e1-997a-1752a1429c87','long','jsonType.label'),('98bad57c-eb27-44e1-997a-1752a1429c87','updatedAt','user.attribute'),('98bad57c-eb27-44e1-997a-1752a1429c87','true','userinfo.token.claim'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','true','access.token.claim'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','phone_number','claim.name'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','true','id.token.claim'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','true','introspection.token.claim'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','String','jsonType.label'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','phoneNumber','user.attribute'),('9922a52d-74fb-48a1-a71b-16c5de27fc70','true','userinfo.token.claim'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','true','access.token.claim'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','clientAddress','claim.name'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','true','id.token.claim'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','true','introspection.token.claim'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','String','jsonType.label'),('9fba1d3e-6f03-434d-a57a-2c02bfc4998b','clientAddress','user.session.note'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','true','access.token.claim'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','email','claim.name'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','true','id.token.claim'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','true','introspection.token.claim'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','String','jsonType.label'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','email','user.attribute'),('a4a5d2b8-d35d-4cb8-b7f1-dae354ad9bda','true','userinfo.token.claim'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','true','access.token.claim'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','upn','claim.name'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','true','id.token.claim'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','true','introspection.token.claim'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','String','jsonType.label'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','username','user.attribute'),('aae2c1f9-b59e-43d3-abd6-13f062e9092d','true','userinfo.token.claim'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','true','access.token.claim'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','phone_number_verified','claim.name'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','true','id.token.claim'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','true','introspection.token.claim'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','boolean','jsonType.label'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','phoneNumberVerified','user.attribute'),('b075b32a-bc5d-4261-aaab-c01ba444c11d','true','userinfo.token.claim'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','true','access.token.claim'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','family_name','claim.name'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','true','id.token.claim'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','true','introspection.token.claim'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','String','jsonType.label'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','lastName','user.attribute'),('b2cf81e9-0b26-47ac-99f0-7608a59aadea','true','userinfo.token.claim'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','true','access.token.claim'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','client_id','claim.name'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','true','id.token.claim'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','true','introspection.token.claim'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','String','jsonType.label'),('b56f0775-c44e-4de8-ad04-585e1ab4e1f5','client_id','user.session.note'),('bb7291e7-04b4-4023-8704-d5755d2f3302','Role','attribute.name'),('bb7291e7-04b4-4023-8704-d5755d2f3302','Basic','attribute.nameformat'),('bb7291e7-04b4-4023-8704-d5755d2f3302','false','single'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','true','access.token.claim'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','organization','claim.name'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','true','id.token.claim'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','true','introspection.token.claim'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','String','jsonType.label'),('bbb12d15-43e9-494b-bcdd-47b030f10b08','true','multivalued'),('bef991a1-4bdf-4262-bf3b-012585092522','true','access.token.claim'),('bef991a1-4bdf-4262-bf3b-012585092522','zoneinfo','claim.name'),('bef991a1-4bdf-4262-bf3b-012585092522','true','id.token.claim'),('bef991a1-4bdf-4262-bf3b-012585092522','true','introspection.token.claim'),('bef991a1-4bdf-4262-bf3b-012585092522','String','jsonType.label'),('bef991a1-4bdf-4262-bf3b-012585092522','zoneinfo','user.attribute'),('bef991a1-4bdf-4262-bf3b-012585092522','true','userinfo.token.claim'),('c2705853-2b72-4845-a205-996f4c8ab4e8','true','access.token.claim'),('c2705853-2b72-4845-a205-996f4c8ab4e8','preferred_username','claim.name'),('c2705853-2b72-4845-a205-996f4c8ab4e8','true','id.token.claim'),('c2705853-2b72-4845-a205-996f4c8ab4e8','true','introspection.token.claim'),('c2705853-2b72-4845-a205-996f4c8ab4e8','String','jsonType.label'),('c2705853-2b72-4845-a205-996f4c8ab4e8','username','user.attribute'),('c2705853-2b72-4845-a205-996f4c8ab4e8','true','userinfo.token.claim'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','true','access.token.claim'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','groups','claim.name'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','true','id.token.claim'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','true','introspection.token.claim'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','String','jsonType.label'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','true','multivalued'),('c66a8a21-7a72-40f7-8849-bfd609ff003b','foo','user.attribute'),('cb918249-5808-4b02-a4af-938646a63667','true','access.token.claim'),('cb918249-5808-4b02-a4af-938646a63667','true','id.token.claim'),('cb918249-5808-4b02-a4af-938646a63667','true','introspection.token.claim'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','true','access.token.claim'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','birthdate','claim.name'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','true','id.token.claim'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','true','introspection.token.claim'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','String','jsonType.label'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','birthdate','user.attribute'),('d12751a4-cbc3-4884-ac4b-96b18b276c0d','true','userinfo.token.claim'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','true','access.token.claim'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','profile','claim.name'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','true','id.token.claim'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','true','introspection.token.claim'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','String','jsonType.label'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','profile','user.attribute'),('d1b44f03-0ddb-47b4-9a35-ac583d7295d3','true','userinfo.token.claim'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','true','access.token.claim'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','phone_number_verified','claim.name'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','true','id.token.claim'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','true','introspection.token.claim'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','boolean','jsonType.label'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','phoneNumberVerified','user.attribute'),('d31e0805-e251-46a5-a6d4-6f290c4bd8ab','true','userinfo.token.claim'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','true','access.token.claim'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','email','claim.name'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','true','id.token.claim'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','true','introspection.token.claim'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','String','jsonType.label'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','email','user.attribute'),('d72b1c6f-ca7f-40e2-b5c0-68afe93327ae','true','userinfo.token.claim'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','true','access.token.claim'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','groups','claim.name'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','true','id.token.claim'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','true','introspection.token.claim'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','String','jsonType.label'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','true','multivalued'),('e0fb1679-4dc5-43d3-be04-60162ed80b7f','foo','user.attribute'),('e218ee9d-ff20-4523-901d-0961610ddfe6','true','access.token.claim'),('e218ee9d-ff20-4523-901d-0961610ddfe6','gender','claim.name'),('e218ee9d-ff20-4523-901d-0961610ddfe6','true','id.token.claim'),('e218ee9d-ff20-4523-901d-0961610ddfe6','true','introspection.token.claim'),('e218ee9d-ff20-4523-901d-0961610ddfe6','String','jsonType.label'),('e218ee9d-ff20-4523-901d-0961610ddfe6','gender','user.attribute'),('e218ee9d-ff20-4523-901d-0961610ddfe6','true','userinfo.token.claim'),('e456ff47-f117-4b71-a963-e28ddc912065','true','access.token.claim'),('e456ff47-f117-4b71-a963-e28ddc912065','nickname','claim.name'),('e456ff47-f117-4b71-a963-e28ddc912065','true','id.token.claim'),('e456ff47-f117-4b71-a963-e28ddc912065','true','introspection.token.claim'),('e456ff47-f117-4b71-a963-e28ddc912065','String','jsonType.label'),('e456ff47-f117-4b71-a963-e28ddc912065','nickname','user.attribute'),('e456ff47-f117-4b71-a963-e28ddc912065','true','userinfo.token.claim'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','true','access.token.claim'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','preferred_username','claim.name'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','true','id.token.claim'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','true','introspection.token.claim'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','String','jsonType.label'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','username','user.attribute'),('e4a53421-32ab-4c38-bdaf-94e9e57d2c21','true','userinfo.token.claim'),('e79d91ec-2649-439c-ab36-1a945cb624ca','true','access.token.claim'),('e79d91ec-2649-439c-ab36-1a945cb624ca','nickname','claim.name'),('e79d91ec-2649-439c-ab36-1a945cb624ca','true','id.token.claim'),('e79d91ec-2649-439c-ab36-1a945cb624ca','true','introspection.token.claim'),('e79d91ec-2649-439c-ab36-1a945cb624ca','String','jsonType.label'),('e79d91ec-2649-439c-ab36-1a945cb624ca','nickname','user.attribute'),('e79d91ec-2649-439c-ab36-1a945cb624ca','true','userinfo.token.claim'),('e7b16bc8-b1ee-4401-83d2-049232b954a4','true','access.token.claim'),('e7b16bc8-b1ee-4401-83d2-049232b954a4','true','id.token.claim'),('e7b16bc8-b1ee-4401-83d2-049232b954a4','true','introspection.token.claim'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','true','access.token.claim'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','email_verified','claim.name'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','true','id.token.claim'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','true','introspection.token.claim'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','boolean','jsonType.label'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','emailVerified','user.attribute'),('eb6131c7-1e46-4a6f-b43e-59cac3fee808','true','userinfo.token.claim'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','true','access.token.claim'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','phone_number','claim.name'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','true','id.token.claim'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','true','introspection.token.claim'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','String','jsonType.label'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','phoneNumber','user.attribute'),('eff3cd87-aa3d-461d-81a4-2c059a0e2b31','true','userinfo.token.claim'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','true','access.token.claim'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','true','id.token.claim'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','true','introspection.token.claim'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','country','user.attribute.country'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','formatted','user.attribute.formatted'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','locality','user.attribute.locality'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','postal_code','user.attribute.postal_code'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','region','user.attribute.region'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','street','user.attribute.street'),('f2e6f2bf-58b8-4ff4-a638-29093c0cba67','true','userinfo.token.claim'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','true','access.token.claim'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','gender','claim.name'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','true','id.token.claim'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','true','introspection.token.claim'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','String','jsonType.label'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','gender','user.attribute'),('fb231ae2-8f15-4e07-b2f2-6f118b06fcb1','true','userinfo.token.claim'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','true','access.token.claim'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','locale','claim.name'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','true','id.token.claim'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','true','introspection.token.claim'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','String','jsonType.label'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','locale','user.attribute'),('fcd5ac3c-29b5-4c33-a5ec-0cf996b7c358','true','userinfo.token.claim'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','true','access.token.claim'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','auth_time','claim.name'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','true','id.token.claim'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','true','introspection.token.claim'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','long','jsonType.label'),('fd08c3f8-388b-4b8a-a48c-2a66e2093640','AUTH_TIME','user.session.note'),('fef0e215-535a-4a71-a5ac-94dfca309b74','Role','attribute.name'),('fef0e215-535a-4a71-a5ac-94dfca309b74','Basic','attribute.nameformat'),('fef0e215-535a-4a71-a5ac-94dfca309b74','false','single');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `REMEMBER_ME` tinyint(1) NOT NULL DEFAULT 0,
  `RESET_PASSWORD_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `SOCIAL` tinyint(1) NOT NULL DEFAULT 0,
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` tinyint(1) NOT NULL DEFAULT 0,
  `VERIFY_EMAIL` tinyint(1) NOT NULL DEFAULT 0,
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_DETAILS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EDIT_USERNAME_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `OTP_POLICY_COUNTER` int(11) DEFAULT 0,
  `OTP_POLICY_WINDOW` int(11) DEFAULT 1,
  `OTP_POLICY_PERIOD` int(11) DEFAULT 30,
  `OTP_POLICY_DIGITS` int(11) DEFAULT 6,
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT 0,
  `REVOKE_REFRESH_TOKEN` tinyint(1) NOT NULL DEFAULT 0,
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` tinyint(1) NOT NULL DEFAULT 1,
  `DUPLICATE_EMAILS_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2',60,300,300,NULL,NULL,NULL,1,1,259200,NULL,'flask-sso-auth-service',0,NULL,1,0,1,0,'EXTERNAL',1800,36000,0,1,'4387613f-eb90-477c-b8b0-9fa4060fe812',1800,1,'en',0,1,0,0,0,1,30,6,'HmacSHA1','totp','6a3aa2ab-8d27-48fe-95fb-f5e751e659d9','5786ac93-6c6e-470f-92a9-8e700c5792b2','40633b82-bccd-406b-9167-f8ad9087bd53','ec9de6ac-74e8-4485-8fe6-1be6c667aabb','2639c4fc-33ea-4f2d-a269-4cf30a2d4bc2',2592000,0,900,1,0,'ac0ee61a-32cc-43e8-8fb7-653c0f2a161e',0,1,0,0,'72ff4a9c-ba6c-40f6-92d1-16c753854d19'),('ef0f7d6a-26f1-4659-a607-d27c64903c50',60,300,60,NULL,NULL,NULL,1,0,0,NULL,'master',0,NULL,0,0,0,0,'EXTERNAL',1800,36000,0,0,'a6a915ec-1e15-4e8d-9e78-8323e9eb7f42',1800,0,NULL,0,0,0,0,0,1,30,6,'HmacSHA1','totp','7f3f2602-fd2d-468d-b55f-6574621d00d2','68cdd294-effa-41d7-84a4-3ff6382e5e1f','aee14a5a-90a5-4faf-939c-71adb5d1f754','6047b663-7f0a-46e6-8511-0ce2f4b6d2bd','259e1b01-b141-425b-b6b1-1c9880b5711f',2592000,0,900,1,0,'623ee054-d256-4bc5-957f-f4ac29750414',0,0,0,0,'9c98c0f5-6130-4c43-ac75-cf5e1120369d');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('acr.loa.map','98c61bee-7a7c-47d6-8721-3559b9e905c2','{}'),('actionTokenGeneratedByAdminLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','43200'),('actionTokenGeneratedByUserLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','300'),('adminEventsExpiration','98c61bee-7a7c-47d6-8721-3559b9e905c2','259200'),('adminPermissionsEnabled','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('bruteForceProtected','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('bruteForceProtected','ef0f7d6a-26f1-4659-a607-d27c64903c50','false'),('bruteForceStrategy','98c61bee-7a7c-47d6-8721-3559b9e905c2','MULTIPLE'),('bruteForceStrategy','ef0f7d6a-26f1-4659-a607-d27c64903c50','MULTIPLE'),('cibaAuthRequestedUserHint','98c61bee-7a7c-47d6-8721-3559b9e905c2','login_hint'),('cibaBackchannelTokenDeliveryMode','98c61bee-7a7c-47d6-8721-3559b9e905c2','poll'),('cibaExpiresIn','98c61bee-7a7c-47d6-8721-3559b9e905c2','120'),('cibaInterval','98c61bee-7a7c-47d6-8721-3559b9e905c2','5'),('client-policies.policies','98c61bee-7a7c-47d6-8721-3559b9e905c2','{\"policies\":[]}'),('client-policies.profiles','98c61bee-7a7c-47d6-8721-3559b9e905c2','{\"profiles\":[]}'),('clientOfflineSessionIdleTimeout','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('clientOfflineSessionMaxLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('clientSessionIdleTimeout','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('clientSessionMaxLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('defaultSignatureAlgorithm','98c61bee-7a7c-47d6-8721-3559b9e905c2','RS256'),('defaultSignatureAlgorithm','ef0f7d6a-26f1-4659-a607-d27c64903c50','RS256'),('displayName','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('displayName','ef0f7d6a-26f1-4659-a607-d27c64903c50','Keycloak'),('displayNameHtml','98c61bee-7a7c-47d6-8721-3559b9e905c2','<div>Coursea<span style=\"font-color:Aqua\">(With AI Support)</span></div>'),('displayNameHtml','ef0f7d6a-26f1-4659-a607-d27c64903c50','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','98c61bee-7a7c-47d6-8721-3559b9e905c2','30'),('failureFactor','ef0f7d6a-26f1-4659-a607-d27c64903c50','30'),('firstBrokerLoginFlowId','98c61bee-7a7c-47d6-8721-3559b9e905c2','bd6bfbd5-4e48-4f5d-9626-982a4c749207'),('firstBrokerLoginFlowId','ef0f7d6a-26f1-4659-a607-d27c64903c50','dea72237-f818-468d-9bff-859b8b029351'),('frontendUrl','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('maxDeltaTimeSeconds','98c61bee-7a7c-47d6-8721-3559b9e905c2','43200'),('maxDeltaTimeSeconds','ef0f7d6a-26f1-4659-a607-d27c64903c50','43200'),('maxFailureWaitSeconds','98c61bee-7a7c-47d6-8721-3559b9e905c2','900'),('maxFailureWaitSeconds','ef0f7d6a-26f1-4659-a607-d27c64903c50','900'),('maxTemporaryLockouts','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('maxTemporaryLockouts','ef0f7d6a-26f1-4659-a607-d27c64903c50','0'),('minimumQuickLoginWaitSeconds','98c61bee-7a7c-47d6-8721-3559b9e905c2','60'),('minimumQuickLoginWaitSeconds','ef0f7d6a-26f1-4659-a607-d27c64903c50','60'),('oauth2DeviceCodeLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','600'),('oauth2DevicePollingInterval','98c61bee-7a7c-47d6-8721-3559b9e905c2','5'),('offlineSessionMaxLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','5184000'),('offlineSessionMaxLifespan','ef0f7d6a-26f1-4659-a607-d27c64903c50','5184000'),('offlineSessionMaxLifespanEnabled','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('offlineSessionMaxLifespanEnabled','ef0f7d6a-26f1-4659-a607-d27c64903c50','false'),('organizationsEnabled','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('parRequestUriLifespan','98c61bee-7a7c-47d6-8721-3559b9e905c2','60'),('permanentLockout','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('permanentLockout','ef0f7d6a-26f1-4659-a607-d27c64903c50','false'),('quickLoginCheckMilliSeconds','98c61bee-7a7c-47d6-8721-3559b9e905c2','1000'),('quickLoginCheckMilliSeconds','ef0f7d6a-26f1-4659-a607-d27c64903c50','1000'),('realmReusableOtpCode','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('realmReusableOtpCode','ef0f7d6a-26f1-4659-a607-d27c64903c50','false'),('saml.signature.algorithm','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('verifiableCredentialsEnabled','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('waitIncrementSeconds','98c61bee-7a7c-47d6-8721-3559b9e905c2','60'),('waitIncrementSeconds','ef0f7d6a-26f1-4659-a607-d27c64903c50','60'),('webAuthnPolicyAttestationConveyancePreference','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyAuthenticatorAttachment','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','false'),('webAuthnPolicyCreateTimeout','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('webAuthnPolicyCreateTimeoutPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','0'),('webAuthnPolicyRequireResidentKey','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyRpEntityName','98c61bee-7a7c-47d6-8721-3559b9e905c2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','keycloak'),('webAuthnPolicyRpId','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('webAuthnPolicyRpIdPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('webAuthnPolicySignatureAlgorithms','98c61bee-7a7c-47d6-8721-3559b9e905c2','ES256,RS256'),('webAuthnPolicySignatureAlgorithmsPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','ES256,RS256'),('webAuthnPolicyUserVerificationRequirement','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','98c61bee-7a7c-47d6-8721-3559b9e905c2','not specified'),('_browser_header.contentSecurityPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','98c61bee-7a7c-47d6-8721-3559b9e905c2',''),('_browser_header.contentSecurityPolicyReportOnly','ef0f7d6a-26f1-4659-a607-d27c64903c50',''),('_browser_header.referrerPolicy','98c61bee-7a7c-47d6-8721-3559b9e905c2','no-referrer'),('_browser_header.referrerPolicy','ef0f7d6a-26f1-4659-a607-d27c64903c50','no-referrer'),('_browser_header.strictTransportSecurity','98c61bee-7a7c-47d6-8721-3559b9e905c2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','ef0f7d6a-26f1-4659-a607-d27c64903c50','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','98c61bee-7a7c-47d6-8721-3559b9e905c2','nosniff'),('_browser_header.xContentTypeOptions','ef0f7d6a-26f1-4659-a607-d27c64903c50','nosniff'),('_browser_header.xFrameOptions','98c61bee-7a7c-47d6-8721-3559b9e905c2','SAMEORIGIN'),('_browser_header.xFrameOptions','ef0f7d6a-26f1-4659-a607-d27c64903c50','SAMEORIGIN'),('_browser_header.xRobotsTag','98c61bee-7a7c-47d6-8721-3559b9e905c2','none'),('_browser_header.xRobotsTag','ef0f7d6a-26f1-4659-a607-d27c64903c50','none');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
INSERT INTO `REALM_ENABLED_EVENT_TYPES` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','AUTHREQID_TO_TOKEN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','AUTHREQID_TO_TOKEN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_DELETE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_DELETE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_INITIATED_ACCOUNT_LINKING'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_LOGIN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_LOGIN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_REGISTER'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_REGISTER_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_UPDATE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CLIENT_UPDATE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CODE_TO_TOKEN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CODE_TO_TOKEN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CUSTOM_REQUIRED_ACTION'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','CUSTOM_REQUIRED_ACTION_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','DELETE_ACCOUNT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','DELETE_ACCOUNT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','EXECUTE_ACTIONS'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','EXECUTE_ACTIONS_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','EXECUTE_ACTION_TOKEN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','EXECUTE_ACTION_TOKEN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','FEDERATED_IDENTITY_LINK'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','FEDERATED_IDENTITY_LINK_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','FEDERATED_IDENTITY_OVERRIDE_LINK'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','FEDERATED_IDENTITY_OVERRIDE_LINK_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','GRANT_CONSENT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','GRANT_CONSENT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_FIRST_LOGIN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_LINK_ACCOUNT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_POST_LOGIN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IMPERSONATE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','IMPERSONATE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','INVITE_ORG'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','INVITE_ORG_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','LOGIN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','LOGIN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','LOGOUT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','LOGOUT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_AUTH'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_AUTH_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_CODE_TO_TOKEN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_VERIFY_USER_CODE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_EXTENSION_GRANT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','OAUTH2_EXTENSION_GRANT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','PERMISSION_TOKEN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REGISTER'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REGISTER_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_CREDENTIAL'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_CREDENTIAL_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_FEDERATED_IDENTITY'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_FEDERATED_IDENTITY_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_TOTP'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REMOVE_TOTP_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','RESET_PASSWORD'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','RESET_PASSWORD_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','RESTART_AUTHENTICATION'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','RESTART_AUTHENTICATION_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REVOKE_GRANT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','REVOKE_GRANT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_IDENTITY_PROVIDER_LINK'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_RESET_PASSWORD'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_RESET_PASSWORD_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_VERIFY_EMAIL'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','SEND_VERIFY_EMAIL_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','TOKEN_EXCHANGE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','TOKEN_EXCHANGE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_CONSENT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_CONSENT_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_CREDENTIAL'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_CREDENTIAL_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_EMAIL'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_EMAIL_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_PASSWORD'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_PASSWORD_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_PROFILE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_PROFILE_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_TOTP'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','UPDATE_TOTP_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','USER_DISABLED_BY_PERMANENT_LOCKOUT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','USER_DISABLED_BY_TEMPORARY_LOCKOUT'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','VERIFY_EMAIL'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','VERIFY_EMAIL_ERROR'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','VERIFY_PROFILE'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','VERIFY_PROFILE_ERROR');
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','jboss-logging'),('ef0f7d6a-26f1-4659-a607-d27c64903c50','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
INSERT INTO `REALM_LOCALIZATIONS` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','en','{\"profile.attributes.address\":\"Address\"}'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','zh-CN','{\"profile.attributes.address\":\"地址\"}'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','zh-TW','{\"profile.attributes.address\":\"地址\"}');
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'98c61bee-7a7c-47d6-8721-3559b9e905c2'),('password','password',1,1,'ef0f7d6a-26f1-4659-a607-d27c64903c50');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
INSERT INTO `REALM_SMTP_CONFIG` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','true','auth'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','basic','authType'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','false','debug'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','','envelopeFrom'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','appsheet.mcc@gmail.com','from'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','','fromDisplayName'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','smtp.gmail.com','host'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','tgib zvqh samm utok','password'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','587','port'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','','replyTo'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','','replyToDisplayName'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','false','ssl'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','true','starttls'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','appsheet.mcc@gmail.com','user');
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('98c61bee-7a7c-47d6-8721-3559b9e905c2','en'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','zh-CN'),('98c61bee-7a7c-47d6-8721-3559b9e905c2','zh-TW');
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('086256da-6641-415d-9469-ddd99f6588c0','/admin/master/console/*'),('44b05109-88cd-4bd9-ad5c-cffffcf97b36','/realms/master/account/*'),('4fc7920c-8cbe-4912-a717-06be56307f91','/admin/flask-sso-auth-service/console/*'),('96f573cb-2003-4405-85e5-d28199d685ca','/realms/flask-sso-auth-service/account/*'),('9b911691-b2ce-4556-a424-ff4a30b305ba','/realms/master/account/*'),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','/realms/flask-sso-auth-service/account/*'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','http://192.168.68.130:8080/*'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','http://192.168.68.130:8899/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_ACTION` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('1419ed69-aa4c-46f5-aaf1-515cd1687878','VERIFY_EMAIL','Verify Email','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'VERIFY_EMAIL',50),('1ef417e7-6efd-4d85-818e-40c6782370a3','delete_account','Delete Account','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,0,'delete_account',60),('22659c29-dde8-47fd-bc93-8b77f25e2bb1','CONFIGURE_TOTP','Configure OTP','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'CONFIGURE_TOTP',10),('2fadc9dd-baeb-4544-81ec-04a6e7739d84','CONFIGURE_TOTP','Configure OTP','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'CONFIGURE_TOTP',10),('383bf1a2-15bb-42a0-b255-f68871215534','TERMS_AND_CONDITIONS','Terms and Conditions','98c61bee-7a7c-47d6-8721-3559b9e905c2',0,0,'TERMS_AND_CONDITIONS',20),('5c7fd2b3-d0d2-4c65-9726-3a66505c4582','UPDATE_PASSWORD','Update Password','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'UPDATE_PASSWORD',30),('620caa96-030b-4783-b09e-61ba2c771f74','UPDATE_PASSWORD','Update Password','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'UPDATE_PASSWORD',30),('6b2bc250-9384-487c-b87c-f00f1dc3f92a','TERMS_AND_CONDITIONS','Terms and Conditions','ef0f7d6a-26f1-4659-a607-d27c64903c50',0,0,'TERMS_AND_CONDITIONS',20),('785b7ce6-0477-4e21-b562-259fc183fbf4','delete_credential','Delete Credential','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'delete_credential',100),('8ae7bce4-d0cc-4bfe-a930-c5a187142033','VERIFY_EMAIL','Verify Email','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'VERIFY_EMAIL',50),('8cc69af5-f6b7-44af-b6c1-cecbaf71010b','update_user_locale','Update User Locale','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'update_user_locale',1000),('9fad220a-fc62-42c2-b6e8-6ddb830059e6','delete_credential','Delete Credential','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'delete_credential',100),('a1e69698-de15-45d6-af37-0f7de5515ed7','UPDATE_PROFILE','Update Profile','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'UPDATE_PROFILE',40),('a4ca9840-2ab6-408f-b868-06b5558e9550','VERIFY_PROFILE','Verify Profile','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'VERIFY_PROFILE',90),('a7d7b929-41ef-40d4-978d-0bc68f044754','delete_account','Delete Account','98c61bee-7a7c-47d6-8721-3559b9e905c2',0,0,'delete_account',60),('bc3d067f-7cbf-4193-8c7e-206f1b758861','webauthn-register','Webauthn Register','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'webauthn-register',70),('c5e0c17c-22c7-498e-a0e5-1f2d5ae8eb1b','VERIFY_PROFILE','Verify Profile','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'VERIFY_PROFILE',90),('d072ffff-4ae5-48ae-a4e0-02a258a61d7b','update_user_locale','Update User Locale','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'update_user_locale',1000),('d4de0138-b0fa-495f-9e29-f4e658757be2','UPDATE_PROFILE','Update Profile','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'UPDATE_PROFILE',40),('da12f105-94cc-442e-9693-37d3b11e1676','webauthn-register-passwordless','Webauthn Register Passwordless','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'webauthn-register-passwordless',80),('da79829d-c917-46fc-a1a4-7561da74908c','webauthn-register-passwordless','Webauthn Register Passwordless','ef0f7d6a-26f1-4659-a607-d27c64903c50',1,0,'webauthn-register-passwordless',80),('df8388ad-5bd4-475a-8151-043aac33238c','webauthn-register','Webauthn Register','98c61bee-7a7c-47d6-8721-3559b9e905c2',1,0,'webauthn-register',70);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` tinyint(1) NOT NULL DEFAULT 0,
  `POLICY_ENFORCE_MODE` tinyint(4) DEFAULT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER` VALUES ('f10c3dba-78e8-4963-ab91-2a1954abe79c',1,0,1);
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  KEY `IDX_PERM_TICKET_REQUESTER` (`REQUESTER`),
  KEY `IDX_PERM_TICKET_OWNER` (`OWNER`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) DEFAULT NULL,
  `LOGIC` tinyint(4) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_POLICY` VALUES ('15215677-790f-4a0f-8483-28ea59195e99','Default Permission','A permission that applies to the default resource type','resource',1,0,'f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL),('4d87a056-5c35-4bf7-b0fc-1145f758aded','Default Policy','A policy that grants access only for users within this realm','js',0,0,'f10c3dba-78e8-4963-ab91-2a1954abe79c',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_RESOURCE` VALUES ('c0ff8d4c-351d-43f8-bd28-4a6c0ebb84f0','Default Resource','urn:flask-sso-auth-service-client-id:resources:default',NULL,'f10c3dba-78e8-4963-ab91-2a1954abe79c','f10c3dba-78e8-4963-ab91-2a1954abe79c',0,NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
INSERT INTO `RESOURCE_URIS` VALUES ('c0ff8d4c-351d-43f8-bd28-4a6c0ebb84f0','/*');
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVOKED_TOKEN`
--

DROP TABLE IF EXISTS `REVOKED_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REVOKED_TOKEN` (
  `ID` varchar(255) NOT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REV_TOKEN_ON_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVOKED_TOKEN`
--

LOCK TABLES `REVOKED_TOKEN` WRITE;
/*!40000 ALTER TABLE `REVOKED_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `REVOKED_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('9b911691-b2ce-4556-a424-ff4a30b305ba','626ab729-164f-4add-88e6-eae10d66d393'),('9b911691-b2ce-4556-a424-ff4a30b305ba','cee3f87e-3ae4-45c0-825c-e8cb994a534d'),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','07713896-a2d5-464e-813c-5652cfeee421'),('e0cabf11-0745-40c5-859e-a2b76e8d7fef','44ceba81-c0f5-4ab0-998e-0bd0aba951cb');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVER_CONFIG`
--

DROP TABLE IF EXISTS `SERVER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERVER_CONFIG` (
  `SERVER_CONFIG_KEY` varchar(255) NOT NULL,
  `VALUE` longtext NOT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`SERVER_CONFIG_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVER_CONFIG`
--

LOCK TABLES `SERVER_CONFIG` WRITE;
/*!40000 ALTER TABLE `SERVER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `SERVER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `USER_ATTRIBUTE` VALUES ('is_temporary_admin','true','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14','192905ce-2734-43e5-bd9d-b461113bea5f',NULL,NULL,NULL),('locale','zh-TW','cbb43578-36af-4afb-8d5e-6633877a5b44','af8c632b-e750-42f0-ad05-b14056bb2b69',NULL,NULL,NULL),('locale','zh-TW','90e8a704-9d8a-4871-9896-2fc957d2ec97','d7afa0d6-89f9-46fc-9268-0d4c44a92850',NULL,NULL,NULL);
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_LOCAL_CONSENT` (`CLIENT_ID`,`USER_ID`),
  UNIQUE KEY `UK_EXTERNAL_CONSENT` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  KEY `IDX_USCONSENT_SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` tinyint(1) NOT NULL DEFAULT 0,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('90e8a704-9d8a-4871-9896-2fc957d2ec97','makchunchi2468@gmail.com','makchunchi2468@gmail.com',1,1,NULL,'Chun Wing','Mak','98c61bee-7a7c-47d6-8721-3559b9e905c2','benny',1749731037745,NULL,0),('aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14',NULL,'d4f97926-6cc6-49e9-b953-c9b5841d9746',0,1,NULL,NULL,NULL,'ef0f7d6a-26f1-4659-a607-d27c64903c50','admin',1749683191309,NULL,0),('cbb43578-36af-4afb-8d5e-6633877a5b44','hko.ccmak.timesheet.5804@gmail.com','hko.ccmak.timesheet.5804@gmail.com',1,1,NULL,'Cc','Mak','98c61bee-7a7c-47d6-8721-3559b9e905c2','ccmak',1749685184705,NULL,0),('d0639bd7-88ac-4d90-bfd7-780e2ab436de',NULL,'91bd34d9-2dbe-4a71-9252-b1a5cca5dda8',0,1,NULL,NULL,NULL,'98c61bee-7a7c-47d6-8721-3559b9e905c2','service-account-flask-sso-auth-service-client-id',1749685108561,'f10c3dba-78e8-4963-ab91-2a1954abe79c',0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('6ac0b4f1-1016-4ec2-879f-c72243a2ef7a','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','90e8a704-9d8a-4871-9896-2fc957d2ec97'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','cbb43578-36af-4afb-8d5e-6633877a5b44'),('72ff4a9c-ba6c-40f6-92d1-16c753854d19','d0639bd7-88ac-4d90-bfd7-780e2ab436de'),('9c98c0f5-6130-4c43-ac75-cf5e1120369d','aa5ebfb9-6bed-4edc-bfe3-49c0839e2b14'),('cca4d673-3c6e-47bb-a598-f2189c09dd79','d0639bd7-88ac-4d90-bfd7-780e2ab436de');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('086256da-6641-415d-9469-ddd99f6588c0','+'),('4fc7920c-8cbe-4912-a717-06be56307f91','+'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','http://192.168.68.130:8080/'),('f10c3dba-78e8-4963-ab91-2a1954abe79c','http://192.168.68.130:8899/');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 12:24:58
