-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 11:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wealthchoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_leads`
--

CREATE TABLE `agriculture_leads` (
  `Agriculture_LeadId` int(11) NOT NULL,
  `LeadMainId` int(8) NOT NULL,
  `LeadPropertyArea` varchar(50) NOT NULL,
  `LandType` varchar(50) NOT NULL,
  `LandPrice` varchar(30) NOT NULL,
  `PurchasePurpose` varchar(20) NOT NULL,
  `Location` varchar(70) NOT NULL,
  `Amities` varchar(70) NOT NULL,
  `RequiredPeriod` varchar(50) NOT NULL,
  `LeadCity` varchar(30) NOT NULL,
  `LeadState` varchar(30) NOT NULL,
  `LeadPincode` varchar(25) NOT NULL,
  `LeadCreatedAt` datetime NOT NULL,
  `LeadUpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_quotes`
--

CREATE TABLE `app_quotes` (
  `AppQuotesId` int(100) NOT NULL,
  `AppQuoteName` longtext NOT NULL,
  `AppQuoteDate` varchar(25) NOT NULL,
  `AppQuoteStatus` varchar(10) NOT NULL,
  `AppQuotesCreatedBy` int(10) NOT NULL,
  `AppQuotesCreatedAt` varchar(25) NOT NULL,
  `AppQuotesUpdatedAt` varchar(25) NOT NULL,
  `AppQuotesUpdatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_quotes`
--

INSERT INTO `app_quotes` (`AppQuotesId`, `AppQuoteName`, `AppQuoteDate`, `AppQuoteStatus`, `AppQuotesCreatedBy`, `AppQuotesCreatedAt`, `AppQuotesUpdatedAt`, `AppQuotesUpdatedBy`) VALUES
(5, 'MWlEUVAvMEtzdjVZUUNVVXR2RU10YVFiazBRSVRqMnBRYXRmS0ZROUIyNk5DQ2lZUnkvbGhYSkpiWm0zRWppUE4wcU9janl1RWJ1d0oxUkI3THJlUzBtcDQwckFLSWg5QVNxUXJCTkplek5JR2Vram8vQklzaFZBeUFHRWdOakg=', '2023-03-13', 'Active', 1, '2023-03-13 05:08:51 AM', '2023-03-13 05:33:33 AM', 1),
(6, 'SzFaT2NYck9US2FGMHgyTCtBM3VRVy82cThLMU0xUzlpdDhGY0ZvVlpPUDdwMThJQzI4cENIeDRzTDluaXJseEYyWEFxOGh3dTMrNlVTQnR6bG9pdkFXb1VhZU9UL1Z5MFRqVERka1FPWnpGN2Znb2oxOFRoMVZCNlZmQnJERTM=', '2023-03-14', 'Active', 1, '2023-03-14 05:15:06 AM', '2023-03-14 05:15:06 AM', 1),
(7, 'N3JSR1lPZXBsYUk5ZnB5MGZrMnNyd2c5S1ZuZEwvYlhTcmRxaHpVNUs4R2ZRL3FHYm1WUXlHUGI2Rk0xSHRSeXkveXlmbHFldHJQOHVvb2F3YzZVNVlKMiszZE9nNDRnajRIM0tWbi91cUpEamZvbUlBUzJZNlBvdjRPcUhIVWU=', '2023-03-19', 'Active', 4, '2023-03-19 04:21:01 PM', '2023-03-19 04:21:01 PM', 4),
(8, 'SjNUdU04QjVXVjQ4ZW5Vc3FiMTJ3cmRJUHEyQ2R3a2U2RFljb2JrSWdSbjAxWnEvcVV2TWRZWFVaNDVuWVJCQS9ONWZmYm9DM2dESjRVUTV0cktScTMvT2tHWmcvWUNCNFBiemVjMzltQ3ZScXlvcmFzOElyZlFyTXNSNHRjaUVyRzdkb2g4QVB1eFVOcDVBMGRneXZHUHVrNzFoYS9lTlAwd3NRR3hRdWJtUHpydk51NVdMcDlrLzlFZDlXbkgrN2hGcWVhcDB1QjUvUXZ3TW40S1dwenUvcjRhY1BhOTA5NDRTS3hyQkdVRjRNWUl0TVFMckFIK21NVytvVjhocA==', '2023-07-27', 'Active', 1, '2023-03-21 01:29:55 PM', '2023-07-27 02:22:31 pm', 1),
(9, 'ZGd5RVRUU0thQi9jMFQvNFRRQ3ZqS2M1T25kQjFsRUVNc3ltTXpEQzlSQjNqM0tldlZ4NXZaT3FsYWNJemtmYXpPTWhQN0VXYlJXYkxwU3o4SWVmRHc9PQ==', '2023-04-16', 'Active', 1, '2023-04-16 04:03:14 pm', '2023-04-16 04:03:14 pm', 1),
(10, 'cm43bHAwR09MSU9GQ0RTSTZyUGRDbERmWUlXWDJuaVE2VkhoUElYZk1RaWtZdGY5YURPcjhBTWdxZzlDTHdLbWQ5OTV0K1czVXVTM0syYTd4K2JmNVRJVHlSV25kd1d3RDVIeVlQdTNPYmc9', '2023-04-25', 'Active', 1, '2023-04-25 06:24:10 pm', '2023-04-25 06:24:10 pm', 1),
(12, 'WGV0OE0rLzNYa3hIdEN4VUoyYS85WlQycnpZeFkxYU1WVU5ZYWIyS2JVQTF1M0tYNFhSR0hXWU1PT3dUbEsvSjYrSkc2WTM0d0wrdzBLRFVpSTloVGtrWXljeC9haEo3K1htb3NpTkRJZDg9', '2023-05-11', 'Active', 1, '2023-05-11 05:43:29 pm', '2023-05-11 05:43:29 pm', 1),
(13, 'SUhoSGpOZjk0eFRvMnR2empaSkNIMVpsZ1RyeEhyMnoySWFrdTNXa3FmU01NYytPakdSb2J2Qmd2by93TWQyY1FNN0xRRjAzSk5kNW11U1NYbEtPYTV1WG95SFc3cHc1UEhVemdJSk5FN0NsSk1wK0FPOHhrRkdINXhBTDd4MFlXVmNTWTFYeU43WjlFUmo3ZjVOYnZsM044b1BOWEhISEN4b2ZDeEcxUXVRRGRoUmNyeEQvR1p1L3A1VC9Wd1J5SjFrdWV5WTMxKzUreXBydTg0VDR1V0xHaUM3N2FmWFp0NDFEVEhzNE1YWWIyZ3BDL3V5dUxjaGpFUVJEd1RFQk5KK2NRaHJlc28zY0t0bU5NUWliRFZPK3BHelo0Vk16amkvbFpObDc3Q05US0ZtMldncFRLK1JHU1k2cVowRkF3R3lWNEkrdFNVMGpoaFdVOXRWQ0FOS1hqdnh6eUpaN2grMlhoeGxHeitTZ3MyZmlRMXpqSnE5OWJ1U3o3UjJET3lONVNlZncvSWd2Mld6dVUwY0hTOEJSUkJmbW0xU285ZzZKUkhLWEowbGpubXFYanYwVkI3bFkwZWk4Qm9UUVAyMmd6ekE5VWlqald2TzB0ajhZdnJUaVlNYjZJTHlnM00wYmRLVHdwNWNFSHR1UzNhZ2FMR25kZTVCcmxMenlyaFFWNW1iV0Uyb1BBVU44VUFlalVKcGorOHlHLzlBU01SajJEdmpOWmFNTWRySERjTnBneDAzSjVjSnRFaVUrQjRucWI5ZXl2djRGdmVQSmNQQzZnZlBVUVg0MlRyckFnN3FHcnpZeE14OUJ1N3FPQ3FGUzJCSnk2SSt0clBmQURCdmJNN25NRU1SZkZNc3U1S2VzV0w0VVhMYzRWZmo3V1R2d2pDNzN3TnNKZk5lR3U4UHJkUWVRdTR3bTRhWkJQdVU3K3BZMjR3bkh1cVVWYWFXYmwzck9Cc1FhU0VaUmtUOXhrcllqNjVjRUw1bEJTcWRqeGVpMGZzT0wrTmRvNkFqWTlWS2R0YVYrRjFVVW9HaDlqcElwN24wbmVKekQrTU1TTFQzcUhUR1JLWGZldy9Wb0NCak9FME5MMnRWak9IWjloL2NnaXJYRGl0SmUvWFpQbDNpVmFsNXkreGdKRXFCQmlhSUQwd2lKN2pBQjRjYS9VUDdxVFlCRDdXcTE=', '2023-05-25', 'Active', 1, '2023-05-25 04:21:28 pm', '2023-05-25 04:21:28 pm', 1),
(14, 'Umg0WGF2TWJNc05TcTZSM0J2aUlhd2F3a1BybS9HQThLbnJ4WUpMRzMwbzBIZ1dKcGNZNUlpcjZkRUk3QTFyUStiajBaay9tb2twSzhLek9ENDRZS1F2eFYycHZheHp0U3BkcDk0V2RadTZwSXo1NkMwaFZLbjdNM3A1eU1YZmF1VjBnenFNT2d0dTJhUVF5Yit0TlhQMkUyMEtRZlJRem9pMjg1RitGRGVZPQ==', '2023-08-12', 'Active', 1, '2023-08-12 06:54:10 pm', '2023-08-12 06:54:10 pm', 1),
(15, 'WmNuRnp2aUlxaTQvbll5ckh5SUZCQTRBZ211NHFnbjV0ZUxpTFAzNUpoOFdsbXJQdndmZHkwR2ZOVElndklQR0VyZm5maGJHSDhjVW8vMFQ5ZUNmSHRCSnJCaG9yQkMxNmVCOHhBOExKVXdZbEFwbUIwbFU0VjlNTlFPajJmd1lDK0R3dWVUeUs2V2dDT0JIMUMrNTk4NnJJM3lST210TkkyMEtQMkY3MGU1Q2V6R1didzlPOWs4dTRmYWdTMnkxQkF1ZFloaWNOaWhrV0tUTlg5TFhDdFlqS1NnUjBrclJ5NUZrTkpHWnJ0dz0=', '2023-08-13', 'Active', 1, '2023-08-13 10:01:00 am', '2023-08-13 10:01:00 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `AssetsId` int(100) NOT NULL,
  `AssetName` varchar(1000) NOT NULL,
  `AssetsImage` varchar(1000) NOT NULL,
  `AssetCategory` varchar(100) NOT NULL,
  `AssetModalNo` varchar(100) NOT NULL,
  `AssetSerialNo` varchar(100) NOT NULL,
  `AssetsCost` int(10) NOT NULL,
  `AssetPurchaseDate` varchar(40) NOT NULL,
  `AssetsDescription` varchar(1000) NOT NULL,
  `AssetsCreatedAt` varchar(40) NOT NULL,
  `AssetsUpdatedAt` varchar(40) NOT NULL,
  `AssetsCreatedBy` varchar(40) NOT NULL,
  `AssetsUpdatedBy` varchar(40) NOT NULL,
  `AssetsPurchaseReceipts` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_issued`
--

CREATE TABLE `assets_issued` (
  `AssetsMoveId` int(10) NOT NULL,
  `AssetsMainId` int(10) NOT NULL,
  `AssetsIssuedTo` int(10) NOT NULL,
  `AssetsIssueDate` varchar(20) NOT NULL,
  `AssetsIssueNotes` varchar(255) NOT NULL,
  `AssetsIssuedBy` int(10) NOT NULL,
  `AssetsIssueCreatedAt` varchar(20) NOT NULL,
  `AssetsIssueUpdatedAt` varchar(20) NOT NULL,
  `AssetsIssueStatus` varchar(100) NOT NULL,
  `AssetsIssueReturnedDate` varchar(100) NOT NULL,
  `AssetsIssueReturedTo` varchar(100) NOT NULL,
  `AssetsIssueReturnNotes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_returned`
--

CREATE TABLE `assets_returned` (
  `AssetsReturnedId` int(10) NOT NULL,
  `AssetsMainId` int(10) NOT NULL,
  `AssetsReturnedBy` int(10) NOT NULL,
  `AssetsReturnedDate` varchar(20) NOT NULL,
  `AssetsReturnedNotes` varchar(255) NOT NULL,
  `AssetsReturnReceiveBy` int(10) NOT NULL,
  `AssetsReturnCreatedAt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authenticationkey`
--

CREATE TABLE `authenticationkey` (
  `AuthenticationId` int(11) NOT NULL,
  `AuthenticationKey` varchar(50) NOT NULL,
  `AuthenticationKeyCreatedAT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authenticationkey`
--

INSERT INTO `authenticationkey` (`AuthenticationId`, `AuthenticationKey`, `AuthenticationKeyCreatedAT`) VALUES
(1, 'WealthChoiceApi2024', '2024-01-22 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingId` int(10) NOT NULL,
  `BookingAckCode` varchar(100) NOT NULL,
  `BookingCustomerName` varchar(100) NOT NULL,
  `BookingCustomerPhone` varchar(100) NOT NULL,
  `BookingForProject` varchar(100) NOT NULL,
  `BookingProjectPhase` varchar(100) NOT NULL,
  `BookingAmount` varchar(10) NOT NULL,
  `BookingPaymentMode` varchar(100) NOT NULL,
  `BookingPaymentSource` varchar(100) NOT NULL,
  `BookingPaymentRefNo` varchar(100) NOT NULL,
  `BookingPaymentDetails` varchar(100) NOT NULL,
  `BookingDate` varchar(100) NOT NULL,
  `BookingNotes` varchar(1000) NOT NULL,
  `BookingCreatedAt` varchar(40) NOT NULL,
  `BookingUpdatedAt` varchar(40) NOT NULL,
  `BookingCreatedBy` varchar(10) NOT NULL,
  `BookingTeamHeadId` varchar(10) NOT NULL,
  `BookingDirectSalePersonId` varchar(10) NOT NULL DEFAULT '1',
  `BookingBusinessHead` varchar(100) NOT NULL,
  `BookingStatus` varchar(100) NOT NULL,
  `BookingUpdatedBy` varchar(10) NOT NULL,
  `BookingMainCustomerId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_refunds`
--

CREATE TABLE `booking_refunds` (
  `BookingRefundId` int(10) NOT NULL,
  `BookingMainId` int(10) NOT NULL,
  `BookingRefundMode` varchar(100) NOT NULL,
  `BookingRefundSource` varchar(100) NOT NULL,
  `BookingRefundRefNo` varchar(100) NOT NULL,
  `BookingRefundDetails` varchar(10000) NOT NULL,
  `BookingRefundedTo` varchar(100) NOT NULL,
  `BookingRefundDate` varchar(50) NOT NULL,
  `BookingRefundCreatedAt` varchar(50) NOT NULL,
  `BookingRefundUpdatedAt` varchar(50) NOT NULL,
  `BookingRefundBy` int(10) NOT NULL,
  `BookingRefundAmount` varchar(100) NOT NULL,
  `BookingRefundApproxClearingDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_refund_documents`
--

CREATE TABLE `booking_refund_documents` (
  `BookingRefundDocId` int(10) NOT NULL,
  `BookingRefundMainId` varchar(10) NOT NULL,
  `BookingRefundDocName` varchar(100) NOT NULL,
  `BookingRefundDocFile` varchar(1000) NOT NULL,
  `BookingRefundDocUploadedAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `ChatId` int(100) NOT NULL,
  `ChatRefId` varchar(100) NOT NULL,
  `ChatMainSenderId` varchar(10) NOT NULL,
  `ChatMainReceiverId` varchar(10) NOT NULL,
  `ChatOpenedAt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_attachements`
--

CREATE TABLE `chat_attachements` (
  `ChatAttachId` int(10) NOT NULL,
  `ChatMsgMainId` int(10) NOT NULL,
  `ChatAttachedFile` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `ChatMessageId` int(10) NOT NULL,
  `ChatMainId` int(100) NOT NULL,
  `ChatMsgSenderId` varchar(10) NOT NULL,
  `ChatMsgReceiverId` varchar(10) NOT NULL,
  `ChatMessageDetails` longtext NOT NULL,
  `ChatMessageSentAt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `circulars`
--

CREATE TABLE `circulars` (
  `CircularId` int(10) NOT NULL,
  `CircularName` varchar(100) NOT NULL,
  `CircularSubject` varchar(200) NOT NULL,
  `CircularDescriptions` longtext NOT NULL,
  `CircularCreatedBy` varchar(10) NOT NULL,
  `CircularUpdatedAt` varchar(40) NOT NULL,
  `CircularCreatedAt` varchar(40) NOT NULL,
  `CircularDate` varchar(40) NOT NULL,
  `CircularStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circulars`
--

INSERT INTO `circulars` (`CircularId`, `CircularName`, `CircularSubject`, `CircularDescriptions`, `CircularCreatedBy`, `CircularUpdatedAt`, `CircularCreatedAt`, `CircularDate`, `CircularStatus`) VALUES
(1, 'Project training ', 'Project Training ', 'cWIzVjJtQnNLZTFUemFnNkx6SHd3a1o3NCtJbkc2T0MvdFVxcVJjS0xxUHIwcW9GS0tZQk9VV1N0emMwWUpRLw==', '4', '2023-03-28 04:10:26 PM', '2023-03-28 04:06:07 PM', '2023-03-28', 'Send'),
(2, 'Monday is Working Day', 'Monday will be Open i.e. 14 Aug 2023', 'VDBJa3Z4a2p1VERtVXlmQkhBT244a3BzdDNacWhHQ25nSHhyaXNLbmR3a0N5Y3ZVZkVCdE9GNjlEZEJST1VpSm1uRVRoYkpQM1ZWUXE2bGZmQ0t4cHBEUlRGeCtMZytpY3hTeUttcGVmWUxnbmEyd1RCTzQ3cXc1V25sdHhRVWhzNUc4YlpDNk8zalhSYUZjdW5ZZ29TcEluY3dqeHlmclA2M3QrMTRmVHdhSkdTeDZkb3pQTUVScEZPY2FyaFR6R1kwWUJwTlNSNW5uZFEwanBEck9wL3FSbzU0eWxwOXpSbk9Lb1Z4ZU1weWR1S1U1RXMxZzVHZVg1aHVRWCtLTDV0bFR3OXN2ay9rRzRFQ21NNGwwL3c9PQ==', '1', '2023-08-13 10:11:03 am', '2023-08-12 07:13:05 pm', '2023-08-12', 'Null'),
(3, 'Project Training ', 'Project Training ', 'TFJLaHdXVVpnRGtnNjF4WUVyM21kQTVrNUViVTdjZUxsRlBPY1ExbUIzVUxicDZXbFFlM0twZmNpc0hnNFYwY1hhNm1UZFR1aFVKTGduN2Q4Z0xialQvYWNRSG5UZ1ZsanV0U2x1bVFHUkhRYVZHZmF6UFNvNUNWNWl1c0FoSE91LzYwRDF3ZWFoQXpnQ3dJSG5YSTEwWXljTENMWEZMSkh4dklrT1VTVHo1OXhrQXdLWkRlODNhSk9EUitId0JyM3ZzYTdSRHV4QlpKZFhvVG5RWUdIMkRpdXlMQXNJcVdaYlhGM3ZWRklGTzc2RWFuVDVCTmlUdnFTeTR0Z3p4OVZZUmZBUjlGQ3N1RDdFc00rRTB4bUZKSVRWZ0I1OGw1WGxqVVY3SzV5TnBHRE55SVBwekRBZDNYR3pucU9aQVpSQUNrK055amFra2kxbGJoUDV1Ri94LzlQbWZaODE1bUhZdklUSUtzTjJIK28zMmpTT1c0MEFzREJ3VHIva0ZQTVZWSUh3aVNlcnQ0TmduYWFrRmNmZVJqSDM2ZUZnbzFDOHpUKytnbFIwdTRSRVVvM3J3d2NCUVpSTFlSWnM1MA==', '1', '2023-08-13 01:36:39 pm', '2023-08-13 01:36:39 pm', '2023-08-13', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `circular_files`
--

CREATE TABLE `circular_files` (
  `CircularFileId` int(10) NOT NULL,
  `CircularMainId` varchar(10) NOT NULL,
  `CircularDocumentName` varchar(1000) NOT NULL,
  `CircularDocumentFile` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `circular_status`
--

CREATE TABLE `circular_status` (
  `CircularStatusId` int(10) NOT NULL,
  `CircularMainId` int(10) NOT NULL,
  `CircularMainUserId` int(10) NOT NULL,
  `CircularViewAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circular_status`
--

INSERT INTO `circular_status` (`CircularStatusId`, `CircularMainId`, `CircularMainUserId`, `CircularViewAt`) VALUES
(1, 1, 80, '2023-03-31 01:00:36 PM'),
(2, 1, 14, '2023-04-01 10:48:52 AM'),
(3, 1, 4, '2023-04-01 04:27:58 PM'),
(4, 1, 77, '2023-04-05 03:20:46 PM'),
(5, 1, 16, '2023-04-07 10:21:27 AM'),
(6, 1, 111, '2023-04-12 06:02:38 PM'),
(7, 1, 21, '2023-04-18 02:39:13 pm'),
(8, 1, 84, '2023-04-21 11:11:02 am'),
(9, 1, 1, '2023-04-23 02:21:10 pm'),
(10, 1, 114, '2023-04-30 12:01:37 pm'),
(11, 1, 13, '2023-05-06 05:25:57 pm'),
(12, 1, 101, '2023-05-19 05:42:00 pm'),
(13, 1, 125, '2023-06-23 11:27:53 am'),
(14, 1, 30, '2023-07-11 11:50:01 am'),
(15, 1, 138, '2023-07-22 02:24:43 pm'),
(16, 1, 140, '2023-08-02 11:52:32 am'),
(17, 1, 11, '2023-08-04 01:09:10 pm'),
(18, 2, 13, '2023-08-13 12:03:45 pm'),
(19, 2, 14, '2023-08-13 12:16:46 pm'),
(20, 3, 13, '2023-08-13 03:49:21 pm'),
(21, 2, 80, '2023-08-13 05:06:41 pm'),
(22, 3, 80, '2023-08-13 05:07:04 pm'),
(23, 3, 101, '2023-08-14 09:37:35 am'),
(24, 2, 101, '2023-08-14 09:37:43 am'),
(25, 3, 14, '2023-08-14 10:15:14 am'),
(26, 2, 30, '2023-08-14 10:31:01 am'),
(27, 3, 30, '2023-08-14 10:31:21 am'),
(28, 2, 136, '2023-08-17 05:00:56 pm'),
(29, 1, 136, '2023-08-17 05:01:11 pm'),
(30, 3, 136, '2023-08-17 05:01:28 pm'),
(31, 3, 11, '2023-08-25 11:19:14 am'),
(32, 2, 11, '2023-08-25 11:19:31 am'),
(33, 3, 91, '2023-08-28 05:33:01 pm');

-- --------------------------------------------------------

--
-- Table structure for table `comaigns`
--

CREATE TABLE `comaigns` (
  `ComaignId` int(100) NOT NULL,
  `CompaignName` varchar(100) NOT NULL,
  `CompaignDate` varchar(40) NOT NULL,
  `SourceOfCompaign` varchar(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `ProjectLocation` varchar(100) NOT NULL,
  `NumberOfLeads` varchar(100) NOT NULL,
  `CompaignCPL` varchar(100) NOT NULL,
  `CompaignForUserId` varchar(100) NOT NULL,
  `CompaignAmountSpent` varchar(100) NOT NULL,
  `CompaingDescription` varchar(1000) NOT NULL,
  `CompaignCreatedAt` varchar(40) NOT NULL,
  `CompaginUpdatedAt` varchar(40) NOT NULL,
  `CompaignStatus` varchar(10) NOT NULL,
  `CompaingAddedBy` varchar(100) NOT NULL,
  `CompaingUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commercial_leads`
--

CREATE TABLE `commercial_leads` (
  `Commercial_LeadId` int(11) NOT NULL,
  `LeadMainId` int(10) NOT NULL,
  `LeadPropertyArea` varchar(50) NOT NULL,
  `NumberOfCabin` varchar(25) NOT NULL,
  `NumberOfSiting` varchar(30) NOT NULL,
  `FurnishedType` varchar(60) NOT NULL,
  `PurchasePurpose` varchar(50) NOT NULL,
  `LeadMinimumBudget` varchar(50) NOT NULL,
  `LeadMaximumBudget` varchar(50) NOT NULL,
  `RentDetails` varchar(60) NOT NULL,
  `Reception` varchar(50) NOT NULL,
  `NightShift` varchar(40) NOT NULL,
  `Panetry` varchar(30) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Amities` varchar(70) NOT NULL,
  `Washroom` varchar(50) NOT NULL,
  `RequiredPeriod` varchar(70) NOT NULL,
  `LeadCity` varchar(30) NOT NULL,
  `LeadState` varchar(30) NOT NULL,
  `LeadPincode` varchar(30) NOT NULL,
  `LeadCreatedAt` datetime NOT NULL,
  `LeadUpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commercial_leads`
--

INSERT INTO `commercial_leads` (`Commercial_LeadId`, `LeadMainId`, `LeadPropertyArea`, `NumberOfCabin`, `NumberOfSiting`, `FurnishedType`, `PurchasePurpose`, `LeadMinimumBudget`, `LeadMaximumBudget`, `RentDetails`, `Reception`, `NightShift`, `Panetry`, `Location`, `Amities`, `Washroom`, `RequiredPeriod`, `LeadCity`, `LeadState`, `LeadPincode`, `LeadCreatedAt`, `LeadUpdatedAt`) VALUES
(1, 1, '600 Sq meter', '1', '0-15', 'Semi Furnished', 'SELL', '1000000', '1500000', '', 'Free Space', 'Yes', 'Yes', 'faridabad', '128', 'Seperate', 'In 1 Month', '', '', '', '2024-01-22 03:54:43', '2024-01-22 03:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `PolicyId` int(10) NOT NULL,
  `PolicyName` varchar(100) NOT NULL,
  `PolicyDetails` longtext NOT NULL,
  `PolicyActiveFrom` varchar(40) NOT NULL,
  `PolicyCreatedAt` varchar(40) NOT NULL,
  `PolicyUpdatedAt` varchar(40) NOT NULL,
  `PolicyCreatedBy` varchar(40) NOT NULL,
  `PolicyUpdatedBy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policy_applicable_on`
--

CREATE TABLE `company_policy_applicable_on` (
  `ApplicableId` int(100) NOT NULL,
  `PolicyMainId` varchar(100) NOT NULL,
  `ApplicableGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `ConfigsId` int(100) NOT NULL,
  `ConfigGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`ConfigsId`, `ConfigGroupName`) VALUES
(1, 'WORK_GROUP'),
(2, 'LEAD_STAGES'),
(5, 'PROJECT_TYPES'),
(6, 'LEAD_PERIORITY_LEVEL'),
(7, 'CALL_STATUS'),
(9, 'LEAD_SOURCES'),
(10, 'CALL_STATUS_SUB_FIELDS'),
(11, 'VISITOR_TYPES'),
(12, 'VISITOR_STATUS'),
(13, 'PLOT_AMITIES'),
(14, 'COMMERCIAL_AMITIES'),
(15, 'FLAT_AMITIES'),
(16, 'VILLA_AMITIES'),
(17, 'FORMHOUSE_AMITIES'),
(18, 'FARMHOUSE_AMITIES'),
(19, 'AGRICULTURE_AMITIES'),
(20, 'KOTHI_AMITIES');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `configurationsid` int(100) NOT NULL,
  `configurationname` varchar(50) NOT NULL,
  `configurationvalue` varchar(9999) NOT NULL,
  `configurationtype` varchar(30) NOT NULL DEFAULT 'text',
  `configurationsupportivetext` varchar(1000) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configurationsid`, `configurationname`, `configurationvalue`, `configurationtype`, `configurationsupportivetext`) VALUES
(1, 'APP_NAME', 'WEALTH-CHOICE', 'TEXT', 'null'),
(2, 'TAGLINE', 'APNA-LEAD', 'text', 'null'),
(3, 'OWNER_NAME', 'Navix Consultancy Services', 'text', 'null'),
(4, 'PRIMARY_PHONE', '-', 'phone', 'null'),
(5, 'PRIMARY_EMAIL', 'navix365@gmail.com', 'email', 'null'),
(6, 'SHORT_DESCRIPTION', 'SGFmRTUxOUNPOGd5VnBkcTlPandsa2I3djRaM00yZUg2ZUUySkEva3MwS3U0cnJadnJLai9sc0VyN3liSVdLVQ==', 'text', 'null'),
(7, 'PRIMARY_ADDRESS', 'N2w0bUJSKzBzK0RlemZpM2VPMExUUWFSMmJCTFJKb1EvUWxLUHU5UWk2SUtpRk1CditrbldtTXY2NGNaYkhBVEdmVlJOK1V1UmlQNGNLSWZNNlBpeDduWDB5a3hRRDBmQXhsSjU2MzRaYndERjdiSnZ1V1BwVWpXV1N2SkV3ZlptNFdVTDA1eEQ0UkFxdnE2R3NCc0F3PT0=', 'address', 'null'),
(8, 'PRIMARY_MAP_LOCATION_LINK', 'M3N6cEE1V0syMjBKWE9JamJ0d2dERVk0aGNLSGw4cW5SUjYyKzY1NWNvQzVtcmZuc1JkVS81dTRsbFZCaGFuU0ZTVDZ2N1hMNDVuVzNoV3ROaEErZGJRa2hzV2FJbDVjREpGZFo2OUZ0R0pKbnlkNUtuZzFVLzRqdmwycWhnYlZWd0ZGUThnMHA5VE9TdnYwYnpSblZSenlDbUJjNVdFc0xaZEd2Mng5NVBqVnlTYThjZitzaE5ZL04vdU4wdTZnQk1rS3FORnJhYVo5QVBTbzJHczhIaEJTcVgzMStoOHpDM1prRURkV0Z0UFJPMkcyalQ4Mit1Uk5tRWJYUzYrK091R1BkSVR1N3R4ZVpGUTJTSStoM0xCN2xJeko0NXVNMit4Ni9sdyt0M0t2TU45RG5GSXh4U0tmbjRqdzkxcUczNHFlNkhZZHV1SFZTZG9Yc2cwNEpSb0pnbFA5bmlkRk91aHJ2L2NxT0dWUGpTU1A4dEI1MWVOTDVnc05pZlhSYVlQbFdGbVZiQnlQOWk3UE54SFptYjlmUkQ2eEt4SFJhY1gwY1FKd0lXWT0=', 'map', 'null'),
(9, 'SENDER_MAIL_ID', 'navix365@gmail.com', 'email', 'null'),
(10, 'RECEIVER_MAIL', 'navix365@gmail.com', 'email', 'null'),
(11, 'REPLY_TO', 'not available', 'email', 'null'),
(12, 'SUPPORT_MAIL', 'navix365@gmail.com', 'email', 'null'),
(13, 'ENQUIRY_MAIL', 'navix365@gmail.com', 'email', 'null'),
(14, 'ADMIN_MAIL', 'navix365@gmail.com', 'text', 'null'),
(15, 'SMS_API_KEY', 'null', 'text', 'null'),
(16, 'DOWNLOAD_ANDROID_APP_LINK', 'not available', 'link', 'null'),
(17, 'DOWNLOAD_IOS_APP_LINK', 'DOMAIN', 'link', 'null'),
(18, 'DOWNLOAD_BROCHER_LINK', 'DOMAIN\r\n', 'link', 'null'),
(20, 'CONTROL_WORK_ENV', 'DEV', 'boolean', 'dev, prod'),
(21, 'CONTROL_SMS', 'false', 'boolean', 'true, false'),
(23, 'CONTROL_MAILS', 'true', 'boolean', 'true, false'),
(24, 'CONTROL_NOTIFICATION', 'true', 'boolean', 'true, false'),
(25, 'CONTROL_MSG_DISPLAY_TIME', '4500', 'number', '1000, 10000'),
(26, 'CONTROL_APP_LOGS', 'true', 'boolean', 'true, false'),
(27, 'APP_LOGO', 'WEALTH-CHOICE__28_Sep_2023_10_09_35_9524528563_.png', 'img', 'null'),
(28, 'SMS_OTP_TEMP_ID', 'null', 'text', 'null'),
(29, 'PASS_RESET_OTP_TEMP', 'null', 'text', 'null'),
(30, 'SMS_SENDER_ID', 'null', 'text', 'null'),
(31, 'PG_PROVIDER', 'RAZORAPAY', 'text', 'null'),
(32, 'PG_MODE', 'jhvjhdsbvj', 'text', 'null'),
(33, 'MERCHENT_ID', 'jbcjhbdbfm b', 'text', 'null'),
(34, 'MERCHANT_KEY', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf', 'text', 'null'),
(35, 'ONLINE_PAYMENT_OPTION', 'false', 'boolean', 'true, false'),
(36, 'CONTROL_NOTIFICATION_SOUND', 'true', 'boolean', 'true, false'),
(37, 'FINANCIAL_YEAR', 'September - August', 'text', 'null'),
(38, 'GST_NO', '06AALCR4165K1ZZ', 'text', 'null'),
(39, 'COMPANY_TYPE', 'PUBLISHING', 'text', 'null'),
(40, 'LOGIN_BG_IMAGE', 'ROOF_&_ASSETS_INFRA_Logo_26_Sep_2022_10_09_48_61750536552_.gif', 'text', 'null'),
(41, 'PRIMARY_AREA', 'M3RKYjIyemJJcnFXZ2xLdzZINzdMNVNqRVJFbkY2ZnpTQ1BmNFdQcUgrMD0=', 'text', 'null'),
(42, 'PRIMARY_CITY', 'Q1o2a0w2NEpQOEFLTHA3ZHdNYjh4UT09', 'text', 'null'),
(43, 'PRIMARY_STATE', 'Rm9nUDlDRTVkV20zWm8wMmEvMEpPZz09', 'text', 'null'),
(44, 'PRIMARY_COUNTRY', 'MmtSc3hhcXA1OU1mNjFaYUJ6VVhIZz09', 'text', 'null'),
(45, 'PRIMARY_PINCODE', 'RjV6emhnOUxVeC9ic29tQ25BV211QT09', 'text', 'null'),
(46, 'TAX_NO', 'DELA61323D1', 'text', 'null'),
(47, 'APP_THEME', 'facebook', 'text', 'null'),
(48, 'DEFAULT_RECORD_LISTING', '10', 'text', 'null'),
(49, 'WEBSITE', 'false', 'text', 'null'),
(50, 'APP', 'false', 'text', 'null'),
(51, 'MAX_ORDER_QTY', '', 'text', 'null'),
(52, 'MIN_ORDER_QTY', '', 'text', 'null'),
(53, 'GOOGLE_MAP_API', 'AIzaSyC2Xh8p7kp8B4VZWFonkjVvwfwmPT0A_Hw', 'text', 'null'),
(54, 'MINIMUM_ATTANDANCE_RANGE', '5', 'text', 'null'),
(55, 'OFFICE_START_TIME', '10:00', 'text', 'null'),
(56, 'OFFICE_MAX_START_TIME', '10:15', 'text', 'null'),
(57, 'OFFICE_HALF_DAY_ALLOWED', '16:30', 'text', 'null'),
(58, 'MAXIMUM_ALLOWED_LATE_CHECK_IN', '3', 'text', 'null'),
(59, 'OFFICE_LUNCH_START_TIME', '13:00', 'text', 'null'),
(60, 'OFFICE_END_TIME', '18:30', 'text', 'null'),
(61, 'SHORT_LEAVE_MAX_TIME', '16:30', 'text', 'null'),
(62, 'OFFICE_LUNCH_TIME_IN_MINUTES', '40', 'text', 'null'),
(63, 'WORKING_DAYS_IN_MONTH', '0', 'text', 'null'),
(64, 'AUTO_MONTHLY_PAYROLL_COSING_DATE', '', 'text', 'null'),
(65, 'MAXIMUM_SHORT_LEAVE_IN_MONTH', '3', 'text', 'null'),
(66, 'DEDUCTION_AMOUNT_ON_PER_LATE', '0', 'text', 'null'),
(67, 'EMP_CODE', 'WCI', 'text', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `config_holidays`
--

CREATE TABLE `config_holidays` (
  `ConfigHolidayid` int(10) NOT NULL,
  `ConfigHolidayName` varchar(100) NOT NULL,
  `ConfigHolidayFromDate` varchar(25) NOT NULL,
  `ConfigHolidayToDate` varchar(25) NOT NULL,
  `ConfigHolidayNotes` varchar(1000) NOT NULL,
  `ConfigHolidayMediaImage` varchar(1000) NOT NULL,
  `ConfigHolidayCreatedBy` varchar(25) NOT NULL,
  `ConfigHolidayMailStatus` varchar(10) NOT NULL,
  `ConfigHolidayCreatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_holidays`
--

INSERT INTO `config_holidays` (`ConfigHolidayid`, `ConfigHolidayName`, `ConfigHolidayFromDate`, `ConfigHolidayToDate`, `ConfigHolidayNotes`, `ConfigHolidayMediaImage`, `ConfigHolidayCreatedBy`, `ConfigHolidayMailStatus`, `ConfigHolidayCreatedAt`, `ConfigHolidayUpdatedAt`, `ConfigHolidayUpdatedBy`) VALUES
(5, 'Ram Navami', '2023-03-28', '', 'MEpLZVpSb1dndkNmVUJETHp5WDlGQlA2SG5oY3M2WUpuYjAxUHhrUWdKQT0=', '', '4', 'Active', '2023-03-28 04:12:52 PM', '2023-03-28 04:13:56 PM', 4),
(6, 'Rakshabandhan', '2023-08-30', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Inactive', '2023-08-29 02:31:37 pm', '2023-08-29 02:31:37 pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_locations`
--

CREATE TABLE `config_locations` (
  `config_location_id` int(10) NOT NULL,
  `config_location_name` varchar(25) NOT NULL,
  `config_location_address` varchar(255) NOT NULL,
  `config_location_Latitude` varchar(25) NOT NULL,
  `config_location_Longitude` varchar(25) NOT NULL,
  `config_location_status` int(1) NOT NULL,
  `config_location_created_at` varchar(25) NOT NULL,
  `config_location_updated_at` varchar(25) NOT NULL,
  `config_location_created_by` int(10) NOT NULL,
  `config_location_updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_locations`
--

INSERT INTO `config_locations` (`config_location_id`, `config_location_name`, `config_location_address`, `config_location_Latitude`, `config_location_Longitude`, `config_location_status`, `config_location_created_at`, `config_location_updated_at`, `config_location_created_by`, `config_location_updated_by`) VALUES
(1, 'NOIDA', 'L2pVb2Z2cjhxRVdYUUhlbmVIOHJpRXFRcG40bUhGL1FDUDZhMHp6U3d3OTgxNTlFV2l2R0NybzB5YkxTZnVKRg==', '28.627348', '77.380244', 1, '2023-05-10 05:09:48 pm', '2023-08-29 02:15:38 pm', 1, 1),
(2, 'GURGAON', 'bmwvMkt0VGRXMjZsY0FEaTdHODZ3YnpFNUIrb2FrbGVOQkdzQ2R0S0xrVklYY3NlVm5TK21CN3EzMjFhYTRsWnk5VXpSdnBPeVE5UTZET2RmNWhRMlM5WjNsVE1helZJc2xQK0lZbXpWK0U9', '28.6124729', '77.377668', 1, '2023-05-10 05:11:38 pm', '2023-08-26 06:01:55 pm', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_mail_sender`
--

CREATE TABLE `config_mail_sender` (
  `config_mail_sender_id` int(10) NOT NULL,
  `config_mail_sender_host` varchar(255) NOT NULL,
  `config_mail_sender_username` varchar(100) NOT NULL,
  `config_mail_sender_password` varchar(50) NOT NULL,
  `config_mail_sender_port` varchar(10) NOT NULL,
  `config_mail_sent_from` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_mail_sender`
--

INSERT INTO `config_mail_sender` (`config_mail_sender_id`, `config_mail_sender_host`, `config_mail_sender_username`, `config_mail_sender_password`, `config_mail_sender_port`, `config_mail_sent_from`) VALUES
(1, 'smtp.hostinger.com', 'no-reply@roofnassets.com', 'Navix@9810895713', '465', 'no-reply@roofnassets.com');

-- --------------------------------------------------------

--
-- Table structure for table `config_modules`
--

CREATE TABLE `config_modules` (
  `ConfigModuleId` int(100) NOT NULL,
  `ConfigModuleName` varchar(100) NOT NULL,
  `ConfigModuleCreatedAt` varchar(100) NOT NULL,
  `ConfigModuleUpdatedAt` varchar(100) NOT NULL,
  `ConfigModuleUpdatedBy` varchar(100) NOT NULL,
  `ConfigModuleCreatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_allowances`
--

CREATE TABLE `config_payroll_allowances` (
  `payroll_allowance_id` int(10) NOT NULL,
  `payroll_allowance_name` varchar(150) NOT NULL,
  `payroll_allowance_descriptions` varchar(10000) NOT NULL,
  `payroll_allowance_created_at` varchar(30) NOT NULL,
  `payroll_allowance_updated_at` varchar(30) NOT NULL,
  `payroll_allowance_created_by` int(10) NOT NULL,
  `payroll_allowance_updated_by` int(10) NOT NULL,
  `payroll_allowance_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_allowances`
--

INSERT INTO `config_payroll_allowances` (`payroll_allowance_id`, `payroll_allowance_name`, `payroll_allowance_descriptions`, `payroll_allowance_created_at`, `payroll_allowance_updated_at`, `payroll_allowance_created_by`, `payroll_allowance_updated_by`, `payroll_allowance_status`) VALUES
(2, 'Salary', '', '2023-07-04 11:23:32 am', '2023-07-04 11:23:32 am', 1, 1, 1),
(3, 'Support', '', '2023-08-26 06:06:20 pm', '2023-08-26 06:06:20 pm', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_allowance_for_users`
--

CREATE TABLE `config_payroll_allowance_for_users` (
  `payroll_allowance_for_emps_id` int(10) NOT NULL,
  `payroll_allowance_for_users_main_user_id` int(10) NOT NULL,
  `payroll_allowance_main_id` int(10) NOT NULL,
  `payroll_allowance_for_users_type` varchar(255) NOT NULL,
  `payroll_allowance_for_users_amount` int(10) NOT NULL,
  `payroll_allowance_for_users_pay_frequency` varchar(255) NOT NULL,
  `payroll_allowance_for_users_effective_date` varchar(40) NOT NULL,
  `payroll_allowance_for_users_created_at` varchar(40) NOT NULL,
  `payroll_allowance_for_users_created_by` int(10) NOT NULL,
  `payroll_allowance_for_users_updated_at` varchar(40) NOT NULL,
  `payroll_allowance_for_users_updated_by` int(10) NOT NULL,
  `payroll_allowance_for_users_status` varchar(10) NOT NULL,
  `payroll_allowance_for_users_notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_deductions`
--

CREATE TABLE `config_payroll_deductions` (
  `payroll_deduction_id` int(10) NOT NULL,
  `payroll_deducation_name` varchar(255) NOT NULL,
  `payroll_deduction_descriptions` varchar(1000) NOT NULL,
  `payroll_deduction_created_at` varchar(40) NOT NULL,
  `payroll_deduction_updated_at` varchar(40) NOT NULL,
  `payroll_deduction_created_by` int(10) NOT NULL,
  `payroll_deduction_updated_by` int(10) NOT NULL,
  `payroll_deduction_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_deductions`
--

INSERT INTO `config_payroll_deductions` (`payroll_deduction_id`, `payroll_deducation_name`, `payroll_deduction_descriptions`, `payroll_deduction_created_at`, `payroll_deduction_updated_at`, `payroll_deduction_created_by`, `payroll_deduction_updated_by`, `payroll_deduction_status`) VALUES
(1, 'Software Charges', '', '2023-07-04 11:10:27 am', '2023-07-04 11:10:27 am', 1, 1, 1),
(2, 'TDS', '', '2023-07-04 11:10:41 am', '2023-07-04 11:10:41 am', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_deductions_for_users`
--

CREATE TABLE `config_payroll_deductions_for_users` (
  `payroll_deductions_for_users_id` int(10) NOT NULL,
  `payroll_deductions_for_users_main_user_id` int(10) NOT NULL,
  `payroll_deductions_main_id` int(10) NOT NULL,
  `payroll_deductions_for_users_type` varchar(255) NOT NULL,
  `payroll_deductions_for_users_amount` int(10) NOT NULL,
  `payroll_deductions_for_users_effective_date` varchar(40) NOT NULL,
  `payroll_deductions_for_users_created_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_created_by` int(10) NOT NULL,
  `payroll_deductions_for_users_updated_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_updated_by` int(10) NOT NULL,
  `payroll_deductions_for_users_status` int(2) NOT NULL,
  `payroll_deductions_for_users_closed_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_closed_by` int(10) NOT NULL,
  `payroll_deductions_for_users_notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_pgs`
--

CREATE TABLE `config_pgs` (
  `ConfigPgId` int(100) NOT NULL,
  `ConfigPgProvider` varchar(100) NOT NULL,
  `ConfigPgMode` varchar(100) NOT NULL,
  `ConfigPgMerchantId` varchar(500) NOT NULL,
  `ConfigPgMerchantKey` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_pgs`
--

INSERT INTO `config_pgs` (`ConfigPgId`, `ConfigPgProvider`, `ConfigPgMode`, `ConfigPgMerchantId`, `ConfigPgMerchantKey`) VALUES
(1, 'RAZORAPAY', 'jhvjhdsbvj', 'jbcjhbdbfm b', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf'),
(2, 'PAYTM', 'DEV', 'HJvgh1gh3234jh4vgc3j4c3gh123', '#bkjbhv23h2v3gh232vghvc2gv3gh');

-- --------------------------------------------------------

--
-- Table structure for table `config_values`
--

CREATE TABLE `config_values` (
  `ConfigValueId` int(100) NOT NULL,
  `ConfigValueGroupId` varchar(100) NOT NULL,
  `ConfigValueDetails` varchar(100) NOT NULL,
  `ConfigReferenceId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_values`
--

INSERT INTO `config_values` (`ConfigValueId`, `ConfigValueGroupId`, `ConfigValueDetails`, `ConfigReferenceId`) VALUES
(15, '5', 'Retail Shops', ''),
(16, '5', 'Residential Plots', '0'),
(17, '5', 'Commercial Space', ''),
(18, '5', 'Farm House', ''),
(19, '5', 'Residential Villas', ''),
(21, '6', 'HIGH', ''),
(22, '6', 'MEDIUM', ''),
(23, '6', 'LOW', ''),
(33, '5', 'SCOs', ''),
(34, '1', 'BH', '0'),
(35, '1', 'TH', ''),
(36, '1', 'SM', ''),
(37, '2', 'FRESH LEAD', ''),
(38, '2', 'FOLLOW UP', ''),
(39, '2', 'JUNK', ''),
(40, '2', 'NOT INTERESTED', ''),
(41, '9', 'Facebook', ''),
(42, '9', 'Instagram', ''),
(43, '9', 'Google Ads', ''),
(44, '9', 'Trade India', ''),
(45, '9', 'India Mart', ''),
(46, '9', '99acre', ''),
(47, '9', 'Housing.in', ''),
(48, '9', 'Others', ''),
(49, '9', 'Self', '0'),
(50, '7', 'Follow Up', ''),
(51, '7', 'NOT Interested', ''),
(52, '7', 'Junk', ''),
(70, '10', 'INFORMATION SHARING', '50'),
(71, '10', 'SITE VISIT PLANNED', '50'),
(72, '10', 'CALL BACK', '50'),
(74, '10', 'SITE VISIT DONE', '50'),
(75, '10', 'LOCATION ISSUE', '51'),
(76, '10', 'BUDGET ISSUE', '51'),
(77, '10', 'JUST WANT AN INFOMRATION', '51'),
(78, '10', 'ALREADY INVESTED', '51'),
(79, '10', 'WRONG NUMBER', '52'),
(80, '10', 'NUMBER NOT UPTO THE MARK', '52'),
(81, '10', 'Others', '50'),
(82, '10', 'Others', '51'),
(83, '10', 'Others', '52'),
(84, '5', 'Residential Flats', '0'),
(85, '5', 'Residential- Low Rise', '0'),
(86, '5', 'Affordable Housing Projects', '0'),
(87, '1', 'Management', '0'),
(89, '10', 'Not Answered', '88'),
(90, '7', 'Sales Closed', '0'),
(91, '10', 'Close', '90'),
(92, '9', 'News Paper ad', '0'),
(93, '10', 'Not Picked', '50'),
(94, '7', 'Ringing', '0'),
(95, '2', 'Ringing', '0'),
(96, '10', 'Ringing', '94'),
(97, '11', 'General Enquiry', '0'),
(98, '11', 'IT Team', '0'),
(99, '11', 'Electrician', '0'),
(100, '11', 'Project Enquiry', '0'),
(101, '11', 'Site Visit', '0'),
(102, '11', 'Payment ', '0'),
(103, '11', 'Job &amp; Interview ', '0'),
(104, '11', 'Courier', '0'),
(111, '12', 'NEW', '0'),
(112, '12', 'Approved', '0'),
(113, '12', 'Please Wait', '0'),
(120, '2', 'Registration', '0'),
(121, '7', 'Registration done', '0'),
(122, '10', 'Registration done', '121'),
(123, '12', 'Selected', '0'),
(124, '12', 'Rejected', '0'),
(125, '7', 'Fresh Leads', '0'),
(126, '10', ' ', '125'),
(127, '0', 'WIFI', '0'),
(128, '14', 'WIFI', '0'),
(129, '14', 'AC', '0'),
(130, '14', 'CLEANING', '0'),
(131, '14', 'ELECTRICITY', '0'),
(132, '14', 'POWER BACK-UP', '0'),
(133, '13', 'Plot Amity-1', '0'),
(134, '13', 'Plot Amity-2', '0'),
(135, '13', 'Plot Amity-3', '0'),
(136, '15', 'Flat Amity-1', '0'),
(137, '15', 'Flat Amity-2', '0'),
(138, '15', 'Flat Amity-3', '0'),
(139, '16', 'Villa Amity-1', '0'),
(140, '16', 'Villa Amity-2', '0'),
(141, '16', 'Villa Amity-3', '0'),
(142, '17', 'Form House Amity-1', '0'),
(143, '17', 'Form House Amity-2', '0'),
(144, '17', 'Form House Amity-3', '0'),
(145, '18', 'FarmHouse Amity-1', '0'),
(146, '18', 'FarmHouse Amity-2', '0'),
(147, '19', 'agriculture amity-1', '0'),
(148, '19', 'agriculture amity-2', '0'),
(149, '20', 'Kothi Amity-1', '0'),
(150, '20', 'Kothi Amity-2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `creatives`
--

CREATE TABLE `creatives` (
  `CreativeId` int(10) NOT NULL,
  `CreativeName` varchar(100) NOT NULL,
  `CreativeOccasion` varchar(100) NOT NULL,
  `PostedOn` varchar(100) NOT NULL,
  `UploadCreative` varchar(1000) NOT NULL,
  `CreatedOn` varchar(100) NOT NULL,
  `ExecutionDate` varchar(100) NOT NULL,
  `CreatedAt` varchar(40) NOT NULL,
  `UpdatedAt` varchar(40) NOT NULL,
  `CreatedBy` int(10) NOT NULL,
  `UpdatedBy` int(10) NOT NULL,
  `CreativeNotes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerId` int(10) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerRelationName` varchar(100) NOT NULL,
  `CustomerPhoneNumber` varchar(100) NOT NULL,
  `CustomerEmailId` varchar(100) NOT NULL,
  `CustomerBirthdate` varchar(100) NOT NULL,
  `CustomerCreatedBy` varchar(10) NOT NULL,
  `CustomerUpdatedBy` varchar(10) NOT NULL,
  `CustomerCreatedAt` varchar(40) NOT NULL,
  `CustomerUpdatedAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `CustAddressId` int(10) NOT NULL,
  `CustomerMainId` int(100) NOT NULL,
  `CustomerStreetAddress` varchar(500) NOT NULL,
  `CustomerAreaLocality` varchar(100) NOT NULL,
  `CustomerCity` varchar(100) NOT NULL,
  `CustomerState` varchar(100) NOT NULL,
  `CustomerCountry` varchar(100) NOT NULL,
  `CustomerPincode` varchar(10) NOT NULL,
  `CustAddressIfDefault` varchar(10) NOT NULL,
  `CustomerAddressType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_address_details`
--

CREATE TABLE `customer_co_address_details` (
  `CustomerCoAddressId` int(10) NOT NULL,
  `MainCoCustomerId` int(10) NOT NULL,
  `CoCustomerStreetAddress` varchar(1000) NOT NULL,
  `CoCustomerAreaLocality` varchar(500) NOT NULL,
  `CoCustomerCity` varchar(100) NOT NULL,
  `CoCustomerState` varchar(150) NOT NULL,
  `CoCustomerCountry` varchar(100) NOT NULL,
  `CoCustomerPincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_details`
--

CREATE TABLE `customer_co_details` (
  `CustCoId` int(10) NOT NULL,
  `MainCustomerId` varchar(100) NOT NULL,
  `CoCustomerName` varchar(100) NOT NULL,
  `CoCustomerRelationName` varchar(100) NOT NULL,
  `CoCustomerPhoneNumber` varchar(100) NOT NULL,
  `CoCustomerEmailId` varchar(100) NOT NULL,
  `CoCustomerCreatedAt` varchar(40) NOT NULL,
  `CoCustomerUpdatedAt` varchar(40) NOT NULL,
  `CuCustomerCreatedBy` varchar(40) NOT NULL,
  `CoCustomerUpdatedBy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_documents`
--

CREATE TABLE `customer_co_documents` (
  `CustomerCoDocId` int(10) NOT NULL,
  `CustomerCoMainId` int(10) NOT NULL,
  `CustomerCoDocName` varchar(100) NOT NULL,
  `CustomerCoDocNo` varchar(100) NOT NULL,
  `CustomerCoFile` varchar(1000) NOT NULL,
  `CustomerCoUploadedAt` varchar(100) NOT NULL,
  `CustomerUploadedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_documents`
--

CREATE TABLE `customer_documents` (
  `CustomerDocumentId` int(10) NOT NULL,
  `CustomerMainId` varchar(10) NOT NULL,
  `CustomerDocmentType` varchar(100) NOT NULL,
  `CustomerDocumentName` varchar(100) NOT NULL,
  `CustomerDocumentNo` varchar(1000) NOT NULL,
  `CustomerDocumentAttachement` varchar(1000) NOT NULL,
  `CustomerDocUploadedAt` varchar(40) NOT NULL,
  `CustomerDocumentUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_nominees`
--

CREATE TABLE `customer_nominees` (
  `CustNomineeId` int(10) NOT NULL,
  `CustomerMainId` int(10) NOT NULL,
  `CustNomRelation` varchar(100) NOT NULL,
  `CustNomFullName` varchar(100) NOT NULL,
  `CustNomPhoneNumber` varchar(100) NOT NULL,
  `CustNomEmailId` varchar(100) NOT NULL,
  `CustNomStreetAdress` varchar(500) NOT NULL,
  `CustNomAreaLocality` varchar(100) NOT NULL,
  `CustNomCity` varchar(100) NOT NULL,
  `CustNomState` varchar(100) NOT NULL,
  `CustNomCountry` varchar(100) NOT NULL,
  `CustNomPincode` varchar(100) NOT NULL,
  `CustNomDateofbirth` varchar(100) NOT NULL,
  `CustNomCreatedAt` varchar(100) NOT NULL,
  `CustNomUpdatedAt` varchar(100) NOT NULL,
  `CustNomCreatedBy` varchar(100) NOT NULL,
  `CustNomUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_notifications`
--

CREATE TABLE `customer_notifications` (
  `CustomerNotificationId` int(100) NOT NULL,
  `CustomerMainId` int(10) NOT NULL,
  `CustNotificationSubject` varchar(200) NOT NULL,
  `CustNotificationDetails` longtext NOT NULL,
  `CustNotificationDate` varchar(40) NOT NULL,
  `CustNotificationStatus` varchar(40) NOT NULL,
  `CustNotificationCreatedBy` varchar(10) NOT NULL,
  `CustNotificationCreatedAt` varchar(40) NOT NULL,
  `CustNotificationUpdatedAt` varchar(40) NOT NULL,
  `CustNotificationReadAt` varchar(10) NOT NULL,
  `CustNotificationSendStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `DataId` int(11) NOT NULL,
  `DataPersonFullname` varchar(50) NOT NULL,
  `DataSalutations` varchar(25) NOT NULL,
  `DataPersonPhoneNumber` varchar(12) NOT NULL,
  `DataPersonEmailId` varchar(60) NOT NULL,
  `DataPersonAddress` varchar(150) NOT NULL,
  `DataPersonCreatedAt` datetime NOT NULL,
  `DataPersonLastUpdatedAt` datetime NOT NULL,
  `DataPersonCreatedBy` int(11) NOT NULL,
  `DataPersonManagedBy` int(11) NOT NULL,
  `DataPersonStatus` varchar(50) NOT NULL,
  `DataPriorityLevel` varchar(30) NOT NULL,
  `DataPersonNotes` text NOT NULL,
  `DataPersonSource` varchar(30) NOT NULL,
  `DataPersonSubStatus` varchar(50) NOT NULL,
  `DataType` varchar(50) NOT NULL,
  `DataUploadId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`DataId`, `DataPersonFullname`, `DataSalutations`, `DataPersonPhoneNumber`, `DataPersonEmailId`, `DataPersonAddress`, `DataPersonCreatedAt`, `DataPersonLastUpdatedAt`, `DataPersonCreatedBy`, `DataPersonManagedBy`, `DataPersonStatus`, `DataPriorityLevel`, `DataPersonNotes`, `DataPersonSource`, `DataPersonSubStatus`, `DataType`, `DataUploadId`) VALUES
(1, 'ROBOT 1', '', '983987321', 'email@gamil.com', 'sector 3', '2024-01-16 04:43:48', '2024-01-16 04:43:48', 1, 156, 'FRESH DATA', 'HIGH', '', 'facebook', '', 'DATA', 0),
(2, 'ROBOT 2', '', '72987973', 'email@gamil.com', 'sector 4', '2024-01-19 03:17:41', '2024-01-19 05:12:00', 1, 156, 'Registration done', 'HIGH', '', 'google', 'Registration done', 'DATA', 0),
(3, 'ROBOT 3', '', '928173981', 'email@gamil.com', 'sector 5', '2024-01-19 03:44:21', '2024-01-19 04:25:15', 1, 157, 'Junk', 'HIGH', '', 'instagram', 'WRONG NUMBER', 'DATA', 0),
(4, 'Akash', 'Mr.', '8423983200', 'email@gamil.com', '', '2024-01-19 03:44:21', '2024-01-20 03:33:20', 1, 1, 'Fresh Leads', 'HIGH', 'MEVFZENhV0luQ1pUT09aQVFyUmVEUT09', 'Self', '', 'DATA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_leads`
--

CREATE TABLE `data_leads` (
  `DataId` int(15) NOT NULL,
  `DataPersonFullname` varchar(50) NOT NULL,
  `DataSalutations` varchar(30) NOT NULL,
  `DataPersonPhoneNumber` varchar(20) NOT NULL,
  `DataPersonEmailId` varchar(60) NOT NULL,
  `DataPersonAddress` varchar(100) NOT NULL,
  `DataPersonCreatedAt` datetime NOT NULL,
  `DataPersonLastUpdatedAt` datetime NOT NULL,
  `DataPersonCreatedBy` int(8) NOT NULL,
  `DataPersonManagedBy` int(8) NOT NULL,
  `DataPersonStatus` varchar(30) NOT NULL,
  `DataPriorityLevel` varchar(30) NOT NULL,
  `DataPersonNotes` varchar(100) NOT NULL,
  `DataPersonSource` varchar(20) NOT NULL,
  `DataPersonSubStatus` varchar(30) NOT NULL,
  `DataType` varchar(30) NOT NULL,
  `DataUploadId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_lead_followups`
--

CREATE TABLE `data_lead_followups` (
  `DataFollowUpId` int(100) NOT NULL,
  `DataFollowMainId` varchar(100) DEFAULT NULL,
  `DataUploadId` bigint(255) DEFAULT NULL,
  `DataFollowStatus` varchar(100) NOT NULL,
  `DataCallStatus` varchar(255) DEFAULT NULL,
  `DataFollowCurrentStatus` varchar(100) NOT NULL,
  `DataFollowUpDate` varchar(100) NOT NULL,
  `DataFollowUpTime` varchar(100) NOT NULL,
  `DataFollowUpDescriptions` varchar(1000) NOT NULL,
  `DataFollowUpHandleBy` varchar(100) NOT NULL,
  `DataFollowUpCreatedAt` varchar(100) NOT NULL,
  `DataFollowUpCallType` varchar(100) NOT NULL,
  `DataFollowUpRemindStatus` varchar(1000) NOT NULL,
  `DataFollowUpRemindNotes` varchar(1000) NOT NULL,
  `DataFollowUpUpdatedAt` varchar(100) NOT NULL,
  `activity_timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_lead_followups`
--

INSERT INTO `data_lead_followups` (`DataFollowUpId`, `DataFollowMainId`, `DataUploadId`, `DataFollowStatus`, `DataCallStatus`, `DataFollowCurrentStatus`, `DataFollowUpDate`, `DataFollowUpTime`, `DataFollowUpDescriptions`, `DataFollowUpHandleBy`, `DataFollowUpCreatedAt`, `DataFollowUpCallType`, `DataFollowUpRemindStatus`, `DataFollowUpRemindNotes`, `DataFollowUpUpdatedAt`, `activity_timestamp`) VALUES
(1, '', NULL, 'Ringing', NULL, 'Ringing', '', '', 'Ringing', '1', '2024-01-20 04:31:56 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 04:31:56 PM', '2024-01-20 16:31:56'),
(2, '', NULL, 'Ringing', NULL, 'Ringing', '', '', 'Ringing', '1', '2024-01-20 04:33:06 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 04:33:06 PM', '2024-01-20 16:33:06'),
(3, '3', NULL, 'Ringing', NULL, 'Ringing', '', '', 'sd', '1', '2024-01-20 05:24:09 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:24:09 PM', '2024-01-20 17:24:09'),
(4, '3', NULL, 'Ringing', NULL, 'Ringing', '', '', 'sd', '1', '2024-01-20 05:26:22 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:26:22 PM', '2024-01-20 17:26:22'),
(5, '3', NULL, 'Junk', NULL, 'WRONG NUMBER', '', '', 'wrong number', '1', '2024-01-20 05:28:58 PM', 'outgoing', 'NONE', '', '2024-01-20 05:28:58 PM', '2024-01-20 17:28:58'),
(7, '', NULL, 'Junk', NULL, 'NUMBER NOT UPTO THE MARK', '', '', 'assdd', '1', '2024-01-20 05:50:03 PM', 'outgoing', 'NONE', '', '2024-01-20 05:50:03 PM', '2024-01-20 17:50:03'),
(8, '4', NULL, 'Registration done', NULL, 'Registration done', '', '', 'sc', '1', '2024-01-20 05:51:51 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:51:51 PM', '2024-01-20 17:51:51'),
(9, '2', NULL, 'NOT Interested', NULL, 'JUST WANT AN INFOMRATION', '', '', 'information share', '1', '2024-01-20 05:52:25 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:52:25 PM', '2024-01-20 17:52:25'),
(10, '2', NULL, '0', NULL, '', '', '', 'sdsv', '1', '2024-01-20 05:52:44 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:52:44 PM', '2024-01-20 17:52:44'),
(11, '2', NULL, 'Fresh Leads', NULL, ' ', '', '', '', '1', '2024-01-20 05:53:07 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:53:07 PM', '2024-01-20 17:53:07'),
(12, '2', NULL, 'FRESH DATA', NULL, '', '', '', 'sdv', '1', '2024-01-20 05:55:16 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:55:16 PM', '2024-01-20 17:55:16'),
(13, '2', NULL, '121', NULL, 'Registration done', '', '', 'asdf', '1', '2024-01-20 05:55:25 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:55:25 PM', '2024-01-20 17:55:25'),
(14, '4', NULL, 'FRESH DATA', NULL, '', '', '', 'ygjh', '1', '2024-01-20 05:57:05 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:57:05 PM', '2024-01-20 17:57:06'),
(15, '4', NULL, '94', NULL, 'Ringing', '', '', 'gf', '1', '2024-01-20 05:57:17 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:57:17 PM', '2024-01-20 17:57:17'),
(16, '4', NULL, '121', NULL, 'Registration done', '', '', 'd', '1', '2024-01-20 05:58:12 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 05:58:12 PM', '2024-01-20 17:58:12'),
(17, '4', NULL, 'FRESH DATA', NULL, '', '', '', 'uyf', '1', '2024-01-20 06:02:32 PM', 'outgoing', 'INACTIVE', '', '2024-01-20 06:02:32 PM', '2024-01-20 18:02:32'),
(18, '4', NULL, 'Fresh Leads', NULL, '', '', '', 'ftf', '1', '2024-01-20 06:02:40 PM', 'outgoing', 'NONE', '', '2024-01-20 06:02:40 PM', '2024-01-20 18:02:40'),
(19, '2', NULL, 'Registration done', NULL, 'Registration done', '', '', 'rth', '1', '2024-01-20 06:02:51 PM', 'outgoing', 'NONE', '', '2024-01-20 06:02:51 PM', '2024-01-20 18:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `data_lead_followup_durations`
--

CREATE TABLE `data_lead_followup_durations` (
  `DatacallId` int(10) NOT NULL,
  `DataCallFollowUpMainId` int(10) NOT NULL,
  `Datacallstartat` varchar(45) NOT NULL,
  `Datacallendat` varchar(45) NOT NULL,
  `Datacallcreatedat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_lead_followup_durations`
--

INSERT INTO `data_lead_followup_durations` (`DatacallId`, `DataCallFollowUpMainId`, `Datacallstartat`, `Datacallendat`, `Datacallcreatedat`) VALUES
(1, 4, '2024-01-20 05:23:54 pm', '2024-01-20 05:26:22 PM', '2024-01-20 05:26:22 PM'),
(2, 5, '2024-01-20 05:28:42 pm', '2024-01-20 05:28:58 PM', '2024-01-20 05:28:58 PM'),
(3, 6, '2024-01-20 05:48:50 pm', '2024-01-20 05:49:09 PM', '2024-01-20 05:49:09 PM'),
(4, 7, '2024-01-20 05:49:52 pm', '2024-01-20 05:50:03 PM', '2024-01-20 05:50:03 PM'),
(5, 8, '2024-01-20 05:51:42 pm', '2024-01-20 05:51:51 PM', '2024-01-20 05:51:51 PM'),
(6, 9, '2024-01-20 05:52:11 pm', '2024-01-20 05:52:25 PM', '2024-01-20 05:52:25 PM'),
(7, 10, '2024-01-20 05:52:35 pm', '2024-01-20 05:52:44 PM', '2024-01-20 05:52:44 PM'),
(8, 11, '2024-01-20 05:52:58 pm', '2024-01-20 05:53:07 PM', '2024-01-20 05:53:07 PM'),
(9, 12, '2024-01-20 05:55:09 pm', '2024-01-20 05:55:16 PM', '2024-01-20 05:55:16 PM'),
(10, 13, '2024-01-20 05:55:18 pm', '2024-01-20 05:55:25 PM', '2024-01-20 05:55:25 PM'),
(11, 14, '2024-01-20 05:56:58 pm', '2024-01-20 05:57:05 PM', '2024-01-20 05:57:05 PM'),
(12, 15, '2024-01-20 05:57:08 pm', '2024-01-20 05:57:17 PM', '2024-01-20 05:57:17 PM'),
(13, 16, '2024-01-20 05:57:59 pm', '2024-01-20 05:58:12 PM', '2024-01-20 05:58:12 PM'),
(14, 17, '2024-01-20 06:02:26 pm', '2024-01-20 06:02:32 PM', '2024-01-20 06:02:32 PM'),
(15, 18, '2024-01-20 06:02:34 pm', '2024-01-20 06:02:40 PM', '2024-01-20 06:02:40 PM'),
(16, 19, '2024-01-20 06:02:43 pm', '2024-01-20 06:02:51 PM', '2024-01-20 06:02:51 PM');

-- --------------------------------------------------------

--
-- Table structure for table `data_lead_requirements`
--

CREATE TABLE `data_lead_requirements` (
  `DataRequirementID` int(10) NOT NULL,
  `DataMainId` int(10) NOT NULL,
  `DataRequirementDetails` varchar(200) NOT NULL,
  `DataRequirementCreatedAt` varchar(100) NOT NULL,
  `DataRequirementStatus` varchar(100) NOT NULL,
  `DataRequirementNotes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_lead_requirements`
--

INSERT INTO `data_lead_requirements` (`DataRequirementID`, `DataMainId`, `DataRequirementDetails`, `DataRequirementCreatedAt`, `DataRequirementStatus`, `DataRequirementNotes`) VALUES
(1, 4, '6', '2024-01-16 04:41:07 PM', '1', ''),
(2, 1, '27', '2024-01-16 04:43:48 PM', '1', ''),
(3, 2, '25', '2024-01-19 03:17:41 PM', '1', ''),
(4, 3, '28', '2024-01-19 03:44:21 PM', '1', ''),
(5, 4, '6', '2024-01-19 03:44:21 PM', '1', ''),
(6, 5, '25', '2024-01-19 03:47:42 PM', '1', ''),
(7, 6, '6', '2024-01-19 03:47:42 PM', '1', ''),
(8, 7, '25', '2024-01-19 03:56:07 PM', '1', ''),
(9, 8, '25', '2024-01-19 03:56:07 PM', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_lead_uploads`
--

CREATE TABLE `data_lead_uploads` (
  `DataUploadId` int(100) NOT NULL,
  `DataUploadBy` varchar(100) NOT NULL,
  `DataUploadedfor` varchar(100) NOT NULL,
  `DataName` varchar(100) NOT NULL,
  `DataEmail` varchar(100) NOT NULL,
  `DataPhone` varchar(100) NOT NULL,
  `DataAddress` varchar(100) NOT NULL,
  `DataCity` varchar(100) NOT NULL,
  `DataProfession` varchar(100) NOT NULL,
  `DataSource` varchar(100) NOT NULL,
  `UploadedOn` varchar(1000) NOT NULL,
  `DataStatus` varchar(100) NOT NULL,
  `DataProjectsRef` varchar(100) NOT NULL,
  `LeadType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_lead_uploads`
--

INSERT INTO `data_lead_uploads` (`DataUploadId`, `DataUploadBy`, `DataUploadedfor`, `DataName`, `DataEmail`, `DataPhone`, `DataAddress`, `DataCity`, `DataProfession`, `DataSource`, `UploadedOn`, `DataStatus`, `DataProjectsRef`, `LeadType`) VALUES
(1, '1', '1', 'ROBOT 1', 'email@gamil.com', '983987321', 'sector 3', 'faridabad', 'web', 'facebook', '2024-01-16 04:43:32 PM', 'TRANSFERRED', '25', 'DATA'),
(2, '1', '1', 'ROBOT 2', 'email@gamil.com', '72987973', 'sector 4', 'faridabad', 'web', 'google', '2024-01-16 04:43:32 PM', 'TRANSFERRED', '25', 'DATA'),
(3, '1', '1', 'ROBOT 3', 'email@gamil.com', '928173981', 'sector 5', 'faridabad', 'web', 'instagram', '2024-01-16 04:43:32 PM', 'TRANSFERRED', '25', 'DATA'),
(4, '1', '1', 'ROBOT 4', 'email@gamil.com', '84239832', 'sector 6', 'faridabad', 'web', '99acre', '2024-01-16 04:43:32 PM', 'TRANSFERRED', '25', 'DATA');

-- --------------------------------------------------------

--
-- Table structure for table `data_transfer`
--

CREATE TABLE `data_transfer` (
  `transferId` bigint(20) NOT NULL,
  `transferBy` varchar(255) NOT NULL,
  `transferAt` varchar(255) NOT NULL,
  `leadsUploadId` varchar(255) NOT NULL,
  `transferStatus` varchar(255) NOT NULL,
  `transferLevel` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expanses`
--

CREATE TABLE `expanses` (
  `ExpansesId` bigint(100) NOT NULL,
  `ExpanseName` varchar(200) NOT NULL,
  `ExpanseCategory` varchar(200) NOT NULL,
  `ExpanseTags` varchar(200) NOT NULL,
  `ExpanseAmount` int(10) NOT NULL,
  `ExpanseDescription` varchar(10000) NOT NULL,
  `ExpanseCreatedBy` varchar(100) NOT NULL,
  `ExpanseCreatedFor` varchar(100) NOT NULL,
  `ExpanseDate` varchar(100) NOT NULL,
  `ExpanseCreatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedBy` varchar(100) NOT NULL,
  `ExpanseReceiptAttachment` varchar(1000) NOT NULL,
  `ExpansePaidStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `LeadsId` int(10) NOT NULL,
  `LeadPersonFullname` varchar(100) NOT NULL,
  `LeadSalutations` varchar(1000) NOT NULL,
  `LeadPersonPhoneNumber` varchar(100) NOT NULL,
  `LeadPersonEmailId` varchar(200) NOT NULL,
  `LeadPersonAddress` varchar(1000) NOT NULL,
  `LeadPersonCreatedAt` varchar(100) NOT NULL,
  `LeadPersonLastUpdatedAt` varchar(100) NOT NULL,
  `LeadPersonCreatedBy` varchar(100) NOT NULL,
  `LeadPersonManagedBy` varchar(100) NOT NULL,
  `LeadPersonStatus` varchar(100) NOT NULL,
  `LeadPriorityLevel` varchar(100) NOT NULL,
  `LeadPersonNotes` varchar(10000) NOT NULL,
  `LeadPersonSource` varchar(1000) NOT NULL,
  `LeadPersonSubStatus` varchar(100) NOT NULL,
  `LeadType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`LeadsId`, `LeadPersonFullname`, `LeadSalutations`, `LeadPersonPhoneNumber`, `LeadPersonEmailId`, `LeadPersonAddress`, `LeadPersonCreatedAt`, `LeadPersonLastUpdatedAt`, `LeadPersonCreatedBy`, `LeadPersonManagedBy`, `LeadPersonStatus`, `LeadPriorityLevel`, `LeadPersonNotes`, `LeadPersonSource`, `LeadPersonSubStatus`, `LeadType`) VALUES
(1, 'Gaurav Singh', 'Mr.', '8447572565', 'gauravsinghigc@gmail.com', '', '2024-01-22 03:54:43 PM', '2024-01-22 03:59:13 PM', '1', '159', 'FRESH LEAD', 'HIGH', 'K0tHM3BIR1owOFM2Yll4NGlLYVJXU0wxcEZHb2xpWFpMKzRBelBzSHRXRXJUNnNuZHB0ek1EV2hDUURFajdMSw==', 'Facebook', '', 'COMMERCIAL');

-- --------------------------------------------------------

--
-- Table structure for table `lead_followups`
--

CREATE TABLE `lead_followups` (
  `LeadFollowUpId` int(100) NOT NULL,
  `LeadFollowMainId` varchar(100) NOT NULL,
  `LeadFollowStatus` varchar(100) NOT NULL,
  `LeadFollowCurrentStatus` varchar(100) NOT NULL,
  `LeadFollowUpDate` varchar(100) NOT NULL,
  `LeadFollowUpTime` varchar(100) NOT NULL,
  `LeadFollowUpDescriptions` varchar(1000) NOT NULL,
  `LeadFollowUpHandleBy` varchar(100) NOT NULL,
  `LeadFollowUpCreatedAt` varchar(100) NOT NULL,
  `LeadFollowUpCallType` varchar(100) NOT NULL,
  `LeadFollowUpRemindStatus` varchar(1000) NOT NULL,
  `LeadFollowUpRemindNotes` varchar(1000) NOT NULL,
  `LeadFollowUpUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_followup_durations`
--

CREATE TABLE `lead_followup_durations` (
  `leadcallId` int(10) NOT NULL,
  `LeadCallFollowUpMainId` int(10) NOT NULL,
  `leadcallstartat` varchar(45) NOT NULL,
  `leadcallendat` varchar(45) NOT NULL,
  `leadcallcreatedat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_requirements`
--

CREATE TABLE `lead_requirements` (
  `LeadRequirementID` int(10) NOT NULL,
  `LeadMainId` int(10) NOT NULL,
  `LeadRequirementDetails` varchar(200) NOT NULL,
  `LeadRequirementCreatedAt` varchar(100) NOT NULL,
  `LeadRequirementStatus` varchar(100) NOT NULL,
  `LeadRequirementNotes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_requirements`
--

INSERT INTO `lead_requirements` (`LeadRequirementID`, `LeadMainId`, `LeadRequirementDetails`, `LeadRequirementCreatedAt`, `LeadRequirementStatus`, `LeadRequirementNotes`) VALUES
(1, 1, '25', '2024-01-22 03:54:43 PM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lead_uploads`
--

CREATE TABLE `lead_uploads` (
  `leadsUploadId` int(100) NOT NULL,
  `LeadsUploadBy` varchar(100) NOT NULL,
  `LeadsUploadedfor` varchar(100) NOT NULL,
  `LeadsName` varchar(100) NOT NULL,
  `LeadsEmail` varchar(100) NOT NULL,
  `LeadsPhone` varchar(100) NOT NULL,
  `LeadsAddress` varchar(100) NOT NULL,
  `LeadsCity` varchar(100) NOT NULL,
  `LeadsProfession` varchar(100) NOT NULL,
  `LeadsSource` varchar(100) NOT NULL,
  `UploadedOn` varchar(1000) NOT NULL,
  `LeadStatus` varchar(100) NOT NULL,
  `LeadProjectsRef` varchar(100) NOT NULL,
  `LeadType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_collaterals`
--

CREATE TABLE `marketing_collaterals` (
  `MarketingCoId` int(100) NOT NULL,
  `MarketingCoProjectName` varchar(100) NOT NULL,
  `MaterialName` varchar(100) NOT NULL,
  `AllotmentDate` varchar(40) NOT NULL,
  `NumberOfMarketingMaterial` varchar(50) NOT NULL,
  `IssuedTo` varchar(100) NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `NoteAndRemarks` varchar(1000) NOT NULL,
  `CreatedAt` varchar(50) NOT NULL,
  `UpdatedAt` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `UpdatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newspapercompaigns`
--

CREATE TABLE `newspapercompaigns` (
  `NewCompaignId` int(10) NOT NULL,
  `NewsPaperName` varchar(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `CompaignDate` varchar(100) NOT NULL,
  `NewPaperEditions` varchar(100) NOT NULL,
  `NewPaperAdSize` varchar(100) NOT NULL,
  `PublicationDate` varchar(100) NOT NULL,
  `PublicationCost` varchar(100) NOT NULL,
  `UploadCreative` varchar(100) NOT NULL,
  `ContactPersonName` varchar(100) NOT NULL,
  `ContactPersonPhoneNumber` varchar(20) NOT NULL,
  `NewsPaperLink` varchar(1000) NOT NULL,
  `CreatedAt` varchar(100) NOT NULL,
  `UpdatedAt` varchar(100) NOT NULL,
  `CreatedBy` varchar(10) NOT NULL,
  `UpdatedBy` varchar(10) NOT NULL,
  `PublicationNotes` varchar(10000) NOT NULL,
  `CompaignStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationsId` bigint(100) NOT NULL,
  `NotificationRefNo` varchar(100) NOT NULL,
  `NotificationSenderId` int(10) NOT NULL,
  `NotificationReceiverId` int(10) NOT NULL,
  `NotificationDetails` varchar(10000) NOT NULL,
  `NotificationSendDateTime` varchar(30) NOT NULL,
  `NotificationStatus` varchar(10) NOT NULL,
  `NotificationReadAt` varchar(25) NOT NULL,
  `NotificationResponseModule` varchar(1000) NOT NULL,
  `NotificationName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NotificationsId`, `NotificationRefNo`, `NotificationSenderId`, `NotificationReceiverId`, `NotificationDetails`, `NotificationSendDateTime`, `NotificationStatus`, `NotificationReadAt`, `NotificationResponseModule`, `NotificationName`) VALUES
(1, '#ALERT23022359719', 88, 1, 'NE5Ycld2QW9qcXp5cVdZMTRDNTFMV29Lc0F1WDBjMnloRmJhN1l6aGJvdHpheit5WnlYL1ZwREhsVnlvcWozeTVHeVFXd2tSY2dQYmFSNkJZUjhPV2pKVkZqT0J6T25Zdmx4M2x4MU85Z1RQTkt2ME1ONEpDYXZacTJHNGk2cTlxUEpZeXNZZDN5RkFrNFNWY3AzRWxiSWdLMHoxNW5HYUpER1ZqdC9aQkVVPQ==', '2023-02-23 04:23:15 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(2, '#ALERT23022325129', 14, 1, 'bXlTeG41Wi9pam5WZGdMZTR2NWtEZU9vNm1qZnZZb0poQittbCtXRmNybnM0SDN2NUR0eFJ4T01vdEsxNElJcVc2WktlbG45NC83SGNzWnZ6WXB5T000VzRQWkZJdFVZaDhwbzdSUjNOUUJzRE10Z1VGOUlOQW82NUdXWDVlZFdwRlJuTFU5L0hKc1U1K0JMRHc2WTJMSXpnUmpiYTVncWwyd25wWVh3SjRJPQ==', '2023-02-23 04:47:17 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(3, '#ALERT23022340056', 91, 11, 'TzhsNllSMWlWaUFTRmNFZ1FBL2F1YmdVU0Z5OUxURUtmc1B5YThndDhGUFFrdGtxdjhNRjZuZXk1Sm9YeFB1NjNuV3VsWWVFKzhQYzAzR2dHK2pyM0xDbEJmTThPOE5GaGE4RFhxM0NjY1lUMmg5THUzTHRNdll6aTlPZjJJeUdIUW1pakoyd0RvblpRcU1mejVwUFBHUHJWNGxLa2FoQ3JyMEhNNTRDTnNvNnRVb0lOYk41ZEdYZ2N4L1piNGp6', '2023-02-23 05:06:19 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(4, '#ALERT2302233925', 75, 1, 'MzUvS0szU2ZBM0tZVHlDeUxYWDZPNFZmbVhLb0h0Q0NpWjlRWkNoaHhwMW1iTER0WStab3BxK3hZY1d0YksxWSs3N21Ld09yTkNBZi9CWWpkOWRKeG0rY1JpMGNlSXczTWVUWkhrNzV5T3ZJcnhnZ2E4YXpmY1U1SzQ3WXdKVHA0YVp2aDdzc3N6dUo1NGlJUk90RHY5MHJINE1PNmNCNGhqazNmZGJwckZaRkZMWGFZdVlDYll6TEhqdHNZL21IY2NTcTk5bG1lUTErRXF2czRRc0VFdz09', '2023-02-23 06:44:12 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(5, '#ALERT2402237889', 72, 1, 'Zi80ZW5VUFFzaGZLRHppMGxYenBNb0k5dnd6cjZySDNXUndlRk00WjIzcjR2ZWgzOE5DZ3NSZnlCejRlTjAwL2pMeUt2enBHcmlxRmg4NEpNR3dhSWhpbmVXelNhdE5EcmphVTNIcFZoZ3lxQUVqWGxoY1ZIZjNKQ0paTkdWVEEyQm8vOGhsV0taTmhyVWY3WmQ0NDBYNENIa2RoTnIvbUJRSEZNMVdrVEVJPQ==', '2023-02-24 02:58:31 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(6, '#ALERT11032350226', 91, 11, 'TzhsNllSMWlWaUFTRmNFZ1FBL2F1YmdVU0Z5OUxURUtmc1B5YThndDhGUFFrdGtxdjhNRjZuZXk1Sm9YeFB1Nm5nS0dNKzBTZEQ4MXQ1MW80MXNZSHAxcDI0U21TdlRWVjVPdzRxV2d0SHN3UjVnRkcvc21LbzRoeVFaVkVrY1I1d2orTkRHeUtJTTBZajVZd2JKNndkblp1TER2Y2RJVkZLbjNMYkplTHlQR1ZsOXF6U0RvQ0dwbU9ndU90a0tVeUxJZ1VDN2k1VFlmaS9mNXlLTElqdz09', '2023-03-11 06:10:22 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(7, '#ALERT14032376036', 91, 11, 'TzhsNllSMWlWaUFTRmNFZ1FBL2F1YmdVU0Z5OUxURUtmc1B5YThndDhGUFFrdGtxdjhNRjZuZXk1Sm9YeFB1Nm5nS0dNKzBTZEQ4MXQ1MW80MXNZSHM0SkZDTDI0RmthRGhJaDFXYVpGLzBxczJ2L21xQzBRUm5lQk9nQW9zTzZkRWJXTjdva0Z2eFFvWkZyUDhCaFR5cnNFenlUTE4rbHNGUkJVL0YxZzU3cFBQb1ZtWGRVNnJ0WVRPUDhRNFRrQlRkMnhFKzlqdjRvN1VsY0FpanowZz09', '2023-03-14 11:40:55 AM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(8, '#ALERT14032389454', 21, 5, 'WWlBRUJTRm1EK0p0d3k4SjZLdkJ2VnYvWDQ5MzU3ejV1bVhYOXdHS3VHdjBYNVJSTDlvczEvTUVhbTBRcS9McU1lR1VFTERkMGhJS0Z4R2xHTGRad1d0cW1VZkFtcFFEVWJCTE1pODFWcDdNb05Ud2I2YWVqVWFtNXdWOUpFOXE5TXczdGtnaDV1UmFGYmV0VDY4R3VIQS9NYkpPT0lPZ3JETGtqNVEveU9RPQ==', '2023-03-14 05:03:05 PM', 'NEW', '', 'https://www.roofnassets.com/admin/hr/ods', 'OD Form Received'),
(9, '#ALERT21032356956', 102, 87, 'd2o4NW5FeFJFRlplekpOZmxBczFndlRrS1pQZ0pxTXd2U3FjcGtWK085cnNPYzZXaUlFbjFPV1ArbktaNVN1cEo1bjN3UzdVcEZ0MHV5bko1bVVQc2o5NEJqRnNxQ0VueDBicnNpdVQvMERna1NBcDBMREx0RUlid00vRXg5Z1FNdGdTWEtmdGdTQy9jdjFkZGIzRzNnUmQ4OVphbFU1bmM5RUgxSjM5L1FHZ1kwUkh4RmtMM2I2dTRyTU9vMG1F', '2023-03-21 03:48:55 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(10, '#ALERT01042390485', 80, 3, 'enRwYm14M0dGaFE3dmFsME9KSmxmdXY3WjhpVHQzUjNzZU1lOEpYQVRoZ3B1cU1GWU1ONStwUkxrRDd5Qzh5ck1mQjNUd0U5cWw3UkpSM3ZMaXkzRnN5ZysvbGJRM09ZdGphMHJaZDdvb2tibmRvV1lxWUt6b3gyVndFT096ejlNVFpzQUhkS21mc2dJdHVJMVdFTWxCaTc0S2pYSmloN2ZKbWlITG9RZHlNPQ==', '2023-04-01 03:52:26 PM', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(11, '#ALERT04052339854', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNGVHbXYzZk52dmg3dzZ6L29mUlpqalBSWEtVNjFVNUs0ZGxDd1NXd3l6RlRYZlRvS1dWSWpuWWZBRE5NVTVTY1hzQ0tITDkwRWh3K3hYMUFQa1pYT1dWT3ZpNmJxNDJRdHhQSDM0QUFGbWgxOExpcmRxZnY2d2wzc2RjdEYvOTk3', '2023-05-04 11:38:13 am', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(12, '#ALERT04052331246', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNFVSK2dHWis0L0xYRGlYSE84a0lpdEIyTnNDdkJiSVQ1anRRQ3owdWg2VVVzY25Gc1M5em1qTWdLVEY2N2dGbUt0QTRlU2JwZ0dwTksvRG5jTVpBN0ErUURDL0ZjTjJTMi9peVBxTjliV3hacTdqL25TK1ZWUTRuMW4wdVdub2l3', '2023-05-04 11:39:05 am', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(13, '#ALERT04052313376', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNEphUUFYWVFCbkd4SlFQL0FNZDZWdTMzNC92ZDRtY0F0M1dYd2F2QmVNcjZzakZuTVVWVkZMQXFMVDh2dW43MUVFWFpiNkdGQktVbzltbjJKendFd3lZYnB3SnZFNkZpT0JsbTlqbUE1cmxQN2g0clJ3WFFVMFFKWC92YnJ2ZE5Q', '2023-05-04 11:39:59 am', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(14, '#ALERT04052322938', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNEdta2pVajJxVEdYWDVYWjRCWjNxUTc3djhHaGlwTFpLYjhXNVpVQ25ZWVUxTmRZcDQ5Zk56cVFxMllLTFVDd0pvUHNTN1RXZGVubWFvR2ZoZ0tJSVcyUnljZm9MWlZkWCtqM3dOaDlhbThiaE9DN2QrZHFmRXFNbHMrTlNyR3Fy', '2023-05-04 11:40:37 am', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(15, '#ALERT05052325316', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNG02RUp4RUNqbEpSMlNBUm5JZnQ4U2lNRFlDM05OS0wzbXRpdkdteXZtUFpmM3dqSnp3TGhzVFBNKys4ZU9HNjRkUkF2aHZTVzFnMzloZytEZnB3cXZaVUJBdXhaUW5QbGZSUEJTNnNUYXE0PQ==', '2023-05-05 03:27:20 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(16, '#ALERT05052358261', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNElBR0orMmRKSlVIcnhOTS91bldhaGdpa2piOUZ4SDVnU0JRcnNyMnIzUXhsWDRmQjFYd250dDBGcWtyZ29lUnJud1Yxd04xcXNQa2JKOFJUYmQ2R3FoNkQ1TmlTa09qV0xhSnFTeHd5NCtFPQ==', '2023-05-05 03:27:50 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(17, '#ALERT05052395231', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNG5kWjBVbjRvWDc0R0NSU0J3cXBZTGF6QVFkVlY3OUFUYjhlbEtoZThrSGZVN0krNGVnZFA3TFgwbFBWeSt3eUQwQXZJUXRSTlFqK3FIVUtWU2FPaGppa2s0S1c2TWVNaFFhbWx0SjZ1b1FlMGlqdDVSc2NnT3l3Yll6WjZUUU8x', '2023-05-05 03:28:48 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(18, '#ALERT05052344592', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNGVRRWZYSXk0NE9SL3VuMzB5V1BDZzlFcGdGcnF0U0VFcDJqRTFQMzF0T3pnQkQ5ZHQvUFhWSFk4MDJ2YlZ6ZWZUSDkyTWhiWlplL3JJamFvNlU5MUtjZEd1Tk9NNmlUU2dKbDhmU004aFRzUVY1SWxjeHkweWp4S296L1NRQ2Ex', '2023-05-05 03:29:32 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(19, '#ALERT05052358869', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNHNRanBuU2xKQVlISTFxZ3ZpallJcytzSzlETmtsbmxFMGdjSzZBUXI1MG9XbUIwTkh4Nm1FR3JUQXlZWW94VDJOamh5cHpIanRtc3ZvelloVUMwSXZhOWZWMmQ1b2xKZHlQaFdvZ29IbldnPQ==', '2023-05-05 03:30:18 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(20, '#ALERT05052356667', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNC9GZjkxT2p5Q3lROFJzT0d6QVBEUVh1K25oY01nT0ZDNE5uaVBORmdEeG5zY2c3ZGc1TmJKcHcwMFhlaHFLNUFMU3NtVS9ObG8wNXp3U3pueXk2bHRwelNOVlcva1U3bHRvcUFROFg1UWtNPQ==', '2023-05-05 03:30:38 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(21, '#ALERT050523800', 59, 1, 'ZzFCeG8zajFQeWNLZUVUSGkwbVlvVHR6cFFCSkJ2OUhOUWV2SmN5dWRzd3pwTGxFT1Q4UEluTVhoUDJHeWdsNDJMNUE2OGtxQmJnVmtGM3JXaGpreTJhMDBzY2JHS0J3Ym1IMU81aWo2S3VNZFEzcW1hcG5hbnNCUENJbG5hVytDdVlyYW9aVHdUN2p3aE9QWnlZakI1WWRHMVEycVdSaWNiY3ZncElDcGxNPQ==', '2023-05-05 03:31:03 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(22, '#ALERT11052339833', 30, 3, 'K0N2ZUQyUGFQRXExZFZhMTdRRFBLUnJlVFJGT2RnMUF1QUhKLy90dU50MWVFYmw3RmVpNUlnWXZxaDMyU0hwOWl4Y09jTk5JV2NFSkd4WEZ3THU1UVFQMjVjVUptMTZpcnhjVkM0ZlhkUC8za253NDVqUHhsSXhQZFE2K0RNM1VxaU8wazcwWXp0Z2NtakdzdnlVR2dmK05pVm5GaDlhZmVLMDlnT3lpRlRzPQ==', '2023-05-11 05:56:52 pm', 'NEW', '', 'https://roofnassets.com/admin/hr/ods', 'OD Form Received'),
(23, '#ALERT24062348320', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUtsMmpRb3NFS1FEKzdjMVRxZlZwWmZWUmVOZkRyd3dHYWdtVzNtSS9jRkJJaXFjZi9YelVDdjA3cU9Sd3lFVGd1cUk2K3kwSHFadEkvcUNGU3BoSXhZTTArWmd6bXJZOC83OTlRSkR3MEE0RDEwMzYvb29kS3VOSHl5T3A1TDFYMC85cFRBaXhDTWY4MVkvRkJIOGw4TW9SZm52K2F3VlN6TmVQWHpSNmk1dg==', '2023-06-24 11:14:11 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(24, '#ALERT24062332017', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUlkxZWp4L3hPdXRRV1p1YUtMeFV5Mk1kTVRPcHBoTWxzLy9la1granpjd2RmVVpoblRMVFExOXl5TlNJVmZ5R0I4VlVwSUpaa0x0RTNVRmxCS1RXdlNXU0RLMnJGOHdjRndXYjh3ZjBITGVPdlE3dWhqL2JGdmsvYXQ0ZXlwYlo0YndYYTlUVVRVVUM2RkRzVlJOL1BSOXhUS1R3WjFWcnRxOXVSU3RzS09VdnZQd0JhVHlobTlNVkJmeG5HMVJJNw==', '2023-06-24 06:05:31 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(25, '#ALERT25062394219', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUlhpUlIyOTdDZXZuVDFvUWdKQTVSREhwWjZoNTZmdE5jUjB4Y0FDOEZ1RWhLSkZZbks3VkQrSGNKUHZCQVQ0Qlo4bW9aT0xCcGxlRThabktHeGt3eVBzd0doVVQ3SHpqZXdFZkdQV1FveHhRZk1NUGhaMUdVRitXa0c0M2dNUWNFTkNHNUMwSmdSRFgxWWVyWkNyK21GaDR5aDZyOWFqdFhWUlJZV0NMRUJVTkNpbnR3dmdLNW5CMlFYd29rMVMyVw==', '2023-06-25 06:31:46 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(26, '#ALERT08072396443', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUl4Q3M0ZW5ZTVp0aHc0ZW5STkNBaW9jcXRnMEZDSFFOMlJhZ3JFcllXcE5iUjk3MXNIMCtsa2VKcmM0K3l6N1FiR0dzL3FCaXorUHVjR0M0RGF0VFNrVHFvckJzN21pdkwwRDVPcGNQdmdFNjJZVXIyK2l3VmJyam1tSVMyYWJoeFBCdkRTNHEyR0lmV2ZVNzMrR0ZUbEpyRUdOK3NVdFdzeGVURTZTdElZQlNMekN6Z1VXRXpvSWxvU1VKZUZJcmc9PQ==', '2023-07-08 05:21:03 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(27, '#ALERT23072347249', 109, 1, 'V0dqRFFGUXFWVUdaSmFOblNBMGgvY21tWU00bEdGVzhrZy9OMTBmT3JnWEZsclUwNVk3cy9OQnM5UjNWZnptUmw4Z2RmSTJ6eGZKc1pJZ1ZpSHJ0OXRONFR2UTRKY25uWmY4dXF5OFZaMEtCMXRSVzg1Sm5sRS8xenRVNFBSUWlFa1ZQd3BQanNieFZQN09UNktvTEhYSWlpaWJtUG1KVDFtK1VHM2tkNDhWNU9pUjNTSDlwSlFONXVpblpITmFVMUlYa25qZG1DeVQ2K2pYdUtTcEptekRIV1IyVktteFhEbWNZSy9kYzJtR28xNDBNWUZab0RBY0RYWDE3NXM5ZHYyWkgrbk1vdE5INEZJK2ZjWXUzam5ha3B6RkU2N1BiQzFLb3krVmNFWHc9', '2023-07-23 03:36:28 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(28, '#ALERT25072350415', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUlhpUlIyOTdDZXZuVDFvUWdKQTVSREQ2Q3BUbEJ6TGNiZTJCMjhXUWp1UURROVNSU1l0TE5HY3RHNjVHZnkvNmlKS3doMjZSeEpUR2F3anRMeklMcG5LRnA4ekRxU0twdmhSRjNZWk5yTnhlUjhpbkVadU40UUJ3dE0zR1cydWlKVGdkck1TRkZPKzlUUStlTGFtbXdrZElYY1k2QlZZaUI0T1RFaUhjOENMc3kveHFSOUUzRDFWM0tndmV4Q0VJRA==', '2023-07-25 01:00:29 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(29, '#ALERT25072392909', 11, 1, 'OEY3citJOTR1dnJpanFkOXRqb3JaaG9rQmpGSGpWK0t5NGZPOG1kZUQ4R0N0SXI5d1RZZEMwQkk1MENxd3BDQjhRQjY1aHJxak9LdEVMb2hXVFppNXlTL1Z3M0xGRXJIYWRZb2FjVGVWSDNoVElrQlFtb1p6MVIxckY2aGcyZU9IQkxFQXVqa2VMeS9NUXNuLzRLMGRhcTJKNzEvL2xJZnhuSnplSFdGVTRTQWFYQUE3bmp0QXp4M2xoWmNQMzJkK0doSkRDbUpDemZoWC9MdFFzakVRZTVOeFZPN0hFT3hYVmJSR0VpaE1MYzJwOTRNb3pIODZjY0xuSnBMYTJxdw==', '2023-07-25 01:08:10 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(30, '#ALERT25072397033', 80, 3, 'c2ZmakxmWEh4SFlWOXJqQnYxVE1jT3cyY2lSdDRIMjF2RkhFWXlXandQT2tvUFBnSmpTOFRWWk5JQmZjSHF5SU9CcFBQdWVzNCt1WVZxNW4rcC9RZDg3QXVzNlZaNEt3NGdZNzdVYjkxeFoweWpQNUFCb1dPcmZMUTBKVFlkRWRwOTMzcHVpd1gzeEN6S3ZjZnFHdis4Q3RaWXk2aG1oTEdwQ3RzTFZIU200Tlg3a0E5eDRQR29TWEt3aFd5ZzBZYlFjQk5RSGppMGpKWHMwWjlxdUlMZ2pJb0dyRkZYSGF3T0hvSFdTNUVsdHZpcCtlTVVNaXlkSER4cEluUUdhVWtnRDdFaFAyZXZNU1F0UmZhSjRxRVE9PQ==', '2023-07-25 04:00:16 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(31, '#ALERT25072372930', 133, 7, 'VmhzaFpxZFM2cDRkZHZrWXNuQjFSbEViNUM2aUlYTkdHWDlmaE1iWXhFYW05NmwwMURSbHRuQmNqdGpMamZJY0ZyZUw1bCt3WmlDcHkwK09GSTl4YTlob2l3ZnpHcTJ3eHhSN2xHai9CWGFBYWVMVjhZMm5QdXgwQWdVMERRRUovOEFiZlJPZ041Y0FNdTNsanlyQTdSd0JoQWVQY1crQlhZWmRXdUpNME8vWHdwNHI1Y2kzMkc2YktRbWFLYzNDOWNuL3p3WFIySEZWNGlDckZCdXRDK0hBczFoNFhjSXV3cWhIWlh4RGZRR1paMllNdncrdmRXd0hHaFZ2bEVFUg==', '2023-07-25 04:01:45 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(32, '#ALERT25072325752', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZW5WWVRJanFYb0M2UkpIQlg0Q2hvQnFGeXFwUXEvSGtqUE03dSsvV3pZVUcyRTh3clUvOHQ4bU04dXYzcHFKM2M2QVFadE9paHJzK0p5bnNlUjdnYkJ6RTZ6K0FnbDgwa2VVRWFQVnk5MkFWZUZHZzdxcTc2S3RnQnZvU1NDS3Fha1lRR0czUSs0SEwzQ0l1VFU4VlJ5QnMrT1o3ZVFpYXYxM0FuRUNHUzdQdmxYRUE1VThGZDZUMDBCTUFYbG41SndKblg3a1ZCTWplV2tFd1VSb0NwUEE9PQ==', '2023-07-25 05:37:54 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(33, '#ALERT25072314692', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZWJ6Zll3SVlqZU5MSHk5aEg1Q0hHcDdXbTd3Q2taRzRMZGYzUEVTcllROCswNzdsS0tIUjNyYy9EOGUzZmdsOE5xbmdBL0hFSUZ4bE1VT2hrdzJScHZLMjcrNjRwNitMbVQrQlNmcDBUcXdwTVA4c3dlWllBME56OVZMdWJvbmJYdWRoQXBkYnZFekR3WFNoMWlocm55MGNXY0F2cCtKdUN1ZlpUMTRsa2Q4ajROcUthUVR4RjdKSWRNeGhDOTVkMVhFZVFXcUZzeFhPOFVQcnZmSEJjSnc9PQ==', '2023-07-25 05:38:56 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(34, '#ALERT27072377137', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZW5WWVRJanFYb0M2UkpIQlg0Q2hvQnFGeXFwUXEvSGtqUE03dSsvV3pZVUcyRTh3clUvOHQ4bU04dXYzcHFKM2M2QVFadE9paHJzK0p5bnNlUjdnYkJ6RTZ6K0FnbDgwa2VVRWFQVnk5MkFWZUZHZzdxcTc2S3RnQnZvU1NDS3Fha1lRR0czUSs0SEwzQ0l1VFU4VlJ5Q0RFdUdyR0FlVEMwUlkwWE5SZGVkMXpTQnQ2bXVGc0ExeDh6b1kvT3krampJWTVKaVFUaHU2aGtmaTBDVTlPUlE9PQ==', '2023-07-27 04:01:29 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(35, '#ALERT27072326478', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZWJ6Zll3SVlqZU5MSHk5aEg1Q0hHcDdXbTd3Q2taRzRMZGYzUEVTcllROCswNzdsS0tIUjNyYy9EOGUzZmdsOE5xbmdBL0hFSUZ4bE1VT2hrdzJScHZLMjcrNjRwNitMbVQrQlNmcDBUcXdwTVA4c3dlWllBME56OVZMdWJvbmJYdWRoQXBkYnZFekR3WFNoMWlocm55OGUwdndVdkVZSHhCSlJFSTVxK25icW45aUkyWUJwaUFWbW82bUZSNTc3eTdHZXlkVTdSZHlGaW41YW5ZejBEMVdENGpSU3cxZTBabXE2TC9oSkVJOEE9', '2023-07-27 04:02:01 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(36, '#ALERT29072387521', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUk9yalA3QVVLYjRsZ1BqbEZuUUJXTjZIZGlYRk0wd3ZOY1dhZ2t4Ym5vTUx1Zmg4S3M5WEFzUXU4UWZqWEVzTyt1Rm41ZGh4L3lpU0Q5MWp2UnBUKzdqNG9BZ0liSUdBVnFCcjVreWlLeUV5dlpGRExzdzBieDFFMXZWTGN4Y1E1QlQxMjU3OTdlMUVYM0RiK21nbFNnbElpelF5V1RSNms4dFVPbjd0V1JOd3NsbGlCMHAyMGhQZVErNzVuYWVuaQ==', '2023-07-29 10:01:45 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(37, '#ALERT3007231669', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUlFZjgyeUNHQ1oxTXFmY01UVStxdVYwL0UzUjBITUUrdndEQmlOK1BBVjBKZVJhcGlEY3pzZ3o4SE5aQUtqMU1LeForeUFZbmRjTUlrczhXRHcydHZqZExQU0RFNE82UlI3Z2hJR3lERGh2dUdrVVcwQzltVXhCQWhNSjhYRlE1ZDd6SHhVTjl1YzRMOUxYSEs4S3JMT1FDWm5LbWM2bFlUZTZNRzJPcVdKWA==', '2023-07-30 10:22:26 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(38, '#ALERT3007238724', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUNOVHB4YndhdG51RU9oWXkyT3g2dlphenEwRllrUmpJTWdnRVdTQWxURnJuN1g4aCsyT2JjQXV1RlZlK2p5VFRaRDhGV056V3VYTFQ1UHJsajVZc1RSbVZrM2lENHM2MUVPWXV3YlpRaW51bU0zME1jek13ZHRkMk1tR2svNTNERkgyaWJiZlhMVlpQZW9GVDdOczJzSmloU0loZ3pFNEZrMVhiUFo4OHdIMTVmWHRqSlEwd0t1YUtDM0tZeEcxOFE9PQ==', '2023-07-30 10:23:12 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(39, '#ALERT3007238548', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUnlEbVRtN2RWWWhKV1dUemJoTzVDNjZTZjM0eVJpdVluTWIyUmZZaG1mT1BpOWhNa3loYnN6SVdMM1I3bjhRdWFPZGFtMmthN1Z0SkxxTU5BcCsva2x6SlhLMlFobXFGVS9KdE9uVFBGNmxnVHY2M2ZGRlZ6SlFVZFNHUHA3QkNpMVUzelNBUnJSdU53ZDVmUllzV3hXYUJMMmMrVHhHQ2htOXB3SWpHeG5WTFV0aDA1Z0tWbUlCbzEwM0Z4K0xIMw==', '2023-07-30 10:36:24 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(40, '#ALERT3007232525', 80, 3, 'c2ZmakxmWEh4SFlWOXJqQnYxVE1jT3cyY2lSdDRIMjF2RkhFWXlXandQT2tvUFBnSmpTOFRWWk5JQmZjSHF5SUpZSGVPQkpRdThCTU1uSnhhVXdCT0t4Q0VRWWFnNE5JaTZvYnhUMzVJRi93c3cvbElDQU1POHJ0ZjR2ckNxWE1weVJTTHBpYmtmOFBvZkRXa2diSG5SeitxaVQ3TmhxQlpqYWtVazljUklKaHVCODhvdUtQQU5iVXhuOUw3eEEwS3cwZ0YrV2NqYkJIa054M0FVSGVIa1dWbFpGTjJNc3h4YmRreHBrczhscXl1b2MzeHBKVmV4WFpCQzM1WTNGMw==', '2023-07-30 11:46:06 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(41, '#ALERT02082369589', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUhIZ0tqVTlnbVVLK3FUSGlPc3J2eTQxMFZCZnlWMW9EbDJlejYrczNOUVNEU0tHelZqck5JSElDUjZ4S3c1WGMyM1Z6TVNHRnVRVEVFRmZSdURZYnBCR3VKdjRuRDZCdkdPNTV2SVNGZ25CeE8rU0pSb3JUZEQvYThuUE5rR3VTVkxIQ1ZaVWtWZFRqYmF1WmRJeCtZVEpWeEx3cTFYKzhRQmc4dTJoNEc3SlVjWmxkQzJMbUhIeVRVVXRKQm9uQ3c9PQ==', '2023-08-02 10:18:16 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(42, '#ALERT10082352223', 133, 7, 'VmhzaFpxZFM2cDRkZHZrWXNuQjFSbEViNUM2aUlYTkdHWDlmaE1iWXhFYW05NmwwMURSbHRuQmNqdGpMamZJY2lYNTIxMzlnamJick1ESkUzMHBDcXNqSG9BblBOblZNSXlzb0toRHdsMlRESEwxWStMUzhkMEZBU3hCbmtSVk9NYzVBU1VGVjdMb0NqYVJzanM3bG1VZ3FlQ1E0UFFYQUhDbTBqUFljczNIaUk5OWtKNy9IYlJ5dGpNYjYrSlV3Ry9GM3lmd1N1bjIyVEhIN29CTXp3bFh4QUxEcitMelNQVzhpWWt3bkc1WHJoTXdWQmZHK2F0UkZYdWRseW96UQ==', '2023-08-10 05:06:54 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(43, '#ALERT1008235261', 134, 7, 'N2JwUHAwZHB3dmluNytmRm9PVTZhcHRoMlRIR3JYd053RXJ6Ym5RVk5QOFRSSUkxRHExRFB1VGpmM0lJUk9rTVpsTWgwalVhUGpDdytkUjNaVWYzb09ZTEJ3ckNCc2kxRFByTmlteVhubEpiNDdUamNJWGpOeDBoT3JIVEJpRlhWWUUzUlRxZEpXemY5c1VjTW1kTUJCMkE5a1lTdG9JUWhLUk41eEsrYkQxN2txa3Z4SitkUjRhTlkyeTdUcUtqNlM1cXVoRkV0NW1FVmtTYmcveGp3ejdnaHdGOVhJNzAzWmYwV3VXTzErcDZTYW15clpVQTRXbGtEZ0ttVnY2OHhJNjdRblVNNEUzVU4rRjlUVlZ4ZGc9PQ==', '2023-08-10 05:07:42 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(44, '#ALERT10082397505', 138, 85, 'OFp6SXRBamViZUg0dTRQV1lmYTJ4TUpJYnhJZTlYT3J4T3RUQ3pKY2tvbWdJQ1BzSWdsb0hSTURRU085a3ZoMzMwcDM1ZlZYbGN1c2RER0l6MW5BZkRab3lmazFtSFdkdGs4bkR4aUxVMGg5WGk5MmN3QTVCekRxN1hSSCtlSFA5c1o1KzVYRzM3ZWVRa0wxcnZFTXdFaEdPT1ZQa3dZZDhKNXMxajJFd2IzTVpUNWhJb05Kcm83dTlBSHNBZnB3YVdQMTdKcFduOENuL1VFNlZ0TFk4L3FxYnhvanh3MWhPa05OYTZIMTBNYjFlQm5CWiszaUhGUWVDS0svT3FISA==', '2023-08-10 05:07:48 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(45, '#ALERT10082386351', 137, 85, 'OWlPZHNRZFpuZThqZm5ZckJBL0VwdFg2Y2FCZCtMZ3ZDMm8rMHpqQlI5OGhqZlpNUDkrUWZCeTFIQUxWc0lxdmNxR2lXcTVNNS9rYllzM25IT1g5TlhoWWp6L2tsL2pkSUxxZkUrd01MUHZNamJ5WW1lMm1aaWp3MkZ4YmIxODhIUEFpWE5YMTFZYzR5TmhSWlVneUZFM0JEZG5hQkxCR090TTJsNDg0ZmNXVFp6QTZHQVdmdXRNdG5XeFpUSnl3TWIyT3dCWWdaSWR3cXMwK04vL2Z6UFRqeW95ellvUndCMTlrRUIrZ0tlSG5ROTI4d2tRa204WmFtU0IrNmFNUg==', '2023-08-10 05:08:35 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(46, '#ALERT10082339541', 138, 85, 'OFp6SXRBamViZUg0dTRQV1lmYTJ4TUpJYnhJZTlYT3J4T3RUQ3pKY2tvbWdJQ1BzSWdsb0hSTURRU085a3ZoM2l1ZEFhTk1HeDZwT1dFZExSYVFaUUtxQzFhYlM4QlR2MnM2dWZxSTRvNUlyeC9DTm1KRDVZamFSbmlueWgvZGU4cmdsbXpzcmY1UXlJblRCM1VwczZxVGpVdzJidlZzN2ZpeG8rMlhDL000NHVnNDdoY21YN3Rrb0FRV2F3ZE5PT2lGclVkN0Yrdi9wcWl2NW9SMnp2SS9Ub2pmV0pReklIbktQODl2cDZqcG5JMXBFdEN1NVlXdi9sUDVqa0JTdQ==', '2023-08-10 05:08:38 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(47, '#ALERT10082320671', 134, 7, 'N2JwUHAwZHB3dmluNytmRm9PVTZhcHRoMlRIR3JYd053RXJ6Ym5RVk5QOFRSSUkxRHExRFB1VGpmM0lJUk9rTVpsTWgwalVhUGpDdytkUjNaVWYzb0k0d2hlZDFlZHdZd2xGSHdYMWx1L3ovNTZjb000MnlBVllnZ3BnNjJXQURhakhuVUtKOEFVMDdjK0Jkb1U4S083ZnNLczVRNnVsS1NVUndzRHZWcmNkSldkYzJ3Y3p0dGZ5OGUxYnUvakF1NnhmdWwzektZU3RQVjVXZHFTSHptMUx2SmgxMHNkZW5TMW83STMwc1ZCK21teHVvanM3a21VWVMrcENacTYrSXRCVTV2eHFKd3dQMWNqWXRlQ1VTTVE9PQ==', '2023-08-10 05:08:41 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(48, '#ALERT10082312707', 133, 7, 'VmhzaFpxZFM2cDRkZHZrWXNuQjFSbEViNUM2aUlYTkdHWDlmaE1iWXhFYW05NmwwMURSbHRuQmNqdGpMamZJY3NzOXJCQVMyRFVUSTNhMzFNMkdqUDI0N3R5RVErMUEzYk56Ry81a1JCNUZYZ0ZmckN5ZkpxMkxFM2J0cjUzVDJSY3l1VzY0U3NvN3pBbWNmdEJIaW16WnV0SDFwV0h1VDYvMTlXSmYyTEZITkwzTmdOVGdMSU4vZEV5bSt3bUlUMS9YMFNXTHJKRXVmeFBHcjA1bnN4UlE0aktKYWkrZm1tRjkyV0UzZmMrTFRiK3hQeVczUTlsVTNFeWpTRnZWYw==', '2023-08-10 05:09:22 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(49, '#ALERT10082385247', 134, 7, 'N2JwUHAwZHB3dmluNytmRm9PVTZhcHRoMlRIR3JYd053RXJ6Ym5RVk5QOFRSSUkxRHExRFB1VGpmM0lJUk9rTVpsTWgwalVhUGpDdytkUjNaVWYzb0VVcGluNFdNcW0zdEpRY0FlUHZ2V0d4dk00THI0VE1kM05VeUM5MGp4V3lNOTluVGJLTDlKL2d2YzV3WXpuRG50Um1JbHlqS3hac2ljVDdaR05keklWWURSRUdpRG02cUVpblI5UWJMV3FUd3cyVm1qWmZOTGtCRVBuQ1NlV1BGdG1lMlNMbXAwV0VZRHpXSHkzakN4RGhySVFkbVhvN1VLbkIzNU45RWF4WWVnaGlSQW05UElkdjZPYnRmcnk4akE9PQ==', '2023-08-10 05:09:34 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(50, '#ALERT1008239126', 133, 7, 'VmhzaFpxZFM2cDRkZHZrWXNuQjFSbEViNUM2aUlYTkdHWDlmaE1iWXhFYW05NmwwMURSbHRuQmNqdGpMamZJY1NnTDVxZUlXWnB3elBodnpWd1pUc0hNWHV4ZmM4dzVNS0lYRXZ5WnhqWFBBdzRZMHFVRmNSTDlYNGhDd0NHclBta1A0c0REbWNKanBHQTJDV1hsYTlmMVR2VmRYMHBoVzJNZFAycnhiSTB1QU8xK3JBd0ozRGFDUGpuY2tvOTFEOWl4UkVnZTY2VmJGdUcyN1JwYkhJdXJKakdQMVN5OU9GSE1EcS9kbm1rc0hwdUU2cUxINmJkdGlTQzJ4aGUwTA==', '2023-08-10 05:09:55 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(51, '#ALERT10082379782', 137, 85, 'OWlPZHNRZFpuZThqZm5ZckJBL0VwdFg2Y2FCZCtMZ3ZDMm8rMHpqQlI5OGhqZlpNUDkrUWZCeTFIQUxWc0lxdkxuSGhkMFNBSDlJL3M1VlpkQzFVNzkvMXVTRDdtODY0aWhBMHNPZXBUaDJIWGM3dXMraVVIblh2UkxCK3FLRVZoVFJhWjFNWk5CR2NnaE5YYnlxSmI3d1FIR0l4eFhka2I0Z3VTNHBoMzVjUEVLaEtZaUFTRCtsTlVvUFl5VDl0M1dqd2JCbUI2OVZhVWY1UUFPMDQxSHpTSEdUNkZjWktxVWlsbzQ4T1RWdjArV2tXVy9JZHpqOVNVN210aUUzcA==', '2023-08-10 05:11:58 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(52, '#ALERT11082381318', 121, 96, 'clNTeGV5djYrRGF3d3pnaFY1bC8razgxcTQrdU1wYlhIYjZhQXppT1dTT3lnU1Y1Y2g5aFROSnRHRTUxNnRTREROQUpHbXlQTm9BcjQvZFZrZm9oTjduSC9PRlR5RWpxdUxuNnVLMTdyMGhISVE2MlA1NmNEM1U3MGdrd2RwTWJab3FmTFduSnlEb3lOVUd0b01EYnNsQ251cUhWUlJmTlRMVExvNzNxSDdMZFRDb0oxZUtuYkEreDhlL0hmSXJ6Y0l1T1ltUjNvckkvUWYvdnZyOU4wOVAzNEt1d0xYaGp3eTFncW0zWkhPMTZDbDJHV0o1NTJzcGhENWwvcWRtdQ==', '2023-08-11 12:18:34 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(53, '#ALERT11082372535', 121, 96, 'clNTeGV5djYrRGF3d3pnaFY1bC8razgxcTQrdU1wYlhIYjZhQXppT1dTT3lnU1Y1Y2g5aFROSnRHRTUxNnRTREROQUpHbXlQTm9BcjQvZFZrZm9oTi9pV3FFQmYxckJzQXVNNEZlVXJvbzdqUlRSR3dNQVVYN256UE1mUWZuSDNSSTNvdXVmVmFxK2xtT05wNHJ1VnN3dEhUSVJleENVLy9IU2VCRXF1aElnNmgxVmpBZU1pRXA1a1BoRlRGV1RSZ2U4THgzYzBLUk52ajQ4QnFvbGlKTGliSGVVQVZWTFhWdUNLR3YwUHV2bjloeDc1SEdPS0ZXN3dBUVV4Qk1wZQ==', '2023-08-11 12:19:44 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(54, '#ALERT12082345515', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUkg0THlTZW1CQ05ocVB0VU9xbll0NkNCRk42UzRFNWlPNlFUendoSGlHL25DMVYzOXNLZGN0cnlGNUFXSVB3bW9PLzJMazhFMngrQ0c4QmV6ZEMzbXJEMTUvZzZiYXlEQk9jbXBIMmw4RGFvOExaM2xaWlVHY3RGcGpEVExXZUlCM1RRSHhuTko1OUcrS0xLVDlzRlByNmxxYzU3N2swbFlyZmx5aUIzMzhDVm9Nb1dRN3ZXYVkzRG1NRk4zYjBXcQ==', '2023-08-12 10:22:34 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(55, '#ALERT13082348240', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSU8rY2lNWEt5dWUwWHorbTMzOUJrM3Jab2VUaVBCSkFrNEg5MFF4cFRrTER3aEJ1NmtnbXFveHlaQnlFQWRBaGY1VGE3dG5jdGVGdm5BU0prVWY3VnpVWUZteHMwM2xWb3NUcXl6aTNEb09aakcvMWRTaExsOUdxTThVQzEyeG1SUWk2Y3NtWlhWVlpLKzRQelpVelo1c3lNWVh1bDlmT3pQTnZKbzBwRUJEeA==', '2023-08-13 01:15:02 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(56, '#ALERT13082386049', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUkdqYTBDRkFrdzAwSWV2ckx2djZwL1VKTytxaDkrUlZVRm5QeGRBNlpGcmpldldFNjQ1UkNKRUNmcm5ESktlbi9pVUpTblI5Mjd1ZWxGUE5mazJxd212QUlBVGRING5HendxYlJmRjBERXcyWmRHNHhuZmFuM3E5N1pqMktZYjNyVlpwQUZ5T1JlbkJwcDc0elpyQmZpN1FINEh0NlI1SFlQUnZXZmFNcWJTZHBrZUdMcHRuTFNHMVJSQVhzYzF6Nw==', '2023-08-13 05:26:47 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(57, '#ALERT13082316012', 128, 11, 'WW1ZbkZjUUtTN0F5WEFZc2R4NmMxaHRNS2JPekg2SHQrazlDdjBZRy9WeU52Q1VPWmFPUHo0T1BqWHdveHFyeHlBTGZXRUhhQ25jeUFMWU5xVHBXem9EVnhoQ0hBMnUyWnRmV2tBbm5ZcTExWUUzZk12NnkyeGc0Ujl3Nkw3SnV4V0NQb0FtbzhFQVhQY3l3Qzd0T3EvS29VeTFBNVluem40dVEzWnRnNm9aTWxhSzJqODBQd25jUnQyUTJwemZxRWlWejYySzRDYytLdEhIekt4RHI4bEhib205ZWVnUHA1ckc4bm5FQktyYkNzSG56SGdDaDM5Vy9PNys3Zy83dQ==', '2023-08-13 05:36:46 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(58, '#ALERT18082335160', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUZuQjdFYjdKNitEWHJKNGhKVlZyNUJHTFBQa25BWnRyVUFwdUkraVUraHhpZzNuTFJLdUFDR0FPajdwdU1OdnZLWHpWMTduVFNBQjdCM0IxbE8zYnA4QU1WcnI1Z1ptM3NzZXlXMXQrU3pQSVJSRTc5ZCtLNHNZN2FZM0V2SEtlRjdqdEJWbS9uc3o0ekhoZWFiVFBWU2g1cjhHMG9oVjRuRjlOeHUvbnc1eGwrTlBOWDI1UnFqSGNkZTcxQTJYbjFXRG5qbnpKZ1ZkNEFlNUlIR2JITzA9', '2023-08-18 11:14:25 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(59, '#ALERT18082363488', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUjkxUW9PRngybzFUTTZWSllkM05mRTBaUHFKWTNqTUJSMEdOTVV6Q1dtR3A4cjZWSzNuUVFuTVpnY3NLZURsNVAreVkxaWpZV2YzbU9tRUVKejJVVDdBaFduSmRJemxzY1hHUCtsT2tmNGFQcTFONkpwb01FRlp1S0FHMnpCR0Fwc3pYY29XL3c5bXBVamM2R0VTbXVkdFhMQWhodVI0Uno4ZmorSDNYOGt6Smpua1lUN2JxWkZIYXV5bFRaOVlyaA==', '2023-08-18 11:17:13 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(60, '#ALERT19082374228', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSU9ZQk1UUmlpZzk5RzRyV1poMlZKSERHSFo4Wkk1SHQwS3FqS0tHYmlWOXlnOGNNUGN3QUxIZ28wVkpubmtBNVl2dHNFZENQWkZKQllnR1VYbHUzQmw2MWpOWW1scVhFU3FBZWVVclBVTnFmaTdBeXNMRWRlQVQveWhQMWFDdkJYODl5enQ2M1hkYWxMTXlYRHFFN0ptNGt0cUJqYTFJVHVjem5hWTF0eUNZeHBzWVRNN1poYmV1R2YxY25OYzc5Y0c4YklpS0VqdlRvVFhuVlQyR0FzRDQ9', '2023-08-19 05:45:00 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(61, '#ALERT1908233213', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUnd5L3Y1UFo2aXN2Ym1DS0ZIb1BOY0V2eDBtSUtMeTVXL2hYd2RXQnVHNlVtNDg2bFNmbnRmVnlRVVJjNXJyTGtPN0YyNnhFa0Q2REtwWXZaWjZaaXZ1MjlYSHB2WGhld3BnOWtmK2s2Vm0vUFVYN3h6Q0o1K3RkdTBPU2tBSDQzVlEzU2NzRVdOQ0VBUkRGcVNjL3F4OVI2M05wQ1NXYUVnc0NrbFF3SXBDdHQwOVltWVkzQzc3cUtFelp3V2RROU5CaG04azIxc3ZOZ1B3OHpiNXJ3NXc9PQ==', '2023-08-19 05:50:59 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(62, '#ALERT20082312030', 91, 11, 'c0RERjBUNTQ0UDVtaGd6WFNhK3h3OHg0djVpMFllMWVjbG5GWW9CejBUOUdFUEVwYytVd2tBOFJIV000UjRubHBwZ3VRaGJzcEJWSGsrajBoS2ZMU0cveG5OWXRCS3JjY2JHRWtOamRkVGhLdE81SmxaWi96R29PK2YyWElHNnl0S2tYZk40M3VQWDN1Zi9kdUcwQStnR20xQ0EzZjc0SjhKYndGeXVkYXFSR3ZqUU5xTGVhWHd2ZmNpdm1sNGpuZkRTNjlDLytON2RYMG82aVdhdnAxak1iTlg0dW0vdHA1M0RhYzFRUlJCVGpkVk9UOThwcTNZMEU1ODQ0QmdKeTIzYzRETkpqS3g2WjN0QjRlc0MxRXc9PQ==', '2023-08-20 10:57:16 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(63, '#ALERT20082399007', 101, 11, 'Y2dEUGtyT3pnOU8xUXBGM0taR2Q2bXpGSStqZTlXNkxUb1E4ejQvOWZma3pEaVJ5RnFOQ0Y3ajdyNU9QWFdNYXlYN0MzdC9nQ1Y3VCtQT1lTZDZMSUp6VWNxaVk1TzE3SWNmdEd3TGxVZmZtaXA1MUN6MlpqTGVkWndVOHk1K1VBclBETHhEY0h6VFQwOEJGZC9ndElKdER5ektFeVpNU1Q5Z21CQm9ZYjE3VGNNN1YveEVPQ3BPQ00zQXAxZ3NjZTRYZ3ZxODJTSGRiSk9oN2ZvL1dGRll5WFZRY0o4NEhvc0s3d041V1pWUjlsVmNpVnlhcTVCQ2ROeFBKaWtBWA==', '2023-08-20 12:15:02 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(64, '#ALERT25082355142', 116, 11, 'UHBtb1NFeitGUzlnZk9YSUxOdVFHYm8yWFUxUXhsdXVqRTZTL1dEaVcxanZnRVJOY0NmODhyQXZJMmt3MkJkUjlwNHRCNXRCM2hObWVHOWtZS0RVaXZtcWttbk9TMEtkdTBkbEI1NGdHb05JV3dIVGl4WDV2aVg5UllkeUY3aENzMzlCZk0xUkZHbW5UNmQybFk2WnRKZGFrbVJEK1pLNkhydXBKcUg0a2psU0VNWDBkNkZONGRrNFgvUkJtMmNNcEd4NGMvRlFoOWs5dTVVcW9vdXN1YUV3YjlhTmRyaHN4V2dOQVVBMXdqdWRldUNnK3QwNkkzMHYvemR6cXF0OQ==', '2023-08-25 10:40:09 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(65, '#ALERT26082390854', 91, 11, 'c0RERjBUNTQ0UDVtaGd6WFNhK3h3OHg0djVpMFllMWVjbG5GWW9CejBUOUdFUEVwYytVd2tBOFJIV000UjRubHBwZ3VRaGJzcEJWSGsrajBoS2ZMU0NlNk9GMlJnMXVXSnE1SmFiVjNVNHhtSFkwMkhZakNLL0pGN2wzbTFkNU9iNWhyeUkzbEx2U3dXbXhjYzlyaTRFZVdoNU8xSUNxVkJwVHBKK2Fwa0N3MVFUMVNSM3orYS9oQW5GMEwxVmphcUg2NHdlR21rUXREZnZJME9nb1FUNU0rU2d5dEJ0RWVWQWd2YWIwcGMwZ2hKRDI1NmllUnBTck81M0pHclkrMzkrV1JUQm4wcDlyME5oejdaQWUwY3c9PQ==', '2023-08-26 10:39:00 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(66, '#ALERT26082342981', 128, 11, 'WW1ZbkZjUUtTN0F5WEFZc2R4NmMxaHRNS2JPekg2SHQrazlDdjBZRy9WeU52Q1VPWmFPUHo0T1BqWHdveHFyeENXMXRla2kvenNZWGVNTFUyU2Y5a01Cc0pDRkRlcGFtQTdVdnQra1lGayszTDd1WkxQU0c5OWg3TEd6c0xxUWZyU3FtTDJ4YXVUQmF4OEg5NWFRbWhzcTl3QnR0UkhESzZuZkJkcHBjcVBBSnZqVWVPU2Y1VjErMlF0RXAxQnpid2g4RGRwSXE1OUM2cFptd2hxSkdMNGZDc09ic2I5elJrS2lJZUxSY3Y0U2lUejZxdzZ5QXpXRFovTXVPQjU4aQ==', '2023-08-26 10:42:01 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(67, '#ALERT26082331118', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZTd3Qk5SaVNjL2luRnBQaVduQjJRVHd3dmZxYStUMXd0VlZ1UHE4YStaVEduU0RWVGtwRWx3YVY1MXYyWm5CUldqRHhvS0RZYVRpMEZhWVEraVhndTFoWHB4OGNScG5CNmQ0cHlEcmJad2Z2QVN0RVlWaU5NbVBQVnpUVFRjSXphclVtYVdzRVBFWHZkWThBY2VTeXk4VjJadFdJakpyblB2WDc3Z1lySlh2RnZNU01ZendxQnJUQnNraXFrSGMzQQ==', '2023-08-26 11:20:09 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(68, '#ALERT26082376022', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZW5kTkpxY1pqMktKUGNRV1U3YzB2RW92S2toQmlnZ0NHaEFTdHIrYjVsZFNDOVVUblFNSEdOZGh5Wm9QN1hleUVvMTdWSFFPOThxbTNwSG8rd0ZHcEJibHlxdHdXZGU1Tk4wQjBWc0VVWFNoQjhlaUp6emQyL2t2Yk9zZWF1OHJobzdaTDhRSnJVYlR5enhOVGUwOUk5Ym00NlBKV2hkRXRBSHE2VDdudUg4bFVlZU1RanhpTWVNUi9vaFFSQThTUQ==', '2023-08-26 11:20:44 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(69, '#ALERT26082369903', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZXMwNFF5RElsM1RsSHV3eDJPeS8zbFNPOUszbEIvcWtUa2JVMUVxVzBBcDZqQXBFNThITW9pTFA1REdWUC9NZ1BOOVBDSTJLb2ltZFI5MFhpbXF3MnkyMDhOR2VERGFrSzV6SW9hWEtnUjVKTlVmWGZoK3VUVG9CclhXb0JxMitlVGRQREVwbE9RYXBwNmJGS2pvTzRqMWVsUitsUzNOaFpjMWxpM0ZxaG1qNC9VRFBGR201TU85N2lxLy9yNFFNbQ==', '2023-08-26 11:21:21 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(70, '#ALERT27082348223', 131, 5, 'MnpwWFc0dFp1YTlPd1BqZHFvQnA5dGMrUHlFczg3dUFEWjhJVGRxeFlqU3htVk82UnIrSng0WnhLRVpaaHR5enpUNUU4N0tVclFPaDhiNFdGNFpjMGhzcnBzZm9rTnYvU21tUHVMb1F4NWtONm1ZeE83MnRjN0tqbTRGMzkrWXFXaG9PV3N1S3pVU3VJeHRjVDdNOXdVRy9KUkpBWFBVZ0FqTyt5NDlCczhFWktxZTV0UWdTMVJzSTlFcmNZSzVQbm5ZV3VjdWp5L2JIa1YwR2daY09CYmtaeWNWeUgrUmQ1emFtaVVqREdLamdnYStrSmd5V29kT1F2aXV0T3k0eA==', '2023-08-27 01:13:55 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(71, '#ALERT27082389472', 20, 7, 'T2tJR0xzVkdWdXd4LzVYaTk0Sm02dURzNmlEb25RZUpXd1VOTjVUWllEYjI4YytxRnJWOUtmbWlla1JqUHdYQm52cHhST0VSM3RMK0tyaXBlNXpHRFdlellvM3YrWXBOTk9Bb01McUI3T1NLbThmMkt0VHNrd2FCeEhRcjJ5U0xkR2d5RC9RMVFIU29JZ2ViaHVNaWtYT3pYRVpFbXdFREQ2bUZkM1VBby9lY211K0RSdGJCK200SGpyeVFiZjZPU0ZYVWlPRWprUWJtbjAwdEM0a3JtaEpTSUNKL3FRNUtMdlVEWlBqYm5VND0=', '2023-08-27 03:19:24 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(72, '#ALERT27082317662', 20, 7, 'T2tJR0xzVkdWdXd4LzVYaTk0Sm02dURzNmlEb25RZUpXd1VOTjVUWllEYjI4YytxRnJWOUtmbWlla1JqUHdYQjd3aVIyNUd5QTNjSm9RYml6Q1hROVEvQTlTUU9tdUlwNVNXbVFkWE5JSTJ6bDJ0UElwSzc4Vm5sb1llRHRTS3Jxbk5DWGEzSXFMd1BnVXEweXk1em5wckk2QVJEOWxFdHlRRk1CZGsrc3dEaW00Z2ZtRWUvS3BCcWFoYXJILytTczRhNFlURWZ0SHVuOTU4T25Ha2dmUVhPcUlhZzNnNEFqaGpyWTQzSHhSRT0=', '2023-08-27 03:20:25 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(73, '#ALERT27082388495', 20, 7, 'T2tJR0xzVkdWdXd4LzVYaTk0Sm02dURzNmlEb25RZUpXd1VOTjVUWllEYjI4YytxRnJWOUtmbWlla1JqUHdYQm1oZnlEdXJWYXczTGg5UjdFNWlDTXZSK1MwZnc1Unk0ZzJ4bVIrMmlzd2I4d3ZsZExvS0E4V0xoUFFhMVpSUk1lcTR2Q1U1UE1yak9wOXVzV2x2KzlwM05OOGdKU0pOREZFLy9ZMkpQSGlzUmdTY3dIZkQ5R1NrY3B6ZVVWa0RXVXZlUDhtcXd1M2xBMVpiOWxMVE1iSFQ5Wit1aUFuOW1FSVpCNE5qanJyS3UwQ0tNYjgxVmE5WGVnaS9kNUNtUg==', '2023-08-27 03:22:01 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(74, '#ALERT28082345833', 141, 1, 'UnVoRHF5c1RpbG1HQ2dpeVFuc0pQczhSeDIya0dyVURGY3RIMmRDcGZrc3RHOHlzK3RrVktRMDFmdWRuU0hCMnBEYWVrMEF2YzNvM05PN2N1SzJXVy9GV1ptVnNXRURWQnZDS3hHc0l0WllkSlNpd1NHL1RCQ09tcnVkTG1ORExHRmpvL1lOMDdkaTBmNU9DR2FTNExDWGw0elFVVjRWcFRibEtJWXJRYnNnZ1lkd09zZHhsZ0ZXQ29TUkhCempEcnhpZlF1U0wzK3g2Z0g3OFpjRDZCbnNiWXZCUGdVNks0dy8rLzhrMjJhUVVDUENQZHo4MHBoTVBHeDZrZ2hURQ==', '2023-08-28 09:35:21 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(75, '#ALERT28082399873', 142, 1, 'c2ZmakxmWEh4SFlWOXJqQnYxVE1jSFF4elJQY1FXdTBVMHBXVmFLMzY2RFNNKzhsaVpCSit6VzBWb1dwallJdG5YdkFPYVpBTWs5QXVyNTRGWitzNEk3SGdVRjJ4Q2x6QTJsaWVocytrOW55MUprRnZKWVRvcjhwLzRFYmkxem5hdVRrY29CTFIwY2d0WWNzTVA3ZkZzQkorbUhVY0w5MWFiRk15WmpTTE9weDM2d2EyNzMyaHQ2dTBiVFpkYXVpMkFhUWJuSnlKTjZaQmJHOVljTmpDZ1FhWHAyN1d2bXVwb252dnJDekdtSTJSVDFPSTVWYUJjQmZNOW9sQlV3Uw==', '2023-08-28 09:54:08 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(76, '#ALERT29082361423', 142, 1, 'c2ZmakxmWEh4SFlWOXJqQnYxVE1jSFF4elJQY1FXdTBVMHBXVmFLMzY2RFNNKzhsaVpCSit6VzBWb1dwallJdG5YdkFPYVpBTWs5QXVyNTRGWitzNElRZDV0RHMreTR0dVhRc25vamhJekRwNThVdlFIdUVpaVlKTWxJV0VyQzlJL09SQmNGRVJkdUhCcmgxT1FQY3l1V3hsVm5XWkQrWklsaThmdlZ1Tm9UYVFMRjdhdWR5S2VOK01NQUcvR1czYnVzVFVpaUtJdmgraDltaEUrcUVZcXZnSGNJUTNUeWVOSnd3a013MVdsTU1zUGFYQ3JpMXJkK0wwK2FYVUlMR1VGSm0rd1JJaXhMSWtUcVIvYlgwQ1E9PQ==', '2023-08-29 11:02:24 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(77, '#ALERT2908231113', 141, 1, 'UnVoRHF5c1RpbG1HQ2dpeVFuc0pQczhSeDIya0dyVURGY3RIMmRDcGZrc3RHOHlzK3RrVktRMDFmdWRuU0hCMnBEYWVrMEF2YzNvM05PN2N1SzJXVy8vbmJCdVdnVXdkUENZd2ZCVENvb1lhMFF6VEh0YkxjeDlxUlo4WE1DcXJMZW5uUDNVTXNXcW1aN1FhZVdnY05lcFd3WnczOXhMN1V1a0J3WmRvOGRZckxUc1Q5MVNuT1M1d2xZOHdXNGxXNytad2tIMWR2Y29BTEErMzhJVE1ZWjJKdlhJd05xTXhETXJsTnlZNXNxc0F2Y1FWN1pkNktsc0tzV01qWE05V0dmQm41MWxvazZ1UkdpL1FwOWJNa1E9PQ==', '2023-08-29 11:02:46 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(78, '#ALERT29082317909', 142, 1, 'c2ZmakxmWEh4SFlWOXJqQnYxVE1jSFF4elJQY1FXdTBVMHBXVmFLMzY2RFNNKzhsaVpCSit6VzBWb1dwallJdG5YdkFPYVpBTWs5QXVyNTRGWitzNE9uM28zOFhoT0w4QkxBQW9WTjMwWUpWTk9peklxVUlXbXZNU3pIbEJrblJaemYyUGlkRDY1ejRJcWpWUTdLdlMvY3EwbFlTaXZ2WXpmZW1pSHpZd2JDakhxQ0oya296aS9MdzFuZzZFQzFBNnB3MDcwVzllSEFMK0JsQ2JOT2daMjRFMm4vQXFXSXVOS1l2d1RNV2dYQWxhb3JUQlhlOHFWcndRZkNwRHFXbGJxeGhxVWorYXhpaUU0cnhudDNXcTJVN1JEQVMwbmE1bzUveXBuWVFWMWM9', '2023-08-29 11:05:17 am', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(79, '#ALERT29082327524', 30, 3, 'WnZubnBPblBIT1pwOHpXZkZPRVFnU0VpNTlndGN1Y3NoOEIzNFNrR2pDU1lJaTRrUnN2SldYVFlOd0JlMDNWZTJ6SHRFTFozRG5ZUVc4N0tqUFZBYUlvSm1ocHBqTlVCMlNEV2J3NEswemhiV0ZkQkVpSEk3TDRCNE5FWDQ0RGJrSDZFbitwekgybjkrNUVhK2dmc2xpZmpIa05uWTY5MjR2NVBQSE1mRzA1SVRCcysyOFdiUFhpN001SmRyV1JvWENsemJCclJKUWh1aUNTQUkvd0FwdlJ0UU04dTFCNjN5TTdCYVNhVkNqNjNpakd5SERGdWdPT0tydSsybVVZVXNtUldMb040YnRkZUJ6NlZIVTFqU2c9PQ==', '2023-08-29 01:16:55 pm', 'NEW', '', 'https://roofnassets.com/app/hr/ods', 'OD Form Received'),
(80, '#ALERT03/09/23/741800', 142, 1, 'M01iTGZjbHhtaUk4OFZydE1ST1RINnBaUjFlR0xSYVBtbHpWbWNzNG52ODZJdGpmN2hrb2N0WjFUL0c3L0dHZG1CQ013R0VFUEdyT1pkM0pmM09vYXcyalluQ3RETmthb01zTk9oaWQxZUFoaTBEblMyc3NHRU5NOWZxem12NXpRL0RoT1M0YlBSUG12cmc0UjFJR0ZGbGQ1YmZNMjRDcHF4QmdJbW9TRmk4WkxUZzBZN2lBV2gzVkhTM3JCeGZo', '2023-09-03 02:24:07 PM', 'NEW', '', 'https://roofnassets.com/app/ods', 'OD Form Received'),
(81, '#ALERT03/09/23/841563', 141, 1, 'QmV2bDJrTEFydjlsWkRVNXdNZk54RXgwNzJyT3RKWldFTzZ5RG5SN1E3ekhxRGtCQWo3WjRQNzEzTjNDU0tJY1hxci9KVDN1WEx1Wnp0eUdxTUE4OFJ6TDlnTlJGNldKZjA3OGpKaEorMFJRV1duaTBGUG9PN052T0QyanFwelJRRjJaVlV4TXlVUHREWXIrd0dId3BYUnB4bFB1YlZUOTFXa3dqWE93NkhZeHUrQkwwV2pobE4wR2dldXJhRm1z', '2023-09-03 02:28:43 PM', 'NEW', '', 'https://roofnassets.com/app/ods', 'OD Form Received'),
(82, '#ALERT24/09/23/158215', 155, 154, 'T0psZGdZZzIrejBHNHVUSFUwMHlRK05IK2tOQXlSUzBtamhoUkpFbTBPa0dnTGhTdE9sZXd4bWlCT2ZYL2RvdUV1c0V0MGM5R0FsdHBzaHk4eHFpTDlMeFpsRmNyT0pQZDdGUzVkUUJyQ1QxeEVwQ3FTTm4zOXFaQTltOFE0L3BpOGFJdGcrUDNac1JUVEpKTzVaZ1lBTnlKL3R2YTdRY0wwV2tPLzg4cmdFPQ==', '2023-09-24 04:13:31 PM', 'NEW', '', 'http://localhost/apna-real-estate/app/ods', 'OD Form Received');

-- --------------------------------------------------------

--
-- Table structure for table `od_forms`
--

CREATE TABLE `od_forms` (
  `OdFormId` int(10) NOT NULL,
  `OdReferenceId` varchar(100) NOT NULL,
  `OdMainUserId` int(10) NOT NULL,
  `OdTeamLeaderId` int(10) NOT NULL,
  `OdPermissionTimeFrom` varchar(30) NOT NULL,
  `OdPermissionTimeTo` varchar(30) NOT NULL,
  `OdRequestDate` varchar(40) NOT NULL,
  `OdBriefReason` varchar(1000) NOT NULL,
  `OdLeadMainId` int(100) NOT NULL,
  `OdLocationDetails` varchar(1000) NOT NULL,
  `OdCreatedBy` int(10) NOT NULL,
  `OdCreatedAt` varchar(40) NOT NULL,
  `OdUpdatedAt` varchar(40) NOT NULL,
  `OdUpdatedBy` varchar(40) NOT NULL,
  `ODFormStatus` varchar(100) NOT NULL DEFAULT 'NEW'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `od_forms`
--

INSERT INTO `od_forms` (`OdFormId`, `OdReferenceId`, `OdMainUserId`, `OdTeamLeaderId`, `OdPermissionTimeFrom`, `OdPermissionTimeTo`, `OdRequestDate`, `OdBriefReason`, `OdLeadMainId`, `OdLocationDetails`, `OdCreatedBy`, `OdCreatedAt`, `OdUpdatedAt`, `OdUpdatedBy`, `ODFormStatus`) VALUES
(1, '#OD23022350138', 88, 1, '04:37', '18:07', '2023-02-23', 'aHdwYVIvTzJCK1o5RWJiRmpQeDlaQT09', 0, 'Sector 48', 88, '2023-02-23 04:23:15 PM', '2023-02-23 04:24:40 PM', '1', 'REJECTED'),
(2, '#OD23022392380', 14, 1, '05:01', '05:31', '2023-02-23', 'c1VRcnJEMlgrbi9Wc1hkOWk5MENMZz09', 34780, 'Gurgaon ', 14, '2023-02-23 04:47:17 PM', '2023-02-23 04:47:55 PM', '1', 'REJECTED'),
(3, '#OD23022320455', 91, 11, '05:20', '05:50', '2023-02-23', 'aHdwYVIvTzJCK1o5RWJiRmpQeDlaQT09', 0, 'Sec 67 ', 91, '2023-02-23 05:06:19 PM', '2023-02-23 05:07:20 PM', '11', 'REJECTED'),
(4, '#OD23022361339', 75, 1, '10:00', '13:00', '2023-02-24', 'ekJZaEZZUEF5eTJpNFFXZzNodEk2TTYxR1M0V2hDWWp6RG9aV2RmZ0Y0NnM0YXdMSjFpejUyejlmVXF3Q0ErUQ==', 34780, 'Gurgaon', 75, '2023-02-23 06:44:12 PM', '2023-02-24 03:08:37 PM', '1', 'COMPLETED'),
(5, '#OD24022369581', 72, 1, '10:12', '06:42', '2023-02-19', 'bzhOYjgrSk1zWlptYS9yL0hnZ2twdz09', 74543, 'Jhajjar', 72, '2023-02-24 02:58:31 PM', '2023-02-24 03:08:08 PM', '1', 'APPROVED'),
(6, '#OD11032364767', 91, 11, '03:24', '06:54', '2023-03-09', 'alRXNzJ0eXFHU1cyTng1VHF4NDdjS2pHd0VHOVRnQlRUeSsyVGtPdHVMcnFOeFo5WVc5T0VtZlUvQ0dLTTlJRg==', 0, 'Sector 10a', 91, '2023-03-11 06:10:22 PM', '2023-03-13 08:55:35 AM', '11', 'APPROVED'),
(7, '#OD14032344873', 91, 11, '03:54', '19:29', '2023-03-11', 'WjJlRjhNZU9EclBncFhtYW10Z1krNEQzUkVpSzNSVjI4VTd0V3lxRk5xOWNHQVNGOWFKTU1PV3RRSXlHNkdsTQ==', 0, 'Sector 57', 91, '2023-03-14 11:40:55 AM', '2023-03-14 12:56:00 PM', '11', 'APPROVED'),
(8, '#OD14032311393', 21, 5, '10:00', '12:00', '2023-03-14', 'RHd1S29tMnhFcitxYlRrY1k4aDNCdz09', 0, 'tri nagar ', 21, '2023-03-14 05:03:05 PM', '2023-03-15 01:48:55 PM', '4', 'APPROVED'),
(9, '#OD21032321933', 102, 87, '10:00', '18:30', '2023-03-19', 'SE5Ed2hpdVVaaEFJby9VQmFwU3YwdEx5S1Vldms5QnV4cDJtSWdNU3dOND0=', 0, 'Aashiyara sec 37c ', 102, '2023-03-21 03:48:55 PM', '2023-04-01 03:49:03 PM', '4', 'APPROVED'),
(10, '#OD010423568', 80, 3, '04:06', '04:36', '2023-04-01', 'SkdpaDBtNDNQUFhCS1VJVUNDYmpqZz09', 0, 'GCC 88A', 80, '2023-04-01 03:52:26 PM', '2023-04-01 04:02:32 PM', '4', 'COMPLETED'),
(11, '#OD04052314500', 59, 1, '00:52', '06:37', '2023-04-27', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, '88A ', 59, '2023-05-04 11:38:13 am', '2023-05-04 12:22:20 pm', '1', 'APPROVED'),
(12, '#OD04052333097', 59, 1, '11:53', '12:23', '2023-04-28', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, '89 ', 59, '2023-05-04 11:39:05 am', '2023-05-04 12:22:34 pm', '1', 'APPROVED'),
(13, '#OD04052350814', 59, 1, '11:54', '12:24', '2023-04-29', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, '88a', 59, '2023-05-04 11:39:59 am', '2023-05-04 12:22:43 pm', '1', 'APPROVED'),
(14, '#OD04052375058', 59, 1, '11:55', '12:25', '2023-04-30', 'aHdwYVIvTzJCK1o5RWJiRmpQeDlaQT09', 0, 'Okhla ', 59, '2023-05-04 11:40:37 am', '2023-05-04 12:12:03 pm', '1', 'APPROVED'),
(15, '#OD05052341944', 59, 1, '10:41', '06:11', '2023-05-08', 'SURNMld5ZXJxWXI2ZVRWZEo1Q0p1Zz09', 27424, 'Na ', 59, '2023-05-05 03:27:20 pm', '2023-05-05 03:42:45 pm', '59', 'COMPLETED'),
(16, '#OD0505239326', 59, 1, '10:42', '06:12', '2023-04-09', 'OWpxb0lEaDJRc2FnVU5UcnlSOE5Udz09', 27424, 'Na ', 59, '2023-05-05 03:27:50 pm', '2023-05-05 03:42:33 pm', '59', 'APPROVED'),
(17, '#OD05052340803', 59, 1, '10:42', '18:28', '2023-04-11', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 112438, '88A ', 59, '2023-05-05 03:28:48 pm', '2023-05-05 03:42:08 pm', '59', 'APPROVED'),
(18, '#OD05052379507', 59, 1, '10:43', '06:13', '2023-04-26', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 27424, '89', 59, '2023-05-05 03:29:32 pm', '2023-05-05 03:41:56 pm', '59', 'APPROVED'),
(19, '#OD05052391887', 59, 1, '03:44', '04:14', '2023-04-13', 'SURNMld5ZXJxWXI2ZVRWZEo1Q0p1Zz09', 27424, 'Na', 59, '2023-05-05 03:30:18 pm', '2023-05-05 03:41:44 pm', '59', 'APPROVED'),
(20, '#OD05052324575', 59, 1, '03:45', '04:15', '2023-04-14', 'OWpxb0lEaDJRc2FnVU5UcnlSOE5Udz09', 27424, '', 59, '2023-05-05 03:30:38 pm', '2023-05-05 03:41:32 pm', '59', 'APPROVED'),
(21, '#OD0505233313', 59, 1, '03:45', '04:15', '2023-04-18', 'OWpxb0lEaDJRc2FnVU5UcnlSOE5Udz09', 27424, 'Na ', 59, '2023-05-05 03:31:03 pm', '2023-05-05 03:41:13 pm', '59', 'APPROVED'),
(22, '#OD11052340228', 30, 3, '11:00', '13:30', '2023-05-11', 'N3NrMXFlMCt3WFU2TkwrR0IwTGRiUT09', 0, 'Saket', 30, '2023-05-11 05:56:52 pm', '2023-05-11 05:57:56 pm', '1', 'REJECTED'),
(23, '#OD24062352835', 101, 11, '10:00', '06:50', '2023-06-24', 'VTlXS3YvSERQY0dFUVQwQWlsTjZOUT09', 0, 'Sector 37c aashiyana//', 101, '2023-06-24 11:14:11 am', '2023-08-04 01:07:37 pm', '11', 'APPROVED'),
(24, '#OD24062386619', 116, 11, '09:50', '18:34', '2023-06-24', 'WUladDVJdFBCWmQ2R3JaTFl5NVBIQT09', 0, 'Sec 37C Aashiyara', 116, '2023-06-24 06:05:31 pm', '2023-08-04 01:07:46 pm', '11', 'APPROVED'),
(25, '#OD2506233335', 116, 11, '13:38', '18:30', '2023-06-25', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, 'Sec 37 C Aashiyara', 116, '2023-06-25 06:31:46 pm', '2023-08-04 01:07:56 pm', '11', 'APPROVED'),
(26, '#OD08072347312', 101, 11, '03:00', '07:00', '2023-07-08', 'NzRLVkFWdVFHMExNKzUrdnpvQ1g3ZmYxUzRBNCtZVlYra2hjVmMvUmJ2Yz0=', 0, 'Saras city jhajjar ', 101, '2023-07-08 05:21:03 pm', '2023-08-04 01:07:21 pm', '11', 'APPROVED'),
(27, '#OD23072322059', 109, 1, '11:00', '13:00', '2023-07-23', 'RnRWQjZCeUdvZHJ1ejhVQnN4SDBObnAwMGRvemFIQ01IQlJIQi9uQkNDb09CSitxRGdLLzR0VzhDcmVRY25PaA==', 0, 'delhi', 109, '2023-07-23 03:36:28 pm', '2023-07-23 03:37:30 pm', '1', 'COMPLETED'),
(28, '#OD25072315239', 116, 11, '13:29', '14:29', '2023-07-25', 'bzhOYjgrSk1zWlptYS9yL0hnZ2twdz09', 0, '&lt;br /&gt;&lt;b&gt;Warning&lt;/b&gt;:  Undefined property: stdClass::$OdLocationDetails in &lt;b&gt;/home/u447740167/domains/roofnassets.com/public_html/include/forms/Update-OD-Request.php&lt;/b&gt; on line &lt;b&gt;51&lt;/b&gt;&lt;br /&gt;', 116, '2023-07-25 01:00:29 pm', '2023-08-04 01:08:16 pm', '11', 'APPROVED'),
(29, '#OD25072346233', 11, 1, '13:37', '14:37', '2023-07-25', 'M2d0MXpjVlpzYlZzN1F4SU1JZHN6YitmZW1lWTAxM05IdmJQWmNLUlh4MD0=', 0, '', 11, '2023-07-25 01:08:10 pm', '2023-08-04 01:09:41 pm', '11', 'REJECTED'),
(30, '#OD25072394323', 80, 3, '23:00', '14:00', '2023-07-26', 'T3hTT21aUFBXdDdvSFB0bFB5NzR0aW1oYm94dUlZREQzblJOTC80eGN5d1h4bEMzVjdDb0QzdHZ1WXd2S1h3YQ==', 0, 'Sector 21, Jhajjar', 80, '2023-07-25 04:00:16 pm', '2023-07-26 10:54:37 am', '3', 'REJECTED'),
(31, '#OD25072385094', 133, 7, '10:00', '17:00', '2023-07-22', 'bUNVN0hIZCtLeFVDdDN4aStDdjI3VHRaVXRiL1RhT09HdmhBdnlRRUJlST0=', 0, 'Sec 88 A Gurgaon', 133, '2023-07-25 04:01:45 pm', '2023-08-12 05:29:39 pm', '1', 'APPROVED'),
(32, '#OD25072386877', 30, 3, '10:00', '18:30', '2023-07-22', 'RGR0Z2hTdXZ5L01aR3NPODBXN1oxVG5EbFRScHpESDhqNkpFU2dxeEFZRnNiZG9hNnlLTmZZa0U3Z0IzYncvMQ==', 0, 'Jhajjar sec-21', 30, '2023-07-25 05:37:54 pm', '2023-07-27 03:59:41 pm', '30', 'REJECTED'),
(33, '#OD25072343379', 30, 3, '10:00', '18:30', '2023-07-23', 'ZXVsNlIxREJibTBSaEx4SkdlVmdxMXFIV2lnb3hmdXpwa21NeU9DemZMcz0=', 0, 'Jhajjar sec-21', 30, '2023-07-25 05:38:56 pm', '2023-07-27 03:59:56 pm', '30', 'REJECTED'),
(34, '#OD27072389459', 30, 3, '10:00', '18:30', '2023-07-22', 'ZXVsNlIxREJibTBSaEx4SkdlVmdxenZ0SFdiSHR3NFdXS0lRRVR6d01Maz0=', 0, '', 30, '2023-07-27 04:01:29 pm', '2023-07-28 03:51:58 pm', '3', 'APPROVED'),
(35, '#OD27072331924', 30, 3, '10:00', '18:30', '2023-07-23', 'RGR0Z2hTdXZ5L01aR3NPODBXN1oxVG5EbFRScHpESDhqNkpFU2dxeEFZSGFkRkdOYU5Fc1dpazBlWko1aWR3VA==', 0, 'Jhajjar sec-21', 30, '2023-07-27 04:02:01 pm', '2023-07-28 03:51:42 pm', '3', 'APPROVED'),
(36, '#OD29072395361', 116, 11, '10:00', '18:30', '2023-07-29', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, 'Sec- 37C Aashiyara II ', 116, '2023-07-29 10:01:45 am', '2023-07-31 01:01:04 pm', '1', 'APPROVED'),
(37, '#OD30072324810', 101, 11, '09:50', '06:50', '2023-07-29', 'bzhOYjgrSk1zWlptYS9yL0hnZ2twdz09', 0, 'Sector 37 c', 101, '2023-07-30 10:22:26 am', '2023-07-31 01:00:52 pm', '1', 'APPROVED'),
(38, '#OD30072392979', 101, 11, '10:00', '06:30', '2023-07-30', 'T05SZm8yQ3N5c2pCL1JMVElxUG14cmJjMTNQZmVBcnRIS2Q5cTZFZXJvQT0=', 123428, 'Sector 37C', 101, '2023-07-30 10:23:12 am', '2023-07-31 01:00:25 pm', '1', 'APPROVED'),
(39, '#OD30072310284', 116, 11, '10:00', '18:45', '2023-07-30', 'LzlxMGcybmtvcVlPUFoycFNxK3NRZz09', 0, 'Sec 37 C Aashi yara II ', 116, '2023-07-30 10:36:24 am', '2023-07-31 12:59:55 pm', '1', 'APPROVED'),
(40, '#OD30072396697', 80, 3, '22:15', '18:30', '2023-07-30', 'WUIvQ1VkNGF5QUVSNnB6TllPVGlVZz09', 0, 'Delhi', 80, '2023-07-30 11:46:06 am', '2023-08-02 03:23:36 pm', '3', 'REJECTED'),
(41, '#OD02082383948', 101, 11, '10:00', '06:30', '2023-08-02', 'UXh5TC9vUFFVVWdWNFhqQ3EyZ0ViLzZFS2hJOTVpZVN4V05sNGhhWkhRND0=', 0, 'Work home tha 144 and police 🚨', 101, '2023-08-02 10:18:16 am', '2023-08-03 03:10:19 pm', '1', 'REJECTED'),
(42, '#OD10082354640', 133, 7, '10:00', '18:35', '2023-08-10', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWdGtxbCs1UmphQmFxQVk2bkt2NkRhST0=', 0, 'No', 133, '2023-08-10 05:06:54 pm', '2023-08-10 07:30:52 pm', '1', 'REJECTED'),
(43, '#OD10082373164', 134, 7, '10:00', '18:30', '2023-08-10', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWdGtxbCs1UmphQmFxQVk2bkt2NkRhST0=', 0, 'No location ', 134, '2023-08-10 05:07:42 pm', '2023-08-10 07:30:45 pm', '1', 'REJECTED'),
(44, '#OD10082311016', 138, 85, '21:57', '18:34', '2023-08-08', 'RHkrZmp0Y3F5Tnd2Y1drelY4T1Exdz09', 0, 'No location', 138, '2023-08-10 05:07:48 pm', '2023-08-10 07:29:55 pm', '1', 'APPROVED'),
(45, '#OD10082345638', 137, 85, '10:00', '18:35', '2023-08-08', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWa0dyYytBN3ZWZHh4L0cxZUdKMS9hYz0=', 0, 'No location ', 137, '2023-08-10 05:08:35 pm', '2023-08-10 07:29:49 pm', '1', 'APPROVED'),
(46, '#OD1008231317', 138, 85, '22:00', '18:37', '2023-08-09', 'ZjNWVXBWeXdNZERDNVZ1dVgwYUt6dz09', 0, 'No location', 138, '2023-08-10 05:08:38 pm', '2023-08-10 07:29:29 pm', '1', 'APPROVED'),
(47, '#OD10082396566', 134, 7, '10:00', '18:30', '2023-08-08', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWdGtxbCs1UmphQmFxQVk2bkt2NkRhST0=', 0, 'Not location ', 134, '2023-08-10 05:08:41 pm', '2023-08-10 07:29:23 pm', '1', 'APPROVED'),
(48, '#OD10082373096', 133, 7, '10:00', '18:30', '2023-08-08', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWa0dyYytBN3ZWZHh4L0cxZUdKMS9hYz0=', 0, 'No location ', 133, '2023-08-10 05:09:22 pm', '2023-08-10 07:29:17 pm', '1', 'APPROVED'),
(49, '#OD10082332191', 134, 7, '10:00', '18:30', '2023-08-09', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWa0dyYytBN3ZWZHh4L0cxZUdKMS9hYz0=', 0, 'No location ', 134, '2023-08-10 05:09:34 pm', '2023-08-10 07:29:11 pm', '1', 'APPROVED'),
(50, '#OD10082367538', 133, 7, '10:00', '18:30', '2023-08-09', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWa0dyYytBN3ZWZHh4L0cxZUdKMS9hYz0=', 0, 'No location ', 133, '2023-08-10 05:09:55 pm', '2023-08-10 07:29:06 pm', '1', 'APPROVED'),
(51, '#OD10082382612', 137, 85, '10:00', '18:30', '2023-08-09', 'MkNzdHE3T29TR1czZEZxQ2RmMUFWa0dyYytBN3ZWZHh4L0cxZUdKMS9hYz0=', 0, 'No location ', 137, '2023-08-10 05:11:58 pm', '2023-08-10 07:28:58 pm', '1', 'APPROVED'),
(52, '#OD1108236275', 121, 96, '10:00', '18:30', '2023-08-08', 'RHkrZmp0Y3F5Tnd2Y1drelY4T1Exdz09', 0, '', 121, '2023-08-11 12:18:34 pm', '2023-08-11 12:20:11 pm', '96', 'APPROVED'),
(53, '#OD11082333381', 121, 96, '22:00', '18:30', '2023-08-09', 'bGtnaHk5NnhnYS9NcnllQXFoaHBOQT09', 0, '', 121, '2023-08-11 12:19:44 pm', '2023-08-11 12:20:04 pm', '96', 'APPROVED'),
(54, '#OD12082378749', 116, 11, '10:00', '18:30', '2023-08-12', 'ZnhsWk15SEw4b3ZESjdvUWtGUWloQT09', 0, 'Sec 88A Global height ', 116, '2023-08-12 10:22:34 am', '2023-08-12 11:20:31 am', '11', 'COMPLETED'),
(55, '#OD13082327777', 101, 11, '10:00', '14:43', '2023-08-13', 'cXNkcDNFZzdJTlpjdkJVd1BBazkxdz09', 0, 'Sector 88A', 101, '2023-08-13 01:15:02 pm', '2023-08-16 11:19:26 am', '11', 'APPROVED'),
(56, '#OD13082365748', 116, 11, '22:00', '17:20', '2023-08-13', 'WU1kSmtudkVsckU0cmpudVhLVVVQSGFyb2szbklVQXBhZ1BUQmp3S3ljUT0=', 0, 'Sector 88A ', 116, '2023-08-13 05:26:47 pm', '2023-08-16 11:19:28 am', '11', 'APPROVED'),
(57, '#OD13082362106', 128, 11, '10:15', '05:00', '2023-08-13', 'RW1VK3g0Q2RnVUZiRXdDVFEveS91dz09', 0, 'Sector 88A', 128, '2023-08-13 05:36:46 pm', '2023-08-16 11:19:30 am', '11', 'APPROVED'),
(58, '#OD18082376666', 101, 11, '10:00', '01:30', '2023-08-18', 'TFR0eDltZHJWMUROYXc2T2JsbGFNSDVoK2N3ek5zTEdSb2tmZnV4eWJZdkJSaXZoZEZCMzFmTStpNll5YytNag==', 0, 'Sector 21jhajjar ', 101, '2023-08-18 11:14:25 am', '2023-08-20 11:50:53 am', '11', 'APPROVED'),
(59, '#OD18082397001', 116, 11, '10:00', '13:00', '2023-08-18', 'N3NrMXFlMCt3WFU2TkwrR0IwTGRiUT09', 0, 'Saras city', 116, '2023-08-18 11:17:13 am', '2023-08-20 11:50:56 am', '11', 'APPROVED'),
(60, '#OD19082381218', 101, 11, '12:29', '07:00', '2023-08-19', 'UmFjb1NnWmF3OEJTNEkrUWpYUXdGTjVzNlJ5OFFMR2hSZ0oxZm54T29HVT0=', 123428, 'Sector 7 sohna gokulam ', 101, '2023-08-19 05:45:00 pm', '2023-08-20 11:50:44 am', '11', 'APPROVED'),
(61, '#OD19082334097', 116, 11, '12:30', '19:00', '2023-08-19', 'aWhPVWplWWxwSnc4MmlUWnlxc0N0N29CY3ZGLzFwWDM5Y0F0UFRyVjZ6cz0=', 0, 'Sec 7 Gokulam', 116, '2023-08-19 05:50:59 pm', '2023-08-20 11:50:43 am', '11', 'APPROVED'),
(62, '#OD20082322326', 91, 11, '10:15', '18:30', '2023-08-20', 'SkNsWTV0cjAvTTdNYlpMZzBmVGxBM3l6VHZTKzVQeWJ5ZXY1M2RaalpWZz0=', 0, 'Gokulam sohna ', 91, '2023-08-20 10:57:16 am', '2023-08-20 11:50:39 am', '11', 'COMPLETED'),
(63, '#OD20082394236', 101, 11, '10:00', '06:30', '2023-08-20', 'cXNkcDNFZzdJTlpjdkJVd1BBazkxdz09', 0, 'Sector 7 gokulam Site activity ', 101, '2023-08-20 12:15:02 pm', '2023-08-22 09:46:21 am', '11', 'APPROVED'),
(64, '#OD25082335715', 116, 11, '10:00', '18:35', '2023-08-05', 'UEdsUGdoWUNJVXNHSi9nemdKMHZNZz09', 0, 'Saras city jhajjar sec 7', 116, '2023-08-25 10:40:09 am', '2023-08-25 11:18:31 am', '11', 'APPROVED'),
(65, '#OD2608232655', 91, 11, '10:05', '18:30', '2023-08-26', 'NkIxOTVjN1RNK09XeFNzREg3VnVrZ3BKcGY4YmVIOWdmTXUyWlNiazY1UT0=', 0, 'Sohna sector 7', 91, '2023-08-26 10:39:00 am', '2023-08-26 11:22:06 am', '11', 'COMPLETED'),
(66, '#OD26082343491', 128, 11, '10:01', '06:30', '2023-08-26', 'NE9VN1oyOERPRUxmOGxCdzlFQnJvdz09', 139613, 'Gokulam sohna sector 7', 128, '2023-08-26 10:42:01 am', '2023-08-26 11:22:08 am', '11', 'COMPLETED'),
(67, '#OD2608239141', 30, 3, '10:00', '18:30', '2023-08-17', 'MEZUckRROFExbnd6SDM5dThuNVArcTJRdlpVYysxUkJEOW55RDE0ckhKVT0=', 0, 'Sohna Gokulam site', 30, '2023-08-26 11:20:09 am', '2023-08-26 12:32:10 pm', '3', 'APPROVED'),
(68, '#OD26082379565', 30, 3, '10:00', '18:30', '2023-08-18', 'ZWZzajErVzhXRGNOQjdBdk82dlltUT09', 0, 'Sohna Gokulam site', 30, '2023-08-26 11:20:44 am', '2023-08-26 12:31:53 pm', '3', 'APPROVED'),
(69, '#OD26082377903', 30, 3, '10:00', '18:30', '2023-08-25', 'RUF4aFJ2amlzUE1OUUQ3V0tqdGRZNDlFZGxQZ25yNDh3SDEyME85akk1TT0=', 0, 'Sohna Gokulam site', 30, '2023-08-26 11:21:21 am', '2023-08-26 12:31:36 pm', '3', 'APPROVED'),
(70, '#OD27082322669', 131, 5, '23:00', '15:10', '2023-08-23', 'RHd1S29tMnhFcitxYlRrY1k4aDNCdz09', 0, 'Sector 57', 131, '2023-08-27 01:13:55 pm', '2023-08-27 01:13:55 pm', '131', 'NEW'),
(71, '#OD27082383899', 20, 7, '22:00', '18:30', '2023-08-26', 'bzhOYjgrSk1zWlptYS9yL0hnZ2twdz09', 0, 'Gokulam Site visit ', 20, '2023-08-27 03:19:24 pm', '2023-09-09 07:36:36 PM', '7', 'REJECTED'),
(72, '#OD2708235486', 20, 7, '22:00', '18:30', '2023-08-27', 'bzhOYjgrSk1zWlptYS9yL0hnZ2twdz09', 0, 'Gokulam Site visit ', 20, '2023-08-27 03:20:25 pm', '2023-09-09 07:36:29 PM', '7', 'REJECTED'),
(73, '#OD27082379497', 20, 7, '13:00', '18:30', '2023-08-23', 'Z056UkNOakx3RHI3Q3ByQWdvUlgrT01iTnQrMFZ4QUpSU085UnF4c3VuST0=', 0, 'Saras city Jhajjar ', 20, '2023-08-27 03:22:01 pm', '2023-09-09 07:36:06 PM', '7', 'REJECTED'),
(74, '#OD28082334499', 141, 1, '09:30', '06:30', '2023-08-28', 'c0Z6VlFPanBLeUgxM0lDQVNaTnp1QT09', 0, 'Hone', 141, '2023-08-28 09:35:21 am', '2023-08-29 10:46:16 am', '1', 'APPROVED'),
(75, '#OD28082338373', 142, 1, '09:30', '18:30', '2023-08-28', 'dXU5eFJoZVUxNy93RjRDdlNxZ3dxQT09', 0, 'Home ', 142, '2023-08-28 09:54:08 am', '2023-08-29 10:46:06 am', '1', 'APPROVED'),
(76, '#OD29082378440', 142, 1, '09:30', '18:30', '2023-08-19', 'WUdKYkRJZnZGSFZZUkJyN1ZocG9pblA1TzlHSExaUEl3N0ZRTDVPVkk2UT0=', 174854, 'Office ', 142, '2023-08-29 11:02:24 am', '2023-08-29 11:02:36 am', '1', 'APPROVED'),
(77, '#OD29082363775', 141, 1, '09:30', '18:30', '2023-08-19', 'aEU4WG01VFlkR3pPUHNYcXJ3Q3ZueVhOdVc0bld4S2JxVUJUcFRUQmhhbz0=', 0, 'In office ', 141, '2023-08-29 11:02:46 am', '2023-08-29 11:05:22 am', '1', 'APPROVED'),
(78, '#OD29082346384', 142, 1, '11:32', '12:32', '2023-08-20', 'cjFIYWhaMW1hTTB6K2tyTHlsWll1aDNRQzJsYm9zVWRsamVxT0hPeW8zc1k5NDhKS1dKS2tacHJiZU5nWG9CSg==', 174854, '', 142, '2023-08-29 11:05:17 am', '2023-08-29 11:05:38 am', '1', 'REJECTED'),
(79, '#OD29082362705', 30, 3, '22:00', '18:30', '2023-08-28', 'TldLVWdITnVzVDBaSklnMGZlazk0N05hT3ZlUXJ0bHBRV081UTY3L2FIQT0=', 0, 'Park hospital Gurgaon', 30, '2023-08-29 01:16:55 pm', '2023-09-03 04:14:50 PM', '3', 'REJECTED'),
(80, '#OD03/09/23/606155', 142, 1, '09:30', '18:30', '2023-09-01', 'c2wxZWMrUHVVQWhsbjJGenMwTkxmSDZGdDB5OEZnRWd2WWdaTXU4S001UT0=', 0, 'Home ', 142, '2023-09-03 02:24:07 PM', '2023-09-03 02:24:37 PM', '1', 'APPROVED'),
(81, '#OD03/09/23/58541', 141, 1, '09:30', '18:30', '2023-09-01', 'c2wxZWMrUHVVQWhsbjJGenMwTkxmSDZGdDB5OEZnRWd2WWdaTXU4S001UT0=', 0, 'Home ', 141, '2023-09-03 02:28:43 PM', '2023-09-03 03:18:48 PM', '1', 'APPROVED'),
(82, '#OD24/09/23/166290', 155, 154, '16:43', '17:43', '2023-09-24', 'QVpvaURBS0R0aE5hRlYrcGtKZWQzQT09', 0, 'testing', 155, '2023-09-24 04:13:31 PM', '2023-09-24 04:14:01 PM', '1', 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `od_form_attachements`
--

CREATE TABLE `od_form_attachements` (
  `OdFormAttachmentId` int(100) NOT NULL,
  `OdFormMainId` varchar(100) NOT NULL,
  `OdFormAttachedFile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `od_form_attachements`
--

INSERT INTO `od_form_attachements` (`OdFormAttachmentId`, `OdFormMainId`, `OdFormAttachedFile`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', ''),
(19, '', ''),
(20, '', ''),
(21, '', ''),
(22, '', ''),
(23, '', ''),
(24, '', ''),
(25, '', ''),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, '', ''),
(30, '', ''),
(31, '', ''),
(32, '', ''),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(48, '', ''),
(49, '', ''),
(50, '', ''),
(51, '', ''),
(52, '', ''),
(53, '', ''),
(54, '', ''),
(55, '', ''),
(56, '', ''),
(57, '', ''),
(58, '', ''),
(59, '', ''),
(60, '', ''),
(61, '', ''),
(62, '', ''),
(63, '', ''),
(64, '', ''),
(65, '', ''),
(66, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, '', ''),
(77, '', ''),
(78, '', ''),
(79, '', ''),
(80, '', ''),
(81, '', ''),
(82, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `od_form_status`
--

CREATE TABLE `od_form_status` (
  `OdFormStatuslId` int(10) NOT NULL,
  `OdFormMainId` int(10) NOT NULL,
  `OdFormStatusAddedBy` int(10) NOT NULL,
  `OdFormStatusRemarks` varchar(1000) NOT NULL,
  `OdFormStatusAddedAt` varchar(40) NOT NULL,
  `OdFormStatus` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `od_form_status`
--

INSERT INTO `od_form_status` (`OdFormStatuslId`, `OdFormMainId`, `OdFormStatusAddedBy`, `OdFormStatusRemarks`, `OdFormStatusAddedAt`, `OdFormStatus`) VALUES
(1, 1, 88, 'OD Request sent!', '2023-02-23 04:23:15 PM', 'NEW'),
(2, 1, 1, 'OD Request is REJECTED!', '2023-02-23 04:24:40 PM', 'REJECTED'),
(3, 2, 14, 'OD Request sent!', '2023-02-23 04:47:17 PM', 'NEW'),
(4, 2, 1, 'OD Request is !', '2023-02-23 04:47:55 PM', ''),
(5, 3, 91, 'OD Request sent!', '2023-02-23 05:06:19 PM', 'NEW'),
(6, 3, 11, 'OD Request is !', '2023-02-23 05:07:20 PM', ''),
(7, 4, 75, 'OD Request sent!', '2023-02-23 06:44:12 PM', 'NEW'),
(8, 4, 1, 'OD Request is APPROVED!', '2023-02-24 11:38:27 AM', 'APPROVED'),
(9, 4, 1, 'OD Request is ACTIVE!', '2023-02-24 11:38:29 AM', 'ACTIVE'),
(10, 5, 72, 'OD Request sent!', '2023-02-24 02:58:31 PM', 'NEW'),
(11, 5, 1, 'OD Request is APPROVED!', '2023-02-24 03:08:08 PM', 'APPROVED'),
(12, 4, 1, 'OD Request is !', '2023-02-24 03:08:37 PM', ''),
(13, 6, 91, 'OD Request sent!', '2023-03-11 06:10:22 PM', 'NEW'),
(14, 6, 11, 'OD Request is APPROVED!', '2023-03-13 08:55:35 AM', 'APPROVED'),
(15, 7, 91, 'OD Request sent!', '2023-03-14 11:40:55 AM', 'NEW'),
(16, 7, 11, 'OD Request is APPROVED!', '2023-03-14 12:56:00 PM', 'APPROVED'),
(17, 8, 21, 'OD Request sent!', '2023-03-14 05:03:05 PM', 'NEW'),
(18, 8, 4, 'OD Request is APPROVED!', '2023-03-15 01:48:55 PM', 'APPROVED'),
(19, 9, 102, 'OD Request sent!', '2023-03-21 03:48:55 PM', 'NEW'),
(20, 9, 87, 'OD Request is APPROVED!', '2023-03-21 03:49:30 PM', 'APPROVED'),
(21, 9, 4, 'OD Request is !', '2023-03-21 03:51:33 PM', ''),
(22, 9, 4, 'OD Request is !', '2023-03-21 03:51:55 PM', ''),
(23, 9, 4, 'OD Request is !', '2023-04-01 03:49:03 PM', ''),
(24, 10, 80, 'OD Request sent!', '2023-04-01 03:52:26 PM', 'NEW'),
(25, 10, 3, 'OD Request is APPROVED!', '2023-04-01 03:57:41 PM', 'APPROVED'),
(26, 10, 0, 'OD Request is ACTIVE!', '2023-04-01 03:57:42 PM', 'ACTIVE'),
(27, 10, 4, 'OD Request is !', '2023-04-01 04:02:30 PM', ''),
(28, 10, 4, 'OD Request is !', '2023-04-01 04:02:32 PM', ''),
(29, 10, 0, 'OD Request is COMPLETED!', '2023-04-02 04:44:21 AM', 'COMPLETED'),
(30, 11, 59, 'OD Request sent!', '2023-05-04 11:38:13 am', 'NEW'),
(31, 12, 59, 'OD Request sent!', '2023-05-04 11:39:05 am', 'NEW'),
(32, 13, 59, 'OD Request sent!', '2023-05-04 11:39:59 am', 'NEW'),
(33, 14, 59, 'OD Request sent!', '2023-05-04 11:40:37 am', 'NEW'),
(34, 14, 1, 'OD Request is APPROVED!', '2023-05-04 12:12:03 pm', 'APPROVED'),
(35, 11, 1, 'OD Request is APPROVED!', '2023-05-04 12:22:20 pm', 'APPROVED'),
(36, 12, 1, 'OD Request is APPROVED!', '2023-05-04 12:22:34 pm', 'APPROVED'),
(37, 13, 1, 'OD Request is APPROVED!', '2023-05-04 12:22:43 pm', 'APPROVED'),
(38, 15, 59, 'OD Request sent!', '2023-05-05 03:27:20 pm', 'NEW'),
(39, 16, 59, 'OD Request sent!', '2023-05-05 03:27:50 pm', 'NEW'),
(40, 17, 59, 'OD Request sent!', '2023-05-05 03:28:48 pm', 'NEW'),
(41, 18, 59, 'OD Request sent!', '2023-05-05 03:29:32 pm', 'NEW'),
(42, 19, 59, 'OD Request sent!', '2023-05-05 03:30:18 pm', 'NEW'),
(43, 20, 59, 'OD Request sent!', '2023-05-05 03:30:38 pm', 'NEW'),
(44, 21, 59, 'OD Request sent!', '2023-05-05 03:31:03 pm', 'NEW'),
(45, 21, 59, 'OD Request is !', '2023-05-05 03:41:13 pm', ''),
(46, 20, 59, 'OD Request is !', '2023-05-05 03:41:32 pm', ''),
(47, 19, 59, 'OD Request is !', '2023-05-05 03:41:44 pm', ''),
(48, 18, 59, 'OD Request is !', '2023-05-05 03:41:56 pm', ''),
(49, 17, 59, 'OD Request is !', '2023-05-05 03:42:08 pm', ''),
(50, 16, 59, 'OD Request is !', '2023-05-05 03:42:33 pm', ''),
(51, 15, 59, 'OD Request is !', '2023-05-05 03:42:45 pm', ''),
(52, 15, 0, 'OD Request is ACTIVE!', '2023-05-08 02:28:14 am', 'ACTIVE'),
(53, 15, 0, 'OD Request is COMPLETED!', '2023-05-09 03:13:45 am', 'COMPLETED'),
(54, 22, 30, 'OD Request sent!', '2023-05-11 05:56:52 pm', 'NEW'),
(55, 22, 1, 'OD Request is REJECTED!', '2023-05-11 05:57:56 pm', 'REJECTED'),
(56, 23, 101, 'OD Request sent!', '2023-06-24 11:14:11 am', 'NEW'),
(57, 24, 116, 'OD Request sent!', '2023-06-24 06:05:31 pm', 'NEW'),
(58, 25, 116, 'OD Request sent!', '2023-06-25 06:31:46 pm', 'NEW'),
(59, 26, 101, 'OD Request sent!', '2023-07-08 05:21:03 pm', 'NEW'),
(60, 27, 109, 'OD Request sent!', '2023-07-23 03:36:28 pm', 'NEW'),
(61, 27, 1, 'OD Request is APPROVED!', '2023-07-23 03:37:30 pm', 'APPROVED'),
(62, 27, 13, 'OD Request is ACTIVE!', '2023-07-23 03:37:31 pm', 'ACTIVE'),
(63, 27, 138, 'OD Request is COMPLETED!', '2023-07-24 12:09:53 am', 'COMPLETED'),
(64, 28, 116, 'OD Request sent!', '2023-07-25 01:00:29 pm', 'NEW'),
(65, 29, 11, 'OD Request sent!', '2023-07-25 01:08:10 pm', 'NEW'),
(66, 29, 1, 'OD Request is REJECTED!', '2023-07-25 01:09:35 pm', 'REJECTED'),
(67, 30, 80, 'OD Request sent!', '2023-07-25 04:00:16 pm', 'NEW'),
(68, 31, 133, 'OD Request sent!', '2023-07-25 04:01:45 pm', 'NEW'),
(69, 32, 30, 'OD Request sent!', '2023-07-25 05:37:54 pm', 'NEW'),
(70, 33, 30, 'OD Request sent!', '2023-07-25 05:38:56 pm', 'NEW'),
(71, 33, 3, 'OD Request is REJECTED!', '2023-07-26 10:54:24 am', 'REJECTED'),
(72, 32, 3, 'OD Request is REJECTED!', '2023-07-26 10:54:30 am', 'REJECTED'),
(73, 30, 3, 'OD Request is REJECTED!', '2023-07-26 10:54:37 am', 'REJECTED'),
(74, 32, 30, 'OD Request is !', '2023-07-27 03:59:41 pm', ''),
(75, 33, 30, 'OD Request is !', '2023-07-27 03:59:56 pm', ''),
(76, 34, 30, 'OD Request sent!', '2023-07-27 04:01:29 pm', 'NEW'),
(77, 35, 30, 'OD Request sent!', '2023-07-27 04:02:01 pm', 'NEW'),
(78, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:33 pm', 'APPROVED'),
(79, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:35 pm', 'APPROVED'),
(80, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:37 pm', 'APPROVED'),
(81, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:38 pm', 'APPROVED'),
(82, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:40 pm', 'APPROVED'),
(83, 35, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:42 pm', 'APPROVED'),
(84, 34, 3, 'OD Request is APPROVED!', '2023-07-28 03:51:58 pm', 'APPROVED'),
(85, 36, 116, 'OD Request sent!', '2023-07-29 10:01:45 am', 'NEW'),
(86, 37, 101, 'OD Request sent!', '2023-07-30 10:22:26 am', 'NEW'),
(87, 38, 101, 'OD Request sent!', '2023-07-30 10:23:12 am', 'NEW'),
(88, 39, 116, 'OD Request sent!', '2023-07-30 10:36:24 am', 'NEW'),
(89, 40, 80, 'OD Request sent!', '2023-07-30 11:46:06 am', 'NEW'),
(90, 39, 1, 'OD Request is APPROVED!', '2023-07-31 12:59:55 pm', 'APPROVED'),
(91, 38, 1, 'OD Request is APPROVED!', '2023-07-31 01:00:25 pm', 'APPROVED'),
(92, 37, 1, 'OD Request is APPROVED!', '2023-07-31 01:00:52 pm', 'APPROVED'),
(93, 36, 1, 'OD Request is APPROVED!', '2023-07-31 01:01:04 pm', 'APPROVED'),
(94, 41, 101, 'OD Request sent!', '2023-08-02 10:18:16 am', 'NEW'),
(95, 40, 3, 'OD Request is REJECTED!', '2023-08-02 03:23:36 pm', 'REJECTED'),
(96, 41, 1, 'OD Request is REJECTED!', '2023-08-03 03:10:19 pm', 'REJECTED'),
(97, 26, 11, 'OD Request is APPROVED!', '2023-08-04 01:07:17 pm', 'APPROVED'),
(98, 26, 11, 'OD Request is APPROVED!', '2023-08-04 01:07:21 pm', 'APPROVED'),
(99, 23, 11, 'OD Request is APPROVED!', '2023-08-04 01:07:37 pm', 'APPROVED'),
(100, 24, 11, 'OD Request is APPROVED!', '2023-08-04 01:07:46 pm', 'APPROVED'),
(101, 25, 11, 'OD Request is APPROVED!', '2023-08-04 01:07:56 pm', 'APPROVED'),
(102, 28, 11, 'OD Request is APPROVED!', '2023-08-04 01:08:16 pm', 'APPROVED'),
(103, 29, 11, 'OD Request is !', '2023-08-04 01:09:41 pm', ''),
(104, 42, 133, 'OD Request sent!', '2023-08-10 05:06:54 pm', 'NEW'),
(105, 43, 134, 'OD Request sent!', '2023-08-10 05:07:42 pm', 'NEW'),
(106, 44, 138, 'OD Request sent!', '2023-08-10 05:07:48 pm', 'NEW'),
(107, 45, 137, 'OD Request sent!', '2023-08-10 05:08:35 pm', 'NEW'),
(108, 46, 138, 'OD Request sent!', '2023-08-10 05:08:38 pm', 'NEW'),
(109, 47, 134, 'OD Request sent!', '2023-08-10 05:08:41 pm', 'NEW'),
(110, 48, 133, 'OD Request sent!', '2023-08-10 05:09:22 pm', 'NEW'),
(111, 49, 134, 'OD Request sent!', '2023-08-10 05:09:34 pm', 'NEW'),
(112, 50, 133, 'OD Request sent!', '2023-08-10 05:09:55 pm', 'NEW'),
(113, 51, 137, 'OD Request sent!', '2023-08-10 05:11:58 pm', 'NEW'),
(114, 51, 1, 'OD Request is APPROVED!', '2023-08-10 07:28:58 pm', 'APPROVED'),
(115, 50, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:06 pm', 'APPROVED'),
(116, 49, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:11 pm', 'APPROVED'),
(117, 48, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:17 pm', 'APPROVED'),
(118, 47, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:23 pm', 'APPROVED'),
(119, 46, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:29 pm', 'APPROVED'),
(120, 45, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:49 pm', 'APPROVED'),
(121, 44, 1, 'OD Request is APPROVED!', '2023-08-10 07:29:55 pm', 'APPROVED'),
(122, 43, 1, 'OD Request is REJECTED!', '2023-08-10 07:30:45 pm', 'REJECTED'),
(123, 42, 1, 'OD Request is REJECTED!', '2023-08-10 07:30:52 pm', 'REJECTED'),
(124, 52, 121, 'OD Request sent!', '2023-08-11 12:18:34 pm', 'NEW'),
(125, 53, 121, 'OD Request sent!', '2023-08-11 12:19:44 pm', 'NEW'),
(126, 53, 96, 'OD Request is APPROVED!', '2023-08-11 12:20:04 pm', 'APPROVED'),
(127, 52, 96, 'OD Request is APPROVED!', '2023-08-11 12:20:11 pm', 'APPROVED'),
(128, 54, 116, 'OD Request sent!', '2023-08-12 10:22:34 am', 'NEW'),
(129, 54, 11, 'OD Request is APPROVED!', '2023-08-12 11:20:31 am', 'APPROVED'),
(130, 54, 11, 'OD Request is ACTIVE!', '2023-08-12 11:20:33 am', 'ACTIVE'),
(131, 31, 1, 'OD Request is APPROVED!', '2023-08-12 05:29:39 pm', 'APPROVED'),
(132, 54, 0, 'OD Request is COMPLETED!', '2023-08-13 04:47:35 am', 'COMPLETED'),
(133, 55, 101, 'OD Request sent!', '2023-08-13 01:15:02 pm', 'NEW'),
(134, 56, 116, 'OD Request sent!', '2023-08-13 05:26:47 pm', 'NEW'),
(135, 57, 128, 'OD Request sent!', '2023-08-13 05:36:46 pm', 'NEW'),
(136, 55, 11, 'OD Request is APPROVED!', '2023-08-16 11:19:26 am', 'APPROVED'),
(137, 56, 11, 'OD Request is APPROVED!', '2023-08-16 11:19:28 am', 'APPROVED'),
(138, 57, 11, 'OD Request is APPROVED!', '2023-08-16 11:19:30 am', 'APPROVED'),
(139, 58, 101, 'OD Request sent!', '2023-08-18 11:14:25 am', 'NEW'),
(140, 59, 116, 'OD Request sent!', '2023-08-18 11:17:13 am', 'NEW'),
(141, 60, 101, 'OD Request sent!', '2023-08-19 05:45:00 pm', 'NEW'),
(142, 61, 116, 'OD Request sent!', '2023-08-19 05:50:59 pm', 'NEW'),
(143, 62, 91, 'OD Request sent!', '2023-08-20 10:57:16 am', 'NEW'),
(144, 62, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:34 am', 'APPROVED'),
(145, 62, 11, 'OD Request is ACTIVE!', '2023-08-20 11:50:36 am', 'ACTIVE'),
(146, 62, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:39 am', 'APPROVED'),
(147, 62, 127, 'OD Request is ACTIVE!', '2023-08-20 11:50:42 am', 'ACTIVE'),
(148, 61, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:43 am', 'APPROVED'),
(149, 60, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:44 am', 'APPROVED'),
(150, 58, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:53 am', 'APPROVED'),
(151, 59, 11, 'OD Request is APPROVED!', '2023-08-20 11:50:56 am', 'APPROVED'),
(152, 63, 101, 'OD Request sent!', '2023-08-20 12:15:02 pm', 'NEW'),
(153, 62, 0, 'OD Request is COMPLETED!', '2023-08-21 01:03:58 am', 'COMPLETED'),
(154, 63, 11, 'OD Request is APPROVED!', '2023-08-22 09:46:21 am', 'APPROVED'),
(155, 64, 116, 'OD Request sent!', '2023-08-25 10:40:09 am', 'NEW'),
(156, 64, 11, 'OD Request is APPROVED!', '2023-08-25 11:18:31 am', 'APPROVED'),
(157, 65, 91, 'OD Request sent!', '2023-08-26 10:39:00 am', 'NEW'),
(158, 66, 128, 'OD Request sent!', '2023-08-26 10:42:01 am', 'NEW'),
(159, 67, 30, 'OD Request sent!', '2023-08-26 11:20:09 am', 'NEW'),
(160, 68, 30, 'OD Request sent!', '2023-08-26 11:20:44 am', 'NEW'),
(161, 69, 30, 'OD Request sent!', '2023-08-26 11:21:21 am', 'NEW'),
(162, 66, 11, 'OD Request is APPROVED!', '2023-08-26 11:22:01 am', 'APPROVED'),
(163, 66, 11, 'OD Request is ACTIVE!', '2023-08-26 11:22:03 am', 'ACTIVE'),
(164, 65, 11, 'OD Request is APPROVED!', '2023-08-26 11:22:06 am', 'APPROVED'),
(165, 65, 21, 'OD Request is ACTIVE!', '2023-08-26 11:22:07 am', 'ACTIVE'),
(166, 66, 11, 'OD Request is APPROVED!', '2023-08-26 11:22:08 am', 'APPROVED'),
(167, 66, 21, 'OD Request is ACTIVE!', '2023-08-26 11:22:10 am', 'ACTIVE'),
(168, 69, 3, 'OD Request is APPROVED!', '2023-08-26 12:31:30 pm', 'APPROVED'),
(169, 69, 3, 'OD Request is APPROVED!', '2023-08-26 12:31:33 pm', 'APPROVED'),
(170, 69, 3, 'OD Request is APPROVED!', '2023-08-26 12:31:35 pm', 'APPROVED'),
(171, 69, 3, 'OD Request is APPROVED!', '2023-08-26 12:31:36 pm', 'APPROVED'),
(172, 68, 3, 'OD Request is APPROVED!', '2023-08-26 12:31:53 pm', 'APPROVED'),
(173, 67, 3, 'OD Request is APPROVED!', '2023-08-26 12:32:10 pm', 'APPROVED'),
(174, 66, 0, 'OD Request is COMPLETED!', '2023-08-27 02:45:28 am', 'COMPLETED'),
(175, 65, 0, 'OD Request is COMPLETED!', '2023-08-27 02:45:28 am', 'COMPLETED'),
(176, 70, 131, 'OD Request sent!', '2023-08-27 01:13:55 pm', 'NEW'),
(177, 71, 20, 'OD Request sent!', '2023-08-27 03:19:24 pm', 'NEW'),
(178, 72, 20, 'OD Request sent!', '2023-08-27 03:20:25 pm', 'NEW'),
(179, 73, 20, 'OD Request sent!', '2023-08-27 03:22:01 pm', 'NEW'),
(180, 74, 141, 'OD Request sent!', '2023-08-28 09:35:21 am', 'NEW'),
(181, 75, 142, 'OD Request sent!', '2023-08-28 09:54:08 am', 'NEW'),
(182, 75, 1, 'OD Request is APPROVED!', '2023-08-29 10:46:06 am', 'APPROVED'),
(183, 74, 1, 'OD Request is APPROVED!', '2023-08-29 10:46:16 am', 'APPROVED'),
(184, 76, 142, 'OD Request sent!', '2023-08-29 11:02:24 am', 'NEW'),
(185, 76, 1, 'OD Request is APPROVED!', '2023-08-29 11:02:36 am', 'APPROVED'),
(186, 77, 141, 'OD Request sent!', '2023-08-29 11:02:46 am', 'NEW'),
(187, 78, 142, 'OD Request sent!', '2023-08-29 11:05:17 am', 'NEW'),
(188, 77, 1, 'OD Request is APPROVED!', '2023-08-29 11:05:22 am', 'APPROVED'),
(189, 78, 1, 'OD Request is REJECTED!', '2023-08-29 11:05:38 am', 'REJECTED'),
(190, 79, 30, 'OD Request sent!', '2023-08-29 01:16:55 pm', 'NEW'),
(191, 80, 142, 'OD Request sent!', '2023-09-03 02:24:07 PM', 'NEW'),
(192, 80, 1, 'OD Request is APPROVED!', '2023-09-03 02:24:37 PM', 'APPROVED'),
(193, 81, 141, 'OD Request sent!', '2023-09-03 02:28:43 PM', 'NEW'),
(194, 81, 1, 'OD Request is APPROVED!', '2023-09-03 03:18:48 PM', 'APPROVED'),
(195, 79, 3, 'OD Request is REJECTED!', '2023-09-03 04:14:43 PM', 'REJECTED'),
(196, 79, 3, 'OD Request is REJECTED!', '2023-09-03 04:14:50 PM', 'REJECTED'),
(197, 73, 7, 'OD Request is REJECTED!', '2023-09-09 07:36:06 PM', 'REJECTED'),
(198, 72, 7, 'OD Request is REJECTED!', '2023-09-09 07:36:17 PM', 'REJECTED'),
(199, 72, 7, 'OD Request is REJECTED!', '2023-09-09 07:36:29 PM', 'REJECTED'),
(200, 71, 7, 'OD Request is REJECTED!', '2023-09-09 07:36:36 PM', 'REJECTED'),
(201, 82, 155, 'OD Request sent!', '2023-09-24 04:13:31 PM', 'NEW'),
(202, 82, 1, 'OD Request is APPROVED!', '2023-09-24 04:14:01 PM', 'APPROVED'),
(203, 82, 1, 'OD Request is ACTIVE!', '2023-09-24 04:14:14 PM', 'ACTIVE'),
(204, 82, 1, 'OD Request is COMPLETED!', '2023-09-25 10:08:55 AM', 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `payrolls_id` int(10) NOT NULL,
  `payrolls_ref_no` varchar(100) NOT NULL,
  `payrolls_from_date` varchar(40) NOT NULL,
  `payrolls_to_date` varchar(40) NOT NULL,
  `payrolls_type` varchar(100) NOT NULL,
  `payrolls_status` varchar(100) NOT NULL,
  `payrolls_created_at` varchar(40) NOT NULL,
  `payrolls_main_user_id` int(10) NOT NULL,
  `payroll_net_presents` int(2) NOT NULL,
  `payroll_short_leaves` int(2) NOT NULL,
  `payroll_holidays` int(2) NOT NULL,
  `payroll_total_presents` int(10) NOT NULL,
  `payroll_total_absants` int(10) NOT NULL,
  `payroll_total_lates` int(10) NOT NULL,
  `payroll_total_meetings` int(10) NOT NULL,
  `payroll_total_leaves` int(10) NOT NULL,
  `payroll_half_days` int(2) NOT NULL,
  `payroll_updated_at` varchar(40) NOT NULL,
  `payroll_closed_at` varchar(40) NOT NULL,
  `payroll_mail_sent_at` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`payrolls_id`, `payrolls_ref_no`, `payrolls_from_date`, `payrolls_to_date`, `payrolls_type`, `payrolls_status`, `payrolls_created_at`, `payrolls_main_user_id`, `payroll_net_presents`, `payroll_short_leaves`, `payroll_holidays`, `payroll_total_presents`, `payroll_total_absants`, `payroll_total_lates`, `payroll_total_meetings`, `payroll_total_leaves`, `payroll_half_days`, `payroll_updated_at`, `payroll_closed_at`, `payroll_mail_sent_at`) VALUES
(1, '#PRN07092331420', '2023-09-1', '2023-09-30', '2023-09', 'CLOSED', '2023-09-07 12:40:59 PM', 126, 3, 0, 0, 3, 0, 0, 0, 0, 0, '2023-09-07 12:40:59 PM', '2023-09-07 12:40:59 PM', ''),
(2, '#PRN22092343919', '2023-09-1', '2023-09-30', '2023-09', 'CLOSED', '2023-09-22 11:00:52 AM', 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-22 11:00:52 AM', '2023-09-22 11:00:52 AM', ''),
(3, '#PRN09122349087', '2023-12-1', '2023-12-31', '2023-12', 'CLOSED', '2023-12-09 11:25:12 AM', 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-09 11:25:12 AM', '2023-12-09 11:25:12 AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_allowances`
--

CREATE TABLE `payroll_allowances` (
  `pay_allowance_id` int(10) NOT NULL,
  `payroll_main_id` int(10) NOT NULL,
  `pay_allowance_name` varchar(255) NOT NULL,
  `pay_allowance_amount` int(10) NOT NULL,
  `pay_allowance_descriptions` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_allowances`
--

INSERT INTO `payroll_allowances` (`pay_allowance_id`, `payroll_main_id`, `pay_allowance_name`, `pay_allowance_amount`, `pay_allowance_descriptions`) VALUES
(1, 1, 'MONTHLY Support', 19000, ' @ FIX_AMOUNT&lt;br&gt; valid from 01 Sep, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deductions`
--

CREATE TABLE `payroll_deductions` (
  `pay_deduction_id` int(10) NOT NULL,
  `payroll_main_id` int(10) NOT NULL,
  `pay_deduction_name` varchar(255) NOT NULL,
  `pay_deduction_amount` int(10) NOT NULL,
  `pay_deduction_descriptions` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_deductions`
--

INSERT INTO `payroll_deductions` (`pay_deduction_id`, `payroll_main_id`, `pay_deduction_name`, `pay_deduction_amount`, `pay_deduction_descriptions`) VALUES
(1, 1, 'Software Charges', 250, ' @ Rs. 250&lt;br&gt; Valid from 01 Sep, 2023'),
(2, 1, 'SHORT-LEAVES', 0, 'MAX-ALLOWED : (3 short leaves)&lt;br&gt; Taken : (0 short leaves)'),
(3, 1, 'HALF-DAYS', 0, 'Half Days taken : (0 Half-days)'),
(4, 1, 'LATE PUNCH-INS', 0, 'MAX-ALLOWED : 3 Punch-Ins&lt;br&gt; Taken : 0 Late Punch-Ins'),
(5, 2, 'SHORT-LEAVES', 0, 'MAX-ALLOWED : (3 short leaves)&lt;br&gt; Taken : (0 short leaves)'),
(6, 2, 'HALF-DAYS', 0, 'Half Days taken : (0 Half-days)'),
(7, 2, 'LATE PUNCH-INS', 0, 'MAX-ALLOWED : 3 Punch-Ins&lt;br&gt; Taken : 0 Late Punch-Ins'),
(8, 3, 'SHORT-LEAVES', 0, 'MAX-ALLOWED : (3 short leaves)&lt;br&gt; Taken : (0 short leaves)'),
(9, 3, 'HALF-DAYS', 0, 'Half Days taken : (0 Half-days)'),
(10, 3, 'LATE PUNCH-INS', 0, 'MAX-ALLOWED : 3 Punch-Ins&lt;br&gt; Taken : 0 Late Punch-Ins');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectsId` int(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `ProjectTypeId` int(10) NOT NULL,
  `ProjectDescriptions` varchar(10000) NOT NULL,
  `ProjectCreatedAt` varchar(100) NOT NULL,
  `ProjectCreatedBy` varchar(100) NOT NULL,
  `ProjectUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectsId`, `ProjectName`, `ProjectTypeId`, `ProjectDescriptions`, `ProjectCreatedAt`, `ProjectCreatedBy`, `ProjectUpdatedAt`) VALUES
(6, 'Deen Dayal Plots', 16, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:04 AM', '1', '2022-10-14 01:10:07 PM'),
(7, 'Gallexie 91', 17, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:10 AM', '1', '2022-11-15 11:11:02 AM'),
(11, 'GCC 88A', 15, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:12 AM', '1', '2022-11-30 11:11:14 AM'),
(13, 'Oasis Grand Stand', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-08 01:10:59 PM', '1', '2022-12-30 03:12:33 PM'),
(14, 'GH-89', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-08 01:10:28 PM', '1', '2022-10-08 01:10:28 PM'),
(16, 'Yash Vihar- Pataudi Sector-5', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-14 01:10:53 PM', '1', '2022-10-14 01:10:53 PM'),
(17, 'Others', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-14 01:10:42 PM', '1', '2023-03-10 01:24:30 PM'),
(18, 'Sohna Greens', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-12 06:11:38 PM', '1', '2022-11-12 06:11:38 PM'),
(19, 'M3M Sector 79', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-19 11:11:45 AM', '1', '2022-11-19 11:11:45 AM'),
(20, 'M3M Route 65', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-30 12:11:11 PM', '1', '2022-11-30 12:11:11 PM'),
(21, 'M3M Capital Walk 113', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-30 12:11:38 PM', '1', '2022-11-30 12:11:38 PM'),
(22, 'Aashiyara II - Sec 37C', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-14 10:12:28 AM', '1', '2022-12-14 10:12:28 AM'),
(23, 'Flora Avenue 33', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-28 05:12:07 PM', '14', '2022-12-28 05:12:07 PM'),
(24, 'Signature Global City 81', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 02:12:45 PM', '14', '2022-12-30 03:12:38 PM'),
(25, 'Ashiana Anmol', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 02:12:13 PM', '14', '2022-12-30 02:12:13 PM'),
(26, 'Signature Global Park 4 &amp; 5', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 03:12:24 PM', '14', '2022-12-30 03:12:24 PM'),
(27, 'Orange Prime CIty - Sector 6 (Jhajjar Plots)', 16, 'ZU1aZzNaS3BNR04xeXJnc2dtSFJlWG5zZzB6dnRPRmdMWmQ3RWJMZlFuekJNak1KOThaRnpyTHBWb0NHNzFwSQ==', '2023-01-31 12:01:05 PM', '14', '2023-02-12 09:02:07 PM'),
(28, 'Ganga Realty TATHASTU', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-02-16 01:02:30 PM', '14', '2023-02-16 01:02:53 PM'),
(29, 'Yamuna City Mall', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-05-04 01:14:53 pm', '14', '2023-05-04 01:14:53 pm'),
(30, 'Saras City', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-07-05 02:19:05 pm', '14', '2023-07-05 02:19:05 pm'),
(31, 'DATA', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-07-25 10:17:03 am', '14', '2023-07-25 10:17:03 am'),
(32, 'M3M', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-08-01 11:23:43 am', '14', '2023-08-01 11:23:43 am'),
(33, 'GOKULAM', 16, 'S3V2bGkvK0szRXdUV1BEOXVUbDdzUT09', '2023-08-12 04:23:26 pm', '14', '2023-08-12 04:23:26 pm');

-- --------------------------------------------------------

--
-- Table structure for table `project_media_files`
--

CREATE TABLE `project_media_files` (
  `ProjectMediaFileId` int(10) NOT NULL,
  `ProjectMainId` int(10) NOT NULL,
  `ProjectMediaFileName` varchar(1000) NOT NULL,
  `ProjectMediaFileType` varchar(100) NOT NULL,
  `ProjectMediaFileDocument` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_media_files`
--

INSERT INTO `project_media_files` (`ProjectMediaFileId`, `ProjectMainId`, `ProjectMediaFileName`, `ProjectMediaFileType`, `ProjectMediaFileDocument`) VALUES
(21, 16, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_09_17841195113_.pdf'),
(22, 13, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_47_18963382426_.pdf'),
(23, 20, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_47_8904976018_.pdf'),
(24, 20, 'Route 65', 'images', 'Route_65_images_30_Nov_2022_12_11_25_53699983533_.jpg'),
(25, 22, 'Price List', 'pdf', 'Price_List_pdf_14_Dec_2022_10_12_45_87484588405_.pdf'),
(26, 22, 'Brochure', 'pdf', 'Brochure_pdf_14_Dec_2022_11_12_37_24044512655_.pdf'),
(27, 27, 'Price List', 'pdf', 'Price_List_pdf_31_Jan_2023_12_01_54_20414677253_.pdf'),
(28, 28, 'Brochure', 'pdf', 'Brochure_pdf_16_Feb_2023_01_02_46_71636588108_.pdf'),
(29, 28, 'Tathastu 1', 'images', 'Tathastu_1_images_16_Feb_2023_01_02_38_30541058377_.jpg'),
(31, 11, 'Brochure', 'pdf', 'Brochure_pdf_02_Mar_2023_06_03_24_49301612802_.pdf'),
(32, 11, 'GCC 88A ', 'images', 'GCC_88A__images_02_Mar_2023_06_03_59_17946055367_.jpg'),
(33, 27, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_40_45423192051_.pdf'),
(34, 26, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_41_58932049149_.pdf'),
(35, 26, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_08_38264774774_.jpg'),
(36, 25, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_36_76126285303_.pdf'),
(37, 25, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_03_20084948102_.jpg'),
(38, 24, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_32_36479502365_.pdf'),
(39, 24, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_58_96914289590_.jpg'),
(40, 23, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_25_8539692186_.pdf'),
(41, 23, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_57_52094779839_.jpg'),
(42, 14, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_07_9677900740_.pdf'),
(43, 14, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_26_18930494931_.jpg'),
(44, 7, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_35_82554658816_.pdf'),
(45, 30, 'Brochure', 'pdf', 'Brochure_pdf_05_Jul_2023_02_07_01_99938987149_.pdf'),
(46, 30, 'Price List', 'pdf', 'Price_List_pdf_05_Jul_2023_02_07_10_24293902710_.pdf'),
(47, 30, 'Images', 'images', 'Images_images_05_Jul_2023_02_07_22_59769994217_.jpg'),
(48, 30, 'Images2', 'images', 'Images2_images_05_Jul_2023_02_07_58_1468991525_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_units`
--

CREATE TABLE `project_units` (
  `project_unit_id` int(10) NOT NULL,
  `project_main_id` int(10) NOT NULL,
  `project_unit_name` varchar(100) NOT NULL,
  `project_unit_type` varchar(100) NOT NULL,
  `project_unit_area` varchar(100) NOT NULL,
  `project_unit_area_type` varchar(100) NOT NULL,
  `project_unit_rate` varchar(50) NOT NULL,
  `project_unit_descriptions` longtext NOT NULL,
  `project_unit_status` varchar(50) NOT NULL,
  `project_unit_created_at` varchar(25) NOT NULL,
  `project_unit_updated_at` varchar(25) NOT NULL,
  `project_unit_created_by` int(10) NOT NULL,
  `project_unit_updated_by` int(10) NOT NULL,
  `project_unit_floor_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `RegistrationId` int(10) NOT NULL,
  `RegMainCustomerId` varchar(100) NOT NULL,
  `RegCustomRefId` varchar(100) NOT NULL,
  `RegAcknowledgeCode` varchar(100) NOT NULL,
  `RegProjectId` varchar(100) NOT NULL,
  `RegUnitCost` int(100) NOT NULL,
  `RegAllotmentPhase` varchar(100) NOT NULL,
  `RegUnitSizeApplied` varchar(100) NOT NULL,
  `RegProjectCost` int(100) NOT NULL,
  `RegistrationDate` varchar(100) NOT NULL,
  `RegPossessionStatus` varchar(100) NOT NULL,
  `RegTeamHead` varchar(100) NOT NULL,
  `RegDirectSale` varchar(100) NOT NULL,
  `RegBusHead` varchar(100) NOT NULL,
  `RegMailSentStatus` varchar(10) NOT NULL DEFAULT 'false',
  `RegAutoMailSentStatus` varchar(10) NOT NULL DEFAULT 'false',
  `RegStatus` varchar(10) NOT NULL DEFAULT 'Active',
  `RegUnitAlloted` varchar(10) NOT NULL,
  `RegNotes` varchar(10000) NOT NULL,
  `RegCreatedAt` varchar(30) NOT NULL,
  `RegUpdatedAt` varchar(30) NOT NULL,
  `RegCreatedby` int(10) NOT NULL,
  `RegUpdatedBy` int(10) NOT NULL,
  `RegUnitMeasureType` varchar(100) NOT NULL,
  `RegUnitRate` varchar(100) NOT NULL,
  `RegNetCharge` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_activities`
--

CREATE TABLE `registration_activities` (
  `RegActivityId` int(100) NOT NULL,
  `RegMainId` int(10) NOT NULL,
  `RegActivityType` varchar(100) NOT NULL,
  `RegActivityDetails` mediumtext NOT NULL,
  `RegActivityRemindDate` varchar(100) NOT NULL,
  `RegActivityRemindTime` varchar(100) NOT NULL,
  `RegActivityStatus` varchar(100) NOT NULL,
  `RegActivityManagedBy` varchar(10) NOT NULL,
  `RegActivityCreatedBy` varchar(100) NOT NULL,
  `RegActivityCreatedAt` varchar(100) NOT NULL,
  `RegActivityUpdatedAt` varchar(100) NOT NULL,
  `RegActivityUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_charges`
--

CREATE TABLE `registration_charges` (
  `RegChargeId` int(100) NOT NULL,
  `RegistrationMainId` varchar(100) NOT NULL,
  `RegChargeName` varchar(50) NOT NULL,
  `RegChargeType` varchar(15) NOT NULL,
  `RegChargePercentage` varchar(10) NOT NULL,
  `RegChargeAmount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_members`
--

CREATE TABLE `registration_members` (
  `RegMemberId` int(100) NOT NULL,
  `RegMainId` varchar(100) NOT NULL,
  `RegMemberRole` varchar(100) NOT NULL,
  `RegMemberMainId` varchar(100) NOT NULL,
  `RegMemberNotes` varchar(1000) NOT NULL,
  `RegMemberCreatedAt` varchar(100) NOT NULL,
  `RegMemberUpatedAt` varchar(100) NOT NULL,
  `RegMemUpdatedBy` varchar(100) NOT NULL,
  `RegMemCreatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_nominee_docs`
--

CREATE TABLE `registration_nominee_docs` (
  `RegNomDocId` int(10) NOT NULL,
  `RegMainNomId` int(10) NOT NULL,
  `RegNomDocName` varchar(100) NOT NULL,
  `RegNomDocNo` varchar(100) NOT NULL,
  `RegNomDocFile` varchar(1000) NOT NULL,
  `RegNomDocUploadedAt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_nom_transfer`
--

CREATE TABLE `registration_nom_transfer` (
  `RegNomTransferId` int(100) NOT NULL,
  `RegMainId` int(100) NOT NULL,
  `RegNomTransferReason` varchar(1000) NOT NULL,
  `RegNomTransferDate` varchar(10000) NOT NULL,
  `RegNomCreatedBy` varchar(100) NOT NULL,
  `RegNomUpdatedBy` varchar(100) NOT NULL,
  `RegNomCreatedAt` varchar(100) NOT NULL,
  `RegNomUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_nom_transfer_docs`
--

CREATE TABLE `registration_nom_transfer_docs` (
  `RegNomTranDocId` int(10) NOT NULL,
  `RegMainTransferId` varchar(10) NOT NULL,
  `RegNomTranDocName` varchar(100) NOT NULL,
  `RegNomDocNo` varchar(100) NOT NULL,
  `RegNomDocFile` varchar(1000) NOT NULL,
  `RegDocUploadedAt` varchar(100) NOT NULL,
  `RegDocUploadedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_payments`
--

CREATE TABLE `registration_payments` (
  `RegPaymentId` int(100) NOT NULL,
  `RegPayCustRefId` varchar(100) NOT NULL,
  `RegMainId` varchar(100) NOT NULL,
  `RegPayMode` varchar(100) NOT NULL,
  `RegPayTotalAmount` int(50) NOT NULL,
  `RegPayTaxPercentage` int(50) NOT NULL,
  `RegPaySourceName` varchar(100) NOT NULL,
  `RegPaySourceNo` varchar(100) NOT NULL,
  `RegPayReferenceNo` varchar(100) NOT NULL,
  `RegPayChequeDDNo` varchar(100) NOT NULL,
  `RegPayOtherDetails` varchar(10000) NOT NULL,
  `RegPaymentStatus` varchar(20) NOT NULL,
  `RegPaymentCreatedAt` varchar(30) NOT NULL,
  `RegPayCashReceivedBy` varchar(10) NOT NULL,
  `RegPaymentReceivedBy` varchar(100) NOT NULL,
  `RegPaymentUpdatedAt` varchar(30) NOT NULL,
  `RegPaymentUploadReceipt` varchar(10) NOT NULL,
  `RegPaymentCreatedBy` varchar(10) NOT NULL,
  `RegPayClearedAt` varchar(30) NOT NULL,
  `RegPaymentDate` varchar(30) NOT NULL,
  `RegPaymentFailedAt` varchar(30) NOT NULL,
  `RegPatmentBounceAt` varchar(30) NOT NULL,
  `RegChequePayIssueBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_payment_activities`
--

CREATE TABLE `registration_payment_activities` (
  `RegPayActivityId` int(100) NOT NULL,
  `RegPayId` varchar(100) NOT NULL,
  `RegPayActivityDate` varchar(50) NOT NULL,
  `RegPayPreviousDetails` varchar(1000) NOT NULL,
  `RegPayRecordUpdatedBy` varchar(50) NOT NULL,
  `RegLastPayStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_refunds`
--

CREATE TABLE `registration_refunds` (
  `RegRefundId` int(10) NOT NULL,
  `RegMainId` int(10) NOT NULL,
  `RegRefundCustomRefId` varchar(100) NOT NULL,
  `RegRefundReason` varchar(500) NOT NULL,
  `RegRefundMode` varchar(200) NOT NULL,
  `RegRefundNotes` mediumtext NOT NULL,
  `RegRefundCreateDate` varchar(100) NOT NULL,
  `RegRefundStatus` varchar(20) NOT NULL,
  `RegRefundDate` varchar(100) NOT NULL,
  `RegRefundCreatedAt` varchar(100) NOT NULL,
  `RegRefundUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_refund_documents`
--

CREATE TABLE `registration_refund_documents` (
  `RegRefundDocId` int(10) NOT NULL,
  `RegMainRefundId` int(10) NOT NULL,
  `RegRefundDocName` varchar(100) NOT NULL,
  `RegRefundDoNo` varchar(100) NOT NULL,
  `RegRefundDocFile` varchar(200) NOT NULL,
  `RegRefundCreatedOn` varchar(100) NOT NULL,
  `RegRefundUpdatedOn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residential_leads`
--

CREATE TABLE `residential_leads` (
  `ResidentialLeadId` int(11) NOT NULL,
  `LeadMainId` int(11) NOT NULL,
  `LeadPropertyType` varchar(50) NOT NULL,
  `LeadPropertyArea` varchar(50) NOT NULL,
  `Lead_BHK` varchar(10) NOT NULL,
  `LeadPurchasePurpose` varchar(50) NOT NULL,
  `LeadLocation` varchar(50) NOT NULL,
  `LeadMinimumBudget` varchar(30) NOT NULL,
  `LeadMaximumBudget` varchar(30) NOT NULL,
  `LeadRequiredPeriod` varchar(50) NOT NULL,
  `LeadAmities` varchar(100) NOT NULL,
  `LeadCity` varchar(30) NOT NULL,
  `LeadState` varchar(30) NOT NULL,
  `LeadPincode` varchar(10) NOT NULL,
  `LeadCreatedAt` datetime NOT NULL,
  `LeadUpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `LogsId` int(100) NOT NULL,
  `logTitle` varchar(200) NOT NULL,
  `logdesc` varchar(1000) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `systeminfo` varchar(1000) NOT NULL,
  `logtype` varchar(100) NOT NULL,
  `logenv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systemlogs`
--

INSERT INTO `systemlogs` (`LogsId`, `logTitle`, `logdesc`, `created_at`, `systeminfo`, `logtype`, `logenv`) VALUES
(1, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2023-09-09 01:06:08 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43a3V3NXZreUtYUjlUZlczOTV5TU92czVwbnBTb0twcmVMWTQ0ZEp4TFJJZTBPNUZEOE5qL0srMWMzcnd3MVdnNGhtZGlVaGxrSkZrWFEyZG1vb2wvcDBpcWhjdnZDZEF0bkVFKytDcFJtWE8weDJmczVjWS8xcnE0ei9GQys2eUY2a0ZvR3dncGRnQlM1WVVtaEtKZ2ZFb3VBYU51WE5UbW44b090WDRVVzlwL1RYUW9nTGYweDBVM09TK0tFcDRqYVhqTUJUSVFjbXFQejFPeThBS1Q4M1l5VVlNT2JmUE9EVWoybm95NytQM0Z3OVBTL3JyNnRCWTRvRDduY3FoRXhhWXNiYzZzcDJTcmFqQ0RLalZNTTN3NlFkSHd2Y3NQbHkrK2Y1eFh6cGdNZUR5Y3FsbTExWjFHMzV1K1JnczRXUGZ5SmZLNFJ3NGkrNHc0bFRUODNCeGNHdldUaDByTTZFRDhmWThCQ2pIZ2tDTGw5UU5xRUJTNCtHbUNFc2R4R0hQQXkvS2x4Zzl5dDQyb3Y2WlkwRm5hTVJUZkliTWJ2b0k1Uk9sc29mZUxsTk92am5FWFhVcFplM1FEeWI4T0JjbkMxTEhTOFNkS1UwMHcxR0NXZFErQkY2WTN4YWcrRHUwbWNDY0Z3VmY1ZUd4d1JnN2t6TStwYXFreEg2L1h2ZHJrOE94YWtwNVZuSHV2YnUvUGl2cGVUL2tiWFZZTWpEQVRQd0VZWkJsei81QmJ4aEhrbEwrTkNKcGhZdDZqK0RNZFI2bGEwT2xCQkRwSjJ0dnZrTitIVHhuYnJYeXZKRnV1SnNOQXVYdG42U2J5YUNFeGhGREcrb3RtV1Raa3BCQXd4cnoxd2RISWZDeXl0aE81VHQ4b1NDbUt3RTMzbWd4SHpqL1IzNkY1dkY4cWx1NnlkK2lyNXNBZldZOUcwPQ==', 'LOGIN', 'DEV'),
(2, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2023-09-09 06:22:24 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bUVSNzhpYklZaWFxck5MbzRVdWdUNytKTVVFbWZwb1VzR3lFR2FUdUo4VHlpQS84NnQzM3JMNGhZR1AxaVZIdVozMjJGRnVSRS9kRW5YSnBjd0IrYmJNaXpUVmozQ3MvTUFNZENyRUhMcDBHSGdlVEFtazQybk1ZWFV5RXVHZjNFZ01Ta1krVm51ak9RMmM4VnRabVd1WVpSaGlnY0pNcGhSVE54WjlSRmFmdWhiREsrQjg2YmJyQWJ3SEZoNm1IeU5QRmsxT3lvM0E4MHJPZytxNjdGcXNIZlZsdjVrZ2lZQWZwL295eVNmaE5taXh1c3FQOVprMEljNEs4V0sxUGxMNnN1L1RHUzZGK0FhL1BYSHlPY05DeldPazQzZFJUWTZSNUwvdEFDQm13NXFPaTczQm5JYWpoMXlQbm9zWXQ0bnpmMVFjdHJXaWxqbXhUWUJYL0E1WmhpSHdBNityaGVXVXZXR045Ky9GMjBaQkE4WldneDhoRFIrNzQxUzUrNm4wd05lNkY4bEhDUTNNc09JT3dFNE9yVVF6NkFlekZwVVMyZ20rVkxOKzJQZERsT1laSWhTY0RwRTlCZ2RzenFPMURyeklSZjZBOU5tQlVYdThaOFpRQU0xV28vV0tOcnNtQ212Yzd5WlpWQTF3NFBYQ1pMZHRiV040VTV0UEZjUDA1Ky9NWHJjTGF2M1k4OTVDeVI4YlIxRTZBb2FwUnExYWtvZHV3M2hZMENOL09XbXZBb2QyY1FwT01jYmNLTlo3TkUrWjJuZGxJejNPVldIRXFQVXZZMGRMMlFaNnUvL3JqbW85czNwL2VIa3FoQVh4RWlyQm5DaVhHSnM2YnV5WFhYSklubjZyL0szNEJtYlVpbGRuT3dYSTY3dGplK3FCRG5mc002c1o4VWxhcHZWc081YzJNZjl1Q01NUTZrPQ==', 'LOGIN', 'DEV'),
(3, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2023-09-09 07:23:25 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bkhhOGpCdnBuTGpnUW9IMUZpa1RsbWk4S0NGNG1aZlY2T0Y3MmhGb1Ywdys4YmRhQ3NDb3dSV1U3SGgzam1GZUhhTHRjRFlOK3YxVnZwcVpDOGR5RWxkQlB0SVFJKzRWR0swMWJsUXlMYzFKaEdURDlTeW1UMFlzVm9VK1k5UFIwMVVwUGFFQTE4Z1JZMGlWbDNlcnlvdDFJRjVxS0ZFUFZ4ZWgrUkc3Y0VCeHZRcHRCTTRZRjFON3NYZGNGaFdzdVhTcXUzczd3UXJkbzlEWVBFazhIUHJVNmp3bWdnOFozbG5PMHIrN3Y1QWF6R3dUZ2N6bldVOVJ6SU5RdWFMZmZhMDNXazZ1cFlmTDZZc1A2c1Z0QzNveHZpbjg3U1NxNno4dnkzMlB4Q2M5OWVkNGM5YXFjVFdELzByUWw2dnQxS0pURkpXak44Tk1zRVJscFFNMHNMMjhwbERpWVlEbk5TVmZTbUhIamIvOWtpM040SFI1cjNDNEZOM1hsWFU2VlpPZi82SFI0WEJORnZmUjNZRDh3KzdZek5YTERFZHE5M1JjaU1WOWNReWYycENWd2p3SnVvREwxZ1BoTmtiR3FUdFRpdEoxMHpvRnh3VXFkY05PL1d5cDFvNlhBZDdRUU5LZkdoNVhHZ21uZXBQUkI2MzdtaVA0S09sd3JCZmNDam5SQWFtWGdVKzc5WTA1Q0VnWnN5aURDUnFCcW9ieUZ3ZmhpeXZMRHJ6VUkzeExXZ21XR05CTE8vMjJZM0RxOC9ST2JsT3dSbFI5d3hYMnFKd3haT3I5Z0lKRnFaUTdrSUhOa3l0Ymlmc0E2WnZrUEYvZFpsMlhLa1pOSXZhdVJadThSMW90S1N1SnozMnBNL2M3Um9rNlV1WFIzZjhxaExmdG16aHNZdHZ1bURXaXcrckxUMnJkUi9BZ1FTYjd3PQ==', 'LOGIN', 'DEV'),
(4, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPd0JCcUlFRjF4OGVJcUdHLzJnY3JaeFlXSXlNcytvMGZZVlQ2c1ZPRXNJMmt3aDRuRDJaRmFKMnpnVjZ4NlBtUFE9PQ==', '2023-09-09 07:35:32 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bTU4Zi9Ud09UTHR2QW10TDNjc0lENFFnWktlT2p3d05ZT3NkcGwwS0ZXQWZsVzdzSVBlQVlVa3l2bm1PNXJ6RGJRR1VXWldweGw4U2oxOXZQL1ArbHh2Q3hjNnVPMTRLN0s4YWY0Y0llOWk2VDBkK0NyTCsyS1JFRTBGbEYzWjdaK3NPa01wRTIrN0hqL0tEUGFSMCsrckt0bDBVZ0dkSFZ1UmVTRjhubUxmMU4vVWFuWFZyekJyQXpWSVpOWXYxTEg5NCtUNGZBb2VSem0weVpwNGVmYkVZK2hDWVhQalBZTXhxVm9GMU51TkZtT2xJNnJEblBJMjlxbU05ekM3Vjl3M2IySnMrcG5nV0lwb2lQL2hDakpUYm83UmlQbFFQTXhSNHoxcDVRSS9FTWxCNUdMMGptUEtwcFZmTGdkdTduY0drL1NlUWJuN2NyY1Z1OEdHMEk1SUlOMEhQVEdkVWZSLzg1SFllN0tMMVNsMEtHZiswQ0dnT3RZUmdBOHFtQWQ3R1ZhM2swd0JFaVk0T3FoMkZkd1dvenR0cEdOWC9kcHFxQzNNM1U4NXpCajBrZ0hNTDJZZTBvU1VRREFjYTNHUTQxM3laOWlGZnJRa2Rra0RkRkJIVmovUVJtajdxTXpnckxlS0VsSmlMNk9PZXo0TDBvYzJtZVBQakthREZYYkRWdzJVUmd3aXdwSzZqeGhSbEZUTk1ZVmhsOTVpR1RyVmR6OVFCVllVTi9RZi85MllVYjhGZ0RLRk1aYmlQdnNZN01aV29jUWtlUkliaFI5clZtU3dCbHkrTDFnSitVdnorb2xoTjhORzdpRU56NHNqTXlGL3YzMS9NWURLb3NKRWo1K0FURUFJS3JtRi9ZRW5Uc3J6b01nTlJvTXFaYkdmYlNReUVnTFF3PT0=', 'LOGIN', 'DEV'),
(5, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPd0JCcUlFRjF4OGVJcUdHLzJnY3JaeFlXSXlNcytvMGZZVlQ2c1ZPRXNJMmt3aDRuRDJaRmFKMnpnVjZ4NlBtUFE9PQ==', '2023-09-09 08:32:48 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bjNLZWcyZlovTkNjR0gvSEdUM3J6bTNHOUE3SHRRMVQ3VWVVOWFhVXYxc09CenZJSDJoOGtqaHVXSjFHcEtPdW9NdlVDa0RqVnN5RnZXaC95UnAzdW1MWFNMdmJnbHRCdUtRdmN6Y3VSSVE5eXBaMVBUa0ZreEtqRVFMbmVvd043dHBJc21TeG9jZisvS2prRXppNWhBNzI1ekJlSEtuOU1rN3ZsQkJSVitjalNwR3JJOEdmOHdERVpxZ3hLcDE1NSt4Rzk2eWFKb1g5N0poS29uL2ZVMWsxZ2VjWkdHa1c1SzlrRVZDWW1PcFg5SmNrRHYzTm9zZWtQekVoNmdsWi9lUHNrY3B6aU9PWVJ0Y2FQMmdPWmpIOFYxdjF5eTljNmNSaldoR2ZQVlpaNXhqNVk4cW1pTHJDUERXUEM2c2ExcU95YlMwQUgxbVE5Y2J5b2xQY1doTEZkMk5vV3ZwSExiVzFhNjVlblVCWnBKQW1XY0Z6eU1tZUhsNGhDbnhDc0d3ZW5qcmJMdXhweFpVUE5YcklPc1ZYMmp6dlBKNk9hYmVQaWNCTzhGcUdOSlRpbHNOcGlPQ2QxTkhGQ2Z1QUJTanpyTWIvaTUrZWFHekp3S01ZeSthK21zRytkMlBiWVJsa21lVCtCaURrcmVNeElkNFV1akR1N0w2OVlMVlFNaFpDRGhLazl4Q0dhWEtqOXNvRFlpSVVBOTVXOEdrcEZLcjd5Q3JQM3BLdkpXN29aQzNJcmtwcVpQb25OSG9SdFR6VFVzRE5vYklOVUR2dHMreFpKR0M0RWRUaVV6MVRGNmlVaTh4V1dWUVhUNXppbUZEUHdvQ1pmbVdjM05hZk4yT3FKTHZJMWlESVVhVFVzTlF6QmgyWCtlR3NtVGtaY21BQ1N4ZU1NVktBPT0=', 'LOGIN', 'DEV'),
(6, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPd0JCcUlFRjF4OGVJcUdHLzJnY3JaeFlXSXlNcytvMGZZVlQ2c1ZPRXNJMmt3aDRuRDJaRmFKMnpnVjZ4NlBtUFE9PQ==', '2023-09-09 08:33:50 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bng1VklTam4xOTBlTlp3VEhBQXFCNlRPK0V6OWJoUnlnMndmaTVDVFhac0FIamF4cmtFQWt0bkFUalJYdlVCeDhzMFZ1VWhjRGM3MG12QTR5TDJneDhiVEpnanE3akpWZ2FsVnNDSmNjWUxod1dCWWQzRmptckk1MnJKWmVSdEhRRElEWGlvU3VqbEtuYzM0N1hVdmdZeTU2TGVrZXNGeUJ3OVg3cG01c09WdXhPblIzMTR1WTREd2dHb1VhRWx2Njg0UWxPTGd1TEk4bVdDbGgzV1RwOWpUZFhYSkYvdUtuZW5pd2NXS1JFUGh4S3QxL0Fldnh3bEtSRDJlUVFMc3FpMlBEVU5Fa2x2YVFsSXpaQWQ2eS9MVGI2UnMzNU9KNjdIaUxMcFVpZzh4TEgxWENGNFVmU1p6Y0VFeERIcXk3MFl0TVBQcW9FaXlqUTVUSXFvQVhXNk4zamJZaXQ2eGc4cHVEVVl0TDRFRGIyM002cGdiYWFjczl6K0hHRGFnWk93V2NnQUpHMEZDTTZ2T1l3c3JjTFduNVRsWWVFb0tEVjUxVngrSk5randraXl6UGpFYWp1eVNrdTJ5cU4rUDZya3I0VGRHZVV5dlNpM2trQXJEZlRuclozQitKa0MzMUxGL1FDVWl1MkI3ZVhmSDNUazBVN2k5cVZGOEUxT1BxMnp5MksyellhZjh3VHJSRjBVQjdaaHRKcFdoUG5mck5Hc2tjaXlobGdmY1FERWgwbXduNUFsUWlhYVZBa3dka2FscEhnQzhxTnJoZkNWNTV3dnFlaHRSdFlSeU9qUktnaVJVTy8rY29pMWlNMnhydnU1VmI1U1MvaGJDK1JyTE1oL2ZOdVhzb2ptLzFCTDdWS25ZazR5TlFHc2FXNHIxY20zVGlObysrdnF3PT0=', 'LOGIN', 'DEV'),
(7, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPd0JCcUlFRjF4OGVJcUdHLzJnY3JaeFlXSXlNcytvMGZZVlQ2c1ZPRXNJMjVLVU1ISGo1YyswOFZSQUFjY2xoUXc9PQ==', '2023-09-09 08:48:58 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bDJ5WVdLamZvZkVKUjZkU2w4M0ptYWhvRnZTRThoV1VYZ2N6VUg2bXBMUnZZM0c0YTAwNnVnSUcwYXJycXpyandLbGQzSjdtNUpHQTU2WWVOVjBzczZuVUdIZWZ6R1Uwb0NSK1kwb0N3RVpVVlNSckVaWEtGdkpldlhjWDVzSzhzSnRnU2h2WVp3NFR1VEpsNXp3QzNlMVFkSVdma3RZNVladlZxaGV6eTQvYTFocnJjK1NOUlNPNCt6OVRETUUycHJUZG1RQkNxSEFwOHhRWUJkSEppMDcrbjJ3d1lrVTJMczkvMkg2RUt5SmpyZ1g5WUVCUENEdGpCMjZqZFMvNWRVWmtrVnlPRGxPV21BN2xXV2ZrckNRaGd2QWJRbDMrRGhOc2dsSUpGMG05eExZNWJ6bDc3TkxGS29nckVPTlA1L1JVczQwbTlOZlBqalVhY1NBZEpkZDFKeTRka1dtVk10NDh4bEp6Y0xKVjJRRVdvb05jbEczUHlMK0ZYTXdCRjlEQ2wxNW9nYWpsQ3RuM2hJV0JkczBQaDRLWXA5aEJuQmZkaGtoVWtPR1hEbEVHWTdmaElLU2djMktBS1FsN3BZQnVpZHFJVXVmbTJvd1gxellkU3ZJY3lodnhEc2F6UW5hTTRhRmdLWDdKdnNMZ05EUGdia0hndExKeTMzdDRmZDgwYWxGaHg3Qlp6MlpmMHFlakFBOE1YamhjaG12Q1dvL2o2dmJ2MVJaZEZiUG5lQkhKN1l5T0M1MjZTbWdIa1NvTTJ4RHRSbWtJZm1aRkRXc2RpWDh5ek5hclRPMFgvc093NnhhTEk1Z01STXI0OTFTU0Zwci9SRHRmU09VWWc2b0pLRXo1VGxMY25palZ1WEYrVGRMNUorQ0k3VXd3NVhHT1ZtbkFuYkZnPT0=', 'LOGIN', 'DEV'),
(8, 'cE1ydnJoOEtCbHdZdGpJcGVib1pjblFGN3ozcmhZcTI1bUFhVzJHTitzbz0=', 'Y0RKbUtjZUZEQlRUeW4zSFZxT1Ivd1ArS1cvZ0liMWZpVWdaOHhQSkVTbFZyKzBtOFJUU2tOTmR4SjQzNXBSQy9OZW9pU0p3QUpPMlFvbUlhY1Y1bk1ONFprUVB0SjJzamE2czJSOG5VZU1telhDWmRzUkVZT0cxcitIMXV1am5Qclo3cWg5SEhMZDB2d09YQ0xmTFJrT1ZwczcxYmRmSlQ2SGg3MkprSlg3eXZpaVUwdVd5WkNSbWIrcU16RlQvQ2N6bm9taGZ6ZjUrRHRWTnZzNlRlaHVWR2owZ0RsckY1YTU0SmlLc1BrZUpyaUlNR2diS0V5dzhTdzJjUy8wRW85K01QSU5xTXFWd0V1VEMwU0NRSUtmbWM4TDh0aVl3VFk4Uk5VemZKQWFLeTViZ21kRDFMZzVrVkpESjhKYXh0WFNqNEpHN01zelgyaEsyN2JTZ2crb0llblFYeWtzaFFuUjB4K21XMW56UkNlRTAycVU5RjczbkxWVXp1MkVMc2Y1M3lYWkZyeWZKd0kyZDFIc05CVHlLeUlqdDdKL2lpRDlCMVZKVG5mM3pGTGtyNzRxZWxWU3owWEtFVmxJV1cvT2hTTmpGVnRXN24vZFFKb2ZMdEJmUlBCRDAvVnM1by9WOTFBK1hMTWFQQ2RGV1J3c2xNSmxiQi9HajFYRFFSUHJUSFJVK29YbTlWZUpycUlOSHQ3bXJzSmoxOS9MclVIWGlrMXRIUTUrUHlzWnZQM0NhdEViVmhsNnc3V2hPVTl6bTdyTXRFUkpnY2YvNnN5ZzBBTXFKRWxLUXdCd1k1SEl4enc1emhqaTdVdi9aakxwbHplQ2wzZUxQY3p5eGNuQ2p6cVd6Nm1pN096b0o2K0tuazdZbU5tSjlaa1M1dWJkYlg2dEVaNlA5SnV3dW9GQW9QTmRYN0RoUkxxckw3Wk1PbEgzNG1YTmdidERYNDJsREVQM05xRERXK09UMVA1VEx1MEJEaExEa0xm', '2023-09-09 08:57:53 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43a2QvVDJGVG9RN0xFVG0rTm85SFZOdzBSb2hTZ1lFOVl0dnJXbXd0NTI2ZWs3aDhEUnlNd0lFTXpQa3ZiU2FqU0UvRnZvZUhielRuK2tlNCtYRmdZV3BuZUNZaDhYbWRKZFZRTlhEZEQxL0RXcysyTThpL3NTaUFLdFNjOVdzSWFRbVh5aStHR1RoQVZqU2FaV1Y4VzVYTHdidmJ0d2ViejZTeklubE92cFMydHMrcVBDdERaTlN4Wnl5cUdubmFJTDZPUmMxVDFOQXZZRG55UkErVFoxb3F5WXpRbzlPMGdTamhYYXU4WXdWTWJkbEF0T1RNdC9VL2duYmU1ZzF0WVhaYzR6T1FiMWxYNVRBNWE0Slk2MzFQa1Y3SEdzYm9XVEkrZ3djczlGN0IyV2RLNXVmMUp5NEF6NTc5VXpCdlBZeTkrZUdDNkN2NFpZVC8rWjdOcXZkbmJqUTR1S3MrM1hDcjFhSHEremRUSGFPT1V1RjYzUW9PWEJuMUJRblRhN3ZMOTJtbkh6d0xjMjNDOGdpZ0dQUVBGbXBrcGF4OEN2RGVCVm1ZbzhRZGtBZlN2L1BLT2M1S3VTMFo4bFczWWx4WTUzY0kvY2dJR3ZDSTBwU0JPRWI5YUlvUEpaSG4zWHBPRGdkelBOOUkxc0xxaGt0dnlQVFB3NWNNc3pYN2V3L2RERHhvQ2kzWWhnbzVqNmp4a21YTGR5NW1YdGg3WGpUTEw5aHNzemM5U3drQTkyVXNEWnNuSW5GMnN1eUtsVDFrb3QycnlMVDhBcy9TR25SWDdaRXorVnV6Q3lqSlloWFlnQW9zRnBVVGxNNTVkM21OMGx0RDQ5TFd3cTZlN1UyU21HSktpalhFc1E4RGh2c2p5eS83Q2tlSEZqQUxDSWxZeW5aWkMxaGFRPT0=', 'CREATE', 'DEV'),
(9, 'cE1ydnJoOEtCbHdZdGpJcGVib1pjblFGN3ozcmhZcTI1bUFhVzJHTitzbz0=', 'MzNQa09JZmhuNHQ2UlliVGhDR0tqZz09', '2023-09-09 08:58:30 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43a2pYRnB5aTRoajVkSWdUaGR5ZXgyeE9pcUdyM0hIUnlNRlhDaklHeEhLeUxoNUhYWno3aUNscEFFdDZsODIxd0JzOVZ6Zzloa0xMN1U1Mk5qQzBjMWxnQmZKVVlJaFJKMm81cm9HUTlnNWtSZ2ZCVnFCMklCMksxVEI1SzVtQVF6OGxaaFZsTGlUOFJLS2NGSHhibXA5SExlZm1yQXAxaHJ1aUxhRlNjbUV0dzFwejJyNnpUdzFuMEdWZHJOcFRZRGNURXl5M0NGa05uMUhrYVljSTloWVhDTCtOS3YzVmQyY1VGVTNHc1RRcG1penlQSFEzdDVrbjd3QXp6Rm9GVitYMHJoWjdMK3dCTzBFMEtySDB4MHUzek5STWFTOEVON3NvY0JBbGhrK29GbU5MQ2V6TTQ0QjZ6R2t4NE1mcWFNRjVncU1NUkhhVGhUWEZnTDVMaDhJRHlFcTJjRU12ZEJFUmJPbXRicmVrVDdnZWtEbXl3OVByeWtMRGxHMEIrRThaZkhmKzhyOSthTmg1dGJkQnFjQXVqTGxiU1J2dmlySTlxV3hsTGw0bGcwbnc1aUV4Zk0xdFY2WVlVYThoWGJiMlJtK1hQdnM3UXBZVk5ac0h0ZXF1ZXBWT3ZuTkd3Y0hiWTFPY29ySzZ6TmZJLzhtenJVa2RGUVAxQjR0M2ZyR040SE5tK0hyUDhNQzBrNDMrZGVEa29Ha0pkMVNoeTRqY2k2TVhWYitxa2RWZndUYkRwbWE5WGFhNFJ5RDRTM3JOSlhmQzNEalBCajE1TmZXeStYZFdMRk9qdmJnUGJBb2w5QjdDVlZHUkZvTU0wSmhqa1lnL25LTzlvYmxFMmJQTCtObFRVc3N3dnlSdjNvRy9md3k5MDhvMWZGUUs5QWN4ZTRHYnZvWVl3PT0=', 'CREATE', 'DEV'),
(10, 'cE1ydnJoOEtCbHdZdGpJcGVib1pjblFGN3ozcmhZcTI1bUFhVzJHTitzbz0=', 'eGtzUVRkVTA3eklCR0J6ZU1ydkorcyt4SUVrR3c0d2g4SjVsbXlXeXBxY1FjZFdBSGRMb3c2a1J3WWF2Z293VkEwMmgzZzVEQVpQNVJERHl1ZkJ5RUNsVEY1dHZWQVVUazY3TzBDeEx2bnRaZ0ozMFJoWmwzWVZzaGlOT1ZVeTd0dHlQYVdLc1YrUTVLWWY2R1dSbVVteHhQUjJDaWErUEloT0FxWStlckJWWkQ3L3B4UVJNd0Q5TkxYYTJXdW5UVHZJVjMyOXBTbnYzOGZ6LzRyeHRaR1VudC9OcGhVQ28yeHBYY2VnMFpaK0xFaHBtaEsvZWU3djdxSElxeFc3YjRMdXh1WGZWNXlFVnF0UkhKSUFGUHk4emZwWmRPUElXREdoL29UZ2pUSm91Vjc4NjZkeklYR1lRSThQYUtOR3VKRWZOK1p6SGxWdW1CNmt5K21mN1JjTlB0d0s3N1AwQjhVTmZ5VHdCeGI1eHhXVWxjQm9Xb2xhQWFET3hDSDJsUHRKZlYyMWJXMGRlZWExb2VXVzJxWnhCSUw3L3U3eXR5d3ZxRU1hUWR4WHdpa2k1UFJtVzlMeWgzeFkrN2NHbFd0SDllSmtnMGZZR1NVS3VnK3F6ZXBwUk5xaWJpeS9VakZFV3loVTM2YmdRamlSUkdVZmNnbktkMjROSDhwTTVvdGY0SWRPQ0lkZ0JJdVJRRFQyQUNETHk0OXNWd0hWZ3Q1T0pJclFpVktreS9PUzhSNnVocDhaU2xGK3RWeFVGcGJYZEZoZlFkLzdRdVMrYzJuUEd6OCswSHYvQ09WcDFUV00zVkl5NFNiaVBXL1AzK3loeUVRUUl3dU5KWmF3KzNER3JQcWhrS0Q2RG9pWTZiTGN4dXJwUFovaE4wNXZMZld2TkpMTGdSdmtBajlOS0k4MEVwcnRMeERUcEU1ZTcrZklWai9ObE83dDBST0VIQzR4SlU4bjZic0w5M1EwWUwvTU05Q2JMWmRMWXBC', '2023-09-09 09:01:33 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWlvY3kzZ25iRzBKeE0zcFpidE43bWN3Y3kxRmxiUVJCYUJJeEZoVjNBSms5cGc3d2FuazVKMWJxTXBjYTFicnJoRTRicEpEa1pNUnZJYitJR2drVFFCcUxsQW5GdHZ6K3piVjNHTTRhMDVYaU1xejF0TXkvNzBiN2ZyMk1Qd21PTzY3ejViZHpCenFuNXRiUVozRkFJNjBOaE9INEZLVTkwcFlNaDhTazlIaVNoTDVVYWJpaHN6N2d0WDBBTGxsSEFORlVyMFRMbGFUU0haMFFCOE9ZeVlXVy9QaXZnZlhJbUZBaWFlYnZHN0J4d3ptZklkU2dKTXhmNjhrVXplMXdMWlVaZ3k1ZDZ5ZUxsUEtHcGF5azk3c3FXSGlxZXM0aWxUN1Zpek5QVUdCYUpqV0ZReGlsYy94Vm43ZWZTSXBxd0tyS2pMZldGSDNOSUs5ZkVvTXV3ZHVWQXpjUXY4ek85cm8zeFU3MU1oVzJ0TFNpd1F1T0RDQ3MrQnVCVWpHbUltSkZFWTVlSWZZUVZnNThaS2l3Wk1RUkdXZFlpalZsSnNtOFlLdDBCMG1sSjNodjZ1UVYxOEpMUXVyNFVlczNlTEJ1RDJkUEVUL0RnM0hEb3gxSUZyVUc2MU5GZnJTZXdFbnczREZGaWZEMm4vKzlzeWVKTVI3RzkwV3krU0N0OWRiMWdyaG14a2gzSXFYT2o4QnYwb004WlYyZ3lBMVRUVDI3S0xCeGdjK0hDWDhjTUsrZmdleUVxZGtILzA0eWkzdzZJOXgyNTc5S1hOblBwWCtzNDNOMGdyZXhURE9mQ1I5S214U0NVZ0Evc091SFRGUGg1NGVwYlNZRjRGSTdjUjdITzJVSWJvSC9yb2lTRStvR3FnQlQxVTdIazNNejdOeW43RjMyMHNObWtxTVZOc0dCMEVlbU5NSUM0NXNnPT0=', 'CREATE', 'DEV'),
(11, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-10 08:53:46 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdmVZZXJCaW5yYys3N3VXMmhiYTEwM05RMWdVYkN1NkJYcUI3YlFrMHlLdUhuVjBlOXJ2UGlkTDJrT0hvZ1oyMkYwOHhkcXdzNU8yb1dGaGt2d211amY2R2gwbGxCc3l1MDVmS2JnbC9rT3ZvdzZvQ082WUU1bmNvOVJnclZucmVid05seVJtUjVmcXJMbzBwRWpWOUl4Y1pSeS92MTRHZTFFZHVzalpPRjdKRURMbkZ1Y2dMV2VtU3ZBeGxGVmpEWVJJZGZXeXF5SXcrVmRoY2xWaUw5ZkRzZTZKVWwxMkZGeWpBTXRxMWplT0ZCVHEyUHpyd0pLRnA3R1pINnF3eFlGRmovUmpjTlFSSGpNQm9iOHZTTUR1ZG5OMlZUQ1ZKQVZJbG9kZ2RIUCt3c2YrbDBNZTlydUk2UnoxODk4QnBYdmVpc0N3c3V1TEIzMXZ1TDVkOGFTamRWdFZEWUx4d01RVlB0M3lQOUdwMXh5U2RrcDIwVzZtcWNLb00xb2txZmdTd0JGalY4VEZ2NjNkNzdZNFBReE4yZ25mSFZZSEJjNkR2MXpSUzJ4eTFyQXlqZ0Zka3BFbkRIeFpXOTJFb2hXdmxaQURsUGsyYUdYbVBMRndqSk9mb1VnaDRrbjN6ZnhMWk5wKzdrd0Y2bDRiNmZwUjl2RTcvb1NNcDJmNXBJblkyZk4zWVJaVFlYaHRKYWtPWnMrejZKZGdicXFjWkhIR0ZaVm1icmkzV1RXVWczN2JDdFpMS1dXZFFxRlMxb3piK2FyaHpkR3Z2bitSbS9aZmRVdm5VZXJJSHVxK1pQSXl4elAxeFd5K2p4eTFYZk9ZUG5yVTVWeUhTbFgybUxRS1pJcjdDbG1yMG1OQzZNRmsvaWdQanZYT2ZlQ3dDZGU4SXYrT0NKM1RsRUlLV2lqdm83ZTRNMnBUUGxreitiT3lDc2dHMXhwUGQzKzVOd3N3SDhVPQ==', 'LOGIN', 'DEV'),
(12, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 10:56:58 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3ZTNvQjJEcE4yMzFibVczVEZoWDN0UVZCbkZsOVMrVGdMVE52UEJNalZjdmtIZUZYQnNudHJzekhsQUNpcGlLeFdqcHBQR01jTG1aZERDbDVLK0xSdERSOHNqdW1RcGt2TWJoMms0SzNmWEI0YzdmNW82N25uSDJkZHJHTTN2a1Y4K0czOVFMblZKa0p6RXdVb2ZWS0NNVFgvZk1wU2UxcHE0Y3IzQnJKTVpXUDhFWmFRbEs0TGx2bDE3NkhtekoyWTR1eHBBTTRoWHFRb1lZaElmZG9zNGxSblRubnlRcVROOFplYkR5UnB2bWhEaUhpVWNKNnc0UUdPL0lHMk5Vc0JYK0lMblJBMWU5VTVFdTZ1em43WmhQNUtoN25oTUVsa2p3VERuSFRRS3pnQVN3YjBwR05CcmdpaFJaeGQ3RHUrMThXeWs2aFpDVmpielc2N1VkeGNaaURuMjJIVkdVZDV1ZUVQVDNQQXRqNlhsaVpnWnNWT1lMbXRZL0E2L0VlSVhQaVVFeGQyNnVmR3hUWmZsaWJ3TGp6a00yckZ3Wkd2UU8yRy81UUpDUUdSQm5DU3Z2S1AxNmlic2ZETzAxb2dteTBPL0l6WVdyRnd1SlREQjhlclg3RFBqdGZzQmZjTFZKTWxyQklOVEJnM3N3Y3N3MUczQzlZOVlWbTMzZjZ4RjhNKzZlM0xJYmhjeTlLaTNoL0RRcEtMT2ZBUjJuTm80WlZrWnpicVFxVGdsdXRaQUJXV3crTkZwYnN3TVlRSVpYNU5DV2dkam9POHg2dUY3MjFub1FUZytuMGwzdDFGL0t6eGo5N1lNQVRPRE5kd2FFRFBmR05CMGJiU3pCNU1NdGVLei94OHljQkNrdzlNcU9USjRrNWgwWUpvTkdLMldIR3g0MnprNWtkTGFGNkJDV25ZNFN0Qk9vNkcwWmxZPQ==', 'LOGIN', 'DEV'),
(13, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 01:36:28 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3ZU5XY1ZINFA5SlJremxLcmp2U05DT2JkNEZmTWNiOTdyMThyWnliVU95OWlRd3hraGhmLzFNYy9ud1REdjdzcUx2TDNQSHVUL2NMcmxyL2padW52c3JWUUYybDZLUGxsS2dmRVlBZG9HWEppbkNSVWprL3dNT3IyTitGWm96WW9sa2VTcXl2bVRaazRobG8vWTIwSGFVSjZ4cy9ONC9SNHVOSlZqY3VjY3BEbkR5cnhrZnJYdDJZZ1NzRmk0UmVJNzVZNzdXcHl4OVEvMEFXVDd2SFRIVjVVWlc5L2kxNTdyT3oxU1Nyb0U2dlk0RDJUZ0NQUy9neU5UOHlsbTk5S01HWXdXUS9WeUpUcXZXcjNuMFl5UTJzQTN6RmVBamdWYk5iMXJIOVlpZjhiRGx0NFRvTmFJOEVBYnZzMTdSNVFVcDIzbWt0WkZsY0JEZ2docDFLSDkraEpyN0NMdjAxN1VxK0g4Q2tzZ09yMUVHQTQwK2lPN3h0YlM1Qm5HTHgwQlR5cnJYbHYwbUt1UlUzTkZwRDlZeFhES2FOS2VEdEdHUHpkVmZ4amNOTTVkUjlROVNwRGdzdGVRTzVPNEdQOXVTRWZwWG5MMVhrZlNyYTA4WitVQVJHYlVNa2NFWkdFQVgwb2pjVmJoK1p3bVhPTUFGajRGV3BVdGJOVGxNSE1RY1VFSFo1Q0NaaXlaMzFlcGEzTVpaUk9yNEpDbWxTTFNVMTM0bzE4VDNTV1lrVmxmS1ptZzRMdkQwYjNqb3hzdDZNQnhzSFVSeFJQWm5xbU1zNmhQNkxzdm8vRGtoNy9pSGJiRjBhUG1lcXNCMjhPTlkwS2dwSUNqbnJvU1JraVdoOEYrMzlxL29ldWt3YzVoMjRLOGZkRjJUeVNrQzVDaDlCWGFqSFZpWTBTdjBpSE9Za3o1ZmI2amxXckRWN2NMVmkz', 'UPDATE', 'DEV'),
(14, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 01:36:38 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3Y1EzTktBWTNoYUlPaWNoSkxNVjNOdGQ4WXFvWmVWdmN1VEoxbFI2ZWtYQUhSMmJGdFVxb2ZjUmpacVVwWjFyNWI0OFBYV1dVVzdHcXNrNXlTU2t1UjN4WWFucXRDemZSbUJ3a3ZRUnF2UFBQSmZTN2I2czI0MGJKbWd5QkRDQWd2VDdLOG5kdHY1NytRcXN5ZmxaaE8yUW1GZTFGcm41YzZCM1FjaExLcUU5eDE3VXVsMXlYZzBnQXY2cllsZnUyVzh1Rml0YkphT3lIM1NVM3lTKzB3eXVFV1ZNZTRtZFp1R0xNM0MxSVBnSVVCQ25PTlo4eU8xTm5xMDNzUjBIU1ROdmJweE96U3V6RW02N1JpdXBZaTdXWithR3lMdkU2ZTdtK0lQRERtV1IzcjROa0dnWEdpZVJueTVZZVdHWUt3dUZFSS9TbEZCWDl6bkNQUWVsa0FqRnQzVjE2ZHlDVXE1Ym5xSFVaa1p1NlBndzNEc3RySlUzMmJXRGRteXRxTHVZVXd0K05jS1BMengxN1NDcEw5TmRsNHRhOFBhOTVTNHNMc2UzZFpKeG05Y05aWm45cHNTQzYrUThtZXFzY1ZYL3AyVWUxRTRKclkvemloMDBzM3M1SzMrSXNTRkRiTkN6RkY0SXYzZDEvc2tPbGlpbTMwWDBEZjUyNGdPWG9ieHRJU3Y5cXpieklXVU5pNHArdzg5YjI2ZVJZQVR3bEVTa1R3UnVqU2JTYnBhWWdqT0pOY0U5Mm94eWIrb0F4cCtVU2grK0JIZ3BpZWVvT1dmU3pRTy9GcTA3SExuNVlBL3V6b25Ka2NSZVNZdTFaSkE5Y0RXZWlOUFc5dmZXblQvSDJDR05DUTZrQ0xNWFRpdnBlOWU1aldYUnpLMkI3SHFaenh1WDVLdFg2Umhvb1lyRWlGQ3pBS3ZzaExDVit2REds', 'UPDATE', 'DEV'),
(15, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 01:36:47 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3ZmlUZTE3dUhtQ2JsWkp1SVJtYjRtUjN3TC9BK0hJNU93WEdWcUVKSVprYWhpSTZaZWJRdElDWi9jb1pMT2J6clhZMVJPZnRPZ1hZaFRDYkVVTnFJeSt6QVBJOVBVaDV3VWMvdmtxK2FGa0JiS0xrM0FLYXpWc25xZjNaNzZWVk1jQ3ZGbUJoaDh0TmtvV3FENkh6czltbk1BT1NMS1I3Z0w0WkVZU01ld2R2QTNQTWhtT09GNFJGd3dnMUN0NTFQNHhBZEJwSFJ2SFhpVnJXSVZMRzRLTnFGK0tzMThFYWxnUGxRL3NOUkRnS0tsM1JaczV1QXZlQXpkY2d0eGx6UCtUOHdZRzE1N21OOThtTXdGaEsyUGpJazFTSXc4VVpmM0xCWGk1OFo2Z0RGc0E2cDVSNDN6ZHBGM3g0OUM3a2hqQUd1TWZhTDdWcE5HQ3lRWkJqTTRqUEI2dklsQ2NuZVNlTTZqUkh6Rjg4RU1YR1hkbUJBelNuUHhsN2F1Q2wvZ1VoUW9jYUVOMklYZTFIV29PeGJ6cXFOc3hTbUVkZzJtOS9OU3J1bXVROGszZjRSbUErWXJaNVdtM1BFQnZmMWFuaG1qK1ptM29MVGpFREhtM3pkTkVUaEVsTzR1M215QkJkNDhNejk0Smk1TkxkSy9tejIvWlZrbTBFUWFZY0grQXRXZG5kTDFzRSsxZis5dEdaelpxTldtMkFrTVVhaE0xSW5tYklxYVlHUUpLOGJ3TGNmUktIL0pxK04zaXB0SkhMV2FZODQ0QkszRDI3WkpHOEhNTkV1cldwakF3Zkozd2pISXNhUVVNKzMzN1hRa0ZFNE1naGhJa1RQZjBFTUlidkF5ZmZNUU1uY1YzTnVzQlVVM3UvVEs1anZydCtWRE5lVENtZk9CaGZoOVNDR0IxYVoyUEZWTW02cEVIdHpNTnNp', 'UPDATE', 'DEV'),
(16, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 01:37:04 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3Y1BQbjgvb0lsOHY4SkFiSzJwRGh2aVN4OVk1aldodjFTcUVxUGdqQy9HcC90dGRmZVJPeSt0UkJpcVRlcG9TYTUrNVhtTWRpRmx5Uk9MQ2JCZnRmQUowOUU3SGQzb29VeithWGJWbUNFNmFtMUZpQlExbkZMRzNJaXMrNlIwWE9STHBXOGZsbWpLMUgwc0VvUVJlMExaUjc3OEVWUmYzMVhzcUlMc0JrN1BIbEdUdE1OV1Z0Q1U1U09CMEQzVityR2Rua3g1cGcwTGpTNldFQU1IWHNWTy8vVFlLK1o5SzJ0YzNFRUs1VzliQnl4VjNneW1FaVJKb1g3Y1dGVzdIWkRuNFQ1Vk00V0xPSTJHWWNoTm51dit3MzdIYU9saWxKNWNPS3pCaWZDN294KzdZeTJ5WFhDNGozZk5UbW5jZW83SDRiMDlrdkdWcGdMK3JRbG5EMkxYdHdaaWxxcHQyTjNQRmM3WVJjQnBTR0dveTJqRDB4eHNpTmNxSW5TcXZsQ2l4YWZaSkFIVHh3RTNhRlZLVWczaFc5V2p2VThTZkNZUmE5cmtVT2VwbmIremY2ODhhcVNPamU0K2tLUW4rOExUUzNSR2g2YUZpeTZMLytwcytKZUNjT3gzbDdUQmc0NlZyOGc4OGJUa2tISXNmdHMza3h5aGozamhZU0NDemxCaGFCYnpBNThydWtsZjJDelZKbzhtcE8rdXpWeTJUMzl4VzZROE9WSXM1ZzhGOWpPUzUrMGExYmRZdnJoeERGb041ZW5xR09Yc2RQaXFodlo2OEtEdTRCVlJ0b3IzeDN4cURha3gvZjVoTzMzVi9ISytKUlFldDdXZEFxb1ZpMmpTSU0wWDF6YlRZVXFKU2Q0cS9NcTd1ZEdsb1VyS1QxU2NvNGp6TENKaG5acnMwcWVPaUFodlZRb1Nacmk0bGs1WWJN', 'LOGO_UPDATED', 'DEV'),
(17, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-11 01:37:20 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjRBL2xRbEVzelQ4S0hsdFN5R0o3ZWlzWk8xRGdEWGllSzBmQjl3UGcxNHhGNmtBZ0tRM3BVVHRDNThhcytkNHhaTTJLRWxYRUNEaXZJc0g1OE5kdHRYbDZqRmV6b3lyc0w4NTVIbXFBektnNFVobWdwV2JRZjJPRTBka3dnY2kvZkJaNisrVEk1UVMrd3BuWTJSM1paQjEvcXNQV1BXY1NsdEF4bHN1TG1uUFI4V1VpaExlOEpORzBKd1BJak9qekJwbkdsaktPNmRRamJWbjJOSXkya2YxWXU4ekRCMEdTVUJZMnl6aVdTd0liZ0pFWm0wQWRWdkE1ZFVITHpkMjlVckw0YXpTSEltSGhXQXBXbnRDR2p0Y3kxNzJNUDJraTVrbUhXSEkxbW04THRtNld5L01ZWmk2SzhFQXpQVyt2QnBJSlMxd3hpNndUVkpkbEkzUU03dk5CRTQycVphOStON0dLVVZxWnlOQk1VdEp1M3BVNlBnQWR6UkdMUTJENURlTjFqck1pUlJ3dFhOSkVhUVBma29LK2xFZmJ1VnVoVnZlN21kZUN6Y3AxQXZqUVVtME9EVFpPa0puazQ0ZnRBZ2tQOXFDZ2lnTWhua2drNVNjS0ZLVVo2eW9Ecnd3Qmo5RkZVZWR4RUhCK0syOUg3cnI1Z3FISktCakg3cDJ6b1YwblFXdzV2ZFZCRlI0dkxTaG5MeE4vRGlnMENVOVMzRVVzK3M2d2tra2pZdFhEelVJNi9uQXhiVTJPbTVKelEzWHN1cHRzOHBKRkVJS0d4NFZOamhwWmJXVjk4WnRQY0VBOWpTRDRyZTMwaWRDaTVpZGMvVWlhQVAyb04zVmlwMTlueTV1aGtkSDBNTzU0RWRTYVR3QUdSdTVnbVh3ZTExSkxPMkNvdVM3dkdKWGkzMDlyWG96QnVvanRBRG8xR3h6MnkwdVBXNUVyTFRGR1ZwaUNpWWxS', 'UPDATE', 'DEV'),
(18, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-12 02:58:12 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaTAvMnpURVJPczJiYUdwcVhvRFRrRklJaVJMSldNbzE1UEcxd3gzSGlubHJmUE1PMFFnZll1L3llKzdESktQSDh0a1M2WURxdjZDVkdyeWM3SC9kN2VXeEVQKzJOVDhQSStpM1cyNCtIUWo4cUFGR3E2blpQWmFUWHMvT1IwM2pRb2Y3aG9saHlWTE9vaFIrNi9xQU9RcGtsa21kcFA2K0JyNUZkeEI3WjhUN3NrUHBUT1AxdWdRTi9SQW1qVTZSZHZsUmtGRGxGcks4am0yM3VGRHR0NHUvSk5yaUp4R1J2dERqQTY5ZzRTcDhRMkxBMWNjQ2JFYkF6NUhzR2pYdVlTc2pLVk5nTjJqQlRaOUxSUWFQWUYxeDBadXBDbzJQcFZzbmp4bXI0THNUTWFuSWRHeHJxTUpwK3Z5dHdkckFxK3BoSldEcVFrYTY0Zmx2bm00Q1VvMmFuU3IrMnpwOUl0dDJObU5JK3I2c3dmVHlEK2lNZlBNUktMRWNnMXRSMm5CWFZPaG1TcGZxM0V2SXBXUXBGMHpud2h1Y3F2RU5PYjVnbXNlRWV1bTlQa3hlRDdLVXBFOEdqdnlRdGJEVTMvVlB4S3A3LzNHcUFhM2xyNXlpZ2VnTXd5MWRHVDloMTZ4WE5hUXEzanN1QkpKaStJTmVIMzU2d01UTzg2Z01BM0dqa0sxZU1yK1hqNmxyNjUxRG8raVRCMzVPZXlLTzBXaFBxRVg3UzV3bFF2M0ZNV2N3SlZYYm93YUlTZnNEYm40NklZbE9iSmlZdHBXOGlWQnY3YmdUL0JqdFVRM0xMWUlxL29ydzB6Q05Cbmw2N0ZUVGpXQ1U5KzJSdzJwODRHay9POVA0MTIvQ2RuaS9xWThzdWV5RngwbHdSczV0Mm84L2dYMGJPZkxGa0hmb1JoZ1FBTTM4UzVlUDhVOWFYNUdlNmdJUFhLN3NtVVdrQjc2ZmlrPQ==', 'LOGIN', 'DEV'),
(19, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-12 08:26:42 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaTAvMnpURVJPczJiYUdwcVhvRFRrSFhKZ1lSc3VYVW05WERReWlPQUN2TzZNcVVJRWNObmJhcHJ2M2NHMmROUjRKN1ZaNFo2S0dRVlZrdXpvT3hQWDl2RXc1R2VzUnhVK1FLZFA5MDBzc3RRemR4U0VCL1JyYXV0Uk9zT3Y0QzZsVWQ0aFIrOWYyN1VYM0RVQkpmSnZLaDRYT3V5RkR6dXF4UXpISkpYdkVvajN5NTJYSWtSc0lUeTVZN01yS3UyNFhwNzA0Z2Y3RnVIWklnenhuOHFxcENXTTRIYy9STTdocFZEd3MyYjJGSUFEQWFoYmRoejlzOHpiVUJwWHg4Z01TRWJoMXpxc1YrbGx3czVYRXYzUDJrM2tOZHJ3Y2V1OFVNbDUrUGZkdkxLL0dmOUdlZTh6T3o2RWc4dlZrQVp2REVxMDB3RC8zQVhpOEU1WGtxM0RDY1NUWFV2WW9IUHJaUjdEWGozUnEzMlh3OFo5WjFZMFE2dmQwQWg2TGJwVFYyTjJkQkw1YzZOMkd6RWNVOVpQNFZOV1dWMnNkeUVxM3VQcFNjcVZNVlFwcDIxNWxoUVBZdXFkR2xVSEJnNGt3RFN3UFVCMjdmWnI1WEJvb1o0aUdkVHFXYnhVTG9hWnkvTk9MRlpSNEpHSkNaZlhFNkdzejBWcWhEcDBIVXVHY1lzSld0aFZTMmtZMkVsQTd5Y1RQUWhmNjBTeU91ZFgyVG04WWhvanhwRUNEcjliMHJDeXVPOGk4NGhlbjU5ODI5eWkvN0pUSXFEZW9qUytjM0FzbnNqZHdRYWt4bXl6cDlZWGEzallvbkxMV3orN3FQdUxrVURlTXprZWNMelM0ejdUVDJIeWJYbFVCekx2bDllVkZIWUlnaXdJYVMrMTJqUGo0Ti8rOStZOERBVEdGVU1CSHRpcXF2Y29KL25lZStqbyszVFJmcmJvM1JmVkNORzVnPQ==', 'LOGIN', 'DEV'),
(20, 'K2VKYXZZVEg1TENoblNkajhGNWRxQT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-12 09:02:27 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaTAvMnpURVJPczJiYUdwcVhvRFRrSFd2Y1RHbmlhNmczOFRNRE5DNzUzZ2MzVk9ScjlySkJ2aHJMbGVWMFo5bVZLbGtIZ21OSzBiZWVHb0dYTUNxOVlLM3paVTk4MkxlUi8ya0hBbFJjWHNmeFpEUWJNZkg0UXk2eTRqRXdQSGMrN3p4eCt4QWtiTjI5aE1yeWFkNjU5RTh0TldHOTVxV2FXUXYvWlVuanpmaWRTaFYrRm9vL2N6aTcxY3p6d2ZLYmVBcldMRmVhVDRWWTBiQkRPMXB2REF0ZGhtUDE0MVhTQmFCL1pCRlpDYi9vbmp4NkNGTUt4dUVrNElPZ3dCYXVycnlGelVzU2phT21UUlNRNk0yOXVaRW1VRkdlYmlkcW1lcjdhUmRUd2REdENCUVhpWVI3aWdmMERNUmRWdWNFdzlBYW9PdDYxdk9VNWc0VzZTRDhlUVExeWE4VnpzMlJBSVNibGlaUkpVME4zUVRsUGIzSkNBZWpMNkdReFU0UHNNelZ3WWpHdlJlYTQxMDlmTzFGclhBZEhGaCtBaktja01Oc0t1WUtKWTV4WWQvK3EvdHl4ZDJFaGtDVUNHMW5mNzNvTDViTDNXOWc1bndCa3dYcVNTVXVtOURHT3hkYU9PR01VcXRReUEvSXVZZkJoYjZtbDZQWDVMUmlMdXhHY0QyQktDTHJYa2ZDWStHRGc1eVFNc2Z3UWlHMVl3bHBHNDNRNUljN3hydlArWHd6UWZQc3kyYTFCTWEyWlFTeWZ2cC9nV2NJbkVvVzJ4UVRTWlIwcXZKdm9raXlKNzZnbEx3L2VQS1hwWkorVU8vT0s5Y0J6SVB5VG14amRXOHRQY2o5TVhaWjFPaDZSamVmRlhlNjl6TUtDN0E3bTFXV29nSmw4elhjTmRKbnB0cDJ0OUhYTmhwVklqMWNEZ3NuN2swYTR3Nm5aZDRaRHZTdWpMZWhZPQ==', 'LOGIN', 'DEV'),
(21, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-12 09:04:01 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaTAvMnpURVJPczJiYUdwcVhvRFRrSHgydjZtQVpsRWVtM1BnMlhQMmNyVlNXNExsdlR3dFZHRkN3d1N3YXdwRURIajkxYUsvQ3JxLzBpR2l2a0toQVVLbmFpT0ZwWVJqMXpmcGpVKzZIZy93Z3hndkVKc3d1d0dMQTRaTm04Um1HS3BHUnNHeVd5enMrTzNnK1dub3I4Q2xHZkQvSzRHSldaN0tjVjM4ajlnK0k3NnFGdnBmT3hNM0JLY3NZbExVRnYwclpsR09pUXA3Q2RwemdKcEs1elpacXpnWGlmUExpdFlOZGdFSmVEMHRlRE12NXRwR3UzWEU3a3lqTmVkbmowYXpiNHh4QUlXWnZtaFRxYVZrRFVSNlpJcTB6UTJES0p1cklPZUxYOHorbHJpcjlzZ2Y2MTBZSzNzaDJSSVB6dWJmUzdTVVBmTWRvdzJjd1FrSEI0OEozYXBCUHpNZWg2Z3E4ZXhoTUs5S2J2aFVMbHZvWGwybFVEdkpJcnRJVHhXNlgxdGVtb3Z1dXZQNHphV01aTjdMQ3NNUkxyWnU1TzZQbW9pM1d1UWxTdUoyUVJOdmpJM2kyaUFZeEtEWVpnMjJLcm8wWVMvYUhZSmp1dCtXSTloWitCZmR1eHlHc0RCNWZ3U255YU8zSjRUTXhMV1lWSzZ4WG1tcFkvdEVvbFJtUnF6Tk15aThqOHgvRWd0WGhWK2dJaXQvczA5c2JVM00wY2JPano1REQ0Sm1CZ1BRcnYxMXczMG9ZK205bkRvTEdoY0E5cU5Bc2JJaFZPSjR4Mk9mQ01jQWZkSVJWajZ3aGRraDd3QlYvZUdiVU14dDZRSzdLdFBnK0pHSlgxUjVTNmFwNStaYmI4NGlLNnhJMUM3RFJQWTcvSG5EemZqZFdzTC9UVGtvOXUza3dKa1QrQjlxMjFjUHVCTUYyMkNpSVlNM2J6VzIrd09aOTJSYjNnPQ==', 'LOGIN', 'DEV'),
(22, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-12 09:40:21 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaTAvMnpURVJPczJiYUdwcVhvRFRrRnExZ3UvREZXZmVEUHhvdk55OVQ1SURKUGRjOU16ZzY1MGIzTzQyeEU3NHYwZmgwUDNmaUY5bGlXSzZtTEVqeTYxbnRZcUx2V2VpQWZjYllyZzNoSmt1ODJ3VkxSc0xjMnhTTXcvSlh6WUFRQ0ZBNzRRWkxycElGMVEvM21ZVk0rMk1qT0VVb3BwOCs2Q3hIUmptRTVsNkpWWTd3d2wzY1VYOWgraXRyMHVmV1Z0QzVkM2kwMkg3MjlDZWMwb1A3M0t4amR6c3VnOUZtZy9xMnMwMTJEb3NCMTBRWWNFdEdzS1Z5ZFg4TkZaTjZ3NFU1N3J4a1g0cnFzK1BYYW9ON1h3bmllYjhvbzNDMDlKcTR3Ui91Y0NnOFI5OFdaMi9hM2U2V25YWENZV3JuNmJCOTUrNzNUc1c0MXB0NVFtSlFYa0Jta21FSnFPOWFvV0syRjRFVkUxMU9IVkV1eTRWS2swdVo3QTdFQkxkanpMTHowN1lXZlJtdE45eG5GblgvRWFsM1htQnI2OEdYTW44MDc3cGN5a0RqUHVxOTMyL1Y5RDc4dWJZY1RJbjFzczVWNjVxVGlHMzdEQnFHL1VXR04vMkdDY3JGYVI2QWlKRnV4TUNSZ3ZBUloybm1hM3ZVMm91ZXFXK3IwSU9neE91WTYwQWZlcENNRkdRWVJXQVRQMFQwSnRXWTNNTGQzNjlNS043b3hVVTNxQzlaQzhJT083alB6SHh5bWlRQVhtZ0lQV0FRby8zcE96ci9TQUhYeUhQbXBNUjJrU0l5a25zN1RQNGZOT3AwU3NWbVlIZmMyOTR0WGJDVlZoTEVUYTB3TzFHOWVJTjRaUEE5Ni9RRDRsa3RINDJ5ZzJCeDNnaU1WQW1HR25PRzFOLzQrWTUza2FOeTl5eVB2VG05WW1aR0hvdjFCdUcxdnM2WHFrbGFZPQ==', 'LOGIN', 'DEV'),
(23, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 10:34:54 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVUVZXWkNCQXhvUlE3Z2NIT3dQWVFMRDdNRDFmREcwaDEweUxHSmFJZmwvMWxhbjNKSzFDS1VMeFZBTllMQktSa3lGWUxaVnBaV0NqSndkSlk4SFREU0hMb0I3YmFqeGVMV3JLRXBERzRJZFdRK2IzOHpJdUMrZlFWYXM2Uk16cnNVa0hZQXBiclYraDRGbXZhQWZtWFdwVDdZTHhNSGxNNG1YdVdGb0FzYkVQOGJCNXRwVWxtVFdlNmsxUDE5dnQ0dFBTS0Z6a0tIblEzOXBBN3JRV3dMUHdRTFVxQWVGZ0JIdW9Ec1U3cGR4QjJDNmlvaTQ4NEk0bHRCVE83Qkcra29pTGVmdTFsZ3oyUm9nVUtiOXBuLzI4WGR3ODlXcXMvZzIzMVVYbUlwOEdWNjAvbURlWjVGU3pNdjgyMWxBY0FGb2E5Zitid3ROeForZFcyRk1wZjdCVHRDME52cXZJUnZwNVFRd3dRdm9nMXFjKytBUDFKSGVBeTNrRGkvY0Zsald0QmhTQldMQitnTlFxNnlkLzIzQURpZk10clJBSmxGMzl4aVJBSWZCZW0vbXZDZGJ1SlF0S21INTVodmswOGY4aVg4bVZZRHNiTG0vYnVVNWE5N2tMK0JwcTRpT1puNjdKRXpEV25yakp4cnl5K0hZL1hKSWJLeFJBNUlRRU1Yelh0MXVZUW50cFZCWXAxZ2MzbWpBeXlqMWtUR3NraFU5RVI4anpGS0dCQ0hjQ3hLM1Z3R0gyVjAwVEpobGdYZEFQRHVqRFY0UXY5YzNuR2g0MHF2M2laVjRqbjNKUVdQTGxMN2xQdVdQcGFzejkrWlk0WU84OHRjTXFtSGJ3UDlBLzY4eXhOaTFCTnFNSk9aWHh1U2p0NWtyMDBPRDJEaEVBU2ZDblZBMnNuNFJ4RUs0UTJsMk83M1pFWE1vNVBJPQ==', 'LOGIN', 'DEV'),
(24, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 01:04:48 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVU1VrQXZKTmU3czJCWmpJV20rbHhtQWlEYUZGVFF2bGJ6M0lVQWt4OXpsdjkvcnNLT1BKeU1VRUJrajFzaCtmKytYb2cvMHZXWE5qSHRrOHlZTGU0SiszUnIxem1RMlVQTThPNzJXcFdJM01TeXF4aktRKzh1M1ZqT3poOWpuRzlnUDRicGlNSFZSM0o2ZUoxZEIwZmR3L0ZmazdHSDZuRDl2cG1QSHZBZ282MDJHaGVIclc3Skt1WHNxbCtEU0Z1ZVErb3haTTcxUzFjWjQxRTdZUEE4Vkpta0xSbjIxYWVSVGVnOGt1N1VZRXpLWnF1b2psNXRKUVpxQjJLdDVQVVdySTJLRWVZOVlzRzNrOGJTeXlGYkN4WkxDODV5UmVicVg4NkZrWEFtaWxCbWtqR3AySzZEdUhPeXhueXkySnFQQTNvM2N2Tm5rdWIxM0JyMDFRZzZIdFpTY3FBYWlKNzdubW4xR2pWYjhpOGhUSWdNRzl3VHFhRE5LaXI3bnVUNEdHeDVQaVZ5TFYxL0Q4WFVNSHJad3dOK1RCNVVQVlNPVUV4cVJZVy9sZlNUYlZ3ZGttMURwRm9qMmNRSVhRa0k4MC9vaGVsYm4xQXQ4c2Jrazh2aFM4VWpVcU1LL0F3WUtWc3pHRWJYb3A1SllTcS9haW9TQXIrVEZ1ZVQ1d1NEQUxjVGFBbjhMekE2MVZ0dWpINVNZQ0pQZkE2UmJuNmJJZTBsRUQ4dHZXY2o2K21tMTVuMlVta2xndXdpOGhDM2JybHd0WDRvYlNWVG4wMXB1SW5lUzN0VmQvY1RkQWd5cVBLbkRmRUNycS8wL1d4bXlFQjhPWHZ1M2EwM3pLYnlFZHRwbXNIeVZkTU5vMjFNTHUzdDZxTUpEOEQzczNxRXhkdTMrb2pBSk5BblBLb2wyZ2twZmxnVmRUTWZ0QXdVcTVz', 'MAIL_SETTINGS', 'DEV'),
(25, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 01:04:51 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVUlBpOUI4UENER0trZlRvZVc3QVd2WnZQdHNuOXl2dEpaQzZQMytVbkJkRVVpYjdRR0tmb1M1NTkwME1pakQyeldTS0ZSemRFcC8wVnVJOUNlOGdYMVg5VVpyTkhtbGpxSGh3YjZBdVNoTFlYOFJnNWRXNEFxMFdoUm1PeVZoZVRSMGd1QWllbEVxbm5ITU96Ny9KUmorS3VZcjFTZ0o4VkFpU0UwL1BGenJIbmJsaDkvYklXaVhWY1Jnb1VHWlZVUXZvQUZFdCt5akNvUDVuOEFhQnhHbDBVdjNubU5vVVZlYXFJdzliZWdJbzUxWXU5Y1hsV0Z0YlkrbStNRzhqRExPU2RTL01md3FEc0lnQ2UvOEJ1VUpxM1lLUi9SUWtZbElUTnhVOU5UZllScitFeld4ZEprY1lIT1JOdUdGZ2tKejlLeGtvNkRBYTU4N2cwYUQrZ0s1cGthYk41NUR2MzUzbk1oMWt3dkJKdWRmSGc3SEZ2R05DZkFhZnExMkFlSk00VXlQQXczUHRLVGlWTFo0YWNKTUVpU3hnLy9xVHp5QVkydjRvUkhPYUdNaDhXZGNTVTZXV2xhc3czdzZrL3NFdUYrMFVLMXhIazl2QVorY3VhTCtqWktVai84VUp3elN2SXNtSXg1MHNKRFhFazVIMXZPRXNpNTN4MFJNRmJacmtkbXFUUzVxV0x0MjhveThrVzdiQUtVN01QbnFRS3pXUmpUVTN4WWdwUHBTTmtMZ3dkaTZEYlFtQnN0S1FTL3pQOU1FNFdTNDFuaVpKaEdkZ0NLWVVBZGFwUlhIQmt2cHp2Z3gvNCtSSGwyc1BJaEF2VEwwUno3QUdHQThPRmNwdDJlNklwRFZEeTZienZnQTdORHNESGZ4ZWYzcElqL05JTTdTek10QzdRd2NwNWJjVFlwWXFoZnhlNnI3dksvSnM0', 'MAIL_SETTINGS', 'DEV'),
(26, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 01:05:52 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVUm5nR0NIblRTN1FxT2JSTUltd1Q1SDNOQyt2YWJoV2VpTUFrM2JUekNrcGlncmxMTmV0TndMZVBRS2t5bXEzT2VoMFJXc2ZMWDZEbUFvU1lxcFFBdFplTkMxTmowNC9FUExwMXZ4YytyNEkwZDNVUTd4bHd2MnBaRG95ZVVWd1JJdHY5NGk0YW4yOTBMYU1EMFpNRFREOVRMVWpGTkhLT0JDOUE0U0NFNHdNK3YwMlFBRnY1SnhibThCVXZKdlNYYVhzYzBiZXJCQUpRN0Z6WVFqdVRUb3lITnZVRGJqZ0RUYklvZ0U4aDh0YzJRMnB2NjhDV09RZ1BmZlFDcDZuRUdhM2pvSDlIV0Jqcm1pVTJQdHo3NHlDUGJoUkxHSjh0Z1c1Z1VYNFpkbzFybVdxTWlnTVVkaXhtZGxVSGR1WDJjWGhQNUNVU3NmTEVPU3NpY2Z4WmZiMDNvaUs4WG94L1BpR2o1azhxM0t1bm05bHNNT3BUTk1jQ0w5cUNWQ2tUSzNzVHFWQ0UrZjEvYnExVlU3VzNWRkJlTGJsZVpOYUY4N1JkbWRuOGFXU1NwUXVMeFo0ZEtNWEcvNk8yd2FpRFN5TGNRV0IwNXVUbW4zM2ZCNGd1dXFvZng4UTkyYWQ0eFByQUh4K0dLa1pOTUx0Yml1aWM1NDRhd3lRWm13eTNhY1BRUmFPMTUwVWdNUitEd1dSbXF5QitCSTZHTlgwd2l1WEhZZFdNRzhiQkkxMC9uUUJiM1p0UUZYREROM3ZEWGJkVi9VLzJlUzZpTXFjNkVNWUljZHhERXZMMmExQ1E3bWdnUWF6bGJJNzFQUHJyMGVSTEVSRURISU5jL0NGUDRrV3FmWkduL2g3SytLcUVOb2NTcW1Xc0IrQzZaaUFuQ29Td0l3N1N3M1hrNFRITnowUFkwRS9CU2llQ1IwdFlnR3FG', 'MAIL_SETTINGS', 'DEV'),
(27, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 03:26:35 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVU3c1MkU2eHdNdVJIaDZJbVVTT1Y5a0NsbXpJOFhYUTFZR1VxdTlsaDRIeXpvQ3J3NUhub2F3b3dqUDRjdXdEQ0lDVVRyNXpXdzdVTzN4SDl5ZnB3RHUvN1VuaXB6eGdLMU95eCtpOUd2bEtVNjl3dTYwMmtVNndqdExRaTE1TmJNbzdOemNZWTJ5Zk1NcTRBM1pyYVBVdmFpVWZ4bnZhcU9XdGVNd3owL0F5Q0gvNVNEcXZyck9DSmlEUFRuTWhUd1NYYTlkeW1qRXY3UzdsYmNJd3VDZUhONmM3STdteUt6Qnk1dUdGTitEalNERnRGT3ZDcW9JMzhWUXkyTkxtME9VOUE3VVhMSGtTK1dUcXNvQy9kUWdBNVEyNEFxTE9pTEN3SjN0dUlPSmdjVjFPbk9wRDhHdVNMelVpRnR2NWJoRVZQQTU0OVY3THlHdTh2TWxBb1JBWCtRMUVNM2kvZHRJa2JoZ3dhYkNPZlljUUw5MkVKOStwWll4eVpwc1JnZWRkRzRWZ3d3MTZMYkZrdktycEJNc2lZcXpnNWlDRzFHOHpDSzFDV3NIcUJLcFp1TUhVZ3hjdVUrdjhkZjZaMVNTMnQwUUo4VVluVUpYZmFiQTJZbTBwRXNPUlNwRjhzeGpzUWcrU0NiSW91eEVrVGlscFl3NXBYZWJRNmF3QTgzTGpMcXpLemRDR1B4Z1JIT0NvMW84R012eHRYbmU1UERLU05sRnlDbWtXLzRJcUFWWGwyYWdVVUtobWFSbE5aS2NCK1NxbUdzOHFDTjdmSWN3Z1BYRDE4N1drcU9zaXlKbDVYT01jNi9qL1JoTE9MVmlyUGxSZVc2M1BxM0hRNTAySmxQSFFLeVZKdmUvSS92anNGMzdnb3dpRlNFMnQyVFhROXE0SUYyNlNwYlFDNDc5YmZSMmlKQkdkd01meUYwPQ==', 'LOGIN', 'DEV'),
(28, 'ckl6aVRYLy9NWVE2Q3YxOE1RTkFRcm44MURrVHhZNEVYVjZKTDN0anBrbz0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 04:46:38 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVUlFpTERZd1RjN2tZNkhXMjhyeHRUSExCRDcwekozbXd3cW5NcWhrVy9MbCtwQXRnQjVkMDRBbENxOGR5dEtSTFFjUmNrZGlCdElETjF1QUxoZ2JjTGEzRDkzcGdnMXVUSTZYZnNwcEJ2NTNjSEtFWWNFalIySmJqWUFIdmZ6UVp5UTk4TTBxajBTMGNDWitKQXFGWjhKUU0yRUZsV295cHhvcUs3cmJPeXdQQ1VHWXNtNXZ5REZoSHg0a2hETXZCNDJibk1yNk1jNU1ISEYyNGNqODFZYnc0dmc1YWgvMlR3TFdPZkRnakpIczZRUDZXUEQ5akJPZ09PZ2hFb2p1djh5Rm1aK1ZianNBMnExQ0FuR29wcGU1NldmNlNhMVc3dDZjYzJSQk5hdzE1WXZvcHdObmNhWTlmYW9mSEw2NkRwcGVSN0VTSXNCbGV0QllLNWtxdkFHN1ZjZUVtQ2ZqQXFlaW4wNU9PVHZvOWdYU2JUZk5HYmFqaURVdGErWi9nckcxQnkwNU5RV0VHSi9PaFU4UXVNSkxOeDdwQW96d0t4MzZKYnZvM0xONzRDS2hXdGpMd0ZxZWcrTGpvOWc4LzV2YU1LQ0pLbjRJbXdMazR6anFNOTIveW9kWUhQa3RMenlkUzlxcWZwVUJuMEhlUko2Y0loYXdnZWVhcE1lUG5qTnlrWC85M3dvM0FPVE9zZ1pYUkFJY3FxMGJTY21IYm1pYjNmdVdyV3pHMkcrYVRzVXN6NStFbkpacVIvVGFlVHcydVZaVTZPWXVnTkVzbDFyVndQaWxUZ2J0TUo1YzRLUHRlOEEzUHJqdEJORTM1S29RbmV2R2dYY3dtenVYRHdNU1FMNWY4ZWFCV3MwOUpNUjF0ZENWVHpHRzlDQU1HN3lpdWoyRzJPNlhtTFJvaCtGVi9DQVdUSjZMZGszSGdVYjhi', 'PG_SETTINGS', 'DEV'),
(29, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-13 04:57:02 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc2NLZ2gzNXlVeHRvb2tKTzg3RFlVUlFwZHBBd3VncmVUazlGVHZlUDRJcXpjY1haNTdYWG1SUUNDRWFoOHhCZFNudzJsZy90V0I1UCtheHNyYll6WnAxOTI3b0s5b3BNdlVaKzJmMjVKTVV2YndsdmZvMDU3WEwxcTFEVkxJYTBYR0NKMzNHQjFIRDdMZEFlaTVaMmZyTFd2ZGlRZGpHMUVGekdIMmQyOEo1RTdoWUZBWURPV29KNENsZk1pRjM3ck9sZHplVW5MRFRPUWdkMVRKbFV5VWJCdFBRcEx0bzROMkFWdkFPSy9WRDRtUFRtbjhGZmpUS0YxRDNyVVg2elNHMGM3TnYvOFhBemxnUXA1R0tFaHdLR3N1NDZqN3pkTGlRRGRJeGxocm5TWDk0a2NsTFJ1UDRpOUtYaUhkVENGUWd5dENaQnVobkJGVWJaZUxDWFN6TEV5Z00yTHVoaXdnNFlXWVFrY2ZNR3Bia2JJRmJrY3AyQUJmcjlJTGt3VGI1MVUxbVhldVBWbFZFQitaTTNZQTdsQS94Z3YxSHdEQys5U09SNjFaM29oUkUyOEVlbEtWeHJHMWpGbHZMbERpWjAxY2pBSDJCQlBTS0VjUkpaWm1qeFJSV3VlT0xKTDFWZlhoTzdxTUlQc09LK05JQ3h4N0ZNQ041dUE0ZWVGY1gwVGpjVmpOcTg3bysvN2FEVi9VYUVqS2xrbTNsRkhTYUt2dmZmZzhtcXlEdTc4aU5WbXp5d1NNaW12U2daTitmUVVwdEljUDBFZ0c5cFl3VUw5Mk44ZWpGZ2VvUldTY1pIWklmSWR3czhFN3YrcVo0MCtWNENVYTZiSVJhRk1mY1BRcHBZZ0o2MHJrRG5FYXFsZ2NzMmp0b3NWTXR1MTdMRHNjaUZ0TSt4NUtRemU5V0JFem1NQmxhSmQ0RHBsUnllMDNzTGRKbUJ3MFo5K2RFVHVlc0JN', 'MAIL_SETTINGS', 'DEV'),
(30, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-22 10:54:56 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbVpoa3FKTTI1RTNZOFlwQVl2ZVJsYzZ3RUJvWmZXWXExNXc5ckJ4WDBkRGFGQnN0akZNZGNPaytVQmdRNmNiWDBHSnlPS0FRYTVIV0N5cTRnMjQ1YjJvYlpJRjdQSDYxZWlaek4zbHJWOVcza21tREV1V3VTaHhXcHRScVZ5b0diVlVvSUsrcjhIT0hGczVPdTdQS09ESDEzVVhXbFJLSTVWUmF5VzN5SXNhMkUyV05sTDNmMTRFWTFNU1piakk2bk9sNlphMGhrakFFblpLNEhQdmFPaWk2TlN4M3BRbU5tQTRTcEF0c2NJSjNISXphbzFmbGJVRjZ1eDVWMXk3WEFqV2kwdVhaR2xTejM2V28wWnVINTM1UHkrYWtRY05POCtiV0haWWVMem5ySkNDelFJWVRjc05JdTZNWWpKdW4waFRrcVNEVWFHWW5Vd2F4MUxCQkxSc2p4dTc1ejhWK084SSs4UzN6SDNoRlJwTlZmb1dXMkVNSFVVN251QlhnMFRLazlpbzBzZXp5OVJ5dzhKQjVCM3lJaXdTbSttekgwalBablJNMDRpdllVTm9rOHBSSHZQeVBOSGF0WmpJL0lKZERldDRpZSs5WjJ2a2pKTHR3VWVSYUE4YlpZT0ozcW9NQzFzNlNEUzVYc3N2NzB5WEVUYWpRTlMxbGhLeXdPSU9DbXVwcm45b3pOdVNRdThscnowdGNIWUgzck1FbDRDOHpsbTIrSGJmdHFDeVl6UmNMdFVMM242TVpLc0Vkb0swak1FSkhZZS9FbVhSQnlrOFVVY0VycEovQXJsem95V0Z2WW41SkNkUmtKZHVtZ2R5SWNxVXhIZDRJQ21DYzhUMkRjVjI5T0dEWStKYUdMUUVmMkJQZHZZeGtpV2RLcWo5NDFMbk1Dc0E1NUV4a3VvaVJlOThyWG1uZW9GNldPZ1d6K0k1SWRJN2xZUG1XTjcyR2hvPQ==', 'LOGIN', 'DEV'),
(31, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-22 10:56:51 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbVpoa3FKTTI1RTNZOFlwQVl2ZVJsZjljVlNNZFMwajJTU1pGdnEzMXBVLzBlYTY4TW14WGNqd2c4N2xwVTVsYXh4ZitUa09KR05BMUYzbncvSnMyRmltVkNFRE1XVFYwYzQ0bGwxd1NGUUoxREdiajM2YmNwbmM1NDc5alQwckk0RnRSRTg1Vmk2bGFQS2pLcGpLVi95QUdPeFhYUkV1Y2RSQVM0TGtJRHd1YkFvYmRsM0Mzb1p5NU5QT0tpVHNZMjVoUXFGVTl5d1JXNXVTQ1lXdFYzRG5icUQvTEpuS0tGd0VRVTRhVExFRFdSeDFtTGJMdWNWeWdmdDE0b1M0cTJsQkd0OTcwQ3VQcDBJcTRRWkdGOVEzTjNtRnovZWtPc1ZBT2hhZElMT2RySDl5Sk9xWE1KNitldU4zSU1mdERVUTFWUkQycHoyWEVPM0k0VXhQcktEem5uTGZpTnBOQ1E5L2gvOFpTOW10UTF2dHJUdnE5TitPdlp4NSt1RG9QQ1krL1Azd0VaUVA0SXEyOHRtZ1VJdHdTeDRpYXloWlJHdVNUVnVleTVVTDg1QnJkUW95VWVJVk94Zmh6amtIdGR1WUZUV2RhNi93MDNOYTJneTlzSUFkd0h5dkZtZGREbDhvM1puM0Rremt1cU1wU3FmQ0ZPUTB3czQzTVhOVlErOThWVmZQNWFUaVBwZURudHVwZkwxTEpmSDNTcTEvVEhhTHJSTW80UXY5WDlWNlFmU2xTZUpLZ21hUjMwT0x6M3lHOU8yUDhUMWpFeCtDTkRBMzducFV3NnkvSVJQd2VpNHU3cEJvNTlDU2Juakl4ak9ua1Q4ZnpxQnFHQWg5WnlDOEtrTDQxS2pqblZIaldRbWhMV3dFQ2o2NzRzUlhDd0p0NjQybnZjN1BxQnlXOXRqQmJtWkJEQWs3Sm5lYmFRcnM5ZUJIQnpkR0xwY1FHL05rTDZJPQ==', 'LOGIN', 'DEV'),
(32, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-22 10:57:31 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbVpoa3FKTTI1RTNZOFlwQVl2ZVJsZXRUeDR3QjFhOUVSdWkwbjJHRzRoelhiM2ZjKzVNTWFHVVNNbHQ3K3BtQUtHRjBhYit0YVpMQ2p1UnJ3ODFJR1FNNXJzMnd6Z01pU1RmT0RSZy9ZUDBXd0djUzlBdmMvNXdlRUt6NUk2YU93NExVWWdJR2t0aFpOd3AwcXRNeTBwUHdXWU1lbmVXalQ5Q0ZlZ2p0a0FRMUJZMlFrc1NOenFZLzFha29waHlQQUNxZUkzNW1aRkxDMEh5SmVBYkMrdjUwWHh6a1dRM0E0cmxkcjRZRGZManFrdTN4dG52Q3N6WEdRK1dJMVFjTFUwZGlUOU9LaVBGN1krd3kxTUFOQU00NkwxTTdFU2huK1pSV0NQZ05KV2UxRytNdkh2ZVV5S1JDUXJKNThoVDlUU1pNUk9URkI5UG9HclNNWVFsZ1U5SU02TlRJU2JKWWRiWGsyTmNGeVlZbXhZU2JoaHB5ekV3c3haSXNmSEVDRGlZcGlDSDZpRDQ2VE9kR0tBMWlEUDl1WGlYU0IrQzBmQWZnMnhYU3o1dENaWDFJMjg4anlQbXI4TTVIZDNRQWtGbEtRSFJBY25jWVI5RGMwTk83dXdnWm9rRE42Tmdid0w4azErTlJxa1YzcER5aVA0ckp0ZExOeUdqUGsyQkpwaUdWNjBBNHU0c2tkcTlaOFB5UU5EUWpucnZpT1FWZzcwekhPSENtaDRyVVUwRGNDc01kZk1haGhHY2JXWkZCVFdzTE9YWVdXUkxPSVB0ei8rS1daYW1qZXJ4U1NnaEpPMG9ZbnlXdlZNa0tpbSsrNlMweVFyV05kU2hnOHFOTi81ZTQ0bWI4RC8zcUZIM1JEVWZkUVhyVFFucHB2dmRCZURkZEVlT1V1OGFsOXZmMHMvTHAvbXpwODJLZ3B6dVRoL2RkckpXeDlNR3krSVhneTdUMUN3PQ==', 'LOGIN', 'DEV'),
(33, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-23 09:56:48 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqckRpajFwbnY5b2RRSE41OUl3NzdGTzJ4ZGRLR1VWdThxWThWMitKc1dGcHVrRmVnN1NsRzNibjY4MFZ3djJOSGowZVFRRDRRT3Q2cHhwWjh1UHVDRFNLKzhBYVczRHV4Z3FQOGgra3NFalUvOGhvRnUwazZBdFBxekxzRGpZRnBvNzBJdWJ2K1k1a3ZKTENsOFFBK2hYSzNBREd4UW9SQzU4b2dMRnBWR0lIaEM1NmE5cGpVNlE2cTFlaEpuNklMM0w1SkN1WEdNMDJEVE1kYzJUTXRaS2E0MG8yQlV2cUFYQVVzQUlUUlExVkVFMG5lbVpqNmdwTm5FVzJmU3VqM2o0Z3o3L0ZQSHVYbkpBMkhoL1ZOZ0hZSHM0b2t4dXREWjk4Tmc1N2xPU1huUFdNVDNua0hZRjBpNWROOXlnazI0YkJTNWFSTWFsZC93YzZub212REpvQ3J0eVM2QmdpMEFETlkzZkZGMXh4ak5SVFZZY282TCtnR2NUZG5nVkNNUGZsSVdrRGNNN2FCSjNYQThubG5MMXB3L1ErM0w2eTBUMCtTUEtkcDVxOGFOQWtVSXdaZzJqbHBhZUlteFVGN0dISDF0N3JIcmYyN09DQjhtRkhXSEZoRjJaUHp0WDd0ZDdhVExza0pSVWVCTktKNUtsaGRxaWRvWFZGVXpZb1ZGNUtrNjFEekMyMExUTUQwYVdHUkNvMk0xTGRHNk5STG1zK3N2Zk5RUlFnT091d2syRUJ4R1ViVjJaK05ycUF0R2pIWHVTYytYY3AxVUQ2S3c3ZjJmMDVReUxQUWgrMUlud2tLNDNWcVNlT2JQbVd3VDFWd2xoc284eis4QmdCeTBUcFBudll1MGZuYVpIdTIwMi82bFVPZVB3anlvZkwreEFLaXVZckhJMXg0ZU51VHBqL2lJUkhPYTk0RzVhUFV1WjFKOVhFMDArSW0rYytUeTRLUnh3PQ==', 'LOGIN', 'DEV'),
(34, 'K2VKYXZZVEg1TENoblNkajhGNWRxQT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-23 11:11:05 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqckRpajFwbnY5b2RRSE41OUl3NzdGTjRpckhMb2pITjVTeEYvSkJmVllGcHArNWFEbEsxdmg2V1ZDMFdGM0RHTmNVcVNzS1VXRFhPa3p5ODQ1dmZVRlJKNUpnSjI3SUpsREVHQ29PMmxXM2J1NE0zT2llZFdxVnZyOWo1UnhkN1Q1S3NBOTBvc29zazlwUDNUS2M4bmk1QlIxM0ZyejlHUEcwYWoxSSszVGpTQjBmWGNHc3lUTlpOMkFDRVM1TDl5ZXBZWDN2VVMrOHlwdHVwTk1qZCtaREgzTkpQRTZFWVlYZmtwb0RGTVpMUzBkMW1NNGk4c0V4NUExOFEzTE5qU2VXUWdoSGg5L25xcTM0cXdYaTcwWVBudk1NWDk3SHU3VXFLVXdEK1ZpRkMzU0RjVFFjTGkvVFZFSTZLMFIyT01VWGF1U1RTSkFORHRGelIzMlJ1ZGVPS0x1cTJsTHFMTlZSb3Y1Mld2cFRmdU5qcy9nZGR6UlVhZTNvbFQxQ1hONVJXaGNLUXUweENiL1daVjJqV0RaY1dXMTdmYnBvK0h3eklqME02SnVsdml1TFpoRHFlNU94RG1BQWJoNFlybU1XWmJnYXhUV3V3NVVMYi9ob0VJR0lNK1dzcWdxaW5FRGhNREhtcGZDbGxlenVmcUkwV0IyYTh4T1JaK0Y3UXlTa3FHMmY3OXFDbmtqQlRQV25UNUJ1MzZOR25uV1F2bEtrS2FNY3grRUVjYklqd3J3M0RVak1uRG1iekx1U0VrelFKY0swSjE3bWc0UXl3Qm1vMFNYelBhVTMrQnN0ejg1cCtMekJQM1pxdlFGMnpUb2RKWUt3dWs4dWtZTXd3RW9zRXVwTHg0ZTZOaXg5dk1sNjMzT05ic2ovOWhiYlpTTnYzZWp0SGFBRWtqTEJxMDZqb3dKcHlUbFFDMTNZWCtBPT0=', 'LOGIN', 'DEV'),
(35, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-23 11:11:21 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqckRpajFwbnY5b2RRSE41OUl3NzdGTzBBZEZEZFdrNktzNUlTMkNuaG5JNnZOQmNYOTRybWdmKzFnckFGRkpmRG95WTg5MnNBRXN6YXI5cEU2YlZWSTRNamwwRzM2ZzdXenRWS3IrSDRtQkUvR1crUnQwTWVyRW5IR0FvMGpVSi9yOFEyaVNodlpVWkllb2Z5eElQMEdzMllTcElLQVp2NzlSUXgwN3JUaDYxL2NyMTVFTlVXeFFnWHhlUVdXeFFyQjZrTGloRTJkVTI5engybmFNT2RVTWxkWDB3QzFBTytlZDVlMnRlY1VUTkZrNzFmanRXMmhPVk1ramhhSGwrdXlCSHVCWndpS0VrTW9mREFLMFZIQXp4WFJRcUZTclpPY3YxeE9LUVBBYmFySVd6cTVjNVpyZkw4RTVNdmVFc1ZDdnhDVFNLVVRmR2pyUUJwS3orU3RWSGlVTFJsbjkveW1qK2kvS1B4YWtQZGJreHVnTnNSSVp2ZWU5c1A2VDdRVEs0WHExN3pJL0trZDdXR1pTM1JFVmdsM0d2SEhJNVJHa3lpbFZmOUxWVjNJNkdxWTM0aFI2Ym5DZm56akFnZXg4SE93bnAzcDRpa1RNbFlQeW5ucXdPK2xTb3ZsMGdrVXAxeU9Mbnl0dURGTWhCNm5zL3MydytHeGhueE9SM0tGb3BJUk5vc242Q2VJSStYV05obWpHRWQ2Rk05dG5yK2NxQ2hwVnBMVmZ4MzdTZjFpdi9qejUybXFBZUZ3NDQvdWdWMUtHK1VaSG1LcC9qdFd3aTRTSFJxZHJsVkpDR2tVMktTVEk0eGNMb3VLV2E5dE1NQTVmNDBiMlEySGJRMUhIQ25iZW9tTHBWZEVrSjhuOTgvN1o3TndaQTlGK0FvYm5iN3VSQ2kvNGN2SUxZQWgxTU1jeWVEa1UxNDVrTHR3PT0=', 'LOGIN', 'DEV'),
(36, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 03:45:41 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYjhaTUpoU05vN2tEbzhYN0JTVWJVS2I1U2JyZm1kTFh2djYwNjNRWVhNMDlWdy90TzZmV2FsRVdHWGFnYlJvdFRKbTh2ekNMU0RTdjNMZ1c3ZVpjQ1MrV1NKdWNWb1NDQ2lWQnltN0VTQVBMbTdDenphMkRqUVlIOVZ6OEs3MGVDZ25VSWhEWlVpYmhFaWN4ZDJZT2NEMFBwSEoxSG91cFlFUUtvZjI1V3FERFJ4dWUzQVI1UlBQL2dTTVhGNW9RRkszRkZ1R05ram83ait3MXc1T0hNNDJiT1pQTWR1YW5WRHdjRlBrUC9GNmlFWjE4UTl1c0N2MkJ0TEplR1ZPYnRlRkQ3NnBpcHd0NGdsRGl1TkVCaGc0MHlCSzdKSXYyZG5GTDBPZWpvSzQ0V3JEbGordEFFeTFxQlNPbk5xTTJVelFMV0h3dGkzaUNVb0pvWFJnVDkwclpUNnFUbGlNaEpuZWNndDVuUTRDVVdQYno5WVhUa1Q2ZnZJaFU3WWZ4Y1JaamE5aTNNTW1nZDBZWTVZdnFuK2JRRStpeWNtdTRKTVVUeW52V2h0alpyb1lldUhtb0k0RGpKN0F2YmFZYTBzSjdtOFlXSS9BK2EwVGZabVRiLy84R09yclVjM3F0OXNSK2dwbkpBNGVoRGhLZEcxMTJRWEROZ1VKY2NUYWdxN1VoaytQMTFoYWo5M3BHcXVYNFBWRXhneGRRUlkwRkFleU50aUIxdy93SjFHTFh0dzZncFpLazVZSnl3bDF2cnBPSGRnZXozT2ZGK0ZOTDdBcGZUNTdQckV0aU0xTlNXZ1NxWEFXVkdIRnFidy9RdzBSNTJHWEJBNVZLWmpmSWtOOHE1SURMZEV0ZzVhS0hvUGw4RjZiRzEvZGlDY1p2d2tHMTk1T2FXTVRpZmhYcEpWcnJQV2hMcFZ2clZQdndzPQ==', 'LOGIN', 'DEV'),
(37, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 03:45:51 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYkRVVGJPYUc0bkVGempQMDNRZEszVjQvOUs5SktwampJTEJERFBMS1UwOEJGN2RxZXdTcGNrelcrWTE3RkI0N1VIK1VoaGZmc2xoOCtPV3hvUlArVnFPZm0yeGpHRWNPNVdUWnV0Z2hBeGxGb1hBNkgyUEFhbFByS0NUOFdnWnM2dXpZNGVkQUJBblRVaTRzalpDTzUvUmZvT0R2SXA0MnJrSGZlOXg1SW50ZEVDV09SVUd4VzZ5U1JvL1dUU1NyS0FZVmh1TXRNUDY0aGp4WnNua2txakZkWjFWRXh2eFp6NE5NTWUyekxlR1pNeFBIbDNZeGhyelVyaks0VjZueEx0ejE5Z3JyMnJlWlRzSEtnSjJ4dEUxMzlhTThYdU4wWFlKaGhyVHAvNlN2ZEZWcnhmUXhTMGo2a1JaMCtwaXMwV2FRc1c1czlpTGJxazB6R05OQ1V0dmtMUHMvRzJRNUZuTjQ3RHdCcE5tbE1RRGFPK0tDaEJyOTdCbTRla2lwMnM3cXJRbGtEaGlpSnNiK1BuSkxGck1iNzBJVUVqV1FLOXJNLzZDRVhSQTF1UTJqbE5JYkxoSHZVV2hjU2ZPS1F6QTNTZlE1MHNOVzJualJZNHdFaFVZa09sRG1lRUVicjRucnJxajlxREE1Y0R3UmJTOFRzR3JkVnA3OWJ6R0xMRGxBMExYeTFaYzBXUWw5SGRYWGJHYWplYnJ5ZXFlOWt5RGVPcGkxK2s1UnJlY29mNDVTYlZlcnV1OHZEZ0tVWUtIcEdnTEwxbi92dENSUlQvdGs1Nm9wZUpvRkZlUHJzUHY4cTR6N0N3bVNDNktLNGQwTzgybVJ5cHJmOVdlR3hoQ1lqTWdvcDlOcFEzY3RtQklMdStKZWZrRTJMb1g3VVM4K045V24zZEYrNkRiZ1FnWFBQWDhscENtblRsT1RZPQ==', 'LOGIN', 'DEV'),
(38, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 03:46:33 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWW94WVExUmljSDZHVFliZkFmblk1eUxDL3pzWjFpYVlpWm9KTHZFam1OeEluV2k0MTZ6dCtxaDdYMC84cUdqR2tiYjljN21pbU9uU2d1b2FJeVhqbHJQL2M0TDhuY0JtSjVLRlVlNFJhUUNvTGgxNFVoMXhjSGpzODJTVVJ3aERCbmRIOHZTL0J5b0hlNmNlRGROMWNuM05jQmtLY1NOK2RiakswaWh1UURMZlpCMEtIVTdZcEVpRTJRSE15OFpmeVNtY2cvTzlpZzdMemdqK0kyV3Rzb0MvWVEzdElsc0U4NFhXbFdPcVk4b3NBK2xGU29XREhDN1lGY2Z2cWxWNVZvTk16ekdPbXRHYkNTOWhFK2tlWFl6bnpqT1lIZVVBekxKdTZQUXFhYUlvQWtxVG1GVE80cVpuNnQ2ZGRlSXNnbGVaWms3aVJLbitFOVNDOENuNVAyWXJFaktrNTNuN0d5VXNiZEpTcUYrMk8zb0hscUIyYS9WeE0yeG1aNUNlSUQvbkQ2OUtJbHV2NTIrYUJ6WkMrZ3M1WXMvVUlmNmhoMExidmdzV21rQ0VtUkFBcE8zVjVXU3pzUU5wMk05a0JOa1BnWkppbTV1Ry9zVzNWdjE1bmZzN2pCWC9KRWdlUDJCUEYzbTMrREhxbUVhN2NRUEVpS0pzSzE0eXhqTXpLb3ovK0Y0Y2laaFZnNVlyRVdwSEsveVJDaXVTQndMVll5QitWM0g5QXRKYWZGZFhYOG9DaWNlL1daNnpnUjNDYXI2c3I4aWxnN1QzRzd5M085bFR4UVo0UnJEVDBjTCtOYjk5REIyNHdCcFRlN2xkTnhmbDg5N2lFRGNzK0JZeld1WW8wM0xpUE5vc0Uzazl1eldJemZBb0pIMis5UlFpQlVSNmlFdEVPR2pLVGVub3pCWFcyVUUyeWNoTk84clFVPQ==', 'LOGIN', 'DEV'),
(39, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 04:08:49 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWUh1dkxNTDBzUTNVenNhS2dQYmsydS9tOTlhbjR0dTBuNmJid0VmTGh2Y2NCUTlycHlLbU16dkZxaTZNVitXYjZOYUZtamZHUGRzUDVWdUU4TW5sQ3lPK0NYaTBRSnJISktHS3Vha09zbjNsditEak1NbS8yY0NwbElTdFZnelpzZzEyZnc0YmovcVBWZkcyNXh4U0Q4T1RWUmR6RmVCL3Q0dFhxK21SNWRmN3NXaEpkYnQ4b05TSUt5UUVpQnRrL0dKTHJKZkZvRENCUEpWdDh6TDhvSVR6MktWWHZCR0NGZXZkSituQk10NHVKWWZ2TjA4TlQ1TTVJVXlHdXdpSjEwSHgwZTlJaHRmSHlqVmE1Wm5RaSt5VGZKeVdZWGVaUTlXMVpaVW9LZWFmMnc2c0tGcXd5RFdGa3B2WkZCamF1UXpTaHBKcjRKTWcwaWsxT0U5NEN6MjlGWFRCTmJGREFucjlPOG43emhycXkzaGlLNy81Yi80dm5ZZUFJbWJOYzhxeWpIbFZZTmtkQ2RISjJjc2tPUURGY2ZpK25sYkVmQWhxSjhhdXk2VDdQamdWeFdJWnNaSXFldHNiRUpvMnVVaU1yaGsxazZMRzVHZHphZENzNXZiZUh5MTRtUTV1UitCdWVjNkpHbjAzakhaUkxUMjVnRGJMcDhMenpZVmt5ZTllRnc0bk1iOUtIckVLMnFUZEd4RXVWVEFKYUhPWXBWY2Z0QTloK1J3N0REWUJKZjNvT1p1UThjL2pqU0JLc2NQL2JtUy9JY3ZZa1l1MjJOMmE5WTlkaXJ5Y0VaQ014QW5aT2tla25VRDFxcDR2c2tGMWErUG5CdEJsbTE0dlR1cjNucFFJTFBMYUxXWlcrV3NlSHVCYk9uLzhHZ1FUdCtBbzdvUEJUL1VBaU1JMVQrOHZqeWV2bExHaTNYdEZrPQ==', 'LOGIN', 'DEV'),
(40, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 04:11:19 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYi9WZGY3R2tPVUFUbzdPMkxlL2JRMmpLZHdFVFJ1NTlpN0VGbTFiNDR6NWhHU1FNQytBMjZERkVlMEI2N2hzKzJRRUgySVRaQk9RV3Q2UXRTSjBlOFU0L3VDY2RTSkdOTzNIMXRvay8xaGdYaUtxVXJaelRTa205eDVzWUNWNndrT1JLTWVkVkxZY2F2K0R6d3Bmam8xSk9UM215Y1JhNUU1YTZ5cFluc2FVdUpWeDNoT01uMWVjZGFoeUNaV2o5VkFPTGN5czJlTTVVcEdBUzlUamtMdUNRQnd6c2JDcHQwZDFUSXFzRElJdFQ3Y0cvVlF4c24rL0N4M0NObTFvcHJaakhkK241bEo4d21sc01TeFR4SityL3EyNlFZVktMWnNrWDlBVGFpbGorb3RybHJPeFdhbXN6bWdMQmlXS0Z3VlhMVWszZzJxaGtBQW80VXM3dlVKckhNWjFuRStPb0FMTjVPLzk1Z0dLcTdXeFM2Qlo4a1JZUmdpQThxdCswWWlLWU9vcFAyZm02cndGZ2pFdkdNYjdJQTdJVHlFUTVNSDVIa0FrWlJDUGFNbGw0TkxsTkNMT0FyTVNueFVOakxVVW9UR292NUJMS0JCaGlyTkJraWpXMWlBRTRpcDI0eDBRMjJxVGMvaUptUjJKRkE0S0lmSi9GTllreCtjVkRxVGxDOU5VOW41dWlaTWJTbFlmNUFiZXMraHhBM2ZFMWY5ZGFyTWhjWUtLNC9FaWpuQTNvc1RDRFRidTlzWHhITnpPRUF6TWg3RmJ2aks0WHVlSWhNQ3liNEdiVFlGaXlzOFpBN1Y2Ni9UcEQvaTdXMVpURmxORS80T3hRdDBvWEgvWmN5WkY5NCtzSzRRUnpDN0I5TTJReXllVHJFKy94a3RCdkExS000NGxudk0rbTEzRUdYVm5TTXU3am05ajhZPQ==', 'LOGIN', 'DEV'),
(41, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 04:13:43 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYTJFOFVRcmY5T1hyS25zbnlhL2ZPNHBJMUxrb3kxTS9zWUttVHVRK1VBRzRCM2ZBaFo2TmExeDJlQ2N5UVBQRkw0a0s3MzZQYlBSaVB4dmZpVW5KM0xVTWNNWXM1UDVnWmcxbnN0Wk5DWXNwenIzVTJsd1FFY3Fsdk04N1MvTHk0V0hZTTdrVTRqcFdIUTQxdlJMdVFCN05LMldabEdGdVZ1VCtqSStiZmd2ZXJucklIT2lWY2o3emZyamt5MG9qNHowS2hMMjI0Y1Y3WG41Si9GR3hDTEhKY1I4cEVJQVNWNGd1VTMxVENRU1RnTUJZZlZkNHo3Q2RVaDQxNFE3QW5TL3dqa0VxYUNrUTQ0SVFJWEJmMm9KaXdOSWFhNGNpa2p5VzNNQXI1aitUWTROeU1UTEhjbUdkTEluQk1xSXpnOTlMQ242dXJ2WjlFeGpqd3lUVlljcnlHQytJT2hHTW4vZENra0ZPQ0hjRm4vVFJPN0kwT3ZTay83QjNGNjFqSHNuOC8vaDZLVElLNmVmRTVuYUJYWUZnRkg5MEc5aEpFcGNjd2hjb1pxR3R4cHhNRWlCc1pHQ1ArMUZPRFB2Zm5WejdXempGWTF3VFA2dXQydHVvdEQ5TWFQaUZYWWwxNC9GajVNZkdad2ZJWWpLc0RvdWIvYytoSEZ2dWhSQVgrUy9mNXRDUzlOYlcvcFl3U2w1azBPR1hPemVUSWl1eEU3c2ZUR2Q5Q3psREJSOHZ0TklOUEUzbDZDQ3RDeWo4VUkwMlZLT21jMVlFNERhR1dMa0lTNmhWaktUZHVidmVQNUY2dVVwQk1IcjBCdTBCM0drcXNSNit0Y0ExNFVFVnNxTmpYWW1Xd3plYjZXOSttY3A4OWtCNTc0aUN2QjNWcmpaOEV4WWhNSnZWM29aN0ZzSUYvK0VCeTVlb09pdTRJPQ==', 'LOGIN', 'DEV'),
(42, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:23:56 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYVU0OWsxaWpiVmhvSjYzYWVQUHBuYW9EKzZBSDMxZHduNkxudGdiYWppTXlHWVVicWlldUZhUHJiRS9vKzBESWI3SGpMcjh5UXRvdmdJTFFQekw1M01rNVk5Q3VLUW9Ca2s5dVozaWJtM2JmeVZxRGZ0TytYdlE1eC8ybFBya0tKbjJYZFRLOTFaSWsxUEtZaUtJSkZwdU5KcEVwQjQ0dzVYZDBvRmJmbS9jcWRBeExkMHhEbVRUVXR5UXVLRkNQSER3SkxNZTRYbE5qTU5IY1FNOHQrL1cyUjhab2hrb3o5U0IweWZNallzQXhQcXBpN3dldVZ6c3gyK3VZanRyYlF5a3NDdGgxclVXU3liLzI5K052MTRPNFM1YlU1aDl2SWVncS9oeWIyNWFkUnlySkZpcitMVTJKZENCU01ib0ROYUpEUkZ4Wmpnc0ZYMG9KczFveFcwMTBmVy9lci9YOWkxcTczM1gvWGEzZFVFTmN5QnZGN0RDbFNYcnRvcmgxZ3ZxMmdiVGNUb1gzak9XTVRzSnh4NkszaWRFZGtiZ1BuRmx3bFlVai90RnNYMURuaUdDMzFkaUd0RlEvZ1V2bGt2RXBlUDRvZGQ3ZG5oMExOaHl1OC8yS0FIWnU0S1Bxem45VHl2V281dmk5QitPQjVKeW1FZURrQlVpaHdPVDIrTnA3R0NQY0YyTldxWnN2QmsrWFhXQlJheTlaRmFhN1VxY0dRTDdsWUlOK0h3SHpTTnAzOWY1Y3lGWWpsV05LQUsxL2J5bFFSa0c3WEJUeUdBZ0dNTGFzUnY2S3Ywd1I0VTFVSmNDS0h1YStFQUVxeEJQSTZYb2VRdjhnZG4rbVBjNEZGVzAwUzMyQm9Rdlo5d1RxRmM4N2I1M1VYUWdzQjNCejNPRXFldHFnNURLenppU3hoU0JvaHZFSTA0T2tjPQ==', 'LOGIN', 'DEV');
INSERT INTO `systemlogs` (`LogsId`, `logTitle`, `logdesc`, `created_at`, `systeminfo`, `logtype`, `logenv`) VALUES
(43, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:24:49 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYmxNVDBSdDgySXFBZHIxaHlRV1dCM2FoY1IzdStuNEFnbGk4MU1hQ1BURGpubWNPaG9UNk5RckZHbjNZcHBLcG83TVhpVGozUEhIT25iL1BCaUZXdjAzT3o0QllLNDVyMWVBVFhZRXBZQi9ESCtrdjRubWhxcHBrL1Vtcno0NHdFZ3FCRkltdUdDMWgzVWpGaWdLM05NUDZaYmNpZzlOL0NoUU5OTk1mQWlSbitGSDIrdGNHL3p4RzltOW5mRG9DSlM0S2Q5Ym5Bb2pyZy80VHp2c0RsQkdXQ1lHWVlla09sNFlYR3hMclZGWlpLRldlNEhCSE5QcGlyVy8xKzJlZEdmM2VpR3NUNnhYc2VMWDl1Mk1kT3RDUUtOOEMrcUErWHdUdTlJUW5sYTU5a1lkSm5hL2VLWm1uY1VNL29DbmFFYjZpZ3lVQ29ONTJ5K2hjeVBtcHVzNzRSUEJnVXdISzBsenlDaWovejJFSUU2aHhSUjhMMjhMa25WZDc0QzlkNU1OcjcwMjJWTjR5eUJMU1o2YzYrQ3lYL1NxcjR2VVMzV3hjWnFGTDlkckJsUEZubVZwaVJJQkU4MDN1d055M3lTUW9OWXVGM29PTjd2bkJVT213cFBoV1NsUDFtYVBWck9BVGk1TjFFa3dHT0xCMmJJZThmRjMwRWcvQUltdGpwRVRTNGd0TnZQQ0RmR0IrYnA3YndVMnNMTGt3dDN2THJnb05VcGFtampSUmNkRnRIUVVJUE1pZkt0ditPWHVybU9YVG5zTjFFeFYvMUwyQmlvcGg4Uk5DZ3gzMDlabzVmZjJ3N3E0a21oMDA5TzFHRzdJclRYdWtNYjhyZE1tWHo4VFdTbEpOSDZ6Wm1UZUVTaEZMUFJXdmJzMm5HU0FIeXAwZ3haVjRYd3VQNGF5N2tNZDgxVFlYbzNobDJMMGI4PQ==', 'LOGIN', 'DEV'),
(44, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:25:14 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWkdvZGN5RFA1bWl6NDRUUnRBWXJNZ2JMSFI2MUx1bG9QNlJTbnhyQm00KzVsS2RCS0hQTzYrTXdPZVlOcGdGTktnRmV2ZFlHNTlpNGdSb0EwSTJQZ1g0SzJTQlR0a3E1LzZTaGdjNTNPR3ZnSzBObmVKeVNoTkpIM2dWMmtCWG1tcFFVdFM3RlpMR0pRZGFaOHdUM0lkNzBJVTlIa2JVZktMeldCZS9yVmlPRCt3RDc2YVJlU25RVGNnUTdGQVRXSHpZMTM5dDFMNEUrTStGSHZVaGlBbDlHek8xL1ArSC9GY0JoN3VWdm9wY0RBY050S1ZnUkNyK0pPNk15aE5mbmJkOHZoc2xnVk53L0oyd1B1SjBKc3BzRjRlSWFMVS84WWNZcm9kWmdmTGg3dldyMEpYMUxoTGpYTFVDZWJ3cDE1UStTMFJLYkx5cUw0NW9WZUwyU0hmb0JoOTFXMzBWSnM5N0tDWXY4MW0vVHcyRU1mMEE2Ym8vS2FnUUNNb2JRRXNXQ3FKd05PZ2ZvTDRBSEF2L3hRWmJCK0xrRmZQOVY3N3dTKy8xTHhuVXBobW1JOFF3cXZCWVdNSUJrcmtzd3JtazA2OFIzOHBsV3FaWWwwYUpNc1didmptYVVGRkdVd1pUQXA3NEtqVHUxU3pIOEo5Y0J4bHc4UEJVN3ZJNS9BcUdsdUJadTcyN0dWclBZOUdMQ0NpVXpDbmNoY21GcmJublk1RldHTWNXS3ZnZFFzZXUzTzNBK3M0K29PYnFkRXdZS09OM25iTDRiVTlBUlJvYkFuaFluY25xcitCSVRORWJIQ0EwNVNXbnd4TFpNVThWRkRZRC9nNDRxd29TSXFlRzljSktXS1I5TDRkUW82OHN0ckFhSWlyaUpzYWdjc0xEZVdqemlEZkxOMG9PM2FKc3IxVlhkdFZBclpEQldRPQ==', 'LOGIN', 'DEV'),
(45, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:25:58 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWkNJVmhucXN5OWVxeWZEOGlJRWkzOUdtb2xOclR5Slh0dG55bDhLZHR4di9iU3QzWWYyN21tY3pwN3NtMHBIVTZMc091TE5tOGp5U1JzV1JBR0lkUEYvTFo4YXJmYkI4d3JDdmZiUTNkWC9oYmZXeGphUmV2SndqZzFvNDQ0cXU0b2NaMGtjWkVBLzhDY3Q1RE5haTR3djZ1eFBUelJrakU0ZWxtRFJhQnJWcWFHRVhsVFZwRHgycHkrNUd6cHA3S3Y0V2xWTzJrR2p6SWJ6bFV5a2c1ODdCb0gxYlN0cThVSVQxODdlUVp5bE1NSmtGRmRVZW82ZnJVcUxDa0ljeHh6bDcyZzZaKzd2eEVDWENGS2ZUc0ZmTkZIL1RKVERlNnVibENCcG4vWkx1QlNjQm5GR3pPSitCMWZtTHh3U25RQXFzTkh6c0FQRElrbzdYbmxtQUhJeDh1ZEJSOUwzbHplNUZSYkJMbVBKYlQydlB4MXlJd1YrNlR4cHFYQmdLNEZGdzFYUUZNMGdrOWx6RW9XTUM1aUxMVWw4WFhrRml3bkJ6dGtaNGFoU1JnVGNMUUJZYUMzeURrM2g1Z3lBbVYydEFweDJtaVZmdXNYYTdtTi9DdzEyM1F0RFdoc1VJa3FQVHpnZXF1akIwVWNlSDJMNUZXOEIrMXcrMEFUQllPN05WNjhRWjRUcFBQeWtmdmpUSk9EcGEwajFrSk5NQXRibFEraUExRnpjMmRXQ3VaSlpGYS9xcXpuandCempZbzVsc2h5Mk16RVRlZFpzWFE5d1g5NjgzUElZN0tGREZKOERhZ3BVeDRlNCsrTU5ZeEs4Sm52MU5ha21WbVAwcGMzMmMweXVYWGIraGZmQ1pUcTB6M3dWQnlkMTdQdVVsNWFyV3B1TUZadm1lTUpEaXBsUlZIOC83SGNxVWF4NzJVPQ==', 'LOGIN', 'DEV'),
(46, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:26:43 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYmRVZy9BVmlMbld1c1QvU1B3ZzNwMUtwOWNZRlpUajhYOW81SVdCd0dibEVBMnc3cnl3K0NXTHpHRUFnSWxKdko0Q3Y2ZFpXNk1HNEtoSm42L21pQUtWTlN4ZXV0M2RlNUFrOGdGZWFJK2xic0VPbWdFNjR1SDZFc2t2andTWllSdXZSdnhZVU5vcFdHOVMwRytvZVBldTlzUVBoV0QwSUJsTlB6Z0hnVXc3WTY5dG44RGQwYytSUXdHUmE4SWlRVFdBNTNsL1BZcUt6Ujh2MTY0aVF2ZzQzbktLZDE5TGpya0o1dnJZYXFZckx2MlRNRTMzeTNzeUVnVnBnZTZuMkJScmU1N1cxdUFEcG5YWmFRay96RG5WWmRjZFhPbDBiZWJZbzRmMlBCWkNocDFMYUc5MGs5RnhJUjJPT3dtaGJaVEJGaVpGaUJhYThwZStVckY2MnpJQytFMEl6SFJ1K1kxZlQxV2o4RE1jOUhWZnRVNmV6emphNURSZUhoMlBnQVE2R1dxeUM2Mlg0N1lZZHZtWFBtYjRFZmZnbGxEUVBncGh0RFNQbDN0TTNwdVkvMU1mOWYvRU1UckxjZXc1Wk1GdEVpRWFzQlBTZ2NPOXEvY2VQeWV6VlppV3RWTVF4RVhYSHNWcWM4ZnkrbFE1SFNLVFNYUjZHc1FIZ2FhQVEwMEUvc3JwVzUzTGhCMEZ0bGw4ZXhpaFl2V1BkMlR1cmdtN0MyZys0WEI2QTBtcE5GcktWRG9mOFVXbTNqbEd4N3V6dUI5MjIxcmVkQmdZdnBCVkxoSHFVQW9xbU5mWkF6aFNldlp4TnBkdGI4Nk81NTNCdmJtUTdFYTJmd3lYeExoUFkySjMxYS9ESzFzZW8yLzVqUjh0QUhsTWgzUXZXbDl1MUx0dXlyUEVqa1RUUzd3eFYrb0hyRlFFOWIvenBJPQ==', 'LOGIN', 'DEV'),
(47, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:27:08 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWVNkUm8rS2VvY0FIUUQ2Z0l2U2I1U0N2NXdIcUYwRGNFSVErWDkwZ2M2Q2JHUUgzR3JSeHIrMm4zRHZ6SHJuRUxoVUpzTWlTa2Vram9mUEZ0WVZmYnNWT2piTzhrcGpDYkZOL3hrMWZzMnF0M0J0b3ZMQjZiL0hNVVRHK0t4RjRUTzNMcUhzTk4wTEp4REFpK3BFbmhudmNUU2wzNmUrOFB3eHFUZ1NqMjBlYUpUeU5EYlUwRkl6azY0cXRTVUpzVU5sY3JBczdwZGVxZ3pQeThvOCs5RFBvdHBxZnR0V2N4enNZeFpxWWFoUWZjRG5vdUNIRWlESHhuUFZNNXozaHhjZytpMHhUc2U4U1pIZnY4YWc3Ti85ZDFTbkY0a1QwT0M4cmxibGFJcHZHT2lMdEFtMndWTmxUaWVEL2hRaTdaaGl6bVhNZmEyVncrWTJwWlZOV010ZDFDL0dDODc1SlQrc09DQWdSY1UzZjFRRnh4TXNaVHF6Z09lbmxRVlQvSFJHRGpzZGhWb0xuWFRUdUIzT3YreTVJWWZSait1ZlZRVmdhdVhRZnVXQXlTSmVXTmo3YlVEbHk4T1Rya1RFNE5yRDEzc0t6aVF4YlczUmkwNUc0Uk0zSURoMzJlaW42Z2tPamtuSm1CZFFQL0dUT3VDZnpIallQRUIrWEs2Z21OK1pjUmZseXVVOE9ueEJMeGxNWTBRZ1hPNWhIZXlvcm5FSXQ0bkhWQlZMN2dXTmFpK0k2eUk1dlEyN1VSTnRuMXB4dUM2REx3ZDJ2SFdzSGF1bFVlMjAxZXFCQVJ6L3VxOXlRSFdNTEgwUFhoVnNCS3NaSXBZMi8yTEJJNVlxZU5LZnAxU01ROXBxaVA1VFJpdE0yUWFFaVlUWGVRclF2YW8veDBVK3hKOVhpaHE4TnJvV0ZJQ3BNSThDTlFoSC9jPQ==', 'LOGIN', 'DEV'),
(48, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:28:59 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYlBDZis1SCtKQXFMYzVabkJvUDdmOWR0cFk0M1FyM3lvbHdQb3dQTlp0dzRUUnJrVXcvSFo1RG1ZSytCTzh3VHZJZ1lSRDdDR25SZVJCcXRMOTlJYVRzUmwxWTV4cmIzMGpvdnpTZlVmQVlHejkyalVESWpud1BPbHRmelRIMElvWUh4bWw2NTFYbnQxZ0dkWW4vZHdVdVhvS2pzdVMrSlhLT1d3WlpRdnpGMEs4b0ZXekhWQmZRVmlFMy9EWGxraHE4WHFOd2hzTTlNbjRjVzhuazEzRkpXMElLWkxXeE9iSi9SaExFcGNLd3EveXFPVW1vcmZDdVFHSGNmSCtqZU9BM1ZVK0cySGxHRjJLdmlFK2dISzRmTGx4RWUrUlpYRG5Nc0c4Umh3U0NTMUtodWhTT05iaVZvVCs0U3RXWWY5VC9PTXdkTnJGeHluNXZMU0FZN1YxaVVtYnVMWW9vejhNWHlaNFRrMXorRmJ5dGFQTlBLQkJsNmxnUmE5QjdDazA3NGk2NHBwZDFxbjIwY0FhV1UwdURRcm5jb0dwZVo0NVBiQ3NhSGlvU2U2WkhqVW5DZXpLdndSaFo1dEo3Zm43VHB4YlQzVkRrQStReDlCK0pFTVQ3MUVsYUhLb1ZoQk40L0VsNlB1UGVDSmtkSGw5dVlkTG9KTDQzYXM4Y2gxMUFKeW9mdE1XNXd4Qmg1RFQ4UmZyOGJqdzlRSTJaVzBUN3M0RXphbEVpREpNdjhCUHhGRkM2clFLVjdDbEl2SHhhelhnV25CWHMrbHIrc2JBVHVUbGhwRS9PYVo3Wm9lQzdKdklRWFI0SmhCOWU0SGQyamJPcGV5VDlTUkF4OG9WREJaUTlSSTN5V1pZUStpUlRZa0MwREtUM05aQ0lPeFdUc0U4M3F4Wmp4bGM3WVlPcFoyblpKdlFFQXkxKzhnPQ==', 'LOGIN', 'DEV'),
(49, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:42:11 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWWYzMGM2TXBSYllRbk1VTGJvOVJRRGZIdHVvMkFEQzVMeWhycUNxTE5rcGdNSWlkb2loL2IxeTh0aXNGbGNWd3dUTVh4S0tWS0tZVWd0T2ZUTm5XMG1PdHVOK2xIRG5DUTNPWTJPeVpCeEZGRk5mL0lqQmY0UFkxZlI0ZlgvYzFDekpkTGg1Z0o2ZFNQUnZEYlZEYmh6bjlOdUFnRVhQbWY3OElXWHFIUk9hVWJGMFVaNFlDSGF1bVp3Y2hPYlV2YUVoVE1MWmRSZkR4VTQyeEQ4OWF1cXVVYlNUNFBsbnY1aXVkUlFubDcxTmR4R0N6djRJdU9DSGYvSWppbHFnTE9DZGJQeTlIdGR2YTZFTzJ0TVhuUnJsc0ZTdzhrTWxRRlVNeVNZcE1QS1FqTFk2Smh3QllTOVpmU3dQNVBCUGlQU1gyaDJrRm5OVW9TWnpUTzhZUjh1M3cycjUzckY0bXdYL2F6QU9BMUZnMmtYSlh1UmswR2NNdnJEd0s3Y1NRTjdkUGZFbHdsVldadnI2U3dWbk9VQUpjN1RGalhNRVp2QzRMdWsxYjhwVEQwNHp6b1Y1Znp0Mm13RGhuNVY4SnNZdE1Fb1czUDRFYXBXenptd1dLR3FaMkQyb3RBWWdIbnJnNkNCd0lCWHBNalh2b2YzSGViT3k2U0xGbzZmekJrQUcxTnZaZFJ4OERHdWhzaHVVYWd3UHAyZWFsSFVSOVpmd3ZrdDhHWEIreDIveTRtZ1VqL1VhN3kxK0hQb29GVCtiTC9zbGd1TjU4N1ZsN1ZUUEtQK2Z3K3BsV2tCVkhtb21TSEZKWDlBYzJ3OEdqQ1FqR2JSakg2WGJnR0E4YTNldC9vMjNsUDFpZXI1Z2F4bTBxb2FSZk9UWDJlRzFzSGNEbEdpa3VLMmVCWUFJbEZoWEFCWDQxWXIvd29VeHdBPQ==', 'LOGIN', 'DEV'),
(50, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 05:46:34 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SYVd3QzJHUWFFbmUwZEp0emltNGRrelVsVnNBelEzNURmWk1yaVpOQWYzcGw2SFRnTVhQaGp2OWtFTTZrTHp1TE9Mb0RYRk9CSzR1TEx4RjVGb09RbDN6QVkrUGVCUSszQjNoSE1QOWNCZzJIRCsyUmRiTDUrU2R4Z3U0Y2ZaaFRLSy8yS3lwOG1OMlFtTFZPVDFCTy9tc2pCRnR5L1RIMW5qeERRdW82bm50dTN4YW45N0swc3JUbHlmbDdjbHJmK3U3VEhXeG5tU0ZwN09DZHJUalFrS2l2MWpjVUNCa0FoUlpNQzA5U2EwR3BMcDkzSDZUNHRnVU9KdUV2SlloaVFxek1ZdUxwOXY3QS93c1VnNFlkOUJoczFvcnU1U0owRFNiVGxxMVhZY0I5VG1sS01BejlGU05MT0ZUOUV1N2xXa3JmdkV0Y2hFZUN5ZDUwTTd0OS84YWhpbFpjTnhJQVRxOXBrMGdhclRXOUZFWU5lL2w1UzZSTGwrL3V0TnJCS1dDNWE3T0Y0U0E2bzFId3VHOGpKblFCVmlEd0xKSW1IbEJwL2RDNm9ndnV3U2pZM1VxYy9la1BDZktJQW9hS2pPbHUyU1RpY1RvenV0MmlZS05xZjRFK1A2dGZLNzVmbHlWeUZqOExvVDA2VzR3TmFVRXNFOUhqczJ1eldzKzcvc2RwTnc0UGczRGxHV2ZlU2kvOEs1K0lUTWpYNFJFMlBxN3p5OUpVZjV2S1RuMk1ub2YyNWNmTjYrOW9yMC9wYjlQeThlQ2pjaFdob2Q4QThockNqOHM3ZC9vVHM5STNXUzlQTWpSVHRTV3hnbVVoUittVDdpQjNreFdOU1pqVEcyMVpHZElvbURhdTJDd2RzbWFqQmw3aU5xanpjamd4ZXQwcXB2MlZKV3kzZ3pVNFRjUkoxUDl3eDdhNTYyVGFVPQ==', 'LOGIN', 'DEV'),
(51, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-24 06:12:56 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3p6WDY4TUI5bTZPL2RVL0FlSE5SWXFPaUZrcmp0c1pBT3o2YVJnQTBDTnVXamt6NitRelp6bVVqWTF0b3crU0hrckRTaUlTS1FIVlZ1cEczV0laRGpiVFhSb3dqbDJZOERiQURoU2daSVhERlAzZ3kwSURPNHhIVXFjZ3hiVXNTMlE2QytzSXczeWFFL1FkaUlSc0hGbFVuTFRyL2s3dHBBMEpRNk9TSE1McTF5elgwcU9FRHFiUldPbUpXQWNaaloxb1lRRjkzOWV3QmM2RVNXejAwbXEzdmg0OVhhMXU0aXVCcEV2MTVzd3R1bE0zbnNKOUFSSEJmc3VOTmZ6cVlJb0xFZzJDb1hhWmIwT0ordlYxWUVVSktNek5aZjJUekJ0NGRZbWtLQUt5bGFFVEZqMHJibkx2UHJPU29KRlAraVpoZWdqMDNiVVRyNnpTNm1XUy8rVzlCUEY4VXJwWVRuc25pV0NXS2J4NDR6NGFMTVVtVjhHTTA3allSYmxreGFhTC9YQXJFbEJ2clYzWnZyOHIwdVNNa1VvTExRL0wxblFONG9mczYyK2lIRUlwaG5UYUpoRGljZXpHbVcxWENPakswdU4yc1ZCaFhsVHRNM2ZuOVExeVBORTViVTZUV0Fua0dPWDJibXlmQjNnTkM5VGtaQTdKeHk1cDh6eThtbDI3K0tnWWlCUStjOFE2V21ENExKaUh4ZGJMbjROUE8zUjhmYWZTVmljZVpMRE51T0Jxb2hOZmRNNjMyWjNJRFlNWXQ2Y3c3Rkhad0JKQUNqdGFkRm5YRnNpR3RnblFMRjJ6a0hxQytaUXZmOXBCcXRFM3lENCszNW1kK2VWMmthcitML0Z6a3M0aUdxYnBGZmVKSC9oNlEzSWYrYjhBQVVHcWRlK2NkSVdla2ZtdVBGK1JTc1J4T21YaUk4eEhSNVdVbVU2YUNYcXpYY1h0MjVXcTc4PQ==', 'LOGIN', 'DEV'),
(52, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-25 10:48:57 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ0lxTHBuT0NWVEdEUUlMSlN2dnJoOENtR3FzQ2VFMkhjTXM5UFA4OHIrek16US90dmRmTTRNWTZrQ1ZqclVpaE9udzEvRFpJTDRVazBJMnFmMzNSZGc5MTcvZnJNMVlHZllWTFNOK2pRZEFxU1VzU2hlLzBMQ3ZBL0ZjUGpsbVZwbStDeGVjWlhMZzZFME95MW9wR1k4b0FuTDVwajEwL1NJd3c3ZUZhQUdtMWdUMmhvbXhXSWpkTDVENmhHbXBuVjlVdDBhUFBsTDllRVR3S1pyT29GTVJjeHJ3M1NYWEE4bHFhbDJHdGcrekxLN0l4Y29FTUgvUzM4U3psMWROTTJDM0lwUDVIb1BZTUxVUW1sRDJlVzJjTkpFa25ER2RHRWxmVmFpdXN6RS9laWhjcERGVC9pNVNGa2xKZmdxSXBFSjNFSkpuNXFKTmVGdkdUWDR6SkcvSkJGSFh5aExKbittMG96bkUvTmVCNVZlMWMrSitiMjNxb2tYbFlUWjVIQ0F1SHlsWjVPS05uN09pQmFQUmxza0ptVUdURmxHc0JxdjNyWUZWUUpBbkg2Um5YeS9zT0pHMmhFeWVUd3dDdzRnSURPTG5nekVlUFE3akV0SllhT3Qza2tZeWc3WUFLYk0wczB1NG9TVFJQSXlpM01IdGRubUN1K1dEZ3RGUFNGaURTT0JaVy83aFhJV01hbDY5VkZ4VVB2SlRDbk45cG4yZ21IZml1MmxLUVNQeU1NeDFJSEN4aVhWOWRpbWFrR2p5RDJrWkV1MW9Ta2YxSGVEQ21tMXdTaE41cjl1K1FmQVZlbUN5N3NxdENTRkRzNDFMUjhMZVZNRjhteEZ4S0w3ZWFBL0I4aWFwZkx3TnRYRXVhYmEzVUk0Uy95Mm1pY0VEbkx3N1NkRmVWWEhmb0dDU3EvNWFFRjhFdFd2Y0lRV21nL05jYkFIUWl6WUJSWmVPS3Z3PQ==', 'LOGIN', 'DEV'),
(53, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 10:02:29 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56OWFkYm82aEIvNlZSVHlkRjlnaXdWVTBNcnpJMHYrOTJUQkVxaE1FTW9LdGU3bVBNcFhKdkViR2QxeWFtRHFkWFRTVDVOUlpGaDMzNnVqTjRWUHpjZjJxV0ZWNjNBM1o0NVlIVE4wSnJocmhueThicWlZYjFnZmZ3clU4TTEzNEdOSlJDQmtGa0R0aDdmbUhyeEZabEdnU211REE1RnZhWnEzOFNEZXFneGlha2hGVVFtY1hONEp2TVY2OHhTOS9TTHRVM0NKT0lDYVcyWFMzcnVxRXpGT0RZSUZtdHhVUllHTHZYVmtQeVBIUWJEOEcrU2N6Q05jQmluZlpIeUZ1MUdVYVNlRmRNb3NxbnYwSmRzTVMvY2RjQWo1bUZsSjdOSkJpZ3d6SHE3ckhVL1hqbmxhazVnRytna0JxSFZNQ1NXcmZrMEpPUDhOV3BPTE9FNDFVaFJXTkRjZW9BWWhSRnhqZTE5UDhvNmpDSUhhZG5ndDVBeG94Mi9MY05ESEhlcmNYUmhTT0I1bmMrZEN6WXdxOUFkRU05N2hxUEx4SThkUFhFNml6V0lHY2diYVpqVU16dW9tYjU1L0VjTmRITXAzQjVQaFo4Q1hvdGNVaGo4dkF3eUMxZXdQdDNnbXBhTHEzQ0NsdEJuT1hZL1pQK1lTYzZSQi9SQVBKQlBCUlYrb1ZLV2hJaFZUT0FkeGQ0b0xoejVHWTZ6Vkl0QkRadGR4elZiYVp3QUcrUCtMYnE4SGovRXZabzZRSW5zRE9jMkJmbnd5VGp1VjBEOUpVd0ZHMnhqOVFUMlVYejc4Q3dWNHpOU3JOdGhtLy9wRm10T3BWNEpOZ1dQdm1jTkpqS2RKalg0VFdJUy9TVmhPb2JkaTRSSFlha0pmWlBXMkVUSVc4OFFCL2lsYWhPbHViSGVrWGgzQ2plODlmRjhxdnBvPQ==', 'LOGIN', 'DEV'),
(54, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 10:21:36 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56L1lmVHZhREpKODgveVNsSGFPeW1WOXlCYklMUFRhMzhRUHpScjJBTFVqbEtraGowOUdoUEdtK09ha2RNYUVteVVvN1BUd0k2SFVwNFNabnBMY3A4ZWFyclFKWExPU1hTbWI3WVRKdUxNNEVmWE9zS1N1QzVlZlNManpFUEowckhvZWZNdkFZZEQ5elVGYk5sLzhhdk01VFJYSUQvSGhzSGl0dFErS2dCUllNc2xSOHhBTTE2S0xTUVpZS1pQbDdaWm1vaVhHWXJNcllRMW1VMldGZmhMajZVeGpGUmZHK3pqMm1OYVd4ZW01ZHdaNyt6RGgza3JlWlFvSnU1QldrTExLa2Z4WTluZkgzcHpZdm03aHVvR1JxTVFsS0NGWDQ5UmJ6eWFOeWIvUjdaclJ4MFpKbEpuRWJadEJPRTZ1N09HWENTdkFBaWVaYVJxdXd0bzVlRSswbHhHZU05Nk8xL1dhRXhraEgxZE0xMTUrNkRldG9kWExZelNJV0pMazRjSUVSLzBsVzdpbXlaWTlTN2hvdkZ6VndBN2lyNlowYkhhRWJQQU9hS2RtSEc1YjRVZVlSQ0ltUUtMUGJzVHRFbiswN0QxSSsyZjc5SmZmM25sMk5ZRXVwdlVaZ1hiYkw1bmVYUEJIS2x1WVJCOTIxZEt5cm5IdkdMbTczVWx4emVHSTRYTTZKWlZLMlBqbmlQcFR3cUFoTEdXQ3NzU0lnM3B2OEIvdnJ4TTR1VWdTNzltYzVIc3VhUkEzenVVSktqUnZTT0Fud1I5aFBHcmZ1QWZDNUNDQ0lLWkhweUNlSWl5bXBSVmdWQ2MyejdXTDNUYnR1MHlORXd0bzJ6ajhVYVBEUmJ0K1dvcC9XbVQvVm1tNENVQzFRbVcycFdqdDBJN0NNVlh6cFk1WkpxdWgxT2hVYkdWb25vWmJzdk1xdFhBPQ==', 'UPDATE', 'DEV'),
(55, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 10:21:43 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56KzgyL0JBQ1FPdk9zTlFCbnRHTUJ6OVFxWURIYm9vMWlaLzczWlM1d21TM1g2MVJ2Q2NXVUxiVEs5ZEs3QzRpNis2NjZ6ajFzM2J6QVJBQkFwY3VkRVFPNkROWGkrRW81ZmlZdkpoUXJUZlB3RytDTjJRcGJkbDR4eE4vZjhlcnNHTEdjejBqd2NXcmNsVEMrb3g5Yzd3T3dxQW81VzBSOGFQSTZ2RXhqSXJ1SUJJOWlUbFg1N0hoNnhjTzQyeEZPZ2RaMXFFUkNESzh4bmN0cXNDaTh0ZkdIM3dHV2NmVW1SQ0N1NnNTeXVrQnc5Vyt4MFlnTEU3MUU5S3d1MjMvS2RHTWRjSnZWUWp5UWVUcUFDZ1JGVElVZS8ycDljVWMwYUxnVFR4M2ZDUEpUNURoR01KUUlOZ0d6WHhRL3RSbGVSNndqWk5tbVE3bFhSS1BvSDJLT1hmRHZpeXRSNzUzWWF0Zk1CUmZVdGF6L3B4aC8xc3o2eFZ3ZzRXc1lZd3J5UDM2a0wyL2pYcjQ1UDNxYngvQTl4Qnl1cVJHVWNwUzRYaE9wUDBIN204WjRJWEZORUFMdkVxYnkrK3pzRDkvSTE4ajM0S0VEbnRUVFp2R1FUaWg0aWF2N0lIQ3FNZ3BQNFlhZjhoNkJIOWVKbjVwaXpkOVNoNU4xTU0vb3JYZThrWThHOVZnSndpMUNZeXp0OHhONThaWVlDbzk4TzJNMmFYaFhxVXNuWDErWkh0SnpxNjNXN0JvZHJRSEFyTk9TU2dUMm8wQkdFWldnd3ROZUluN2xsS3ZnbmYrbDhscnVZS3Y2dkY2dG9FSVpad25Pa09BNmVYWldoRVRDNGRuc1dkOFpVbUtSSzZYeG4vOHpZdkE2RUVqSVpkaG9uNVhucnBIZldjcFk2QU1PVWZROXNzWjlvQTVKODNZVE5oY0FnPQ==', 'UPDATE', 'DEV'),
(56, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 10:31:35 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56OE10WklhUnlSeFM5TFh4dlhWM3I0S2JYZlYrM2FrL3dHanFoVzJiVXZTVXdFQTFBeFdUbVI1S21HZldlZWRSZ0dpdmZoM2IwOG5XMjNmRjRQcGtrTEtKeit6ZExrY1U2Qm93dm1xcnd6d0c1cXM5eWMwUzdIVHFZTkhobG5rWEFNeFNGV2JVbWdROG9UenNzWkxNeExwUlMrbnhHUWZCN2swK21lL2dTa0pNVmhjMkV5THg4bms0TUc2aXVCWER1Qm55aTdPaWpweHhlOGE1UGVIN0xwdlEwMnVNUUJkc1k2bUNzL3JESWJaQ3pyZXlqbTBEa3Y1WXF1a0xvdVoreExMb3lnNHBKZkg2Qi9pWXJvRGg5K1lScnB4Y2dFNFBCNHp5VS9lU2lTS20xRHUrckhlRElDSTFFQ3I0M241Zi9jUGJVS1N6UzhBRklDL1EzaTE4M3hReUxuSnAvS2hVeDRMdVFMdE9TbUMxRXNLK2FoN1VBT2p3NjBZTkRINWdCN1FicHFRUXNMVTh1V3YwRlJFSkRFd2o2SFhTNHNIQnVxZUhKaXl3SWc3d09ENENtMEYxVWVFWGNQNUpBY1QxdEJrMm5zeXpOd2EycXFLcW1xTlpCb3QwNFkrMzAwQTFqTVZhUjVNeWh1elp6eEtzVTVaZ2R2ZlNDTWNuTk1VNlFBWmJvck1qUDVtVzIxTXJCVk5kYVl1OStBb3pFWFFWa2hsd2FsZFZhaFdlM1pTWkp1RHFKN1ozK2IyTXprQmlQSlZRZ0pUL0F0cXVFRXR0TFNiclBubys4aFJRSTRiU2tkZXBvV1N5UHlscG1GK1A3Nlg5M0Zyd2IrdHBXamowV1k5OVpaN0RHR3E1cDRMTnFCWlJWUEx4R00zVko1YURzd1hxNzFZQytHTEMzK3A4NnJTVndjc3F3VjBVc2dZYVlzPQ==', 'LOGO_UPDATED', 'DEV'),
(57, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 12:16:24 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56K1N4QkppdTlQRVRkQlBwMS9CUk5XZEIwQUJ6WHJuNTczNmRmVllHc3lXdVgyL2xLRU1IaVpTL3VpTlFvdjdqNXdHbEJwdVkyK01uYms3dUtQRHoyQmI1VDYvVHVOR2txdjEvT2dIem1VajNCUVRpM1VnalNZOXpHeTlWZzFhQkRITDlsZkVvODQzUEZkem5oa0JpSk5CRHZ6NmE3TjAxd0QzazJnTTVmWWlvcmlvaDVnNitTVUt6cjZaaTI2Wmo3ejZJWHhHcGhuWk9LTVlSK3E0Z0ZHTFBDZXREem9VYVJ2VUxob0dLNVZmSWlBTkJ1SEdaQUhQQThEdDAxWlhnZVlxUHpiU0lyeVZ3SzhSaUxIQmtBSHlsejVNT0orOThJaUE5UmVTQ083aElTNnZpMlYyQS9UQURJWTdic3YrWFV1RFZLNlh1bmc1bjUrb1ZtUEo4TnBVL1Uxa0Rka25YZGJ0cHJmWk5ZQUpVc0J6bzRHamFKZ2Z0ZTRKK0JaNXZCMVMwVUF0WHV1RnlHT0xoVXNDajhXb2FGNXBCY0JhZW5Mc2tSY0NVMVZEK0cwNk9LemhoelNQMXA0VUMwMnI3d1VoUkpSZUtJY1dFUldwTnhsNURmTXJnVmloZ1k1cncxUllka2ZZN2ljVG8wRC81enQ3MnRyNXpxQmxDaUFBbEhYRnY3RERKUDJiZTdoVkRnakc3MW5kVDBWNEFZQXB4dUVxVXFHRmNpMkUwNldvN0lkL0JGS1g0bFQweWVZYi9HTGtDeW0zRXdMalF3Y2F6WlNTQkhQbktoZWNvQ21udHJUZHM4WWlsQzhJc0xYTVc5clJyVm9tK29BMG9LOFhoMkxRU21uOUdET3lmdUh5SzdQbVM4Znp2dm5iV3RvdXRkS2RLTXF3N0oxTG5NNFpIS0d1M2pvQUFYZHBVRnFjN1N3PQ==', 'LOGIN', 'DEV'),
(58, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 01:29:39 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56OWIvVkJxZVFiUi95Uy83azNGYUt2aWQzRFl4RENnL0hUelVPNE5jTVphazJoSHZnUkg3eWdIaXcvY01UdExpYUQvUEFYenJBRmJqTnRGVWUvQzYwTDBseWM1VnBnSEdpbXdsSXh1TVpuSEozL2EreEVURWt1SDhXRHRFZHFGb0k4VzRrNnR1Q3pPZUhPVytBUUQ2MnplRUd4MFRLK2FkSFB2OS9weC8wc0N4azQ0NHZCZ1RpZmFZTC9pYzNCK014dkV0d2hocGlXaDA0OXdVUGtrNjl6YlVLenNOMGtPbHJBa0JGOTlaUnllZGdtTWJ2NTVVR1kzalNOYmp6azVWVW9uL082RTJqc0g3OWNJeUV2WitDZHU2SGRZYWw2TXdCS09zVEVKMXBUUjh4SWVMSHlvRGxMNDlBTnQybTgxYVVzcUFiMCtyNDZpNVZCa3FrZUFoQmdPWHlwaEFUTUdvZmc3UVp5blFHVkpmeis4d1lsQ1NaNzJ1RERqalhReDExQUo4MlVPMER2TTMxMHlwZUVxV3dMeHdvRUFsMFNWYXlJTGJWcGhmbkl1dXV4NlJKZVQxWXZiaHdMSXVnVVVuSS8ydlV0RFJtZ2VvRGhPUEc2eFdkeUdjWDdESldGVFA1cjkyL1FOQmpxVEpmekZHcFo4WGdkcitWQVNNb3I0SkltUHJ5N242Mm90ZDIrQnZFcDdndVk4TTZScklZeVY0MlplUnFXWG4vTURvcWk3NEJqTHdzRmtiUlRqME41ZGRQWXo5TUxvaUlNUlIxODE5Wk56VjN0bzQ0MU5PU3AyS0NnMTRHWm9WZFVXb1AvdFpyUGtYQ0JGS1dJeGRwdUx1MU1oV0F1QXhPaklmbHFBSmhvemh2WnZId1hXTlZLbnQrOXVrRjVpSEZKT1BnPT0=', 'LOGIN', 'DEV'),
(59, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-28 02:08:32 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb2ZQR3NheW9wdjRWaDdLNkd6Nm56OUtPMVlZRjBabm1HUExVTGlubDhvYlBaRi9QcnJwSkVTdG9lUzg1aGhOQ0dtMFk5amJ5RHFFb1ZBQlNTR3N5ZWMzTjNPSGRxcGFjRHhFSVJ4TUxjQmRrd1RXTzBDRE11RlFuTkhRNFNwR3hyN1pXT29KSEpaNlNDTlFPWm5PRjhtV0tqcWMvTUx2blhUaU80T3lwanFMazZpcjB3Wk1kcnZrMko0SEI5MGExTHpIVXViRnNFNVhKc1NXWkdibzEvbGl1M2NUZ2I3aDYyRWo4bHlocWkyZDF3dzdvZEhYMGhpazhiSGh6ZE5ESzlXVC8xVEpHbmF1ZS9Zd3BGTW14cVlyY0JaNWxvWGRTRG1qTFlsTnRveHgyd2FDM3g3QWtQS2FISmJ4bVdtY1d0Z3Y4T0VFOXQxdHFGU0tqOXNsbXFRb01KdGN4blVKMEp2dDlFTEZQVnUvQy96U2dGQkJVWlp5TjRQZjFlb0Rta2tKOFVLUS9mOHNmSXRJTUFaS2kzNTNWQ3hkbDJiK0E4MlhBVU1QUTFiU0ZtTjBoZlErSFB3T1hpYVFkYjRkOUFGTEwya2VWVWZ2OHlUZkNwbFhwK2RFYmZTYS9LUkxZTVpBSEcvUUpYTThoSlduU0puVER3dmd4cUVDRGpQR3RPWU1oU1lvaXBHT2szY3lrN2xEaTdTeFVaeHI4TllmZFJ1UWpsZWhHZmtnTG1FTUw1M1RoKzhlbkdDVFlrSVRCa00rQzBSeXpaeDJVdnlUeUVYYW9wMzVXRUYyY3VCVVF4UHJJSzBLMG9oZERJS29RbU1SQmVjbUtJQlFMd2pmTmpES05CV3N0V2Fyd3lSbmhYT0s0QnJLVm9KWHNFanhZcjdFOFVVTEJjb1p1NHdMdWZEM3JtSmNjbzV4NjdYaWlRPT0=', 'LOGIN', 'DEV'),
(60, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-10-06 10:15:25 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdjMzUkJrVldOTkVXaEpTd2FOTnpvem01WkpvOThrTVFHWnNRUW1pNVlPV2V6VFFxb285RTU3TVFwT0kvVHQ4NlZWWlFSUG5YQkV1NmVaOWlsTEtDdWg3UXJpWjN5ejF4MU01TUFOSzkzSVh2KzJxcVI4RXI0aHY3VDVwWEJVRG1oMVdyNkovM3g4ZkZKMVYyRkVMY3d5M0VHYkVkSkFBLzNuRms4TnpNMENPK1Vzbm5NOEFOdENxRFZqSjgvUnc2U2NsUVRNSC9tS21iRlR3a25YVnpQclZaQndZK0hSc0xoUXZjMnZEdWpCdGZVSElNdTlyUmJCT2VWSlkrcG41YUdwMUVGNy9XUU13RlU3ZEtYMHdPQndVN2FLQ1BXUS9BNWF0c0ZLYUdBM0VRUXlKQ1FkMG1vL3dwSnJXUnJLVkQzVFFqRWFNNEZQR0xRWEVjTTFxNWltVnJaVExIUldGZjlKcWpqQWhZZUZWRnFMd2J5OGl1bC9nYnI2Q1VSR0gra21PV0lGU1g4d3hudlIyeVpTYzN0MzNrajM3ZllteE1Hc0RKN3YyQ3NCVHpoNUdkUXdxQXh5M0hILzluQUFaRURSQ05ldGJTR1QxWkNKRGVVVHdnY1ZsVFFiWTJXajk2WjNhKzhyNThDMlltcjVJekFaekFOYTd2UlZ3N0N3clN2SkdudjNZelM3ckVieDJqTjNVYXlLbXVlczRhZnRiSnozMHFnT21sRzJOcCtDdDhnakM2RnlLQ0hQdlFsdmR4OTRxU1ZJa0Iwb3BxSnBkZ0NzVXIyZnppalhwMExGeUhFeHZwRzBYNDV1Zi9iSlJnck1EdzlFOWUzRHVUeHpZaFNhNEZtMlRNSlBFb3d1aEtwdGNmcmtaOWxOYXRockgzRTEyUjhSMlh0aGRKSU1ZblVtbkR5emxRLzhkNFU0dnRtN0ZGcVBYVlZhZUFKK3VBTGlJdFBJPQ==', 'LOGIN', 'DEV'),
(61, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-10-06 03:51:39 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdjMzUkJrVldOTkVXaEpTd2FOTnpveFlFbDdEUlp3NElyUzg3WlZ6b1B1Q05Vb2ozeDBqWFhPMmRId3kyU3NBdXdzOWErTGhTdmxnaGo1N2pVQ2U3OGhwMlNhYU94Q24rQVRXR2l5UGx5YVJKdlJOZ09peUFBTjZQZjhKcHlBeUVUOFdZNVU1SEd3cTZObENOL2c4bFBkU3lQcmZZQkh6WWdGT29jckhqS3R1dm5MNUYyMTJtYTc1Zmg3M0pmQ3kvRUFWalNBUVFTcjY0eUlPTC9IWHRmdU5BYXh0citBSDg2NDdrK2VVL0hqanBIY2crL0xkQllGMTh5djlOWVgzN3dDMG1VeGV2OExMd1Q1ejhHVjVubzNIaUQ2T3lJc2o5eHQza0g5QXVhb3BvRzVTZ3ZwUzFSUTdRSS9RNW5hSk4wTzV1cnNtcHRmWDhLV3VNdXJIR1VVRGE4NFowZk9SMUFJYTVrZ2J6dS9KWG5JY1hRUVlJa3BPRCtSY29SN0JDbXE0amlBVFNMRENVTCt3L1l0NVFtK2IzbVlma0lzaG1zTFJTeXpVUTA2bUNXcSt1dGlCYzZZdnh2NVV0ckdxSkovVklTeFlleXFpZVRqT3JsRXJqL1pxTHBBSGRzZS9wa3FucVFpcDZrTTJEVXB2R1g2bUxlaXFKV1FWVDlTL3FSeGVjMjBLVHVFemRlQmoyd05IRWJNV0NzVGtLanNQYStZU0pZd0Z5dmJQck00VHIveFgrM3ArajE0NE9ZcDlFRFBlUzJnSk1IV3RJOFpBT2VqZFJTMEZvTDBjUC8vN1FHRWJVODlSU3BFL0FTSVA1U3B0RU0rc2xFUEhhRVVyNDg1QVU0MzViMXNtTUVVaXQ2MXhuSGF6Mi9GbytMeXZ3K0x3OEp2ZzVKSzBoUnVMQlFzV0RKb05RNTUyYmVSMGcvcW93enVQazBxQndRTk5RZkNsZW93PQ==', 'LOGIN', 'DEV'),
(62, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-04 11:47:15 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdHVpZkJoaCtJeVJYa2NBLzRXeDQzanRnM0JTNHVIUGdIdzJlclFSb0JVUXk1Q2E3MzNlUWtUeWVhZUF3a2hwbGJxZi90Y0tEbDR6bWxCRHJ2VnBUOGdJdDZJSWpFUFFoMXJ6RmczU0swbG12aHorbS80eXdXN1BORXg2bHdzZ09SNm00Z1JJNzVSV0crYU5ZNlpOYUQwaytvTldyR0xkSzlYVy9jVFp1clRDenFURGt5SE15azBuUUdNaTVqUWRJRVNyMlFxTmcwdUhMbHRROXRZd2dXY001RTluWkM3SWtrd0FiYzh4bXZrVFpHejBMZVpkRGh3ejJxUWpSNHZDNENCVjB1UzJ0eXZEVzZvQi9oMTN6T1ZqMGlXdXdhT0h6YTdLV004c3lXK1VWbFJSdnZLbWh5UXkyY1JjYXVwTmNQbHpjb0g3RHI0cEVMcmZSNHZXZjRhVk1OVXpCOWpYcDNQQ3NuNWhmdEsxZHRiV3orL0JBc3U4QUdkVmhTbUJDU2ZaV05rQkRFcDZpNHhIU0VCTExOczhmcW9sUHNYcG1YSDhnYjRCWkNDNzR1dlJlUlZnUUxQMXNMLzBOTERseXRrcHJBc2sySTQ1bmZLUmVkM1dwNnFNV1Jmck5oN0xWUGtwcXlybEdZMGRja3hXZW1tOWQ5eDROOG5oSWxLREp1ZUJLelY1dys2SVJZYkpYanpNRUpOVTVCSERRTWpweU04azRpVFBEc01mSVBydU1jemtsT3EvNnRYWkp0eENYOXd6ZlhJQUNZNUN5WEFJQmlMZjdVTE5vNzVGZko4UXFrTjdIMW1sWGxKYkZxUDJRdEllTzMwSEs5QjRYZGdacUtnRU5WZ0p6THpJZGlIWStHL0IxR3VoM2JnQlZLbUNXS0xnUUpkSmg3ODN2YjUrMktBbTI1RDlvTzZqYVhQUnhBPT0=', 'LOGIN', 'DEV'),
(63, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-04 03:13:54 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdHVpZkJoaCtJeVJYa2NBLzRXeDQzalZlejg0OGRHdS9QbzE2VkdTb0dYLzdZU1VBWWhZM3NhQnRBRWk0SGdOcW8xbng2clBpS2E2cUdNWmpyc3Y4TDh0OUpyRFdXMTZwWVpTc2c3aWNEUlVCaVd0MGNNM1lpOEdMcVh5S2owWFV3SXFGTWRjbTBQd2ZKUFRCV0JWVDI0N0pCVkIyN2dVWXZ4aUsrUVR3MTBKZnJIZWx1bDB0Z3RjTTdramlhVWU0citrM1N1cTlRYlBnUGhpOGtTenNjVndFamZTZE44OC96VWpiaGR6M0ZabjNlQWhRR1d0Y2c2cFluR3pjNjJFRmowaWhUcG1KWm1aL0lNc1lSZkVwNXIwS2hKOEtuT0wwV3VxSWlwbStzTWc2bTA3YXFhMmFJaFB6UjQ0enF2RXUvTU9GdGVScXk0WitvSGpXTmxVL0haNVBybXBaWExyTll3R204d1JiTldWaUpGdG0rY3RUbmVqdTFZdzNEM0g3U3YxcXV0ZWpSeUFXZVhqY2hBcHkyUUgyQjNhMjFLWTRkbmZvZEZadlRpK25ZVTVMRVRUcXVzekF2MnQ4dmxXZzJ4KzhMOUxzZ3lMdXBWQzllM3V5dHcvYS85UlY2d1A1N1AxRG9vNVRBcGFyZ3BRcnF3cnowWlpwSXF0QXYxaWZsN3BkTnh1NEliaGtnb1ROeThUK0FCaWxUbDdlYnBqMCtaWEtzOU96cVM0cW80bWk1TVR0ZXd0bTBYSUV5L05ENWZjaUwxMGRtT2NqU2FBVk1VTmpHTkZ5Qnk5dk53MC95YTJNK0VjOUdVQkJjcDlna3NxdUthc3FubkRXcFA5WFpxZHhvMXBmWVNTNUxsZHNtZ0cvZDA3bHJHWDlYODlUM2VEMktocmlJL2VONTRtWmVIZHJsZVdybnR6SzY0WmpnPT0=', 'LOGIN', 'DEV'),
(64, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-05 10:34:46 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaWRuYjN5Q1c2N1c0czNMNGlOK0VPcktxSTkxZFMySU5nS0dobkZJQVFNNkxwMmRwTGp2TnRoaldIblNIOFZab3NrMllrV1J1UlhEcnJodm5YUW1kVHpTNXNJdXRCcThrUWlUQ3hOREhxRURxRHVJZHI5aU9vM2pKcTNoUjFlamFxYklYT01OVjFIL2Fpd1Erb25WQlczcU8xUis1K3pHeUtPRTNMWWNlVWVneHV6MEJoNXZSQWpraENVMGhOOUdRZUlUTUlNNlVIMGNzSTRFeEwxZnd2T0Frb0VabVJ2dEJiWENsQk44ZXo5ZHVjcmtOa0FieGNmNjVMTTZrMThSS3VQT0QySktBUE94OTQzV01rUmQ4Slk0TnlSNG5lYVpLSmJ2NkxFZFUxdVBmUmdwbElHYlhDM1BvSUR0blpEZTJ4TmJnYThxRndmN1Q1NmVFaThYRUJVdTVoZGE2bWNkdnpML0E3dmtOc01yWHF0OGc3bGErZW55Q3RJNXNEM3BwMDRqdDRKM2xGc1dteUtQMDdac3paWkdZK2N4Q0U0VHlEU3JkMXZtVjRhMlFmT0xFa1ltdWJXSUs5Tk1OZXAyS2lES04zdjBmam8zSU1Jd0tmVktnVEZjSFBKeC9OMmVtVEVxVFFLdUVKK2lMank5RHVoOHVMOE5aZ1BSdlg0R2FOU2lIUGZkbDdPT0hTTU9sTzNGR3VERWpIRVd2TG1wbzAzVkNkME9xRy95UjZhNm8rU2xDWXJTdFVTamg0L1lIREZqbGpIdE9NckZ2c3dIMmw1L0FURVkwT1Z4aVpONVNvMHhjOFQrbWtoUk5sR1RNUFNOeXUxSHF6bmQ2S3J1ajBuRmlCcHJlOEZpMit3YjJSbEowTzdTWHBQeWFGb0NybVFNME1yYzFCaHpRM3RNWGZxRitpSk9MaDd6TnczamNnPT0=', 'LOGIN', 'DEV'),
(65, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-06 10:52:09 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc09CbVhxNWVUQnBCWTFnODRyV3ZNcGdKNnFSOW55SlFNaGxQU1pFU1JLYTcwQjVQSnM1clNEaDNxWTdSRTFGY25EUW8zaUMrZ1d1eXZPcXY5UVhMSFhCLzZwZm1PMXU5b1E1czdacDVjZXJ1RTdLb2puWmJWVjRPcS9GYTlZNWJScFVqZkFnS0d6bk1memRWeGZJL2tyZWFWZVVxdmphbWczZGVSNXU4NHZjSTlmcFJLejNaQ1BFZHJ2emdaaHVGS2VNZTFuQ1prMUlwWE52dGxBTUs0akFhMFREa3MyTThWUy9hUmRWWVJHc3dWL3J2VnU0VDM2WncrRDFqVHVzY1dJeGpDL0JhcUdYMWx5Ykk4SE5WY0FiNFBDZy9LSFZZTnhuN3dUaWdvSGt2RGEwc1F2cXhaQ3FIZU5ZYUNBYXEwaW5pTVlRNlRUOGZPbG9Hem5rZkl3V0pocm9GQmdzZmxRZDk0NVBjRWJDcEM2NzVBQnNVbDltUnVOYWJuQ0xOMmRsVUhWdDY4K01aV0RNQUpQUW9qMGxCQWJOelBlTCtNTWtvQTIvdkdnUnhJcDd5QTVhMzllSnJYbHdvZFYwU2FVZFdoVUdCeldEOEQ4T2pLTVJVV2d1QUwybFF1cnV0RnVNUWlFQUlhZ2tzTEZMOGVYck1CcEY3WTRKajdZUGlOdE9YTllRcFJUekRrUVRwQVo3TVpSOXNRKy82bk5GN2FoQldFdFB5cWFrcHI0Q0RpSW9odkRWUm5QTWQrOXRXNks2MlRNelpucUZEQXpwMkltRWlabFNic0xvbjlrRUxSZ0tWTE9YMUFsQTRTQVRoMm12dHpuZ1Q4WVJqaFJlbmhRSDFFbkJDZklXTHpCeElmdys4czFOZTF2VzU0NUVJWENncm1vdjQwamVDc1VvVnRzcFpkMFVmVjRhOVpCOGRnPT0=', 'LOGIN', 'DEV'),
(66, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-06 11:10:21 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc09CbVhxNWVUQnBCWTFnODRyV3ZNb1VEN1d5S2tDYUhNSE1WZ09IQi91dTVPYzVYUS90NkhBRVQxTDBUSTU1bHBUcTE0QTVBVmpnTng1aE8zUkk1NzNvclA0TGg5UExFaFBIVEFvckpxcmQwQlZpbGhBdUdyWHNiOHBmR08zOC9xQVNOUEUxTldsR2hoTi9OcWZPR3VnbzZDQzdPTzlJMVZhTTlyK3JRWmgxN2NYck5oOXozTWN3RitySlhNaFlwRFlCWTR4dlozVjhEaytWeVF5bXhDMzlqQ2lmZXp0eXVXM0t0bDkrMzVDTlhtWE0yLy9GclRzSnVnQ2hwL0RtVG9vQVZKbC9WMHZ1WHVoUVVKM0t4cFpadGdETUthczgzWkhYbCtLaFJYTEJzcXZmYmlvMFk0VElUdGJuc2pQYXIwc1lYVEd5dCsyZFhadTVTMmFLdFBnQTNvT000SEJ2ZjdORUhrcjJ0MjZYTkFlWlYyT1dRWnc0QUpqd1RENit5Qm1TZEZxQzR0SEQ1WGlYQ3ZPYitNZE0zTzkxUS9aSzZRa1UvdGNCNndRTUZqRTZzMjlOZkpwU3p6VFdoQWlCZWlkR0NHQ1FMNUR5VEpsVWtkL2VtUCtyUjg2UTEwcXBmMEY3Y1I5NWxCT2tJZm1ESFFUQTRMTW1zMkRZN0ZLWUlJYVMreXhiUDBSY01yVndvSDU5SUE1ZkZiZXI2bkEyMXV0cUw5b2oyYzY1K0diYytmTHp4d2lndmdJRit5bnM3MEJRSjl4S2FhMWNVMkQxOFp1aWt0TDY5cm1jSk9QTlF4R28wZWJnbXRkVWJKNzlpT0hNMGNwazFLbmFUNVlsS2xYMUVaRHVZWktSaXc5VVJCTlhqZDRXcVhzaHZRZmovNzlOcFVPOEJRa1kvR3JMdjNleEtHYWVtb2dXZElYOThyUGtiQlQ3aDlmeSs5Y1pSNi9wTmV3PQ==', 'LOGIN', 'DEV'),
(67, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-07 11:12:29 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdHhxT2dOZEIwYzgrWEdQRGVGaysvODA1SU9NSWhwL01KdU5wMC90VkNDcDArZWNYSWdUYlNrcis0bzhVeUUxbFFROEVPWUw3VG9SdGV4Q0FlcjM4VzNRMWcwOE8vcjVscVMvcDhRRVdwVXl6QjFSZWZoUUF4ZDZ1YlB2VFcyclZRNnpQZm5QY2lKV3Jsd0ZUT1hnSzl3NWpacFJnQXVvVk00ODN1MXh6SHZnQnRDMTYwQ0t3U2ZWQmo0eUY2akdzKzYyZ0NieDN1NTNqclZndW9IMnNROVhZa0JDUFVxVFAzZ2Q3aWd6TG91blRwM0ZVSUZTMFd1T1F1WDBla2p6TnZZN3RsTHRoZnRxMlBCcTVRa3hsdGFNS2lvNkw1T1FrMHF0TExwVGJmVEJwMEFFRUJaNlZ4RnM0NHpGZkJaV2lzejlTbWJyNkVEVWZCQ0ZLN1RjellnQ20vNEQ3ZzJtMFFrLzU5ZlplZzBvTnh1UWJCRm1hUXZFUlpLMEZLVEZnQ3VXNWRVbnNhQ0t0ZlNuTlJnWTU5dmYzWWRWWUwvN3p1UVljQUlBY3p2Q3dpalZqOUxldzRLL2MzbE4zbjg1WEVZR2tOWEJySzBDblJGWTJBRFM1K1EyeElGNjRsMndpZXU4VG1vZERuOGlwN1lkcExIVmdkYlQxblFBR0Y4VUR5U3NMYmdhSmdPLzhUWVR3cm0vQmxpR3FEdFZOei94M3MzemNKTHhpbmg5WGZ0TWRYZWtKTCtUdmxKZmUrOUE5VGtHeHU0SDVTb1l0clcydHJhNFovTmRMQ2RiYVpCclNxVCtzaGdscG1ad3RIZWcvMFNvcDRSWGtpZnNESWliSWhvUmYzVUNkRWRwZUZCUjl2ZFh1a1Q5SmhPK2tOV1d0RjdwR0FWaERNL0ZiTnZOakRjdmRvR0NwOWcxWW5FUVZnPT0=', 'LOGIN', 'DEV'),
(68, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-07 12:12:33 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdHhxT2dOZEIwYzgrWEdQRGVGaysvL1k0My9QVTYxY01DemU3SlNhRkxjaGd2eFlGWFduTTl2aWxxSzdKaVcwc3JtSzQ0R0xxODVLa3ErM3FtZGhpUkdXN1luN0RjdkVrT2FrZFlGTGlIZXU1MEx1WEVaa0tKSDlUQ2ZZRmtTRXRyeExhbDJpSlQxK2F1cGVuOFJpeGJuN3JHWVZHNXlPeldXcThwSDZZQ1lNQ05oWjJFMUdlZmk3Rit6VTl4ZzE2NThoYmUrWDF1YjFPUzk0eUtMa3NOZUxmaWhqVjh1YUFEajliaGNPcFdoZ3cxV1UvQy9kUm1PenFuaEJCNVd3aE5LaXkxWFE5azJ0cHg2WDBYWXlHeEQyQ0VZOEtvdGZRRjJPL2YxL0VJV29rTVRYaGg3TG80djBabGJKZTVidEg1bVArQXU1V1ZINy9kaE9GSm1tMDdvaE1qQi9mRjhLOEJ6MURIZDZXUXYwa0p2N29ZSm1JaU9ibmQ2c2RtOTBKSmtrWVViakdzcnBtU1FZYjVCcmVIRjM5SE1uc0NtNVRET2ZjMGdwYkpLK1RGUTJua1hwS1pmc3NSQUVXTHNVVzRWS2dMc29LSzJ5cWhyOU1wb0kvM2lld0k5MldyTXVLSmMyN05wSDJ0czVkTmpKWFJhb2M2aHpJYUd5aTZPMVVMY0QyL1BPL0xsNnduTE9UZDdkb0h4OXNNR0MzQi9kZWZTNXcrSW5KVHZxUllIU0k0aDB6LzV3U3ZsQWd1cytkR1J1TVdRdzJLdEdjVzJwTDNPVDdhWjRkWW5TMmdTaW53OFNENmpQREVlNjRCNmJOd1lLWklXK1hwbjk0S2JTb0dlQ2Izam9WSlc0aWdEKzdpQ0dEWW1UWjN1MGUrWTVXTFd6K3RObCtjMllzUW9vVm53WklQcXVDcXZPL3RwYUpBPT0=', 'LOGIN', 'DEV'),
(69, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-08 10:16:29 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ3Q2Z0F6WTF4S05VUHRPMk5veDVjMDRqakJmNXFBWGJDVVZ1S0RNZVZ4bmFYWHg0SnkveE50RE4vRm9DYWxSY3hOZ0RmM080K3JMUGF4cUp3b01tUDgrOVNFaUpzRVoxYXhIOFNTTTAyYXBzUUI2VHRtVmp5eWRqREZaK2Q2Wks3Q2Q5SGgyTC8rVmVRMVA3VTNwMmlGZ1ZVc3ZBTUFmdjZZQUovSlhqQ2ljaTAzVmRDeUMzYlNuVEMvS2dPREsxSFlnZWxvcU1LeHV0am5qaHZRUUhtM3dPU3FON2d3Ui9tanBMM1Q3dGd0Y2IrZ25RUURvM2tYZklGckM5bDRqSFlWZjFUOXl4SzNkRjZnK2p2bSszcW1SVUl6ZEZVdFRFalk2bVdzcWxLbnozSXo2UzFPZi9QMXpxTkJpSlFyQm1NNENuRWI5d2J4SG9zaDRLMVNXTWxvRCszcEhWeHpvQk96ZFREV1paRURzcXhRbWFuUTFDcENUa3JmSnoyM1BzMkNXSGtoZGFod3BWYXBBTi9RWXgwQWhUMElwYnhlcEdOYnZKa25ScUcwVW15bks5dWU5UTZkd1l5VVpzYnBIdmdjTW9rbzNqZGcvZTFTczhJclM0RGY4MFVYbnZEUkpaaFJ1ZTJXelhZU1U3ZHhUeVJRN2UvS21MMVlEUEVZdUFnSGtRWGw3OWxHUjU1MUI3Ymx2citCelNaRE9SUWlxRDg5NDVzbmJvMzJMeDg1cjBQUEhBVHZYYzAyV0pFZkRkSkx1S1ZVMms2Q21td1prZWRTL2tmUjRwR2xkMzFlZEMvc2k3eHc1eUEydXJsM0VOU3lYNnhjUmJGVmJZNEdrVGU1akUyaDBwdlkwem5jbnZGaTRYRzdENS9TZjQ3b0daZ2cxRThpT2M4cEFUMTZjVFowM1BKRmNyWnNncWxtM0hnPT0=', 'LOGIN', 'DEV'),
(70, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-08 11:49:38 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ3Q2Z0F6WTF4S05VUHRPMk5veDVjMmpaWU13M2RiZ0UyOCt3cWV5dzRBaUtnOWh3QmcvWnloYzFSS3A0NnAxdmJHOEVDc1pZUkxUd1pCQlQrZldUbDd1RTN1bnowZ255SURqYzMzb0JLUjNhYzlkUEFhV2lwWUFGV2o5cHRCeWluUGdUV1F2ZHVGcnh3cGYwZVNSYWhpWVRsU2svOEFqU1J6ZWs4bjhpOTJJNGxoT1o1QWFGN0ZpU2p4bXVFdFVwOXV4WlZXWmF3Mm9rZEg1TGgvZFJCTkRrNVJwYis3RjIzd05EWnYrNE9KUnQ2bDBWUlhIZGZvQkhXbUcwVlZzN3JGRjY3djlHWmtGbE1WUi9YcGlIeGZxWGFjZ3BCQTcyTlRVSEo5QUhROTdTamNCUkFyZjNwR2xGZEhvRThvR0ZJS2dDeVRjalNlQTdMTnR5UmZmNjdBd1c0VHk0d3FCclpzNzhoNmNLZmRlWEFPYWlwOG5wR0k2L1dJTzVlT3Z0cTdxRjRoRUZYQW9sais1TmRzUkozaU4rQ1BkdVpmeml6NHQ5QnBsdDkvTGVrc3QzMzNqWThPWWxDamVVd2dxeXE2VmVEZmhUSGkzWUtsbDZ0K3ZSVXhtTXo2dmpQcVdOc3JWZXJCM2ZwMmlLTzJqamZtcUdueDk4WEYzQllIVTdkeTY5RE5EMmxJVkpxMVlUaVhJQkpBVjRXNUR2UEpsZG9ieVJvTEltUnN4ZHhoWVBTVFlEK2NBdlNkRFE4eVp2eEErYWlsYVcwbFkzckZPdkYrOFRxS21oRXNxMWp6dVBoNWVVajV5L2dYajNMVUFKd0ROY2w0dXl6T0dpUWtZUUhRMjN3TUZrMlo4ZkQ4bzV5MkI3VlpScWJ3bkU3OHdKRysrMCtBeFZLUmR5YUhCcHBwSkNFeS9NYTgzNGVERW9nPT0=', 'LOGIN', 'DEV'),
(71, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-09 11:24:25 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcE5RYjZHREMrcmFQY3d5blF1OUJTcHQxYi9NaERvMGNkV3FyYXlWeW5BMlNSckhZOHVyZjAxWGFkb3p3cGxGSlFhL3lIWjFJU1Z0UWdlcDVMVmZ4cVI0eEtQeVpCM2x4dURscEdkNkR0UjJ6WS9ueEVlaFZOdXV0OVNqQ0Z5N3ZKNkE2Y0JCZHdIRnhwTnNEMEx3SjFmTmI4bGxURHN3ZHJ6b0dkVlVrL2xNR0NDWi9WWVBPdEtUc1pVVU9nZGkrMzdMSnBqeXZaZkxueFlhY2FUdHRJNVR6ZVl5TkdSdG1QcjZ2N0NQVytycFpPdUV6Z3pSdjlRTmpaRWZqdDdhaFRwekZzRUhBN3RlZWVabk1uNjFDb3ppK3NmdEhDcU1jR2RqdVdlRVNwTjBuTU9YL1o1dkxXTmdLVjlITEZIa0FqRzlGNXB3SmlVWUJVMXMwODZ3bEw0cmNNT1N3em5QUHE2K3MzamovSzBocC9CeCs0c2lwQWZzV0ovSktGOU9xSmdXTVJhQ0hsOGR4eWU2MVQrWE1IaHBYd0ttSVU5TjZQL3VRSC9sMlZrcnFWZ0lhaS9qUy9BYys4eDBvV1hQRnpTaHNWRElTZDBDOTNYYVIxZHB1OVlxOCtldUJJR2VaT1lPNFN5ZmtpNHcvTmY1d1FOS0F1b2hkTlcyeFN1WUplV2kvMkJVbDA1Y2pFYXMyZ245ZDFLZGVsa1pVS2twZERyc2kxUExKdmg5anlUWW52c0d6c0dUNjBTSzgyNHBkM1FtcmFZdTZEd1R1T2x4NFc0bXhQYWkwenBVZmNaRTduWVBNeVhEcWdQSFNBTW80WS9lMU5LbGloRnV5MGdEZzdzSFJhaENFdUNjdkVqU1lIakUyaFp4VE1OM1pMZzlGM2h2dGNOLzRsUm42emowS01IM3lXc2tpYzE2c3JVaUdnPT0=', 'LOGIN', 'DEV'),
(72, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-11 10:15:05 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdGZ1VXhNVzVHeTNLbHl2M2IwM3phV2V3aWtnS2N6TUZqODFrV2pPUzZlM3ozWFMvWTFOSmVJRHN5ejltSjdsZDNEWXJReWxhblI1a2s2MjNidGdaTVRZK2R5RkJ4ZDI2K29XZ0ZodEdOMytUbUhpY0k1b2pjUW1aRURWODBlZmxYVFZCNGc5d0VNdFN5RDdPZFVreTZGbXFnWkdqeHhvZW1YQ1duQ1dwN2g4SkFRcDRpbjBUQVFJME41RzRlakF5N1FWT2lmQUJzME1sT0VXOC9Tdnk4djI0QlZqNjhmWHBUQThHMlQxK09haEFZd2tmQmFCT0cxbm9PcTJLVk1PM212UVhYT1FRa21wd3cySnc2YXp6aDRaUzl6dDAxYitrZi8zV2dkaTJvRC9tcTBIUFFvc0dYMzV4V21DbXpuQmM5SGYyQ05YVkoxd1FibTJCOEhycnRCbldocjJZSEFQWHFJd3k1ZEh5aFRLemNWNEt3ZmkxZWJwWi84Wk9uQTNmS09ocTZoWjNtK002QXBQdHRyeTdLSXk5N3lNQzhaV1ptY292YU9nMDdLUzN2dVJpNDcxaExSWFRwSmd2Q3RMb3BDYXUxeHFtZ0hqaWRKanR1V2NzZkVlR25rSmVyT1BOMm9lNm5YSTVhUG54L2xVbjJ4c25GbjRwMzBDS09SbEl5YXp5RVI1Z1JqWGFEN2dCaVFnUzNRTktpQzBGYURPb1AvdGI1a3Q4cDVUQ0JYRHhYTEMyV2JBT0dIa3VoYzhSRDFFcGJCckZDbEIyVG1XSisxWWNKd2d6bjVTWEJlak5HSUFKV3lRcDArMG9DZ3ZYNUY2TmZMcFZ5bFdWOXo2MjZjL2FZbmRMRFY0NTFaUzFXaFd1d1hkci9ZOTlUQlNacUdSZ3JrcXhVZHQzZ015cVlzaEhTcGF6YUp5UU5KTk9RPT0=', 'LOGIN', 'DEV'),
(73, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-12 10:18:25 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa1VWQm9lMTdGTjJQT3FGRjVwOVRDQVpKYWtmdWwwYzhQMkpzeGY1Q3czWmYwMEwwQjNyYVlXZXlGREhLQ2xBM2h6enNtaml0YkkwdDZMelJKdGg0YkRWTWhKWXJMSitWSXVWak9GaFJ0UDdLZW5EWms5cW5oQjc1ZkVPZHV0LzdLVDhiclpGekl3ck1CbVcvTFFWRUZxWGVWKzBUSFp3c2l1VVpTUldlbUR5clNFNXpRZXhkUEpqQzFJWE80YmtTbFlPTlVxL1liUXh5RkYvSXU4WVJONjZiVHFZb1VlbDRJTkdLUElnVmpuVUVWQXk5cE5TK2NURnVvWFZheEhnWm5GaUMybHgrcGowUFM4bUtCcUJabGVoeE9aREQvdGNSV2lINmVvWE1PUytBdngrYm1vUFdMYXZRME1Qa0YrVjVYRXpHNUtEVzdkMFl5UWhwZVgzdnNaMXE5aWU5cTRRSmdacE5ncVc2Yzl6RDlRSWJmam9JYmk2N1hKSDZvOURTMEhuUEpHTlMrN1F6by9VL3hHYVNUN2lRck9mMlllVWlCdU1HR3BqT29xVWowS3o1bU9MT3hZa25zOGIyakkxR1NydzRFWUpwQXU0UEdKaVRuQURzbFlBbDBOSVI3V2FNcGNOUGtVVU80RmlUMkVjUnNlWXhLN0hOTXhubXdxQTVGYktxNTk2WjFnNjg2SWkzbTZ6NncyWE8wV0JFS1k0WEhQbXBGbWt5dm4yZDB3WDlQS0VScC85NTQ2Z3NOcjA1VHYxQUE4bnAwUllBbEFVakRWTGR3Rlc0UEcwS3dxVjVSSW51ZlByZytycDlwRlJlY2g4aTViUExac2pPRzJtOXhiMlNqTGpwWFp0bEg0YzFOQUxGMS9XdDExQmdSbnJwRTJLd1RFNndIK1NhQTJ3NkdNL1c1UThEME93SkJvZFJ3PT0=', 'LOGIN', 'DEV'),
(74, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-13 10:10:13 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaVhBOUR5ejNmVXZHV0RUZnh5SDNlNllSTzZyZEhJSkJJdVRkTHN6OHNDVlVORitsUldMako5SUdHTmFRTHN0NHdIaGVXL1p0amh3dUpEcTNkeTVxQlE1TTRWVkRtNndsZXYxaFg2cFNFVXhOa29nS0tjY2hEMUIzd0taWjVCNzdlT2xQYXBWQ0NwbG5ndWJBN2VTV0daVm56cnBla1l0VTJ5UlFSRWRSZVIxdDJhanVMcVIzS3o0cnJxeHV3UThPVi9VZ2dmOU0xMEY5aU8xaFhxS2NxV1BUSCt5QUUwSW5JV0xoOWxJK2RjQzNzM1F2dThRejd4TmV0M3k2b2ZvZVVWVld0M0ZoRTVFZ0FmYkVaYUlkTk10RXpRdEY2R0JvSVIvTHRIRU9weW9OWWEwU0toWlN4akJPek5IOTU5Qlh6b1F5WXY2QTRLM0dpdFdmM2wzOXJIbndyUlc3dWdNcnMyRVdjVXlneTBtbnhyUlRmazhqbjBMQWI3QTZYcWY4c2Rua2hDbitxYlRtZ2pVaWN3Wm40NGo4d0JEN1lZenVIUzNDK1hxQVJiRStiaDFHekNyK2YwTzM3eThXaWY3c01IYkMwTVZXZWs2ZUxoWG9VaE9aanFCSzZSRm5vaThpNnFFdzB1azhueXRrVWg2K1JWTFoxcHB2dWZObmphT0xkWiszeEQzdDZJd3VTSkVSS3g4bUVvWHlWaXNuV2tmMUhneFZyWWJLU2NZeXRBa2Z2ZzJJbzBJOEdsTUpVVHI2OWZCSXQrMzR0eVJWdHgrMG8zclFIbDlINW9jazJON3dQUm1iZUU4SStoWFZYT2V5S3VPNldYQ0hWNFpFZ01iSDkzZllFNHByQjYxZGFYV05wc2ZIa1BvS3J4ajRPV0NFNkxHaWlEVmVmM29RNVhkL0xNUzFId21wWVFJcFdBeXJ3PT0=', 'LOGIN', 'DEV'),
(75, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-14 10:28:31 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3J1ZXA0aENsYUdxbDJJbXU4UkEzOVRFaDFxNiswUFRqbXdtaGNRZm9pSXI2d0lkRTE3Z1VPb050Ky9jN20xdjkxMllzK0IvUGJWb1BwU1MwdnJLUEczQjk1YThLMW1Ydmo1bGJkUFZoK3AveXc1aUcxalZZNndDKy9Gc1NtR21rNXowcjBJeEZheGxFNDVraEdVMEVGTDA5ckdaNVhadzlodmppVUVmTXUvaldzRkpRR3JQRjhBVE5GN1M1TTdmWXBPSUN3bExFVU9JL01WSkFHMGdtQ1ZtZjFDQWVvNmVhZXhGa25Kd0x6ejIya3lxWmpETkhsbzhqd00xTndFQ2lBd1VYaGtBUkYvemdzMlFrWVZ0cU1oSkIyZFJrWkxOeVg0UkNCV2dMazFLWXg4MitpeU5pcXBWR0hocDlQVnVFZnUzSHdLMWdoWDFlQ0dUVzQrRUpCUHdlZURFRC9zVFNnQVU3R29zbmdxUVRWbEtCdzZyMDMyNk5tazFQY1F5ZDFtd0orVGgzT1hjOU1hay9vRGlkcWwzUk14TmhKeUcrWWVFMUlDU3kwbXBWMjBoVWlaZFA3bnJPQktWWWZTR1lxR0pIMzJKMEpTRlJkY3c4ajVvUThoWTZxSVhNb0pqUjVTVWFaR0dHS2JHT284UjBTekg2LzlqSXJISjhGQzYwWktGcS9LeFp4bEVyckhaZHdtYUZOT1NMMmdqaEd6YjIwa0dabE1RTStIbjluS2tVd25uQ3pkcFh4QkpiL0xIdGdXbjRhSnFEYWtBbzQ5bEtnbkdIRThodksrZFdPb2loallhaWhCNTVYUFdzUFhxU1dHVGVPSnVnS2MxcGFhOTB6d3MxQVJQWWVpZnlZaWdwNEJsajc5TGp5M1pxalU4SXZXemV0aVdGbFRaNVB6QllNLzBjTG8zdHNzbksyUDZnPT0=', 'LOGIN', 'DEV'),
(76, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-14 06:10:59 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb3J1ZXA0aENsYUdxbDJJbXU4UkEzOGZiVFNxYWVYQXVTdk5FYU9TemQwejU0SlJ5dGU0RHJkQzFwTFordHlYeUJxYXVSeXZnTVpLQkZBZWwxZ20wUVZwc0pVN3VSbGorS1A0WGVid0FpalhNYnR2eE9Tcmx3RHpqdmd5TloyOFNzRzVrRmdlek5ObWpqS1k4Si83V3N0MzdReXgyUWtMSzJlQ29QZyt5L08rUmhlQm5SOU5YNmprVmZJZTI1a0dWSmh6Tm5jZm0xQ2FwREFIQzZsQlZxQklIdXQ3MXFya04zR2xMLzBvTVZIMmJDdDhvSXVHQ1dKMDBUd1lwUEpXRHNCTmJ6SnlpUEFlbUtBb2YvSzkyakpzZmlzckJPY081ankvZ21hZEc3MUJvWFRDY2xqWmNZVW1kUkxzOVJaUjI5dWlxektMbmhETThUTWdDV1VEWkNsVUFnMjhPOFhiK1paNGlvOWkvK0V6alN2ems4djZVbGRHcjRCNitGanJ6a05tWE11dFdkTmJUenBmckJTblVRR3lPckkxL3dPc2t3TzAyZEI3N0o0OVAxV05WaWdOYjQ5b3I5dXhaR0dHQXpGSFVJSHpQeUtMQXBPWklVUk9ua3pvUytvb3ZQRjRPenhvM2VGOE1zeHZJdVgrZUZtcXdGeE44OXpmM3UwdUFZOHBaZzJCVVAzczlZN3lmU04xT294ZFluOWJLTE55anNBcUxsbUdLMTdNU0Y2TTd5UHdmRksraGhLT2xPVHRrK1Z0OVozZjFKU05EUTliY1ZSaUhld1h6VWlabjB3MGs5bEdPZlZUWklvZDNKaDZIUCs0ZVpnNEUxRGluNURhaG9paGRRbVRCMllVVWozL252a0k4SnBJdlByQTB3K3ltejZocHNjUHFPby81dVdwN1RuaFd1SHM5K3F4b1VPb2ZBPT0=', 'LOGIN', 'DEV'),
(77, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-15 10:16:21 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcHB4eE5qS0t0c3dtakY3bFM2aUV4eHpDeEFNcjZUQWYxdzBjNHFKc3krRDZYUmZaRDBHZzhxRG0xYWZKcWRTNEtwdnVScGZ3TlBnSWo4U3hVZmNnV0huVmo0K09LRTVDOU5uSzV4Z1ZYSmVPdHI0YVR5NDdocW1xMmF0b09WYjVqWXRrSHZrbmlaKzNucllORER3NkRmL2FWc0ZKd2VwOXhFVWNxQnBzd2lpMHNIalF2dFFiekdQMHY4djc1ODNIeDRsUHRESkNaaEVEWWtiNkZaVGswd0tBUS81WWh3K1NDYlNqeWFmaXdjVEl6RHNaOEtwS0RRcWJ1cWRWMUNORmwyaXBFZm9NdmIrV3lHL2U1NFNpWFpGUnRrY2d1SjNVNlJGVnU1dkdjdFV6UHJtcnkrVlZPNXhsd0p6N1BJNnd5Vyt1Y3Q2NjlrVG5TbTUrZEVzY0N5dVBjZEkwUUExZHhXYXV0VFJtQmM5dlQrd21USzV5YmVsOTQ3THVMc2pNNHU1azNQeHBKR0Y3YklFNEhBQm9xMG95OWRaMldiVVVlVkVOU0pqRjBPalIvaGtRYzdWYktFRlBUb3RJNkNPalF2cldSa3RGTURpdG1wVUxCNnhGNHI4cjlGbWxSZkI0STdjTVpmbEhqSEZwV2V6RHFzVG9kdkhndys3YksxVm9qOGtOeldqenJCbmV6TnRQTGY4K0xPeDZyaFdDMTQ1RWVKK1VsMlZOWnBtcEJxajU2OU5YUk4rRG9LQTVYcUNFY2YrbVRmRDNkRGltQk1aRmp5MHZpM2xoNlFGTmZmbThFQ05RdnZjZzZzdlRuQ3J4WmFHYnFuRkVrUGZIWEF4bHI2a3A1WDFQYkFDVnl6dy9uSGoxK0MzSWdxZHVRSklMYTFSU2YyaUVTU1FzY3FwSnQydjN3MGMrZEJoQ0RUVXN3PT0=', 'LOGIN', 'DEV'),
(78, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-15 12:49:15 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcHB4eE5qS0t0c3dtakY3bFM2aUV4ekxISno2WjhqMW5TSVEwNHJYNW0vQ2YyWm1lSTFRaVdLYlFoQXRoY3Y4YU0va1JwV25COXRYQXNZVXNLZExtUzhDK1ltRzJDcitKbUJpaUtUQzROc085Y0RMSmtSQXBGcWxtRXBWUFcwM2o1ZTRabFo1cHpmalpHbmUrN1E2TGJQTkhGZnMxdG5PcWZWbE4yaWFtOHdOWXFwRlNXNVlUY3FpczdCaU1ETjFaQjRlS3ZGcmRydjlISG82dlNRb3dHSmhXMksvM1F2TXRzdEdPUGJ3b1l0K1QrbnBDZWFqV2xDbmtxdW40WCtEOENDSGpzR2I5bDhhUEpxNkFrcXZhdGVLWmZMakRrWUEyZGpXK25PQ25DcGJEZ0F2dFhwNHhhamNWYlJOMjN0NzhxMGtsdFpwcEcwK2kvQlZiT2h5REdLREZnVzVLRmFWNzZWODJqcGI5VGlwNFU1bzZ1enk3VGJkWDlMS2NPWUJWbjJranV2NlYrMStkV2NSaU1lSjRXSUI1bVJERC9GRUd2RHA4UnljcUdjeWtJVER4b3c0YW1RVTZlN05PYnhpa3RxWDBhMlFXT2N6M05LdmZJSUdEN1dhZEdVNVRuOUFYUXBHZCtITkFHYmtUZXlZcGJvcTNyQWZmZGVOQkN0OG4ydUx1eWIxNk9mb2JkQ2tURlJyZHRiK0ZJWUQ5cUhZV002bm05cjJEcGZUYkpuMW9NMlVnaytjWERQUFhuUStIM1BYWkhWK1BvRnNnUHJGS3NXYjcwcXp5YWdEbEJWVDhHTjN3QWlpdDR1dmlsRmNKNEx5R1F5M3g3T2RuQ2NNeHBHNFcvcktXa2dkMVpRSC9oSFFnNHl6a3U3Z1RmV1FmVzUxU0RGdFZLNmlQTUVDbFpKVmpzRUgxckl2eVZidFJnPT0=', 'LOGIN', 'DEV'),
(79, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-18 10:04:47 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbGNDS0ZqdVEvdk53QkNldHgrTENBOTlRZHRrNzdlaEowVUVtUUpzUUlmSEYremdVTVFhTU1jeS90QUtzZTNIVjFhblRMRjFDa29PcmkyMHRueDM5aWNIeHJPckRiL3RXcmEyS2VhM2FtREgzazRvWEg1VE94c2g1a3lNWTRsREdiWFo5T0xwb0FCSFNFbEEyV25UVXpsNnZvSVhRdHVqRWY5Yk0xelRtS3VjcTE1WElqc1NJck9yTVcyanlyNklEUXlrUlprV2h6Q0JUaFUwMlJFYW9vSkhSQmd0K09rRGJKcFFDMysxNU5ZTFNzLzNYa0N4QkxYN2VDbERMTnJwUnV2ak8rdHdUbFNKY05ZYTh5KzhwWGR2S0h3QVdQYld4ZWRNd1hkREdEb1NDcC81RWFHS1I1OHM5RWR1OUQwL1V3bCt1RmpMbEVWVUxhSURYZ1cwNHJqdHBFaFQxNGt4MitkRFRzd0pNOTdxNm1uQUJSMm9NbmY1cEcxU0xEN0ZXR2tLMkVySW9sd0Z6UXg3aUtmbStoWG04T0lSTGUveDZjNC9QK01mTTMxY3pudittOEtXUjU0VUgrNVRzQnJva2k4cmFiN2lVbTIrU1NXVzZCSXhRM1YzSThaTVB1ZytuS01DUWFVVkdOZGtyMnd4NGU4c2t4SzIvVlNnb1dDVTBCVmpEZk9vUGVNcG5LOUwvaDlqeTRvajhZQ25aay9QUEJsZkorOHpGUFVtOHByZUg2Q0RBdGNNTVd3Z2xucmFjd2tlc3U0a2xxWEpMdDJOZ0VieWJJYzlqbThtMDFJbGN6ZzlkS1Mvc2dkdkRrQ090VC9WNVRkUmxvZ1BOTHd4SUM1ZDh3Y2ROeDF3NFRnTjUxTEhsS1MxRmFEUS91cThFMGRBNnYwc1BlOGo3ck9sTkVkMk9YNjJUWXltNzY5cE5BPT0=', 'LOGIN', 'DEV'),
(80, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-18 04:42:44 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbGNDS0ZqdVEvdk53QkNldHgrTENBLzFXRkc5MFR4ejV5U3BhQTBrOC9JSStiYlNzQWxiVHhPbUdxZzZoSE1aakNzRld6VWt0S3k3NDZvZUhKbzhzZ0dQNURab3FoQXVTK2t0TS8xQmlueTg3QjJKTHc1YVJPRU1WVElGYVlaT3pSU0hxMlBUY2hKZUtjMHVxYk5YQUhDZXBZazRVbkMyWVlzWlVsV3lmWU5Ca21qd0ZCemtGYTBFbDZ0UC9CNkx3MWtEendjd3YyWHh3VENyMU5MWnl5RnJEQ1E4S2Y5NngyTmtOSmhpc0V6TG91UmdKNEE2VWhSRCtENEV6WkVqdG41ZDZxQ3lmeGZvUjJITENFbUZXa2IzTmpjZDBwelE0VFAwa3NURzloaWNPemxZdXRuNDkrcDF5WnBUOWpKZmJvWTlRQk91YllSYXJza1dCRjZDUjdwSzJIVFJEeXRWTTc4QnlCK0NCZWtsNkxZVUFybHlSY2YzbXVyU0dDVWk2L09CbHFyQzJoYnhzRTlMZEk5c04zVnRxbFhjRFNoTTJEcG9nWXJiODF0RkdOZ3dOTm5sVnF2aU9oZFBzdXJ3Wnh1ZXJobXNsTHJ3QWpHQjJXZEp0NERrK0JFTk5RQytoRUphaEZTTVpIRko2dVhiRUY4ckpoWUE4THRsSVB2dXh2YVlwTDFCdUdPd0FDSzlkSTF5TDdkdUhhUElPQjl1aHZhYUpvVXN0T3ZlVEY2QnNyVzA4ZnZKcG9yNDRxUmk4aWwxbFhaZWFmaUl0ck5rSnRJQ0FzTGJ5UUJzVkFaWVhJb0t4NFJObHBEejBDRisyTHYzZEhZaDRXd2ZmOWlPNHk4VUNTQWpJWGd3cTI0MGg4TkJoT0thTzhybkgzMktTbFI3YkllckgvbFRmSDlqaWxNYzdGZU56azlFa1hyTHN3PT0=', 'LOGIN', 'DEV'),
(81, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-19 10:12:06 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbzhJdXczT1hkRnBRSG5vQndMc29CUThTbmExaUlLL1F4cTMwTTV2d01zNURHWW11REd3eThtaXRIMlR0MXMzTm5XMFlhLytEYWs5eW1NUWhrdVgwM2RIL2V2RUJOZ0t6c3VoVmhjemdIMkFTbExHbU1RWkcrU2kvUHlJd2pOM0ovbzNaQldZMlhjOCtzZTh0TFJrdjUvRWwySDc5ZUVxRFNQWURpSXdYSGg1Z0tOdlZaVVc2OFV0SVpCdmNUdktvRGFHTEVrdHJDcHlqenpyd2VOaUhyelNjVUMvekVWOTFLWGZsekRPY3NWVllneWtDZExmb0d6ckU0ZzJmMTIrTWR6OStkc1VsZnhPN0MzLytGeTVaNVdYWHNlVUZhWmtiencvTmRqZ0tFWlV5QkJHS0lJNUY4V2ozNnV1U0dDZnE4YWh0aEZGMThoTWVSeG9JNTRUM3JsSlJQNE5aVTk1NkxDbk5mTVJBQ1NaU1RuSEQwSDhkY3AwZlFXUTJPSkc5QjFxaUlGdkE1VURxYmVSSUpPVGgzM0QrMHduNnpzWnBlRExZZFpzcUlibHd4Rld0c0tGM28yUThiWDFZZVFxc2F3MGkwUXQ0a0tQMllNVXcvR3EvSG5CeElKNkJhMkRWdVh5bGRZTTd3c09ra2NvTk5iNW9iYmlua2dQV0dJZFhQWS9uNU1icmxScFFvWm80bTZYV2c0VWZza3hlNWVxRUlMT2M2TFZMQXRES1YwZDZETmJSZGxYaHlKMWlHbVZDZlZHSjBHTkp4V1k2VUw3Z0hacklhUkFHNzJJMEh6SE0yUWx2YjFuL2locnRpS0RKc3JsVnZnc0FkTWlTMENNemRqSy9xbk8yVkFZSm9xT3pFT1hRY2srazFBUFNFY1dTVWVpVlRCU0Q4QlZoNWFzVmEyTDI3clVhR2tkYzRJWEdBPT0=', 'LOGIN', 'DEV'),
(82, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-19 02:53:40 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbzhJdXczT1hkRnBRSG5vQndMc29CU2pVTm10VkZVL2poZEZvTXl2eGlPcVlmOG5TemEzR0paTUtZeHNNSGhiWkhwRTNIZGFpV3RuRDVqdVU4S3RLS2laWndFVUdZSFhlZzlrTWJZUWpBN1VBQ2VXekFHS2hvRGtCMFZGeWNFeklWQjgxYnNoUmZZc2FlYllWV1UrUE55YmtuRThXTWVFc2x1ZElCOTE3NjJhSkU1K0llc3QxNlFwQ0VOUDM5djhYOUg1OGxSd3UrOFNRWUY2WkprUEVBWXFZUWQvUFJzODBIN1RJdUJvMk5jN1RCSHdzRGEyMmtRcDFJOU8vL2s2ZnI3a2ZnZzNYSXl1L1A4M1pnSDd6M25SYlhPWTZFM2VXUjMwZnlhNk4yQzFtWmZiMjA2cHExRHNnOS9WY3AydGZmU1pRZWd4N3JLdGJnbDIrWHBLSVc5TmNvaUt1MzFBeCtiZm54Nk84VFBSS2l4RmRaTmQrMDkvMk1ZQWxzTy9YbnByWHRxR0FncDY3SERGeW1lZXVXQkFrV0FoaHBySUx5RG1xaUtCZHFoVmRhYUZzNWo4Y2FEWEVKb25QVldWSlNtd2JPTHE3VFFpMlF0eG14cnhNQU9jeWp4SzZFbFNreDFXUlZqRWpxMm5JWDE3ejFqbEQ1bm5GMkxSYWZyYVVwejE4c2hrSEVDSjdYblZDa2JLR0xsUW5FY0pPYXNSNFRrR2xKS3NrZVFsQzlqdEFBekpXVmZLVUh4SVgzK2RMMFVXN1l0UDlyaHNsU3VBNTErM3FsM1pYSWQwaG12K0l5UGFteFl5R0hvakkyV1g0QTJlSU91U2F2VjlXdmhNMnlzNzhyQlRndDFaMkxuTzhGZld1UTcrWWdHRlJQU21pVkc2YnJTNGRpL2V6QXBSUFA1b0cxQ2V1VFBxNk10cDNBPT0=', 'LOGIN', 'DEV'),
(83, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-21 10:18:24 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcVAyYnNlZUpGa3pVQUkzZVRJQWRpYmpoeFlCbHo1bUdsdWNwRVVXS2QycnNTenR1MHFFb0FFQm1CeGZFQ1dBSEx3M0tzSG9BRlg3dUFJMFVEK1p3M2x2ZVNLbmt4Vmt1cDVCVXFDc2RBbW9lQWR1TWtDSmhtYURJL01mKzNzcjMxdlZsOCtvWWN2dXgrNDRtN2FZTngrc0h6K3FWMFdiRll1eUduRmpmRVcxY2dJOFQ2enI1SWYzMFNYb0J2dStBM2RsYnB2RlpPaUJ6U0xscklKN2lvTUNWekxxTUZuMWVjNmpYWkxNY2MwdEFOQ3hPM0hNVCs2MlVGY1VKKzlYSUFuZlFHUjkwbGxMZk0zdU5vb2lJVVN4M0VldHE0KzdZUy9pYXNTMCtvazlvRVMzSVNTUWpLUlhweUN6YTg5N3I2UjVHbFh4Wkh6MFZoWTNXaWRwSzg0TWFsdzlxOSs2di9KQjNoRzRWdjNNaDQ0VGF4RmtqUWY2WDdQR0JUSGdaOWxsK0Z6WlJxbFZ6bjlHbUNYU0RiMStzakVXNU9mbG9JSkx5bThKY0pvemNpRGF3VjR6L0RPaEVTL0VQMDFxZE1lRGtoRnBBM1c3c2ZHNzc2QmJ5RUJTbnUyYlhPVDhLU1EycDBxNHdudFA4V2h5N0dCdFVpdUhscUs4TUphUEE3VXpxMjl4N0ZzV1dIZzdVVzkzQ1NnYXVaU3MrWkhyOHVSL3RFajhyRm02R1c3cVdNbVlGbnhqVWlHUDhqSVFJY2E4Z2dlZUdGamllL2hlU0V0d1JSK1FPUVRIOFE0ZmFtWGNNWjZlRExCWXBEQm01ZXhCY21LS2FSSFNmSkZKaEF0bDlvamFObmpVeXFpY0QyQnViSnd4bjBFUkJGODBHUWhuV0tqYm1IWGJhby9ONHhsOExScWJVL2NrS216aFBnPT0=', 'LOGIN', 'DEV'),
(84, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-21 03:11:39 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcVAyYnNlZUpGa3pVQUkzZVRJQWRpWmpzdG4wRzFpTCsrRS9iR0J2cysyUDc1c1pQWUZmdy81Z1B2Ymp1UUJYOVNObWZUU3NhY0hwZ3dsZDJyWW5jOTdEaUJlUGdGTkw0MCsvSlpiSVVCMXdYNDVjcklBaHN2eHZJZ0VWam03MFJQR1B1dUI0VVgzME1ORUtqVE5FYjFMdUVPNkdabTVKbjZMNFpjeE9YV3FmOE9KOXRobTF6L05Yeksva3kvK1E4UE1POHd4UlNDR01MbHNMQ013My9acXFTRmo2b0o0TkhhUy85dTljdktMYXQrUzlpVFo2VjMxaGpEWnhXR3A2V3I3cjd2OU1qMG9IZUZIMGlFeVRmUHM0bVZSOTZuTTBveHpIQzYyMWxLSTdoWk53NmZPUGtoR1lhdE9GK0pPUVJOWFhIOTNHTWdPTHdXMHBWUkYwQjFkL25LbnByckpZWVpIS1hKMTJwd3lBNi9aNE5JY1JvTGNLOE1KY0N6dUpuMTdXL01zSFJERmIvVEU2Y055Z1VZdU02WU51TkxXUEpuOG1uV2t3YzhDSkcyRXE5NEo0YTVVTFZiQTlkTHZFUFRSa2R4M09pako4RjVKYk9ZMGYza1lZQmd1bzhBWTFZNC9vaEdhQnE5WFFPajJkYTRPZk5NWStOUVlUL3JOTHhWOE1tUUhJQ3dpbUY4SUYxUE55N2JpSm90MStUWCtXZWt0QVRITFphU0tDWldxcGlRdDB0VUh0eW9vNlp0cDB2R1oxTDNkb284a05MSloxUERIaEVUZlFkbGxrUDdtL2tiWlI4TXRvejRCWVpxNDg4bjJTV2M0UXZ1SVVLcnhzbGh3dnMrYTgwM1piRWMxeFdtRWhXN3BRZ2JsRGdiZDRDVnBJcEtNWU05cWdDTzZVTC9oTHV4OTA1L2c4aEpuSWl3PT0=', 'LOGIN', 'DEV'),
(85, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-22 11:50:00 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb24wMFB1WW95VUM0RlJudCtjWDlBa3RJUVNJSm8reEJQdGJDd0htcU5QeFdtdzBUQWZ6WDhtSXVLRitwMmkzWjUyZHYvanFaOEUvNjJhOEtlRXZmbGVhaENmTXhGbFJkbXFhL0oycFQzb211b0pRV0NJMk5UQ01DSjJJSDBvbmhRUnFteFo5dkxSbDZqWUdhcUdtM1gvOU1qbnN4akpqQ2ovRk9RLzRrOXNPek1aaEhhMWxMV2t4bllqQ00rQlJiWjdqSUthaUlSa21neHRxTTFKeEl3SGQyRVdBMHB5dU1GanJEa1ZTWGhmSys0TnVONkJTS2x1VXllNThPNGVLdVpaWWlBOWNGbGV4SDRTQVBQWUJPL21lSWFkTlhKRzNLRTBZRnpWdDZtQ2dIMjJXRUtXSVhmV2RnYTdkdDNvZVBTWklLWldYT0M5S09PR2FTeDI2WnBPVFN6MDZBbXpPVThkaTFVdTM0L0RaTTZkL0RrWjZIcVczQWlERFR3NXg3RDFkTk11cjYyL1pXUHg3WHorZmVidmxtb0p1T2ZrSXYyN0pMNklzL2E3OWFLR29KT1VaN0NlVEx1S2N2MkUwKzYxQlN1ZzY5Mm1odkIvRlpLRUVjWWhJNXlEeWNHZERnMSs0M0dQa2Z5UlFrd3FCTEY0TnB3dHk5ckpBZzFRaUl0eWRyZWlZZFV3ampIMk13cDRjdThES2tOUE5vSy92QTdpS0VzSjdDWmNsR040RnViZm8zTTlzT1l4WXJVWDhWOFBpQjBXaTNQb0oyTDZqMHFmZE5XMXZiU0hvbm1uTGl2UWlMSmJpWjJ6ZEIvYWpsWnFhSnpBSWVQOXVBTFo5cFB0ME5kKzlVM0FZWktuK2podGRtTjlnaGlIYWMrZjVRYnc1WExXeGhSajRNVEFqWnd2Rk8yWlRlbGlhN0F1bXN3PT0=', 'LOGIN', 'DEV'),
(86, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-23 10:27:11 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdDd3RkRkelBpdW1hUTFDS3pqMk1CNjNNVnBzbzdDWW9jNGh5d1pLU3o2ZC9VMmhtdXpiZTVRVnhiVW9YakIvd1NzTndkd0ZFYnFwY0JZYVJvNXhhZ3lNUkhKODlUMGYvQzVucWVEN1JNaGpxaVMybHdqQUhhUmZGUkxrL0psMEZTSHVrRUVTK1AyL1BJZ00wcDRjbTJmQm16VHFsME5hS2MzbWw4TmJhVjFFQUVQMlFDOEhybU1GY3d5N2tFOW9KTjBweEVFQkE1Q3JUN1hRVVliM0VEOUp0U3VITTFTYXlRT1hZS204YW5LSmJwTUJSTmR3aCtXVFE4UjZSa1R2RUR3MGlydUo1ZWlmMkRKMHgyR25yU0RZNGFUV3hQaVV1NENKQmQ1UjB1WjZHWkxzUC9HNXU3ajFpZTlLcndGR20vaEdlSFY4TUJrQjFlbjVlRTNzRjk3UXFwZmh0TnpxRUZWSWRybEtIa0ZXczdYaXFNNlFYREpnWnEzTHFCcjROUGVvV2RyUmNLOG9wcU93QjNvZ0YzU0l0OFRQQ213QklTWnVCc3RKR0FyTzZtOG5tQ25XWEczVUI3RThqS2lGK2ovc29iaDZqdDdqczRyNUg0UHNjUS9id1ZYNHJlaHhGbGNHUHJZbzBqS1BkVlhuWk1pR1Nid1d2Q2xtSTlnT3RBdnluQ3MyRDQxSk9YQVNPbWliQ3NGb1M0TzlybnNKTUpIeUtRMEpUV05Mc2tVbEtxWEJQTllNUktqcUNwUHZKQzdTK0loR1l0N0ZjODJpT1orZDF5bDFNdVlXQTFxdXdJSGxtTUxzQU1PY2JYWkVZWkpNRDk4b2pqejIxbzF0cnJnR3JQRElvbGIxTWlFakZTRHdwbGwwUlZ5Q0tRSi9mRm8xekE0Y3BqekI3Qmx0M2YwaEh3aUZRajJoVkd3ZmFBPT0=', 'LOGIN', 'DEV'),
(87, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-27 12:50:41 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcEhxY2trK0JUbXRpdUc2eDNJYk9lVjZxTzVHTG5QNkhwbFZlNXg3MW9LOEZOOEtKSVluUE9WYW53UWJSc1N6L3Bzc3VhVUJuVkwzdlllb0ZVa0QzeXlSbC9UMEdXNCtLS1lBWmRHYXI5eEdIUGhtTUFNZ01VMFNzWWpUTnFYOTNseldKaW9KOXdnVWphZ1RSV21KV2ZFS1VhVm1FUlN1U0VacUxMVjRZbFFNU3pXN1g4MGtDRUEvV1lmUGN1UlJ4VW42WEtySVIvVi81K3NSeklsbjVuejRpM09USDRzVFRxSDJWVVlMSytXZmlvTThma3Z2K0JFUXJMMHNLLzhzSXZWQ0lGeFo4ZUJ2Qm42WHpiSUxwVStXWFNvWkZERUc5cnljTU5Wd2xQaWFydzM3QSs4NkpJdGlGc05JNmZGanYvUzVOKzUyS0tWRjdYdnY2V0NBeWxjRXY4TmRhR08rbU5BN2JBQ1RNaDVURlZaRUtCdDlkVGNoaVhmNVZ0cTJYWk9Gb1FOVlk4WlNsVmZyRmpIOXZqN3g0QVNOeVNnUUhIaVdrN0duRFVDUEdFcUcxQ0NwYUFyTDlEUEV0QjU1cnZNZUJienpTRGFFcGMyNlRZMy9FT3lvK3NoMnczWllBeHNycmp2UGZWV0R6eVhlU1BIVHJESHh3dmt0eTR1Mk9OUWkzWWV3QzRvN09tMzVkRUlrWExScnNMajV3bTVBOTRjRTJFb0x0Q2dRdFJXVk1sS0FjSzE0bGVSQnZqSzVxZ3U3ZHU2YUh5R2dYSTJQL3lQZHFITzRIa0N2dVZJa0RZMFFGUGlEc2VsSnVQK2xvSmQ3QVFlTzR4bjhrRllweGVvVXRxRUNmQnB5Nks2KzhlLytnZE1ldE01UndUb1N1dERwR21FaDM0eDZ1aEFNdUR4RHc5SG1zOG9yWklXSW9BPT0=', 'LOGIN', 'DEV');
INSERT INTO `systemlogs` (`LogsId`, `logTitle`, `logdesc`, `created_at`, `systeminfo`, `logtype`, `logenv`) VALUES
(88, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-12-28 01:01:06 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbEZuQVhYczlwTlNGTmtkblM2MFkvNkN6cXRiVUpweFdRUzV4bG1QSlBlTTlqakQwbDcwWUdmeExqQVd5RGNHeXZmT2ZubjcvWGkxRjBQUXY4c05RVFJWclN0dWVOOHJSYUlhTDNrZkFEeXJzWDRZQ3dGb0ZRV3hFdkFteVprbnlKdjdnc2J4MmJyOVNPWW5jME9FbVVza01OeTl0WnNqTXNMWlRUbFFNcm9IMzJUZTVKcGdUNTZnZUI1S2tKcGJ1RzE4cW5kK1lld3pOQWdHTHV2dy9XYVFyRkhFZE91ZUE4L1B6bXFDNjUzUERuWkl6Ti9yMFNmcEdlcXFjQWJ3WXpBSi9RTnM2eDNzWVQxZW02cE1scDlxZ0N5K0lvcWQwcDczQ3lUQW9mMTBCMWlFaTNOSGIrTWcwWXJLY2RwdCtJTEFaUGppZVhHQWF3WGVBSlBlcit3dmtobk15YXUxSEQ3dWhPN0R4UjdFcUphbFJzNDZxYWNOR1lvcjZoRitQU3U4M0NZSW5NdUJhUytOQ3ZUWmxhQVpDM2xhSWMxR2d2ZmhjVXIxTThLOTNvMmNpZWd4RGNkbDZadk5GNXEzUmZaYytQYUFoS2p1czAwajExRytZL1YrbGlCMVNLeEN2d3h1ZXorRnEyeStQdFNnenEzY3JNWTdvd0NlMTFnL1BpQ0R6UEdnVzg3NmNkOS93WEJpMG1EdHgzVlpUMnBSS3VrNExIM05ZU2d0Sk5qWjNJQzI1NHdsUk5HSG53RmxmWDkzVlN5U0plZ3hSUnpDVnFUSnl4K1pVR0VXOVpIY245ZFFmdEZsZ1duNFFlOWJvRlhVbEN0OTU2U00xdUhpQWh6Y3pqa1VzRWdVUWcwVGxWVHFNV256MUJCdjFzbTI3SVZSUkp4akZzaURQM3l3OEJObG4waWhzZkQzYm5sQ0p3PT0=', 'LOGIN', 'DEV'),
(89, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-08 10:24:11 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdmRnTUUwVG1RRm5NTjAveEdPVW1QMGFqNjVLbmlZVkJVQ2FDYVdYRXhLZyt3QVlXVmdjNUdiY0IzZDRkNi9GaEFSMDdvOXpYYmlKakFxOWJudTFWRWtBbTJsL1k4QU9LeDJmN0EvSVNZd0VFeWF4Y2NaekxONGx0TnhJbXk2alR0bUpYTlgxcitBL1RwVDhqZTUza3hsREc0bnVIbFJObjZLWmhmRW4yVGhRM0dWemJLNklpWnBEb3lKbDZRNnJ0aE93QzFBbFpiU0JPMVlyVU5QcXF6Z0VtUEhaZ0FjRXRiMi8vaUJwOU9sU3VWVTFObXpqWXR3dGtpaUNCM254OFdIMXpMUWxWQWZFamVLQ2lkbEVWbFd5R2gySDk4NW11bFhGSjg2YkMrYkJNMW9LYmlxWXhTT3ZjTW9ScEZvRCtxajE4cnJDWjJLMmx4UEozamx0NGpnNnV6S3R4Z25IQWRJSWJvS1ZadHhOQU1BTkIwQUh1T3dxUWpkcS9wYlFoQ3JmZHFnRlNSSkRIcFpxTDd3WlVmWlhSSDNacWRFWm1qVnQxaGwzNlgzRDdMakN5aVhKNVEwaDNSTllxNEJVeU1hTW9Vc05IQVJPUGlFNzE2aENsaDc2cnIycmgvWFRHK0M1dytmaGJXVTJxMml2VEZMc2F4NkxmS2o0SWRtVGRoc1l5M1pMRUkxZ3IxSzRsbHRqaDhnTyt0YzVPMks3czNJQmZkSXJYcmU3akpBajd5VHRYU3dRWVIzL0RZcDhHb3NXT0t3OXFIM3ZGcWI4NmhsVDMzMFE4cTE2RDAzTS84Q2VmZG5IUFM2U29WNWtwQVMySEFmYk9QR21wKzZxQjRmODYreGhVZnB1eElkVUJiTWJSUnFIRmFjN24zMzRSblo1VTRtUnVZQmNmbTNrSnc4QWdUeFFRaXpFTjdUcE5BPT0=', 'LOGIN', 'DEV'),
(90, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-08 10:35:59 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdmRnTUUwVG1RRm5NTjAveEdPVW1QM3M3bUhib3lVdjBZY0hnVmZNblR6cS9HdENVZ0ZKdWpSeVRrYndhSUJwQnhQWjJtL0hUblk5bUkrZW1vaU9pRzJnRTYxOUtHWThVNUFwRnpwRnUvMTlMT2k5aWQ4dnFXMHJFTDQ2R0ZqcXBzU3o5VXczRGhHRFNBNSt6SlczSEtOZ2ZETUZWVU1LbExabDQ1TEIzTFB1aituVUsrZENlaUV2ZzlZRk0yZkJEbnBlV3k1T3RobzBETmN3M1dTNUZQNFN2cEJKdWY0VWZOcWRmVy93MHluMUxuSlBBZFo0dmo2eS9NVE0wa3B2WnlCRXRPSThKcjk4U2xxRllLZFZHM0FGcTdrT29ieEhZeXVkaGdjL1RmTUlCZGI3RmlQRmJKYytwMWlIT3V0MURxa3VoWDZLYmpNMCtEQ1FhUCtaUVBiUmR4NUUzbGJaTVFoeFZQcTRNb1Y5bTcxNkNmdVdHUGJKaTRpTEp6MUNFNDcxWVNFUnpId0dGdkgyczc0cXNRUU9CTjFUdFRITWd0dzlGT3V3ZlBvbkRsVmpsOGE1NzhKczhQT1hOQ253blpISml4NzFlS2ZwSnh2cFFTRkVicE5pODhNTjI0aTN4dVQxMEQxNU9FakwxbkZPM20xY2wrM1kzcUxSUExOVUx4WFMvUDBQbS9Hem1hbDBBbURZUHI1S2o4ZHNvNExCU085bHlzajZISDBFVDhlNnFicnBwQkN4SnBDK0g0K0tEaWJKaWZFVlI2dDJEaDhoM3JoUmxRTFdaOXhFeTRnbEtHUCtQZlY4a3ZDaUN3TXZZVnBMZ0gzVE9pQlAwT3RLVVMwSmNkeURHYnBHcHZvVlhpdGJIOGJ0NmtNdWFsYWZFT2VoUHk2djhRaTdWdFpxaURIZ3dIYUt6NHRUc0lvcUhnPT0=', 'LOGIN', 'DEV'),
(91, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-11 10:14:40 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbjFHQU1icEJGTnd1Q3FYaEN6QUhPZ1FrUVVXcTVLR1VxaXdBTlYyWDFMT0lpOC8wRmkvZXpXU1pUMlRTS1NNRlg5ZHNkZ2hWN2NiTWdYbmZOdGJZd01GNlAxeklodFkzWitueXI0TlZhN0F4VUljMWJBcVM1ZzM1YU1lOHhBMThqZXZNa0E4ZXhLeGZWNzI1STdyQWEyUE5BTytuWUM3SmkzTFMyaWp5ZHYrK0l0SGNJZGM5eHNWYmtXWWVDOEZkckJ5cDBpUWVaRlJqdW1QMnhNR3VVMWFiQW8zQjFMdW9PbzJqWXI5M1dvLzJGdTlqOGpvRi9yVVUxUG1qcjhxK0dMYkhUd1p2VWFFNWp0aHBrdk5IWjZ6c3V2Z0FJd3VGc25NZnRoU21LZWtKSnJvcWc3aFpEamNndDY0SGpKMjdGN0pMMEZXZmtUOU9wS2J4TGVUUDI1b0k1WnJmdlRGdGlPZm1ONVgrR2Jmcjl0U1NjVnEwRnZnc0NJVzFBdTUrWmhQcENBYW1FYlNTaUdEeU5XUEtEekdFNWxQbFBHdFIraHU5a0Q2eUxtN2hvSzhEMVg2cnViWlpGbWpHWVFSSFZlV1RrMEtHNXp1V0MrUWcyMFJrUE0rZUlMb2JZbGdtQ3lRd0wzUUJKS21ybmwzODFORVNiUUNtamlESTVtc0JlUEtoaHBXS05MNGdZNjZ6YnhjTUU2d2JSV3NvRktXdVBaRjdxaTd3NER1bGdRa3MwVFdKWVhad3VKTUhkOFJneFlQY2duTktPMXhuWVZXTHVCbklBS2t3ZTRZQkFUeDBKU29EdkorNVUzR0JMdVNFL3VOUDUxRWZJUldPM3RBQSs0WkZPaGRZRVFIeG14Ymp5RDhTeUVucVIvektkVHFsZWMya3ppMHVZSTFUMEwxRGRyZEVMOHhGQkpJNzJyRGNnPT0=', 'LOGIN', 'DEV'),
(92, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-12 10:38:53 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa2Rxc2xFTDdwazU0RHZ6bHRIbkM0NlNjNURBNHFEZ3VXYjBrUUlhTWU5aGZzY1Y5TGtOWWJmVEovZmc1aFU0M2t3VE54em16cVQ4ZEZHMVFsa3ExZk9mVXhnbkM5OFN3SWUyWWVFZmt0dFk1YitXNEF4cDVsY1JOT3RuM0pyL3lSVXNzZmR4TWJZYmJEbElSbEtGY2wzSEdWQ28rL2tEa2EzRGNrVTB4WUJoQmg4aDNUZURNZDZKeXdaUDhtQUphWVVMVkk0MlQwc1I0K0hKWThuQ2hSNXBHVkFHalZ6dlRGTlhreUlVNkthT0xrQjJzbDZsWks4anlOTTR4aWRVdDh5UjlERlZlSWhVNHlRTnEzR2k5Y3NLVTRraytOSXRLcFNJZm9uL0J1cERSUW9nZEpiSnRqa2JXWnYyZUxYZm51azcwVUllRkVLMWZTWFdRTHc1OURPU3NvMjlCQWVxb2taTEFHc2drS2I0YnNHSnNwU3FSVE5RbURmVTMzMFBtOWVlZjAzdTl4d083ZDF5SFlsdDFMc3hmSEpZdzQxZ2RmamJlUmhTR05sVjhlYlppdjZiWGVvOTNPMm1ENUFXWHZlbzZ4NlFpZEJQZEZlM3JhLzRVU0I1WWR3K2UxK0FadEk2V0h5OTc1eFltRUZPZUZkTGNTQzRia0poWWI5N3dyeTRTWU5BQWNxODdUdlFVa0FINnJDMlRuVHBGKy9KdDJ3YzZFQnhGWVF4MHEvZHVBbzlBQXhaVlZHV1Q3WEVDb2R2eHIySjVjdWVBOVBOM0RibjJZZXBKUlVZMEszR2krSi9KZlJGM0VPUmF5dm55UGVvYTdCK3JZeFRhc3d4KzdIdjZmMXRvL2JqTGVyYkJvL2xRNlVoeE5Kb2FUZnJZSGZKRjZIK2RxZFl1Q3M4Mmxmd0JZMDRXekR3a05XQ3VnPT0=', 'LOGIN', 'DEV'),
(93, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-12 11:50:35 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa2Rxc2xFTDdwazU0RHZ6bHRIbkM0NnFIeFVEZWd1blh0N3phRUVkSGFKMVlIbzVaK1pnRUptUXpsdmN6Zk1obFVsNmpTRU5DVEFOVW1Bdkp2cVV4bHNzUk9tNGE3NUxwVmpYZWNIYzVzbGFJbEh0NUpldjhKME5WR1UwM2tEdDYvR2JJY0Q3QnByZkJJek8raG84eXZvbGh3V0NTNjduc2V0WUo0S0cyMEJSN1lsS1RJcUJvUkl1YmNvVEhKS2NKcEkvSStVeVkzVHk2SkpFbzFiam8wV0JIZDNoSFN6Wkt0bU1OOXR2L0c0bDlodVBHL1Y0a0RWclovWUxXaDNKQnNNNkFpRUx2MkJZcy9EaFE0eGw3WnNxblppMWpid2FhUmU0Nmp4bkt4V0g4bVc5OUdMcDRxY1VSeFUxYmZ3d01RTVhWK3RrZkk3OHl3OE1UYlpsNktjRmdHeGlNeHpZbmlXSDJZTzI4TFFsTlhma1VyME8yWnlaWDNEelE0NW8zUlpoZlRtcllsY0QvVlg2eXI2c0t4MDNoRkZYWTNuZUppRFJRNlNxSnBjQ3FEQUhSdEVsdU1mdW5keEcyaXgzQ0JwWHF5d1RCUWRYTFdKTXExQkllaDJld25IVW1PQUNEODNDRDQvVXRteVRsYlN0SDZ2ZzJiTFlnaGlocllTOW9XelJTMEtHRTE0WDZPYkNPUXRsNURuaUdSbzhVZ2J3aW1KeG1UMlJ3M3plSUN5aXplZmVMVlFCNEJoYkZVZnpYZS9ReUdMTFBwbWMyeGRnbzFLWG9VdGQrOGVMakNGM0x3eTZ4MFRSWEVreGhDeUVscWpSYmhRL0VVeWxLV0tEQXdaVjQvTnQrdE1rTWNZdU1paXJhYTd3d3FsbVhaWkhEWVRCWUExNlpQMEZYM0NYRlNpZmtsZTFZUllma0Vwalp3PT0=', 'LOGIN', 'DEV'),
(94, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-13 10:28:07 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcEpTaTRNbUoyWXZrR0NnVkpjcS9PNFZRMmhQZk5Yc05CdVZSNVZERm5ZZGY4cjRVUWJzdHRtdG1rQ29LS1NtRHVpMWY4Ymt3K2V4MGJlUDJFOHYyTFB0RE5zK1BtYksxa1lVMFRDOFM0YnhiQjNnUVZjako1U1FPWElzVGIxVEVkbkJ2YXZZNnZHcHFIS1NGdHNuYWRVQW1YWjJsUXMxeG9maUVUTENZRVo4dFRNUERhdkIyTW1OcWZmVDVqblZKSlprMFdZT1d6ZlhTbmp1V3JhU3lJZ0wvdzZiQm9QTjIvZjZDYkZSTWZJM3MxS2pIZXNkNkJUSERLZnlXb0ZFaVZ1VGxJazZnckVRYU9uMGxYZ3pwdkVLN2dWanUzQUM2MmxpTFR2bEE0NXMrL1NQSzZvU0ZHQktHSmlwSy9GWkpra3RpblNHZzgrSTJ6M29LMUoybzFpTlBobS9SYk03QUtIZGF5Ny83UVRPRGsyaWo2TXhzcThUaTV0M2J0RC95SWhqNGFaNmxxZU9xajVYb1Y1V29mbUtKZW10d2ZKWThWdFVITkdJeXVFaHlQSlpIbk9PVStFWHBsQ0hWUVdUejNlcWw5Z0k3WFFRZUE2Y01QS2lVekxJclR3SmdiVThqNTFQS3U3QWNkMjNwd1g4WWIxK0Q3Z3RicVlaelBYd0dyZXVPalRlNkpFWTl2a1lRRUZFeUNRajdlOEh1K2QvMEE5RWIxd1Vwb2RTKzVqenliOHhndzh6a056RGsrK0dyRkMxb1RaQlpqTGlGNnVGeXRrdTVld2w1VlBkdW9UY1dxRVpwcFZhVUJJQUkwbSswb3pBZVVNcW12aWRINUk5dmJvWlNYbFhQV2xQdzk4ajIxUDhtclFkcTFjd0lPSEMxa1czRWU5NFhPSUcyMjZNRUcvV09SdXNUdXRxVEY4c0tRPT0=', 'LOGIN', 'DEV'),
(95, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-15 10:36:18 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ0o4VmM1STZIU3NFcGlMSGIvYXFlcmh3ZzNjZnFzTkJ4Q0lERU45b2F1WnF5eFpBeitGcER5emZrbEplTXFSWWNBWCtyWmJvcWlGUnd6aWZjZFFmN3o1dG9wK1grQzRMV1NVK1FPcHQ3YTBQUmhpQnpYZkQ3cDNxeCtra3puM2JjeUxvdG95Q3M5Y0JTaDc5dlVLMzJmQy95ZkYvamVrTnlpRlorQ3NWcmYwR0FSaVF1dGNGTjNDd2RIYjV1T3hxLzBnR05uOXZyQVJnYitzQ0daU1JBNnVrQjlKMG1USWczTUkzNFY4Tk1uVEdjZzI2V1o2Qi8yUzZ6ZXZqZ2xkcUE1aHRHZ3hyTUZDWHBvOHc1WnJCMlFPQkdxZGZKK0NUMUw2RStWQm9NdHlhSVRCYjc5d2orZ0FwdEZ6TDBYcGZsRUFwZXFOaDV5cHRER3h4RmtoOFVXd0R3R0pPNTNJSmVVckZSM1JTbTlwMHJOVkV1R1hUMERkbWIzZkdOWkpuYnZxQlFsakZYMGRvWmVoQjFHaDd6TnpIMncvZDZHZzNTWFZWcUJlSDIxSVhYemJxU2lKZ2lJNVN3eGtSeGR4YzBRZUgxaU1BbGZkSTgrdFd4NDBPdVlIQS9BUzZaNHlNaS96TzdUdHZjVXgraW5XV1BkWmJJOTdnNnpFL0M4MUJGSExMTzFJOTdkSGNTSDFQdUFLWnBIR2ZjMVRiMTYvdFk1SGVVeldOaUw2RWQ3NStFbThZY2FlSnlWOTRBb1ozdllhZXNhTmh2WHB1QmJFOElTT0VCWGt6aXQ3aHJzWWZoNmpWSlR5bUpBdDdGMkpSZ2hDU04rdnBDbE9tbjA2SUlwM1NZNW1jNTh4cmlyd3IzYU90TGdzdGlBZDQ2UmNwdE8xY2sxUFZ5SU8vbTdTbGUxQzJNN1ZldWJCVXlFRnV3PT0=', 'LOGIN', 'DEV'),
(96, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-15 02:14:30 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ0o4VmM1STZIU3NFcGlMSGIvYXFlcjFtTUt1bjM5SmhLS1QxZmZEeVVQWmVwSFF1SDNqbTlXaC94YWRNSTY4VFduTHAxd0xoV2dNQWRlazIzVnhzeWdoV0l0KzhOWkZTS2hGQm4rc01TYnF3L1N6UzBVbTFnTk1nYnNNTXhxVXV6cDVubEE2ODNtTHNvMThtYTRlcVU5eXgrWEFaQ1BiY09pZkZtbDlVTlFTbHdVMXpSd1RNdnczd0V0OEszdjJMN1lyQ3VhaHMxL2IwU21zZVZ2NzVNMHF2amE3MmoxajVWaW4xNUN0SU5BWW1adVJKbVIxdzE4SXY1WXkxUEc0d0FKcHhXQTBUa2taS01Nc3lUZ1FWVE5qUm9yTzZqRVBmVzlCdEJHRnB5d3lmZHpnWEJhaXg4a0pzeTRacGpjSUNlM2I4K0tOUHR2bUMrWkY3LzkzcStXcC9CR2ZUQ1RLNXNrQWJ1MmJMdnpRT2wxR2VaSnFpZWx0WTExTWJYMVlwSWF1enp0NEI3WDZ5Zit0M0k3ZkZ4dk9haVN1aGxGcnNmUDNwR2lPWkNIVzA1NktVOGlBR1hCYlIrMjdlYXpyZWtvWjdoRFhTckxDM2hoQUEwVkdHYWUxcE12VldPMjJKYkFOTnVSQUplUG1lY292NGpUQ3FJKzRYZmNZdEJpSUswa2N2U2ZCRVJTa2l0am02S0Viend3ZU80VEhJZVRrSFlrTUN5Nlp2TTlqOXhtVjUrcDF4bGtuKzA4Vk8vSUVjdkxLNWg1NitEc0luVWpqUC9pREM0RWNHR3VPOW9QYUxpdHljVkRuNmxtNzlJalREb1BQTVNBSnJWVnYrbWxSeDFUUkN1QU4rZVlmcEx1OFZzVHdBNnFNUGVOMHhIeWUyVm1jZDRzTGZ6aWtHb0NXejhacXgzYjh6ZGt6bW5qOVRRPT0=', 'LOGIN', 'DEV'),
(97, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-16 10:48:23 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbEhxaThpNXpaMEJDMzk5eUxKWDFCZUVTMVlpNERkbm9Ib3k0bzhaSnpKZjIrYlQ3NjIrWU1qS3QrTHJmUFVPQ3Bmb283ZVZEb3RHNkZzekd0MURLZkxmRGt3bWNEZ0R6akxhUEt4WWZ5aDcrU2hqUitaUHFTV2xVaWFxb2xiUUY5bm40bHg4WlRwUXlHVnF0OUZnZDZEb1VKMVpwMFp6N09kb1NXY202aG9WeitBM0FKUFc0TkU4TTR3K2JPcXprazF1bWJYbndYUFZCSDhnT3VZUCtoLzljV3h1UWlCQ0pFVzIxVHQwMEJrcWJ2cUtZV2M3WXhQMjhiQjVNR3NDd24yaHIrQU9HbTlGR1FIV1MyRGs4c2dUQ1hjc3BwalRjS1ZGRlppbnZoVUJURWZodnlIRUx4WmZiUTRVZk9Takw3OERrdkFiMW9qbERqUk9XdC8xU0ZremY5bXZpY3l5eExxMHkrSk5jY2YvSkZHMW15VlA1Q25QNXByRUhLOVFPQzlQWUc4Y0dmQnI3L0tKa1RzSkd5MWpWaWdmLzdIdHRDQXdHaG1tVVVHVU85aXhIOXdHYmdRTU1LeU1NdWNISlZhb2dxLzB0azByOGQ1MC9PUzFESDZpbm9JOWY4aGxJdHRyY3VMbm9hRUYxVW1lU1hXUHdVNVN6SnN0WHBLWXhKRlhVcmJhdElRZnp4OFdnRnZyTFNzNHVhbSs2bnRhU0lGYndEYW13MVZrYzhhM0tqM2xyRC9sMTVjQ2FIM2pkaHRqTVorbTArT1I4OEdWaTNsSjVwbGZOMG41QkNtWnF0aHlaZFlqNlhiYjEwYVdQbmt2NmZxNmdzSTZFSlREYmF0Vk5wN2JjMzFlUGhXNDZlbkVIRUt2by9jT1BYMlBjL3V1a1BLeFdtcjViczhJdHo2bFltYUxPNWlheDdKejRnPT0=', 'LOGIN', 'DEV'),
(98, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-18 10:10:43 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitOcDcvYnQ1RXZQQ28wMTB1dklTZWJXN2hjbHBnQVlyc3B1Ni9MSVZqMFRJeEcwTUlWNXVSSVRUTUdxWjlpL3YvaVFIbE1vd2ZmanpmZ3l5OHJFeGJSR3UrTkhmVWpaYnhqbkpUMDg3YUJJZzRtcXhQakxLRUZmYjIwSmVPdjNNRnVIcFdncVFLNnExbHlCV1VxckMvRlhmOExUNm5DNHFpakZUbEVnRDRKdDRIZGtDNEx3Y2lXSHpVVndpRVVQb3hHTWNvZkxVbW5XYkZXVGRxQzkxN0craE01SzhUNUxTZW4xNThNcmt0d3psVmRNVlB3ZlR1VUE1bjVWaUtkLzJZNTRIcGZBR2JjcEhqSnFCcnp1c0g0YVhhS0JyTDV4WHJKRFhwUitHTW85eFlBTVM5Y253NHZwNDhNZmE5RkIzdExkWGdKSURqRUluZ0dLMUYwd3d6bzRCa2xDWDBsQWxhZVJiYlhiUlZFRWZuT3hVM1VkVFdOaUswRmJlSk51NFpjb2RvWjZNSXlBVEJSaGpiaUdQOHU1OFoyZE5CenJmaWErbmQ3UndrZmFRNVVsOUJyVjNBbVYwek8rVHM4d2swWFBvaksrTWQyeDdpR0dLQk1TZk5JNERjY0hTSk9tb2Y1emZmSlNtejJOOHNtRW1oTFQzeGcyQnRQbzhQR3JRanFvRERXWHAxMzhMRERzQURFdFJBUGJ2SG9vek80R3YwOUxhRENmeUhVZXRrN1o5SERZWjdDaVF1L09GUlVRbnVGcnRGQXI2K3RuZUE1WWpXbm5kb1N4cGRTL0p1VEpsTUszTUdZRXB0cHRmNHF6UXZteGR1cVB3R29mWDRrWW85ZVduZzZhQTZGa09lSXVRYUtGcEUrTkZZczU0UUFKYnJvVjlMcXFoOUdONFMyQ0M1MHFaRGFMUFhpdERVUGt3PT0=', 'LOGIN', 'DEV'),
(99, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-19 10:53:54 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdVlkbHQ5QkcvWjVxeGV2UmFDM3pqcVAzUFMrUUtiT0had1F2UlpvK04vU0c1bjVocFEvaEI1SHhRZnZ5bmMrdzNTdm9KKzdqWlR2TFBHRWZLY3ZhK0UyL2hKcCs3MjY2Wk8zL1dEUDZJaVB3Z0VFekl1K1l2RHhuZ2NYN1VrcHFkL0pVc2tKNEdIbVJCRUNHUDRxaGlJZG5PRjVXSkc1NlRKVGkyZVk4eEM5dlRFam5CQ2pnU3czWGdQS0JZN3ptbE1zZndzVllJL2E1OTh0Uml6emVVeG5IOE5KUVkvZmhiSUVkelFTOU5RMTZFTFB4aXJmQjkvQjJUN3cxanhzSHJvN1JZNWZNd3ZqM3BlUkNQQzlGdDhZNlMzZlVoMDRoaDVyS2M0ZXVPUVcvZ1NjRzNUSm5OZ01BUXpRbTlleUpMc0hLWFVMenRzajhoeFVDbG5jd1VwSUVreE1NN0R3Z2VmUDVpQ0VheUZSV0FzMFUvMWhNa1creDdTcklsMEE5VnhiSDI2b09hV0dldkJWSHBrakhyeWVSL1htNkU4OVFuOWdyV29JR29qSytQNVlCMDZXV3cvNGFKQ2lPaHNUL2tCSGdRZklPOVN3Z0dnaDM2cFdJdUdTRXdWN3NENTRJWURMSWQ4Z2lwT0VsY2hSa29RVFVSZUV2YnFCWTMvYWZWcUtHQTcrTEVqUFJWSk5BRjI4Z2FEOVhhSDZsemdCNGJwNXI5czBhTVBXVEJoOEdzMjE4RVZkZzdxZ2ZVU05EWEVBNk04WXFJeCtROWlpYjM2VzQ0Wm9KdU1YWmZtY2lVeDJ2ZFczby9WUklrR3JaUmpIL01IMFJyNE5YN1V1NU1JbkNrQk12SHVCZVpEUFE4bVVYYXFGTzNUcGlCb0IwQ29VS0JURjVHUTJkT2cvT25xdTBmV0JyUnJrR0pUYjh3PT0=', 'LOGIN', 'DEV'),
(100, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-20 10:38:22 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbUxxSldhcWROTzA4dzZ4bC9ZUmRyUEE4SU0zS2NubEYxSk9WUWNmc2VSa0lDZVIzUmpoNGUrMlhSRHdhVy95dE84dllZQUM3VUUzN3d6akJPS1VrSnRNM2czN2sySkk1aHB6YXRZMnJZYndHWDMvWk5EYTZkajBJZk1MdFBmRS92d0RGc05uaXcxUWxHSFhvZk5ZRHh5TFhpQnFuQzg5aEZTcmNuMGs5RHExaCt6ZFVUY0xyTE1yYnpuWEtWTmsxTENwVXByTHRXb3liaEtYMmdEOHd3azVjQkxwR040cHhQZ2RXUk5qc0dOWmcrMlc2VlFiMGtodi9mSGZObERYb2c5NjhhYnJzcTlwamJ5WWpaTzVpaHpvaHVERFVGSC9BWFJKRE5jVmNjUm5TVllFUFptUk1UUjhCa0lDZFFNUUZRaTBvMWtYZHVwejFHYk5xaVVyOHp3SG1LVTFNS1N1MmFpOFJWRWtZeGltdm9adjdUSDc5QW0rV1Qxdm1ZbWJxdFIrKzlRdS9acndxWnJXU2ZDaWJ0dVJXNm13cVZIaXUzb1RhenZmQkh1QlNHdUtvUEN6Qi9qd25JcTNRbXZnTWVhNVNXeWc2azhCb0xEQk9vUStVTG9IK0pzWmNBL01EWUlkeWtzNU9RUDN6bDhsK3YwK09CVm5mdGpYZU9PRHhrb0Z4WXlLYzRBK1dBVHNiSmRRdG5pWHE2MFBJQ0gwUis2VFgyeU01Q2N4ak9ZMXpsSmNtN0IvWG03L3l2czFYeWRlU3pzOGNvMGtqeFBBOGFCNWh3aW5ENVJFd0EyRFhHL0RvWTRDNU1UTzJUOVFUNGQvcFcyL09JSGo4V2xSQ0wrNFFrb3RJV0daL1c4eXFFaDVVekw3TExPYVJEM25yKzRwQ0owMVpQbXA0a3BiTXlMMEVNZExobXlIbnltVmJnPT0=', 'LOGIN', 'DEV'),
(101, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-20 02:51:14 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbUxxSldhcWROTzA4dzZ4bC9ZUmRyTlZFZmRjS3kzSkdITFFOS3VaQWxzaU1Yd01lWFc3NjFGeUtEUHRiV3k4L3VvMW04b2tBL1dBbk0vVXEwZ3d1UnR0eWVjOERBUjhSZDNlbWVJMjRCZUxETjRyY1VqR25NMmlGb1poWGdlb0pSM2JqRWlhK1hTcldmTlBvZmdCZEwyZU16Z3Rlcm53V1VYMkp4azRvTGZ4cy9lazFlbDl1cm5aZzFsSjR2b2ZxZ3Ixc3Q2WjdTc3dtcmhLN29lZHJlTnV0L2lWZnRtdG5LU3RBa0NjRVJhaVFQNHdLRFNPcm1hL08ybjA2emJuMDhROWdZYlFjbUVTL1ZhOExVdnZkSnJrbGRZdWsyVXdGSEZrc3V1aUdJcU01WXdMbmRPVHJHeHpYNG5FZy9jdlBZZlcrdHF2N3gxRE5ZYk1keGw4OTEvVUd1WnQ3b1RreEVhemRtbTRQWWxDYllTZXBIc1NIaytaTTYrWDN0a2hYa0FpMUxjNW5QaFVYZktGUnJoUTFmV1U0TzFiVUhVcW9oRmRleU9KaWdVUTZSNm9tc1hnUzExRXkzYUpZT2dZQjZUK3QrZ1Jud01mWk9WSXBUZ3U2dmkrKzhab2VQbUIwUVZzUm81Uy9OZUQ3YXc3ZjBLSW42VnpWc0JCTVgrL2IxNVFMS3dJUDBlRi9ycEtCL3JCTStRUFQwQ0NOM29OR3VhcTgvUXI2dGVoaHN1cWkxU29ZOVAzZmJhd0F3cUxNTEJRQVZtSUQ0NzloT3pPVUtQL3BMQjMwSHRXek5qNEJLaW45MlR3eFE4SW9EODNzQW9mRk9oditFZk1MMWJMcHJXd2tIOFNodGd1dVZKR1NzT2I3Mm5QaVU4QXJ0Wm4xcGI3dzBsc21xVVhueGRSc2MvcXNiQVdMb09MQ3FYUFp3PT0=', 'LOGIN', 'DEV'),
(102, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-22 11:20:50 AM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb0NrS0pjaE1vYVgvS1RnV0FNRVoxSUl1RDNnampDZExHdDlGeU5DVGRoRjZxMHpsMlgzNWorSVptMVJseXI3ZFBnejkxdDZIRmZ4NkRDVnlsOXlYY2thdE43QUo0WXhxMEZjV3JUWGNyTG5aVmtjVDdreDhGY1Bndi95TG1iOUIwbTIwS3ZjZi8wQzdkRSsyUDJOV0g0cDNvOXBrcXBMN0g5M3dpQTRmVE5DbWdWQzlnZUFHMkQvcFZaVzZoQjNoWEczZlIwdERDbUtQVnJUZHNGOWFseGxSbUVicEhQU3NGbDNYazBwZUpnZW00ZTUvNmdNTTJia0JIZTN0T0RYbUx0dmhZdFpmaHVNaTM3dE8vb3YxYTZzMVJSSGZJTjRkalQ2cDFsNFhld01LTXhjOVdxK2lXQXdWWExlbmRFdjh3b3d5dEZCNmVVS3JycDZtZG5FalpVQ0tDbEoyQ3pHQzhvcWFWcGpJTkF1eUp2a3A1enZWOXV5WmZ2UjFRV3lPOTB3Rm5IdDFISUNEcTFWVHkwTS92QWtxS1FnTGJ5UUs4N0ZFOTNqL0ZndTA5Sm54cUIxaS9Wc3RGbkJoMEVWeWhxSWNvT2VtcVF6djJnR1JTWjVucGhPOCtOd0hEcXdsalVwc21mQ3BKcHFQcFVYYnljYUpnRHFvQmhpQTVjMUVDbE1DMTJZaEFUbDhiOWtBNlk3UHk3L1UxMm43NWVrc2tEVW9FbXBFa3JqMGZNK0hUaDBwK3NRamlrcVJqOFZPdFZ6YW5GNitXKzg4NnlvbWloTEM2V2liOU5rdzhFSEx3blQvQ3JuaU5kTzVTaUY3bGFUUXNvdmFJSTNsZGhvMks5WkpnYThYckpuUHMrcjNCdzFrQWtKUklqQXRIWm9RejFrUjRMWlp5UHlJS1lzZU9Mbm5RenJzaFo1WE5aNjdCdGVYc3gzSW5yNis0Y1BPYTVYK0owPQ==', 'LOGIN', 'DEV'),
(103, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-22 03:18:28 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb0NrS0pjaE1vYVgvS1RnV0FNRVoxSlhaUnllWmxJQk5WQVRra3FSb3FoWE1uUjhiYnBzdmN5TXo5TVZqZGI2bHZobUZaN3I2NEN0NWcrUEREcUtlMk8xajhJdVNIaG9JZ3ZpQzVpMGJIS2pCK3ZodGFjTU9RUUpMSUlUdjlrbHA4OWkxMFNXT001WmpZdGk5RHFCeE1xTEVuNFNwcittY24wMGJyTlpNSW1qWEp6TmR2ZXpXZ3Bsckk1NjRKWUl3dHV3N241eXVyT2QwSmdlSTUrQ09iNlRKaUlxMllyN2FUN1Z5ODJHODZqaUZsMVZETmM5NDdUNDhGTXhhQmVQWDNjVjN1UmZpZFozTzdqZlJ0anRuS2FRU2ZsSmNaSHNUU3RPL0FzYnRhV3pMMEJmaVdzWHpITi9uWWdaNitIWTV1TSt2NzlKM0hZR1lwMXlxT3ljYU5ZeWQ2TzNMRnRWTGEwZWlvVWNuc1E0d3dsY0NlY1MrN0Q0eHNhQ2xxQndnc0hadENRYjV3SW9DTVI4cjFiMzE4NXhUb3VsVnBqSVlBcEo5VlBIaWZUUXFwelFNTG1vd0locFZzckJQRlZnZDljbjBCZVRxYUhpOEZRSmE2bWQvcEMwdDJPWFoxM1prS1FoK2ZqRFV5QytYVDdLaXI3RzdPdHR0bG85bzdMWUIzZVJsak1Bc0NDMVJJZXBkTVNxRGJYT1ZFd09pRW1henhBejQ1MnlPNXZNMGxEZWdxR0prQXZvSGcvT3ovQTgxbUZkRkhCMUwzSThxQTRxUGQycktWSGFmbTU5ODM1aDNNYURtbW5DZDZOTXoyQjlUbVZmcndmb1Y4QmxNbDB0UDZkNUx4bTk0cDRzTm9DU3BQaWNIeUxORGxkUlRTRzZXcEJhOFhRNm54emdyTXQ3a3h5QzQ5Ri9kY2ZJSEt6dUdnPT0=', 'LOGIN', 'DEV'),
(104, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-22 03:26:00 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb0NrS0pjaE1vYVgvS1RnV0FNRVoxS3doOGtKRjNWSEIxOTcycWxYMklsenBPZUUwTml2OGpkT2ZWRkF3UnpEekl1RWpXbm9wR1kxck1MeWpJekFxa3pqQk1BQ0pDUkl0cldzR3BlRy8vb3hhblU0K2RqdnVmS2RBd0NRNnhkYkRPTnFwOTcyYlFzKzRWOE13aDNzZVdKYlZUUjhCNHQrSGxBdjVsL0czUUdhTU0ybW5icWxJZjR5Nyt2dWNYQVNkYkpNWmgxcDVZWGtJZzVlQ09nVVBtSHVzVnZsdDF2K09GRDgvR1Z1cmhLaytyZWZ0YlBTNXRldFVaemhxYUJ1eTUraDIxQlViRlFYa2xpRDlld3E3YnJHR1ppMWw3Q3A5L29Bb3VBNHE0OFpLeUZ6ZyttajlQSXNmUFQwSFlUaVh6WmRJQUQrOFRjd0tpWXlveGhBMTFZOFJtamVpVzBIV1lsYTFVVHNJMlBOY05lamxoZjZKeEtzRVl2ZERzcEhzODl1d3lOU0s0bUZCOExIOHYrY3Brby9nVzhqQUNhWXdNd1RUUnBHT0tSdU9jUUxnVTBINWo2MjFHR1poTUVIOXdGdTdVd1Y1a3FTZ2IrWUs4a0FxNURiOE42c1ZSVk5UQXFSdm1UZkNHZDNaZ1Uyd1lQdm9oSWQwcWZNTXZVY0FMYVJVWkljTjAzdVJDMmxiajN3Skl1MytlaXYwU1NIME0zakxDQzh2ZkpDeFM0NjVhK01CZURvWkFXRjJCMzlGUkRZQnpLZUF2UzJzR0NEOEUvVzlyd1RpL0FOU1ZDcGRubGN5VlUrTDRhRHc2SFZhcTR5Yk9FTGdaZ1lQanNRUWs5blIyMk1zdzJlMHVWTWpjZFhMc29HbVhqenlpMXRZUUlIY3l6T3BSVmFTdVdRakdFZnI0M2FMRnIzdGg0M3NRPT0=', 'LOGIN', 'DEV'),
(105, 'a3ZGMVpwOXA0TjBCb1V1dmRENUpvUT09', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2024-01-22 03:52:08 PM', 'YWpRVE95SXN0VXZUMHkvb1pISXNqb0NrS0pjaE1vYVgvS1RnV0FNRVoxSk5IbkNCYytZUkxsRHhyT1BEWkpSZnF6b3RabHBHWmxlUGtXTGRINlpQM2hpZ3BqQ0pkOVZpM3k3WTBKYkZMd3ZUeng3Y001ZnBBcGpISTQ5Ym95R0FtY2YyMlNrcFJvRlEyVXAzMmN0SXNieDl1ZDRCL0tvM3dZNHNVcC96VzhGWlJ1cTd6U2tndlBpQWdPV1pBSE1ndHRaREo3OTB4SVR4YTd1L3VNNFh5VGdhTDJTNmhBeDduSTI0KzdtQzB3Q3ZwenVLMk8wYTk3S1FaY0xpYlZ0Zm5VcVFVMjV3MUZuUWZ1SU1MTjhMbVVEOG8wblA3NTJSdkd0UW1TamhNZi9OK0NXd2VYSnl2dERHTFRQU0Zjemh0YlJWdkx0Zzd0TzNmWHJmUFcwajkrc2ZNU2FYYjVKdEI1NmVLOGpNQzJNaEZmelk3b2kzOUgyZTdLdmlpcVdEWVVEcU1reEovOHhiemFnU1pVQ3IzR1RIVGRCYXp3YklQVWc0REZLK1lYZVlHSEZCMXJJdy9WcDNweEtvWWFsZzg0L3o2MCt5dDEvY1FQU0dVKzJORFcyRzhJSjk2Z0tzTjhXY0Y2TFdJZ1pYSyt6My9hdC9LNjg3N2ZmVTUrL0VIejA3Kzh1SGNRVFFYNDRoMStIN0oxWkR5RUdERzEzdlNiZXhIbEZkWnZOQi8xOFhvZm00bmd3RFV2MlpNWGlXZDVaWVo3WDErczVxa2tyYnFGelpjbDdzb01qNWxOV0FMNEY1T1BnYkJoRS8yVCtqWHF0QUtNVUMyd0NjQlMwYUlSai9raGFBWGRTV0tMa0Iva2tuVFlJWUcxSXFIZmJtby9xYzl4NVM1bCtTQTRjc0lLQUhWckRkQ2lWc2M3Y3hDMmtMM0hTeFcrUDRRTDBSR3FNNmdnPT0=', 'LOGIN', 'DEV');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `TrainingId` int(10) NOT NULL,
  `TrainingName` varchar(100) NOT NULL,
  `TrainingStartDate` varchar(100) NOT NULL,
  `TrainingEndDate` varchar(25) NOT NULL,
  `TrainingStartTime` varchar(25) NOT NULL,
  `TrainingEndTime` varchar(100) NOT NULL,
  `TrainingDetails` longtext NOT NULL,
  `TrainingDescriptions` varchar(100) NOT NULL,
  `TrainingCreatedAt` varchar(40) NOT NULL,
  `TrainingUpdatedAt` varchar(40) NOT NULL,
  `TrainingCreatedBy` varchar(50) NOT NULL,
  `TrainingUpdatedBy` varchar(50) NOT NULL,
  `TrainingMode` varchar(100) NOT NULL,
  `TrainingStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_members`
--

CREATE TABLE `training_members` (
  `TrainingMemberId` int(10) NOT NULL,
  `TrainingMainId` int(10) NOT NULL,
  `TrainingUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(100) NOT NULL,
  `UserSalutation` varchar(1000) NOT NULL,
  `UserFullName` varchar(500) NOT NULL,
  `UserPhoneNumber` varchar(100) NOT NULL,
  `UserEmailId` varchar(1000) NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  `UserCreatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserUpdatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserStatus` tinyint(1) NOT NULL DEFAULT 1,
  `UserNotes` longtext NOT NULL,
  `UserCompanyName` varchar(1000) NOT NULL,
  `UserDepartment` varchar(1000) NOT NULL,
  `UserDesignation` varchar(1000) NOT NULL,
  `UserWorkFeilds` varchar(1000) NOT NULL,
  `UserProfileImage` varchar(1000) NOT NULL DEFAULT 'default.png',
  `UserType` varchar(1000) NOT NULL,
  `UserDateOfBirth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserSalutation`, `UserFullName`, `UserPhoneNumber`, `UserEmailId`, `UserPassword`, `UserCreatedAt`, `UserUpdatedAt`, `UserStatus`, `UserNotes`, `UserCompanyName`, `UserDepartment`, `UserDesignation`, `UserWorkFeilds`, `UserProfileImage`, `UserType`, `UserDateOfBirth`) VALUES
(1, 'Mr.', 'RNA', '8447572565', 'navix365@gmail.com', '9810', '0000-00-00 00:00:00.00000', '06 Sep, 2023', 1, 'YkVYdnY2YmtTdHBSRVkxbW95bFEyWTl6L2YxNUhpQ1NRK0FFR1BMRnpDN0JnUEdFTzNwb0NJaUptK2V6WDJUTQ==', 'Navix Consultancy Services', 'Sales &amp; Marketing', 'Sales Head', 'Information Technology', 'default.png', 'Admin', '2022-11-02'),
(156, 'Miss', 'Eric Rose', '+1 (511) 653-4857', 'hr@navix.in', '9810', '2000-08-14', 'current_timestamp(6)', 1, '', '', '', '', '', 'default.png', '', '1982-02-03'),
(157, 'Mr.', 'Bryar Branch', '+1 (539) 106-7179', 'user1@navix.in', '9810', '1999-03-03', 'current_timestamp(6)', 1, '', '', '', '', '', 'default.png', '', '2012-06-20'),
(158, 'Miss', 'Kelsie Rhodes', '+1 (611) 985-9692', 'jamycynam@mailinator.com', 'Et tempor aut omnis ', '2011-01-10', 'current_timestamp(6)', 1, '', '', '', '', '', 'default.png', 'TeamMember', '2016-10-01'),
(159, 'Mr.', 'SOLU ', '+918052458609', 'solu@gmail.com', 'solu', '2024-01-22', 'current_timestamp(6)', 1, '', '', '', '', '', 'default.png', 'TeamMember', '2024-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `UserAccessId` int(100) NOT NULL,
  `UserAccessUserId` int(100) NOT NULL,
  `UserAccessName` varchar(100) NOT NULL,
  `UserAccessCreatedAt` datetime(6) NOT NULL,
  `UserAccessUpdatedAt` datetime(6) NOT NULL,
  `UserAccessStatus` varchar(10) DEFAULT 'true',
  `UserAccessNotes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`UserAccessId`, `UserAccessUserId`, `UserAccessName`, `UserAccessCreatedAt`, `UserAccessUpdatedAt`, `UserAccessStatus`, `UserAccessNotes`) VALUES
(1, 151, 'Admin', '2023-09-12 08:41:56.000000', '0000-00-00 00:00:00.000000', '1', ''),
(2, 151, 'Account', '2023-09-12 08:41:56.000000', '0000-00-00 00:00:00.000000', '1', ''),
(3, 152, 'TeamMember', '2023-09-12 08:44:05.000000', '0000-00-00 00:00:00.000000', '1', ''),
(4, 154, 'HR', '2023-09-12 08:44:05.000000', '0000-00-00 00:00:00.000000', '1', ''),
(5, 152, 'Other Staff', '2023-09-12 08:44:05.000000', '0000-00-00 00:00:00.000000', '1', ''),
(6, 153, 'Digital', '2023-09-12 08:48:22.000000', '0000-00-00 00:00:00.000000', '1', ''),
(7, 153, 'Receptions', '2023-09-12 08:48:22.000000', '0000-00-00 00:00:00.000000', '1', ''),
(8, 153, 'CRM', '2023-09-12 08:48:22.000000', '0000-00-00 00:00:00.000000', '1', ''),
(9, 154, 'Other Staff', '2023-09-12 08:48:22.000000', '0000-00-00 00:00:00.000000', '1', ''),
(10, 154, 'CRM', '2023-09-12 09:02:11.000000', '0000-00-00 00:00:00.000000', '1', ''),
(19, 126, 'Admin', '2023-09-12 09:27:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(20, 126, 'TeamMember', '2023-09-12 09:27:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(21, 126, 'HR', '2023-09-12 09:27:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(22, 126, 'Digital', '2023-09-12 09:27:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(23, 1, 'Admin', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(24, 3, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(25, 4, 'HR', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(26, 5, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(27, 6, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(28, 7, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(29, 10, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(30, 11, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(31, 13, 'CRM', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(32, 14, 'Digital', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(33, 15, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(34, 16, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(35, 17, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(36, 18, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(37, 19, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(38, 20, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(39, 21, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(40, 22, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(41, 23, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(42, 24, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(43, 25, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(44, 26, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(45, 27, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(46, 29, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(47, 30, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(48, 33, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(49, 34, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(50, 36, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(51, 37, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(52, 38, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(53, 39, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(54, 40, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(55, 41, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(56, 42, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(57, 44, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(58, 45, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(59, 46, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(60, 47, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(61, 48, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(62, 49, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(63, 50, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(64, 51, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(65, 52, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(66, 53, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(67, 54, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(68, 56, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(69, 57, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(70, 58, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(71, 59, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(72, 60, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(73, 61, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(74, 62, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(75, 63, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(76, 64, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(77, 65, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(78, 66, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(79, 67, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(80, 68, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(81, 69, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(82, 70, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(83, 71, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(84, 72, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(85, 73, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(86, 74, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(87, 75, 'Receptions', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(88, 76, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(89, 77, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(90, 78, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(91, 79, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(92, 80, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(93, 81, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(94, 82, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(95, 83, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(96, 84, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(97, 85, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(98, 86, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(99, 87, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(100, 88, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(101, 89, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(102, 90, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(103, 91, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(104, 92, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(105, 93, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(106, 94, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(107, 95, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(108, 96, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(109, 97, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(110, 98, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(111, 99, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(112, 100, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(113, 101, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(114, 102, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(115, 103, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(116, 104, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(117, 105, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(118, 107, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(119, 108, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(120, 109, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(121, 110, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(122, 111, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(123, 112, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(124, 114, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(125, 115, 'HR', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(126, 116, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(127, 117, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(128, 118, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(129, 119, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(130, 120, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(131, 121, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(132, 122, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(133, 123, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(134, 124, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(135, 125, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(136, 127, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(137, 128, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(138, 129, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(139, 130, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(140, 131, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(141, 132, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(142, 133, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(143, 134, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(144, 135, 'Account', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(145, 136, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(146, 137, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(147, 138, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(148, 139, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(149, 140, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(150, 141, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(151, 142, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(152, 143, 'TeamMember', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(153, 144, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(154, 145, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(155, 146, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(156, 147, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(157, 148, 'Other Staff', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(158, 149, '', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(160, 151, '', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(161, 152, '', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(162, 153, '', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(163, 154, '', '2023-09-13 10:40:37.000000', '0000-00-00 00:00:00.000000', '1', ''),
(164, 155, 'Admin', '2023-09-13 04:57:39.000000', '0000-00-00 00:00:00.000000', '1', ''),
(165, 155, 'Admin', '2023-09-13 04:58:30.000000', '0000-00-00 00:00:00.000000', '1', ''),
(166, 150, 'TeamMember', '2023-09-22 10:56:38.000000', '0000-00-00 00:00:00.000000', '1', ''),
(167, 0, 'Admin', '2023-09-24 04:07:42.000000', '0000-00-00 00:00:00.000000', '1', ''),
(168, 0, 'Digital', '2023-09-24 04:07:42.000000', '0000-00-00 00:00:00.000000', '1', ''),
(169, 156, 'HR', '2023-09-24 05:18:51.000000', '0000-00-00 00:00:00.000000', '1', ''),
(170, 156, 'CRM', '2023-09-24 05:18:51.000000', '0000-00-00 00:00:00.000000', '1', ''),
(174, 157, 'TeamMember', '2023-09-24 05:27:00.000000', '0000-00-00 00:00:00.000000', '1', ''),
(175, 157, 'HR', '2023-09-24 05:27:00.000000', '0000-00-00 00:00:00.000000', '1', ''),
(176, 156, '', '2023-09-28 10:43:24.000000', '0000-00-00 00:00:00.000000', '1', ''),
(177, 157, '', '2023-09-28 10:43:24.000000', '0000-00-00 00:00:00.000000', '1', ''),
(178, 158, 'Digital', '2024-01-22 03:16:00.000000', '0000-00-00 00:00:00.000000', '1', ''),
(179, 159, 'TeamMember', '2024-01-22 03:18:03.000000', '0000-00-00 00:00:00.000000', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `UserAddressId` int(100) NOT NULL,
  `UserAddressUserId` int(100) NOT NULL,
  `UserStreetAddress` varchar(10000) NOT NULL,
  `UserLocality` varchar(200) NOT NULL,
  `UserCity` varchar(200) NOT NULL,
  `UserState` varchar(200) NOT NULL,
  `UserCountry` varchar(200) NOT NULL,
  `UserPincode` varchar(200) NOT NULL,
  `UserAddressType` varchar(100) NOT NULL,
  `UserAddressContactPerson` varchar(1000) NOT NULL,
  `UserAddressNotes` varchar(1000) NOT NULL,
  `UserAddressMapUrl` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`UserAddressId`, `UserAddressUserId`, `UserStreetAddress`, `UserLocality`, `UserCity`, `UserState`, `UserCountry`, `UserPincode`, `UserAddressType`, `UserAddressContactPerson`, `UserAddressNotes`, `UserAddressMapUrl`) VALUES
(1, 156, 'Mollitia consequatur', 'Nostrud saepe quos s', 'Ut ex ea incididunt ', 'Sit id aut ex aliqua', 'Consequuntur tenetur', 'Eos animi aspernat', 'Office Address', 'Officiis eum amet v', '', ''),
(2, 157, 'Consequatur Ipsum ', 'Aspernatur praesenti', 'Dolor veniam sit n', 'Laborum rerum est qu', 'Ad voluptatum autem ', 'Perspiciatis aute f', 'Office Address', 'Enim a perferendis e', '', ''),
(3, 158, 'Voluptatem quis aspe', 'Voluptatum eius dign', 'Perspiciatis ex qui', 'Consequatur obcaecat', 'Quos tempora consequ', 'Velit commodo rerum ', 'Office Address', 'Pariatur Ab invento', '', ''),
(4, 159, '', '', '', '', '', '', 'Office Address', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_allowed_leaves`
--

CREATE TABLE `user_allowed_leaves` (
  `UserAllowedLeaveId` int(10) NOT NULL,
  `UserALMainUserId` int(10) NOT NULL,
  `UserAllowedLeaveYear` varchar(20) NOT NULL,
  `UserAllowedLeaveCreatedAt` varchar(25) NOT NULL,
  `UserAllowedLeaveCreatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_appraisals`
--

CREATE TABLE `user_appraisals` (
  `UserAppraisalId` int(10) NOT NULL,
  `UserAppraisalRefNo` varchar(100) NOT NULL,
  `UserAppraisalName` varchar(200) NOT NULL,
  `UserAppraisalMainUserId` int(10) NOT NULL,
  `UserAppraisalMessage` varchar(1000) NOT NULL,
  `UserAppraisalCreatedBy` varchar(10) NOT NULL,
  `UserAppraisalDate` varchar(40) NOT NULL,
  `UserAppraisalCreatedAt` varchar(40) NOT NULL,
  `UserAppraisalViewAt` varchar(100) NOT NULL,
  `UserAppraisalStatus` varchar(100) NOT NULL,
  `UserAppraisalUpdatedAt` varchar(100) NOT NULL,
  `UserAppraisalUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_attandance_check_in`
--

CREATE TABLE `user_attandance_check_in` (
  `check_in_id` int(100) NOT NULL,
  `check_in_main_user_id` int(10) NOT NULL,
  `check_in_location_longitude` varchar(50) NOT NULL,
  `check_in_location_latitude` varchar(50) NOT NULL,
  `check_in_date_time` varchar(50) NOT NULL,
  `check_in_ip_address` varchar(500) NOT NULL,
  `check_in_device_mac_address` varchar(500) NOT NULL,
  `check_in_device_info` varchar(10000) NOT NULL,
  `check_in_created_at` varchar(25) NOT NULL,
  `check_in_created_by` int(10) NOT NULL,
  `check_in_updated_at` varchar(25) NOT NULL,
  `check_in_update_by` int(10) NOT NULL,
  `check_in_status` varchar(100) NOT NULL,
  `check_in_distance` varchar(100) NOT NULL,
  `check_in_time_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_attandance_check_in`
--

INSERT INTO `user_attandance_check_in` (`check_in_id`, `check_in_main_user_id`, `check_in_location_longitude`, `check_in_location_latitude`, `check_in_date_time`, `check_in_ip_address`, `check_in_device_mac_address`, `check_in_device_info`, `check_in_created_at`, `check_in_created_by`, `check_in_updated_at`, `check_in_update_by`, `check_in_status`, `check_in_distance`, `check_in_time_status`) VALUES
(4, 157, '77.4037798', '28.4952551', '2023-09-28 01:30:12 PM', '::1', '', '\r\n    Date Time: Thu 28 Sep, 2023 01:09:12 pm\r\n    Page_Location: http://localhost/wealth-choice/handler/ModuleHandler.php\r\n    Ip-Address : ::1\r\n    Device Type : COMPUTER\r\n    Ipv6_P : Windows NT GSI-HP-2023 10.0 build 22631 (Windows 11) AMD64\r\n    OS : Windows NT\r\n    OS_RELEASE : 10.0\r\n    OS_VERSION : build 22631 (Windows 11)\r\n    System : AMD64\r\n    Host Name : GSI-HP-2023\r\n    System Information : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 01:30:12 PM', 157, '', 0, 'false', '13.281', 'LATE');

-- --------------------------------------------------------

--
-- Table structure for table `user_attandance_check_out`
--

CREATE TABLE `user_attandance_check_out` (
  `check_out_id` int(100) NOT NULL,
  `check_out_main_check_in_id` int(10) NOT NULL,
  `check_out_main_user_id` int(10) NOT NULL,
  `check_out_location_longitude` varchar(50) NOT NULL,
  `check_out_location_latitude` varchar(50) NOT NULL,
  `check_out_date_time` varchar(50) NOT NULL,
  `check_out_ip_address` varchar(255) NOT NULL,
  `check_out_device_mac_address` varchar(255) NOT NULL,
  `check_out_device_info` varchar(500) NOT NULL,
  `check_out_created_at` varchar(25) NOT NULL,
  `check_out_created_by` int(10) NOT NULL,
  `check_out_updated_at` varchar(25) NOT NULL,
  `check_out_updated_by` int(10) NOT NULL,
  `check_out_status` varchar(50) NOT NULL,
  `check_out_distance` varchar(50) NOT NULL,
  `check_out_time_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_attandance_check_out`
--

INSERT INTO `user_attandance_check_out` (`check_out_id`, `check_out_main_check_in_id`, `check_out_main_user_id`, `check_out_location_longitude`, `check_out_location_latitude`, `check_out_date_time`, `check_out_ip_address`, `check_out_device_mac_address`, `check_out_device_info`, `check_out_created_at`, `check_out_created_by`, `check_out_updated_at`, `check_out_updated_by`, `check_out_status`, `check_out_distance`, `check_out_time_status`) VALUES
(16, 4, 157, '77.4037798', '28.4952551', '2023-09-28 01:30:18 PM', '::1', '', '\r\n    Date Time: Thu 28 Sep, 2023 01:09:18 pm\r\n    Page_Location: http://localhost/wealth-choice/handler/ModuleHandler.php\r\n    Ip-Address : ::1\r\n    Device Type : COMPUTER\r\n    Ipv6_P : Windows NT GSI-HP-2023 10.0 build 22631 (Windows 11) AMD64\r\n    OS : Windows NT\r\n    OS_RELEASE : 10.0\r\n    OS_VERSION : build 22631 (Windows 11)\r\n    System : AMD64\r\n    Host Name : GSI-HP-2023\r\n    System Information : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.', '2023-09-28 01:30:18 PM', 157, '', 0, 'false', '13.281', 'HALF');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `UserBankDetailsId` int(100) NOT NULL,
  `UserMainId` varchar(100) NOT NULL,
  `UserBankName` varchar(100) NOT NULL,
  `UserBankAccountNo` varchar(100) NOT NULL,
  `UserBankIFSC` varchar(100) NOT NULL,
  `UserBankAccoundHolderName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_bank_details`
--

INSERT INTO `user_bank_details` (`UserBankDetailsId`, `UserMainId`, `UserBankName`, `UserBankAccountNo`, `UserBankIFSC`, `UserBankAccoundHolderName`) VALUES
(1, '156', 'Amity Workman', 'Est expedita tempore', 'Irure excepturi poss', 'Chandler Roth'),
(2, '157', 'Ayanna Mcfarland', 'Cumque dolores rerum', 'Mollit dolor molesti', 'Joy Burch'),
(3, '158', 'Yvette Mitchell', 'Quia dolores rerum a', 'Numquam repellendus', 'Kelly Vazquez'),
(4, '159', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_day_breaks`
--

CREATE TABLE `user_day_breaks` (
  `day_break_id` int(100) NOT NULL,
  `day_break_main_user_id` int(10) NOT NULL,
  `day_break_location_longitude` varchar(50) NOT NULL,
  `day_break_location_latitude` varchar(50) NOT NULL,
  `day_break_start_date_time` varchar(80) NOT NULL,
  `day_break_end_date_time` varchar(80) NOT NULL,
  `day_break_ip_address` varchar(255) NOT NULL,
  `day_break_device_info` varchar(1055) NOT NULL,
  `day_break_created_at` varchar(25) NOT NULL,
  `day_break_updated_at` varchar(25) NOT NULL,
  `day_break_created_by` int(11) NOT NULL,
  `day_break_updated_by` int(11) NOT NULL,
  `day_break_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `UserDocsId` int(100) NOT NULL,
  `UserMainId` varchar(100) NOT NULL,
  `UserDocumentNo` varchar(100) NOT NULL,
  `UserDocumentName` varchar(100) NOT NULL,
  `UserDocumentFile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_documents`
--

INSERT INTO `user_documents` (`UserDocsId`, `UserMainId`, `UserDocumentNo`, `UserDocumentName`, `UserDocumentFile`) VALUES
(1, '156', 'Cum molestiae ea par', 'PAN CARD', ''),
(2, '156', 'Quo reprehenderit ei', 'ADHAAR CARD', ''),
(3, '157', 'Tempor doloremque si', 'PAN CARD', ''),
(4, '157', 'Ipsum sint facilis v', 'ADHAAR CARD', ''),
(5, '158', 'Eos cillum quis fugi', 'PAN CARD', ''),
(6, '158', 'Quibusdam pariatur ', 'ADHAAR CARD', ''),
(7, '159', '', 'PAN CARD', ''),
(8, '159', '', 'ADHAAR CARD', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_employment_details`
--

CREATE TABLE `user_employment_details` (
  `UserEmpDetailsId` int(100) NOT NULL,
  `UserMainUserId` varchar(10) NOT NULL,
  `UserEmpBackGround` varchar(100) NOT NULL,
  `UserEmpTotalWorkExperience` varchar(100) NOT NULL,
  `UserEmpPreviousOrg` varchar(100) NOT NULL,
  `UserEmpBloodGroup` varchar(100) NOT NULL,
  `UserEmpReraId` varchar(100) NOT NULL,
  `UserEmpReportingMember` varchar(100) NOT NULL,
  `UserEmpJoinedId` varchar(100) NOT NULL,
  `UserEmpCRMStatus` varchar(100) NOT NULL,
  `UserEmpVisitingCard` varchar(100) NOT NULL,
  `UserEmpWorkEmailId` varchar(100) NOT NULL,
  `UserEmpGroupName` varchar(100) NOT NULL,
  `UserEmpType` varchar(100) NOT NULL,
  `UserEmpLocations` varchar(100) NOT NULL,
  `UserEmpRoleStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_employment_details`
--

INSERT INTO `user_employment_details` (`UserEmpDetailsId`, `UserMainUserId`, `UserEmpBackGround`, `UserEmpTotalWorkExperience`, `UserEmpPreviousOrg`, `UserEmpBloodGroup`, `UserEmpReraId`, `UserEmpReportingMember`, `UserEmpJoinedId`, `UserEmpCRMStatus`, `UserEmpVisitingCard`, `UserEmpWorkEmailId`, `UserEmpGroupName`, `UserEmpType`, `UserEmpLocations`, `UserEmpRoleStatus`) VALUES
(1, '156', 'Et mollit ea omnis e', 'Pariatur Non blandi', 'Ut facilis ratione n', 'A-', 'Cillum impedit quib', '0', '1', 'No', 'Yes', 'kerupyruta@mailinator.com', 'BH', '', '2', ''),
(2, '157', 'Ut dolore anim cupid', 'Excepturi ut tempore', 'Maxime illo vero ess', 'B+', 'Ducimus voluptas of', '156', '2', 'No', 'Yes', 'veruwo@mailinator.com', 'SM', '', '2', ''),
(3, '158', 'Et sunt est ullam vo', 'Rerum facilis soluta', 'Porro minus veritati', 'B+', 'Aliquam minus et eos', '157', '3', 'Yes', 'Yes', 'lelis@mailinator.com', 'SM', '', '1', ''),
(4, '159', '', '', '', 'Select Bloog Group', '', '1', '4', 'No', 'No', '', 'BH', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_family_members`
--

CREATE TABLE `user_family_members` (
  `UserFamilyMemberId` int(10) NOT NULL,
  `UserFMMainUserId` int(10) NOT NULL,
  `UserFamilyMemberName` varchar(50) NOT NULL,
  `UserFamilyMemberRelation` varchar(50) NOT NULL,
  `UserFamilyMemberPhoneNumber` varchar(15) NOT NULL,
  `UserFamilyMemberDateOfBirth` varchar(25) NOT NULL,
  `UserFamilyMemberCreatedAt` varchar(25) NOT NULL,
  `UserFamilyMemberUpdatedBy` int(10) NOT NULL,
  `UserFamilyUpdatedAt` varchar(25) NOT NULL,
  `UserFamilyMemberStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leaves`
--

CREATE TABLE `user_leaves` (
  `UserLeaveId` int(10) NOT NULL,
  `UserMainId` int(10) NOT NULL,
  `UserLeaveFromDate` varchar(40) NOT NULL,
  `UserLeaveToDate` varchar(40) NOT NULL,
  `UserLeaveReJoinDate` varchar(40) NOT NULL,
  `UserLeaveReason` varchar(1000) NOT NULL,
  `UserLeaveCreatedAt` varchar(40) NOT NULL,
  `UserLeaveCreatedBy` varchar(40) NOT NULL,
  `UserLeaveStatus` varchar(10) NOT NULL,
  `UserLeaveType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_attachments`
--

CREATE TABLE `user_leave_attachments` (
  `UserLeaveFileId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveAttachedFile` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_contact_nos`
--

CREATE TABLE `user_leave_contact_nos` (
  `UserLeaveContactId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveContactPersonName` varchar(50) NOT NULL,
  `UserLeaveContactPersonPhoneNumber` varchar(15) NOT NULL,
  `UserLeaveContactPersonAddress` varchar(255) NOT NULL,
  `UserLeaveContactPersonRelation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_status`
--

CREATE TABLE `user_leave_status` (
  `UserLeaveStatusId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveStatus` varchar(30) NOT NULL,
  `UserLeaveStatusAddedBy` int(10) NOT NULL,
  `UserLeaveStatusAddedAt` varchar(40) NOT NULL,
  `UserLeaveStatusRemarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_meetings`
--

CREATE TABLE `user_meetings` (
  `user_meeting_id` int(10) NOT NULL,
  `user_main_user_id` int(10) NOT NULL,
  `user_meeting_check_in_id` int(10) NOT NULL,
  `user_meeting_person_name` varchar(1000) NOT NULL,
  `user_meeting_phone_number` varchar(20) NOT NULL,
  `user_meeting_remarks` longtext NOT NULL,
  `user_meeting_date` varchar(40) NOT NULL,
  `user_meeting_created_at` varchar(40) NOT NULL,
  `user_meeting_created_by` int(10) NOT NULL,
  `user_meeting_updated_at` varchar(40) NOT NULL,
  `user_meeting_updated_by` int(10) NOT NULL,
  `user_meeting_status` varchar(10) NOT NULL,
  `user_meeting_start_at` varchar(50) NOT NULL,
  `user_meeting_ended_at` varchar(50) NOT NULL,
  `user_meeting_email_id` varchar(400) NOT NULL,
  `user_meeting_response` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_password_change_requests`
--

CREATE TABLE `user_password_change_requests` (
  `PasswordChangeReqId` int(100) NOT NULL,
  `UserIdForPasswordChange` varchar(1000) NOT NULL,
  `PasswordChangeToken` varchar(1000) NOT NULL,
  `PasswordChangeTokenExpireTime` varchar(1000) NOT NULL,
  `PasswordChangeDeviceDetails` varchar(10000) NOT NULL,
  `PasswordChangeRequestStatus` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `UserPermissionsId` int(100) NOT NULL,
  `UserPermissionUserId` int(100) NOT NULL,
  `UserPermissionForAccess` varchar(500) NOT NULL,
  `UserPermissions` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_pips`
--

CREATE TABLE `user_pips` (
  `UserPipId` int(10) NOT NULL,
  `UserPIPRefNo` varchar(100) NOT NULL,
  `UserPIPMainUserId` varchar(10) NOT NULL,
  `UserPIPSubjectName` varchar(255) NOT NULL,
  `UserPIPMessage` longtext NOT NULL,
  `UserPIPCreatedAt` varchar(40) NOT NULL,
  `UserPIPUpdatedAt` varchar(40) NOT NULL,
  `UserPIPCreatedBy` varchar(10) NOT NULL,
  `UserPIPEmailStatus` varchar(10) NOT NULL,
  `UserPIPUpdatedBy` varchar(10) NOT NULL,
  `UserPipStatus` varchar(10) NOT NULL,
  `UserPIPReadAt` varchar(25) NOT NULL,
  `UserPipDocuments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_rewards`
--

CREATE TABLE `user_rewards` (
  `RewardsId` int(10) NOT NULL,
  `RewardRefNo` varchar(100) NOT NULL,
  `RewardName` varchar(1000) NOT NULL,
  `RewardMainUserId` int(10) NOT NULL,
  `RewardAttachedCreative` varchar(1000) NOT NULL,
  `RewardCreatedAt` varchar(40) NOT NULL,
  `RewardReceiveDate` varchar(40) NOT NULL,
  `RewardCreatedBy` varchar(10) NOT NULL,
  `RewardStatus` varchar(10) NOT NULL,
  `RewardMessage` longtext NOT NULL,
  `RewardUpdatedAt` varchar(100) NOT NULL,
  `RewardUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `VisitorId` int(100) NOT NULL,
  `VisitorPersonName` varchar(100) NOT NULL,
  `VisitorPersonPhone` varchar(100) NOT NULL,
  `VisitorPersonEmailId` varchar(100) NOT NULL,
  `VisitPurpose` varchar(100) NOT NULL,
  `VisitPesonMeetWith` varchar(100) NOT NULL,
  `VisitPersonType` varchar(100) NOT NULL,
  `VisitPeronsDescription` varchar(10000) NOT NULL,
  `VisitPersonCreatedAt` varchar(100) NOT NULL,
  `VisitPersonUpdatedAt` varchar(100) NOT NULL,
  `VisitEnquiryStatus` varchar(50) NOT NULL,
  `VisitEntryCreatedBy` varchar(50) NOT NULL,
  `VisitorOutTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`VisitorId`, `VisitorPersonName`, `VisitorPersonPhone`, `VisitorPersonEmailId`, `VisitPurpose`, `VisitPesonMeetWith`, `VisitPersonType`, `VisitPeronsDescription`, `VisitPersonCreatedAt`, `VisitPersonUpdatedAt`, `VisitEnquiryStatus`, `VisitEntryCreatedBy`, `VisitorOutTime`) VALUES
(4, 'Sajal Yadav', '8221831106', 'sjlydvonly@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'ZmFqRllBTTFFZEs3THZTT0lTenlmYmtHT3NiYVY2RVRqbGRFTng0cXRNdz0=', '2022-12-22 03:12:40 PM', '2022-12-22 03:12:07 PM', 'Jobs &amp; Interview', '75', ''),
(5, 'Ashish Kumar', '9582015202', 'ashishdixit060@gmail.com', 'Joinee', '4', 'Job &amp; Interview ', 'RUtiLzNlSE5GYi82d0MwZGEycEhkMlFBazFsbENmRzllYm8zMU4wdmZtcz0=', '2022-12-22 03:12:45 PM', '2022-12-22 05:12:32 PM', 'Approved', '75', ''),
(6, 'Deepanshi Ahuja', '9873005490', '', 'Meeting ', '5', 'General Enquiry', 'R2REcTNqVDF0c2dhUXo4RDBwclZFdz09', '2022-12-22 04:12:59 PM', '2022-12-22 05:12:16 PM', 'NEW', '75', ''),
(7, 'Preeti', '9871262410', 'pk958891@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'ZmFqRllBTTFFZEs3THZTT0lTenlmYmtHT3NiYVY2RVRqbGRFTng0cXRNdz0=', '2022-12-23 12:12:22 PM', '2023-01-02 04:01:56 PM', 'Approved', '4', ''),
(8, 'Pooja', '9971579503', 'parulverma7456@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2022-12-23 12:12:20 PM', '2023-01-02 04:01:48 PM', 'Approved', '4', ''),
(9, 'Deepanshi', '9873005480', '', 'Interview', '3', 'Job &amp; Interview ', 'K0RPMjVqSlEyRG5KekxjQ3VBTDNRUT09', '2022-12-23 01:12:22 PM', '2023-01-21 05:01:31 PM', 'Please Wait', '3', ''),
(10, 'Deepanshi', '9873005480', '', 'Interview', '3', 'Job &amp; Interview ', 'K0RPMjVqSlEyRG5KekxjQ3VBTDNRUT09', '2022-12-23 01:12:23 PM', '2023-01-21 05:01:19 PM', 'Please Wait', '3', ''),
(11, 'Unknown', '8565264589', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2022-12-23 01:12:51 PM', '2023-01-02 04:01:39 PM', 'Approved', '4', ''),
(12, 'Shubham Sharma', '8684048053', 'shubhamjisharma@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'cWxjS0dYVDVGcE9oc0x4NlBrYmRmdz09', '2022-12-24 12:12:25 PM', '2023-01-02 04:01:30 PM', 'Approved', '4', ''),
(13, 'Shivani', '9560645119', 'shivaninegi@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'cWxjS0dYVDVGcE9oc0x4NlBrYmRmdz09', '2022-12-24 12:12:05 PM', '2023-01-02 04:01:21 PM', 'Approved', '4', ''),
(14, 'Shivani', '9560645119', 'shivaninegi@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'cWxjS0dYVDVGcE9oc0x4NlBrYmRmdz09', '2022-12-24 12:12:05 PM', '2023-01-02 04:01:12 PM', 'Approved', '4', ''),
(15, 'Abhishek Rawat', '98711 78909', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2022-12-24 03:12:10 PM', '2023-01-02 04:01:03 PM', 'Approved', '4', ''),
(16, 'Balwinder', '9467070175', '', 'Courier from Versha', '13', 'Courier', 'NWxvR1RsYU1kVFVpbGViZXo4b0hPZz09', '2022-12-27 03:12:08 PM', '2023-02-02 03:02:27 PM', 'Approved', '75', ''),
(17, 'Mr.Bhavesh', '9711837612', '', 'Meeting', '0', 'General Enquiry', 'QkJHc3hnZENKZTZxNm9SYzFnUm1KZz09', '2022-12-27 04:12:55 PM', '2022-12-27 04:12:55 PM', 'NEW', '75', ''),
(18, 'Neha ', '9930097549', '', 'Meeting ', '0', 'General Enquiry', 'ZzdFU1RyeGN3Ymc4WStyMUpJaUlGOHJ1RXMzcEZHT3V4TjEwUkFiRlZRbz0=', '2022-12-30 02:12:00 PM', '2023-01-04 01:01:00 PM', 'NEW', '75', ''),
(19, 'Sanjay', '9205858558', '', 'Meetiing ', '0', 'General Enquiry', 'K2ptOHoyakU0UG1GM2U1Y0N0NFJ6V09rZ0hWLy9sU3JodDZlc2d6OG80Yz0=', '2022-12-30 05:12:02 PM', '2022-12-30 05:12:02 PM', 'NEW', '', ''),
(20, 'Sanjay', '9205858558', '', 'Meetiing ', '0', 'General Enquiry', 'K2ptOHoyakU0UG1GM2U1Y0N0NFJ6V09rZ0hWLy9sU3JodDZlc2d6OG80Yz0=', '2022-12-30 05:12:02 PM', '2022-12-30 05:12:02 PM', 'NEW', '', ''),
(21, 'Sanjay', '9205858558', '', 'Meetiing ', '0', 'General Enquiry', 'K2ptOHoyakU0UG1GM2U1Y0N0NFJ6V09rZ0hWLy9sU3JodDZlc2d6OG80Yz0=', '2022-12-30 05:12:03 PM', '2022-12-30 05:12:03 PM', 'NEW', '', ''),
(22, 'Sanjay', '9205858558', '', 'Meetiing ', '0', 'General Enquiry', 'K2ptOHoyakU0UG1GM2U1Y0N0NFJ6V09rZ0hWLy9sU3JodDZlc2d6OG80Yz0=', '2022-12-30 05:12:04 PM', '2022-12-30 05:12:04 PM', 'NEW', '', ''),
(23, 'Sanjay', '9205858558', '', 'Meetiing  with lokesh sir ', '0', 'General Enquiry', 'K2ptOHoyakU0UG1GM2U1Y0N0NFJ6V09rZ0hWLy9sU3JodDZlc2d6OG80Yz0=', '2022-12-30 05:12:04 PM', '2023-01-04 01:01:38 PM', 'NEW', '75', ''),
(24, 'Divya ', '7408084270', 'mauryadivya44@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-03 01:01:51 PM', '2023-01-06 01:01:56 PM', 'Approved', '4', ''),
(25, 'Divya ', '7408084270', 'mauryadivya44@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-03 01:01:52 PM', '2023-01-06 01:01:48 PM', 'Approved', '4', ''),
(26, 'Divya ', '7408084270', 'mauryadivya44@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-03 01:01:53 PM', '2023-01-06 01:01:29 PM', 'Approved', '4', ''),
(27, 'Mr Mitesh  Ahuja', '9899715140', '', 'Meeting  with lokesh sir ', '0', 'General Enquiry', 'ZDNDV0NqRjNDZkpEa05UNkRhYmZtTWhEbUdSWlFhQ2RuWjVuQ093c2dyND0=', '2023-01-04 01:01:04 PM', '2023-02-02 06:02:33 PM', 'Approved', '75', ''),
(28, 'Naresh tanwar', '7014476894', '', 'Meeting', '0', 'General Enquiry', 'OFpLMzdNN1luSmRYeTRWZThGVG5jZFhrSzFpWDk1c3Zwc1JFaE9EQ2lwYjU0Y2hxc1JzVlJ3aERPTkVCM2lrRQ==', '2023-01-04 02:01:20 PM', '2023-01-04 02:01:20 PM', 'NEW', '75', ''),
(29, 'Mr. vikar arya', '9560701800', '', 'Meeting ', '0', 'General Enquiry', 'OFpLMzdNN1luSmRYeTRWZThGVG5jWlF3YURyTHB2WlM2NmMvN25KTHAvdz0=', '2023-01-06 11:01:21 AM', '2023-01-06 01:01:07 PM', 'NEW', '75', '13:46'),
(30, 'Parveen', '8802318441', '', 'Meeting ', '0', 'General Enquiry', 'S3dDeG0xTnRrRkFUZWE4TitndjdyZz09', '2023-01-10 01:01:54 PM', '2023-01-10 01:01:54 PM', 'NEW', '75', ''),
(31, 'Rohan Jhamb', '9717020280', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-10 01:01:06 PM', '2023-01-18 12:01:32 PM', 'Please Wait', '4', ''),
(32, 'Deepak', '9817669891', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-10 01:01:44 PM', '2023-01-18 12:01:24 PM', 'Please Wait', '4', ''),
(33, 'Parveen', '852745390', '', 'Meeting', '0', 'General Enquiry', 'YnQ1QndOR0Y0TUpsUEFtbFpOeERIZz09', '2023-01-10 02:01:58 PM', '2023-01-10 02:01:58 PM', 'NEW', '75', ''),
(34, 'Ritika bhargav', '7428961407', 'ritikabhargav439@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-12 11:01:40 AM', '2023-01-18 12:01:18 PM', 'Please Wait', '4', ''),
(35, 'Pankaj', '8368700051', 'reepan20@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-17 01:01:41 PM', '2023-01-18 12:01:12 PM', 'Please Wait', '4', ''),
(36, 'Rahul yadav', '9560255704', 'yrahul240796@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'VVpDR0Z0K2ltV3VNT1hQTHJDd212QT09', '2023-01-18 04:01:32 PM', '2023-01-19 01:01:57 PM', 'Please Wait', '4', ''),
(37, 'keshav', '9992500459', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-19 02:01:22 PM', '2023-01-19 06:01:39 PM', 'Please Wait', '4', ''),
(38, 'Rachit ', '9690360822', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-01-22 04:01:06 PM', '2023-01-25 03:01:24 PM', 'Please Wait', '4', ''),
(39, 'Vikas rastogi', '7983070792', '', 'Interview', '4', 'Job &amp; Interview ', 'cWxjS0dYVDVGcE9oc0x4NlBrYmRmdz09', '2023-01-22 04:01:02 PM', '2023-01-25 03:01:12 PM', 'Please Wait', '4', ''),
(40, 'Hemant meena', '8562810084', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-01-28 11:01:14 AM', '2023-01-29 10:01:15 AM', 'Please Wait', '4', ''),
(41, 'Mustafa alam', '98124 25332', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 04:02:05 PM', '2023-02-02 06:02:59 PM', 'Approved', '4', ''),
(42, 'vishal tiwari', '8851760690', '', 'interview', '4', 'Job &amp; Interview ', 'QVAxb0NwSWRKbTd6N3ZjUENoekRxUT09', '2023-02-02 05:02:33 PM', '2023-02-02 06:02:51 PM', 'Approved', '4', ''),
(43, 'Tarun kapoor', '9811607104', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:46 PM', '2023-02-02 06:02:42 PM', 'Approved', '4', ''),
(44, 'vikas tanwar', '9992543066', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:46 PM', '2023-02-02 06:02:33 PM', 'Approved', '4', ''),
(45, 'Saurabh Mishra', '9953570497', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:23 PM', '2023-02-02 06:02:25 PM', 'Approved', '4', ''),
(46, 'Ankur Yaduvanshi', '8010324266', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:07 PM', '2023-02-02 06:02:15 PM', 'Approved', '4', ''),
(47, 'vinay gupta', '8700625147', '', 'interivew', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:03 PM', '2023-02-02 06:02:06 PM', 'Approved', '4', ''),
(48, 'nishant kumar verma', '9643568973', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:39 PM', '2023-02-02 06:02:55 PM', 'Approved', '4', ''),
(49, 'Anshu kinchi', '9873381695', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:11 PM', '2023-02-02 06:02:42 PM', 'Approved', '4', ''),
(50, 'Mona', '9315992780', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:23 PM', '2023-02-02 06:02:32 PM', 'Approved', '4', ''),
(51, 'Pooja', '8377023458', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:00 PM', '2023-02-02 06:02:22 PM', 'Approved', '4', ''),
(52, 'Nikitaraj', '8604745592', '', 'Interview', '4', 'Job &amp; Interview ', 'ODk2SGVVdEhWYlVuZFNwejFGTU1WZz09', '2023-02-02 05:02:45 PM', '2023-02-02 06:02:12 PM', 'Approved', '4', ''),
(53, 'deepika', '9870279881', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:24 PM', '2023-02-02 06:02:44 PM', 'Approved', '4', ''),
(54, 'Laxman kumar', '9871218039', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:07 PM', '2023-02-02 06:02:34 PM', 'Approved', '4', ''),
(55, 'chhaya bansal', '7838681263', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:51 PM', '2023-02-02 06:02:23 PM', 'Approved', '4', ''),
(56, 'Dheeraj singh', '9810582916', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:26 PM', '2023-02-02 06:02:03 PM', 'Approved', '4', ''),
(57, 'Divya kumari', '7408084270', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:04 PM', '2023-02-02 06:02:55 PM', 'Approved', '4', ''),
(58, 'pooja yadav', '8118899231', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:19 PM', '2023-02-02 06:02:46 PM', 'Approved', '4', ''),
(59, 'Tausif khan', '9555464710', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:26 PM', '2023-02-02 06:02:36 PM', 'Approved', '4', ''),
(60, 'himanshu rohila', '9650032824', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:01 PM', '2023-02-02 06:02:43 PM', 'Approved', '4', ''),
(61, 'pradeep kumar', '7508204723', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:35 PM', '2023-02-02 06:02:34 PM', 'Approved', '4', ''),
(62, 'anubhav', '8430133303', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:06 PM', '2023-02-02 06:02:24 PM', 'Approved', '4', ''),
(63, 'anubhav', '8430133303', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:07 PM', '2023-02-02 06:02:13 PM', 'Approved', '4', ''),
(64, 'arvind kumar', '8295817149', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:47 PM', '2023-02-02 06:02:04 PM', 'Approved', '4', ''),
(65, 'Shivani pal', '9258496935', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:24 PM', '2023-02-02 06:02:56 PM', 'Approved', '4', ''),
(66, 'abhishek', '9313926653', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:03 PM', '2023-02-02 06:02:47 PM', 'Approved', '4', ''),
(67, 'Raj singh', '7906310722', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:31 PM', '2023-02-02 06:02:37 PM', 'Approved', '4', ''),
(68, 'deepak', '9817669891', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:39 PM', '2023-02-02 05:02:07 PM', 'Approved', '4', ''),
(69, 'ravi yadav', '9350044593', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-02 05:02:27 PM', '2023-02-02 05:02:57 PM', 'Approved', '4', ''),
(70, 'indrakshi', '9836296070', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-02 05:02:07 PM', '2023-02-02 05:02:48 PM', 'Approved', '4', ''),
(71, 'bharat rai', '7017248588', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-07 11:02:57 AM', '2023-02-07 04:02:42 PM', 'Approved', '4', ''),
(72, 'Jainav', '7536836535', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-07 01:02:53 PM', '2023-02-07 04:02:37 PM', 'Approved', '4', ''),
(73, 'Jainav', '7536836535', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-07 01:02:54 PM', '2023-02-07 04:02:32 PM', 'Approved', '4', ''),
(74, 'Jainav', '7536836535', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-07 01:02:55 PM', '2023-02-07 04:02:27 PM', 'Approved', '4', ''),
(75, 'Abhishek', '8738017295', 'abc@gmail.com', 'Meeting', '87', 'General Enquiry', 'dXIvWURDZjByTk9PZDVXaGVWSG9hUT09', '2023-02-22 01:02:06 PM', '2023-02-22 03:02:04 PM', 'Approved', '87', ''),
(76, 'Mohini', '9129156627', 'mohinikumari9129156627@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'bWt4elFSQ3d6WEZTcnFYNzNBTi9zZz09', '2023-02-24 06:16:09 PM', '2023-02-24 06:26:50 PM', 'Approved', '4', ''),
(77, 'Parveen bhati', '9873772404', 'parveenbhati008@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-24 06:19:05 PM', '2023-02-24 06:26:41 PM', 'Approved', '4', ''),
(78, 'Parul mehta', '7988235688', 'parulmehta2799@gmail.com', 'interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-24 06:20:28 PM', '2023-02-24 06:26:33 PM', 'Approved', '4', ''),
(79, 'Ashutosh', '8851306009', 'kashutosh999.ak@gmail.com', 'in`', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-24 06:24:21 PM', '2023-02-24 06:26:27 PM', 'Approved', '4', ''),
(80, 'Dharamveer', '9350512323', 'dharamveerberagil1999@gmail.com', 'interivew', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-24 06:25:48 PM', '2023-02-24 06:26:15 PM', 'Approved', '4', ''),
(81, 'neelam pandey', '8319650784', 'pandayneelam1993@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-26 04:02:11 PM', '2023-02-26 06:27:30 PM', 'Approved', '4', ''),
(82, 'Khushboo Singh', '7683044650', 'jivatulip.027@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-26 04:03:12 PM', '2023-02-26 06:27:23 PM', 'Approved', '4', ''),
(83, 'yaman duggal', '9871129703', 'yamanduggal98@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-26 04:04:38 PM', '2023-02-26 06:27:17 PM', 'Approved', '4', ''),
(84, 'Rupa chourasia', '7838921645', 'rupachourasia2000@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-02-26 04:06:14 PM', '2023-02-26 06:27:39 PM', 'Approved', '4', ''),
(85, 'anshu khattar', '9254074942', 'anshukhattar01@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-02-26 04:07:51 PM', '2023-02-26 06:26:39 PM', 'Approved', '4', ''),
(86, 'Ketan. D vora', '9833373720', '', 'Courier fron Ketan D vora ', '0', 'Courier', 'dkNHVlQzbUZsRks4UVNtbXhqOC84Zz09', '2023-03-02 01:53:56 PM', '2023-03-02 01:53:56 PM', 'NEW', '75', ''),
(87, 'Vishal kumar yadav', '6306122695', 'vy693157@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-09 03:46:35 PM', '2023-03-10 11:30:17 AM', 'Approved', '4', ''),
(88, 'Rahil khan', '7983343128', 'rahilkhan49709@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-09 03:47:27 PM', '2023-03-10 11:30:10 AM', 'Approved', '4', ''),
(89, 'Aman Khan', '7906281398', 'amankhan956867@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-09 03:48:30 PM', '2023-03-10 11:30:31 AM', 'Approved', '4', ''),
(90, 'Radheshyam swami', '9310957154', 'rajaswamisuni@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-09 03:55:27 PM', '2023-03-10 11:30:24 AM', 'Approved', '4', ''),
(91, 'sumit ', '9541870045', 'sumitdala1664@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-03-09 03:56:30 PM', '2023-03-10 11:30:39 AM', 'Approved', '4', ''),
(92, 'hemant ', '9717718517', 'hemantmanesar@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'U21TSWJ5VlF2RDlKWEFLZ3A2NWYrUT09', '2023-03-15 03:38:08 PM', '2023-03-15 04:46:30 PM', 'Approved', '4', ''),
(93, 'alok singh', '9569779131', 'singhalok6104@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-03-15 03:39:04 PM', '2023-03-15 04:46:24 PM', 'Approved', '4', ''),
(94, 'Jyoti tagra', '8209133787', 'jyoti.tagra911@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-03-15 03:40:07 PM', '2023-03-15 04:46:34 PM', 'Approved', '4', ''),
(95, 'simran ansari', '9548389919', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-15 03:41:37 PM', '2023-03-15 04:46:18 PM', 'Approved', '4', ''),
(96, 'simran ansari', '9548389919', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-15 03:41:42 PM', '2023-03-15 04:46:14 PM', 'Approved', '4', ''),
(97, 'indu kumari', '7015768174', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-15 03:42:25 PM', '2023-03-15 04:46:39 PM', 'Approved', '4', ''),
(98, 'siddhart', '9996675604', 'sidsunariya08@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'cWxjS0dYVDVGcE9oc0x4NlBrYmRmdz09', '2023-03-18 01:06:39 PM', '2023-03-21 12:27:27 PM', 'Approved', '75', ''),
(99, 'Manish', '9315146042', 'singhmanish9634@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-18 01:15:30 PM', '2023-03-19 04:42:22 PM', 'Approved', '4', ''),
(100, 'prabhjot', '7015687409', 'oahwa.money@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-18 01:45:28 PM', '2023-03-21 12:28:04 PM', 'Approved', '75', ''),
(101, 'prabhjot', '7015687409', 'oahwa.money@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-18 01:45:28 PM', '2023-03-21 12:27:56 PM', 'Approved', '75', ''),
(102, 'prabhjot', '7015687409', 'oahwa.money@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-18 01:45:29 PM', '2023-03-21 12:26:45 PM', 'Approved', '75', ''),
(103, 'KAVYANSH PRATAP SINGH', '8218932212', '', 'interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-21 12:12:54 PM', '2023-03-21 02:23:18 PM', 'Approved', '75', ''),
(104, 'akash nagpal ', '7015082566', 'akashnagpal94@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-21 02:14:53 PM', '2023-03-21 03:47:23 PM', 'Approved', '4', ''),
(105, 'Nidhi Nagpal', '8920158669', 'nidhi.nagpal.del@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-22 01:01:25 PM', '2023-03-22 01:01:39 PM', 'Approved', '4', ''),
(106, 'Harsh Jaiswal', '7355473011', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-22 05:34:47 PM', '2023-03-23 11:36:55 AM', 'Approved', '4', ''),
(107, 'Manish', '8178584890', 'manishvarma1305@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-03-28 03:23:57 PM', '2023-03-28 03:32:58 PM', 'Approved', '4', ''),
(108, 'Sumit Kumar', '828110303', 'kumarsumit1189@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:40:49 PM', '2023-04-01 03:22:37 PM', 'Approved', '4', ''),
(109, 'Rahul Singh', '9027623765', 'singhrahul26803@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:42:22 PM', '2023-04-01 03:22:43 PM', 'Approved', '4', ''),
(110, 'Anil jhakar', '9650063219', 'jaatanil.0890@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:43:05 PM', '2023-04-01 03:22:31 PM', 'Approved', '4', ''),
(111, 'Vikas Kumar', '9852703172', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:44:10 PM', '2023-04-01 03:22:10 PM', 'Approved', '4', ''),
(112, 'guddi kumari', '9910719631', 'kguddi416@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:45:01 PM', '2023-04-01 03:22:49 PM', 'Approved', '4', ''),
(113, 'srishti bisht', '9319680292', 'bissroshti@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:45:59 PM', '2023-04-01 03:22:54 PM', 'Approved', '4', ''),
(114, 'Muskan Yadav', '8929679181', 'muskany468@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:46:44 PM', '2023-04-01 03:22:59 PM', 'Approved', '4', ''),
(115, 'naveen', '9599668890', 'naveenrao003003@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:47:31 PM', '2023-04-01 03:22:23 PM', 'Approved', '4', ''),
(116, 'Gyanendra', '9368595118', 'dhruvchoudhary124578@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:48:24 PM', '2023-04-01 03:22:16 PM', 'Approved', '4', ''),
(117, 'prerna', '7988991220', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:49:09 PM', '2023-04-01 03:22:02 PM', 'Approved', '4', ''),
(118, 'Vikash kumar', '9523364171', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-01 12:51:01 PM', '2023-04-01 03:21:56 PM', 'Approved', '4', ''),
(119, 'Shweta singh', '8102031397', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-04-01 12:51:39 PM', '2023-04-01 03:21:50 PM', 'Approved', '4', ''),
(120, 'Shubham Kumar Dubey ', '9088694031 ', 'myasus237@gmail.com', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-04-01 12:54:31 PM', '2023-04-01 03:21:15 PM', 'Approved', '4', ''),
(121, 'Monica', '9971304984', '', 'Interview', '4', 'Job &amp; Interview ', 'L244aWhXWjJzR1E3cy9zTUxJZmZxdz09', '2023-04-07 12:01:46 PM', '2023-04-23 04:04:53 pm', 'Approved', '4', ''),
(122, 'Ashmit Goyal', '9560950487', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-09 02:23:57 PM', '2023-04-23 04:04:45 pm', 'Approved', '4', ''),
(123, 'Urvasshi', '9871980916', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-25 03:43:01 pm', '2023-04-25 03:43:01 pm', 'NEW', '75', ''),
(124, 'jitesh', '8502069963', '', 'Interview', '4', 'Job &amp; Interview ', 'WnF3Uzhmd1BRNFhMSkVTQ0kyWXV6dz09', '2023-04-25 03:43:52 pm', '2023-04-25 03:43:52 pm', 'NEW', '75', ''),
(125, 'Mr Manoj', ' 98187 08280', 'abc@abc.com', 'Official', '0', 'Payment ', 'YlYyYUpkQlJBbUw0aFQ3em1OYXUwaHNBUFgwUjRueWNVSDZwazUyRUVBbz0=', '2023-07-25 03:38:15 pm', '2023-07-25 03:38:15 pm', 'NEW', '84', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agriculture_leads`
--
ALTER TABLE `agriculture_leads`
  ADD PRIMARY KEY (`Agriculture_LeadId`);

--
-- Indexes for table `app_quotes`
--
ALTER TABLE `app_quotes`
  ADD PRIMARY KEY (`AppQuotesId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`AssetsId`);

--
-- Indexes for table `assets_issued`
--
ALTER TABLE `assets_issued`
  ADD PRIMARY KEY (`AssetsMoveId`);

--
-- Indexes for table `assets_returned`
--
ALTER TABLE `assets_returned`
  ADD PRIMARY KEY (`AssetsReturnedId`);

--
-- Indexes for table `authenticationkey`
--
ALTER TABLE `authenticationkey`
  ADD PRIMARY KEY (`AuthenticationId`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `booking_refunds`
--
ALTER TABLE `booking_refunds`
  ADD PRIMARY KEY (`BookingRefundId`);

--
-- Indexes for table `booking_refund_documents`
--
ALTER TABLE `booking_refund_documents`
  ADD PRIMARY KEY (`BookingRefundDocId`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ChatId`);

--
-- Indexes for table `chat_attachements`
--
ALTER TABLE `chat_attachements`
  ADD PRIMARY KEY (`ChatAttachId`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`ChatMessageId`);

--
-- Indexes for table `circulars`
--
ALTER TABLE `circulars`
  ADD PRIMARY KEY (`CircularId`);

--
-- Indexes for table `circular_files`
--
ALTER TABLE `circular_files`
  ADD PRIMARY KEY (`CircularFileId`);

--
-- Indexes for table `circular_status`
--
ALTER TABLE `circular_status`
  ADD PRIMARY KEY (`CircularStatusId`);

--
-- Indexes for table `comaigns`
--
ALTER TABLE `comaigns`
  ADD PRIMARY KEY (`ComaignId`);

--
-- Indexes for table `commercial_leads`
--
ALTER TABLE `commercial_leads`
  ADD PRIMARY KEY (`Commercial_LeadId`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`PolicyId`);

--
-- Indexes for table `company_policy_applicable_on`
--
ALTER TABLE `company_policy_applicable_on`
  ADD PRIMARY KEY (`ApplicableId`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`ConfigsId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configurationsid`);

--
-- Indexes for table `config_holidays`
--
ALTER TABLE `config_holidays`
  ADD PRIMARY KEY (`ConfigHolidayid`);

--
-- Indexes for table `config_locations`
--
ALTER TABLE `config_locations`
  ADD PRIMARY KEY (`config_location_id`);

--
-- Indexes for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  ADD PRIMARY KEY (`config_mail_sender_id`);

--
-- Indexes for table `config_modules`
--
ALTER TABLE `config_modules`
  ADD PRIMARY KEY (`ConfigModuleId`);

--
-- Indexes for table `config_payroll_allowances`
--
ALTER TABLE `config_payroll_allowances`
  ADD PRIMARY KEY (`payroll_allowance_id`);

--
-- Indexes for table `config_payroll_allowance_for_users`
--
ALTER TABLE `config_payroll_allowance_for_users`
  ADD PRIMARY KEY (`payroll_allowance_for_emps_id`);

--
-- Indexes for table `config_payroll_deductions`
--
ALTER TABLE `config_payroll_deductions`
  ADD PRIMARY KEY (`payroll_deduction_id`);

--
-- Indexes for table `config_payroll_deductions_for_users`
--
ALTER TABLE `config_payroll_deductions_for_users`
  ADD PRIMARY KEY (`payroll_deductions_for_users_id`);

--
-- Indexes for table `config_pgs`
--
ALTER TABLE `config_pgs`
  ADD PRIMARY KEY (`ConfigPgId`);

--
-- Indexes for table `config_values`
--
ALTER TABLE `config_values`
  ADD PRIMARY KEY (`ConfigValueId`);

--
-- Indexes for table `creatives`
--
ALTER TABLE `creatives`
  ADD PRIMARY KEY (`CreativeId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`CustAddressId`);

--
-- Indexes for table `customer_co_address_details`
--
ALTER TABLE `customer_co_address_details`
  ADD PRIMARY KEY (`CustomerCoAddressId`);

--
-- Indexes for table `customer_co_details`
--
ALTER TABLE `customer_co_details`
  ADD PRIMARY KEY (`CustCoId`);

--
-- Indexes for table `customer_co_documents`
--
ALTER TABLE `customer_co_documents`
  ADD PRIMARY KEY (`CustomerCoDocId`);

--
-- Indexes for table `customer_documents`
--
ALTER TABLE `customer_documents`
  ADD PRIMARY KEY (`CustomerDocumentId`);

--
-- Indexes for table `customer_nominees`
--
ALTER TABLE `customer_nominees`
  ADD PRIMARY KEY (`CustNomineeId`);

--
-- Indexes for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  ADD PRIMARY KEY (`CustomerNotificationId`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`DataId`);

--
-- Indexes for table `data_leads`
--
ALTER TABLE `data_leads`
  ADD PRIMARY KEY (`DataId`);

--
-- Indexes for table `data_lead_followups`
--
ALTER TABLE `data_lead_followups`
  ADD PRIMARY KEY (`DataFollowUpId`);

--
-- Indexes for table `data_lead_followup_durations`
--
ALTER TABLE `data_lead_followup_durations`
  ADD PRIMARY KEY (`DatacallId`);

--
-- Indexes for table `data_lead_requirements`
--
ALTER TABLE `data_lead_requirements`
  ADD PRIMARY KEY (`DataRequirementID`);

--
-- Indexes for table `data_lead_uploads`
--
ALTER TABLE `data_lead_uploads`
  ADD PRIMARY KEY (`DataUploadId`);

--
-- Indexes for table `data_transfer`
--
ALTER TABLE `data_transfer`
  ADD PRIMARY KEY (`transferId`);

--
-- Indexes for table `expanses`
--
ALTER TABLE `expanses`
  ADD PRIMARY KEY (`ExpansesId`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`LeadsId`);

--
-- Indexes for table `lead_followups`
--
ALTER TABLE `lead_followups`
  ADD PRIMARY KEY (`LeadFollowUpId`);

--
-- Indexes for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  ADD PRIMARY KEY (`leadcallId`);

--
-- Indexes for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  ADD PRIMARY KEY (`LeadRequirementID`);

--
-- Indexes for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  ADD PRIMARY KEY (`leadsUploadId`);

--
-- Indexes for table `marketing_collaterals`
--
ALTER TABLE `marketing_collaterals`
  ADD PRIMARY KEY (`MarketingCoId`);

--
-- Indexes for table `newspapercompaigns`
--
ALTER TABLE `newspapercompaigns`
  ADD PRIMARY KEY (`NewCompaignId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationsId`);

--
-- Indexes for table `od_forms`
--
ALTER TABLE `od_forms`
  ADD PRIMARY KEY (`OdFormId`);

--
-- Indexes for table `od_form_attachements`
--
ALTER TABLE `od_form_attachements`
  ADD PRIMARY KEY (`OdFormAttachmentId`);

--
-- Indexes for table `od_form_status`
--
ALTER TABLE `od_form_status`
  ADD PRIMARY KEY (`OdFormStatuslId`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`payrolls_id`);

--
-- Indexes for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  ADD PRIMARY KEY (`pay_allowance_id`);

--
-- Indexes for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  ADD PRIMARY KEY (`pay_deduction_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectsId`);

--
-- Indexes for table `project_media_files`
--
ALTER TABLE `project_media_files`
  ADD PRIMARY KEY (`ProjectMediaFileId`);

--
-- Indexes for table `project_units`
--
ALTER TABLE `project_units`
  ADD PRIMARY KEY (`project_unit_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`RegistrationId`);

--
-- Indexes for table `registration_activities`
--
ALTER TABLE `registration_activities`
  ADD PRIMARY KEY (`RegActivityId`);

--
-- Indexes for table `registration_charges`
--
ALTER TABLE `registration_charges`
  ADD PRIMARY KEY (`RegChargeId`);

--
-- Indexes for table `registration_members`
--
ALTER TABLE `registration_members`
  ADD PRIMARY KEY (`RegMemberId`);

--
-- Indexes for table `registration_nominee_docs`
--
ALTER TABLE `registration_nominee_docs`
  ADD PRIMARY KEY (`RegNomDocId`);

--
-- Indexes for table `registration_nom_transfer`
--
ALTER TABLE `registration_nom_transfer`
  ADD PRIMARY KEY (`RegNomTransferId`);

--
-- Indexes for table `registration_nom_transfer_docs`
--
ALTER TABLE `registration_nom_transfer_docs`
  ADD PRIMARY KEY (`RegNomTranDocId`);

--
-- Indexes for table `registration_payments`
--
ALTER TABLE `registration_payments`
  ADD PRIMARY KEY (`RegPaymentId`);

--
-- Indexes for table `registration_payment_activities`
--
ALTER TABLE `registration_payment_activities`
  ADD PRIMARY KEY (`RegPayActivityId`);

--
-- Indexes for table `registration_refunds`
--
ALTER TABLE `registration_refunds`
  ADD PRIMARY KEY (`RegRefundId`);

--
-- Indexes for table `registration_refund_documents`
--
ALTER TABLE `registration_refund_documents`
  ADD PRIMARY KEY (`RegRefundDocId`);

--
-- Indexes for table `residential_leads`
--
ALTER TABLE `residential_leads`
  ADD PRIMARY KEY (`ResidentialLeadId`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`LogsId`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`TrainingId`);

--
-- Indexes for table `training_members`
--
ALTER TABLE `training_members`
  ADD PRIMARY KEY (`TrainingMemberId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`UserAccessId`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`UserAddressId`);

--
-- Indexes for table `user_allowed_leaves`
--
ALTER TABLE `user_allowed_leaves`
  ADD PRIMARY KEY (`UserAllowedLeaveId`);

--
-- Indexes for table `user_appraisals`
--
ALTER TABLE `user_appraisals`
  ADD PRIMARY KEY (`UserAppraisalId`);

--
-- Indexes for table `user_attandance_check_in`
--
ALTER TABLE `user_attandance_check_in`
  ADD PRIMARY KEY (`check_in_id`);

--
-- Indexes for table `user_attandance_check_out`
--
ALTER TABLE `user_attandance_check_out`
  ADD PRIMARY KEY (`check_out_id`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`UserBankDetailsId`);

--
-- Indexes for table `user_day_breaks`
--
ALTER TABLE `user_day_breaks`
  ADD PRIMARY KEY (`day_break_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`UserDocsId`);

--
-- Indexes for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  ADD PRIMARY KEY (`UserEmpDetailsId`);

--
-- Indexes for table `user_family_members`
--
ALTER TABLE `user_family_members`
  ADD PRIMARY KEY (`UserFamilyMemberId`);

--
-- Indexes for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD PRIMARY KEY (`UserLeaveId`);

--
-- Indexes for table `user_leave_attachments`
--
ALTER TABLE `user_leave_attachments`
  ADD PRIMARY KEY (`UserLeaveFileId`);

--
-- Indexes for table `user_leave_contact_nos`
--
ALTER TABLE `user_leave_contact_nos`
  ADD PRIMARY KEY (`UserLeaveContactId`);

--
-- Indexes for table `user_leave_status`
--
ALTER TABLE `user_leave_status`
  ADD PRIMARY KEY (`UserLeaveStatusId`);

--
-- Indexes for table `user_meetings`
--
ALTER TABLE `user_meetings`
  ADD PRIMARY KEY (`user_meeting_id`);

--
-- Indexes for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  ADD PRIMARY KEY (`PasswordChangeReqId`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`UserPermissionsId`);

--
-- Indexes for table `user_pips`
--
ALTER TABLE `user_pips`
  ADD PRIMARY KEY (`UserPipId`);

--
-- Indexes for table `user_rewards`
--
ALTER TABLE `user_rewards`
  ADD PRIMARY KEY (`RewardsId`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`VisitorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agriculture_leads`
--
ALTER TABLE `agriculture_leads`
  MODIFY `Agriculture_LeadId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_quotes`
--
ALTER TABLE `app_quotes`
  MODIFY `AppQuotesId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `AssetsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets_issued`
--
ALTER TABLE `assets_issued`
  MODIFY `AssetsMoveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets_returned`
--
ALTER TABLE `assets_returned`
  MODIFY `AssetsReturnedId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authenticationkey`
--
ALTER TABLE `authenticationkey`
  MODIFY `AuthenticationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_refunds`
--
ALTER TABLE `booking_refunds`
  MODIFY `BookingRefundId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_refund_documents`
--
ALTER TABLE `booking_refund_documents`
  MODIFY `BookingRefundDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `ChatId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_attachements`
--
ALTER TABLE `chat_attachements`
  MODIFY `ChatAttachId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `ChatMessageId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circulars`
--
ALTER TABLE `circulars`
  MODIFY `CircularId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `circular_files`
--
ALTER TABLE `circular_files`
  MODIFY `CircularFileId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circular_status`
--
ALTER TABLE `circular_status`
  MODIFY `CircularStatusId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comaigns`
--
ALTER TABLE `comaigns`
  MODIFY `ComaignId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commercial_leads`
--
ALTER TABLE `commercial_leads`
  MODIFY `Commercial_LeadId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `PolicyId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policy_applicable_on`
--
ALTER TABLE `company_policy_applicable_on`
  MODIFY `ApplicableId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `ConfigsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configurationsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `config_holidays`
--
ALTER TABLE `config_holidays`
  MODIFY `ConfigHolidayid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `config_locations`
--
ALTER TABLE `config_locations`
  MODIFY `config_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  MODIFY `config_mail_sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_modules`
--
ALTER TABLE `config_modules`
  MODIFY `ConfigModuleId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_payroll_allowances`
--
ALTER TABLE `config_payroll_allowances`
  MODIFY `payroll_allowance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_payroll_allowance_for_users`
--
ALTER TABLE `config_payroll_allowance_for_users`
  MODIFY `payroll_allowance_for_emps_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_payroll_deductions`
--
ALTER TABLE `config_payroll_deductions`
  MODIFY `payroll_deduction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_payroll_deductions_for_users`
--
ALTER TABLE `config_payroll_deductions_for_users`
  MODIFY `payroll_deductions_for_users_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_pgs`
--
ALTER TABLE `config_pgs`
  MODIFY `ConfigPgId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_values`
--
ALTER TABLE `config_values`
  MODIFY `ConfigValueId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `creatives`
--
ALTER TABLE `creatives`
  MODIFY `CreativeId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `CustAddressId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_co_address_details`
--
ALTER TABLE `customer_co_address_details`
  MODIFY `CustomerCoAddressId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_co_details`
--
ALTER TABLE `customer_co_details`
  MODIFY `CustCoId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_co_documents`
--
ALTER TABLE `customer_co_documents`
  MODIFY `CustomerCoDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_documents`
--
ALTER TABLE `customer_documents`
  MODIFY `CustomerDocumentId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_nominees`
--
ALTER TABLE `customer_nominees`
  MODIFY `CustNomineeId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  MODIFY `CustomerNotificationId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `DataId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_leads`
--
ALTER TABLE `data_leads`
  MODIFY `DataId` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_lead_followups`
--
ALTER TABLE `data_lead_followups`
  MODIFY `DataFollowUpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `data_lead_followup_durations`
--
ALTER TABLE `data_lead_followup_durations`
  MODIFY `DatacallId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_lead_requirements`
--
ALTER TABLE `data_lead_requirements`
  MODIFY `DataRequirementID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_lead_uploads`
--
ALTER TABLE `data_lead_uploads`
  MODIFY `DataUploadId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_transfer`
--
ALTER TABLE `data_transfer`
  MODIFY `transferId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expanses`
--
ALTER TABLE `expanses`
  MODIFY `ExpansesId` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `LeadsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_followups`
--
ALTER TABLE `lead_followups`
  MODIFY `LeadFollowUpId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  MODIFY `leadcallId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  MODIFY `LeadRequirementID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  MODIFY `leadsUploadId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_collaterals`
--
ALTER TABLE `marketing_collaterals`
  MODIFY `MarketingCoId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newspapercompaigns`
--
ALTER TABLE `newspapercompaigns`
  MODIFY `NewCompaignId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationsId` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `od_forms`
--
ALTER TABLE `od_forms`
  MODIFY `OdFormId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `od_form_attachements`
--
ALTER TABLE `od_form_attachements`
  MODIFY `OdFormAttachmentId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `od_form_status`
--
ALTER TABLE `od_form_status`
  MODIFY `OdFormStatuslId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `payrolls_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  MODIFY `pay_allowance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  MODIFY `pay_deduction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_media_files`
--
ALTER TABLE `project_media_files`
  MODIFY `ProjectMediaFileId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `project_units`
--
ALTER TABLE `project_units`
  MODIFY `project_unit_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `RegistrationId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_activities`
--
ALTER TABLE `registration_activities`
  MODIFY `RegActivityId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_charges`
--
ALTER TABLE `registration_charges`
  MODIFY `RegChargeId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_members`
--
ALTER TABLE `registration_members`
  MODIFY `RegMemberId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_nominee_docs`
--
ALTER TABLE `registration_nominee_docs`
  MODIFY `RegNomDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_nom_transfer`
--
ALTER TABLE `registration_nom_transfer`
  MODIFY `RegNomTransferId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_nom_transfer_docs`
--
ALTER TABLE `registration_nom_transfer_docs`
  MODIFY `RegNomTranDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_payments`
--
ALTER TABLE `registration_payments`
  MODIFY `RegPaymentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_payment_activities`
--
ALTER TABLE `registration_payment_activities`
  MODIFY `RegPayActivityId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_refunds`
--
ALTER TABLE `registration_refunds`
  MODIFY `RegRefundId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_refund_documents`
--
ALTER TABLE `registration_refund_documents`
  MODIFY `RegRefundDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residential_leads`
--
ALTER TABLE `residential_leads`
  MODIFY `ResidentialLeadId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `LogsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `TrainingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_members`
--
ALTER TABLE `training_members`
  MODIFY `TrainingMemberId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `UserAccessId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `UserAddressId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_allowed_leaves`
--
ALTER TABLE `user_allowed_leaves`
  MODIFY `UserAllowedLeaveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_appraisals`
--
ALTER TABLE `user_appraisals`
  MODIFY `UserAppraisalId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_attandance_check_in`
--
ALTER TABLE `user_attandance_check_in`
  MODIFY `check_in_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_attandance_check_out`
--
ALTER TABLE `user_attandance_check_out`
  MODIFY `check_out_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `UserBankDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_day_breaks`
--
ALTER TABLE `user_day_breaks`
  MODIFY `day_break_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `UserDocsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  MODIFY `UserEmpDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_family_members`
--
ALTER TABLE `user_family_members`
  MODIFY `UserFamilyMemberId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leaves`
--
ALTER TABLE `user_leaves`
  MODIFY `UserLeaveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_attachments`
--
ALTER TABLE `user_leave_attachments`
  MODIFY `UserLeaveFileId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_contact_nos`
--
ALTER TABLE `user_leave_contact_nos`
  MODIFY `UserLeaveContactId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_status`
--
ALTER TABLE `user_leave_status`
  MODIFY `UserLeaveStatusId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_meetings`
--
ALTER TABLE `user_meetings`
  MODIFY `user_meeting_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  MODIFY `PasswordChangeReqId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `UserPermissionsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_pips`
--
ALTER TABLE `user_pips`
  MODIFY `UserPipId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rewards`
--
ALTER TABLE `user_rewards`
  MODIFY `RewardsId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `VisitorId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
