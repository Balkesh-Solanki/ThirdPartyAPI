-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: thirdpartyapidb
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
-- Table structure for table `apiresponses`
--

DROP TABLE IF EXISTS `apiresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apiresponses` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ApiName` varchar(255) NOT NULL,
  `Data` json NOT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apiresponses`
--

LOCK TABLES `apiresponses` WRITE;
/*!40000 ALTER TABLE `apiresponses` DISABLE KEYS */;
INSERT INTO `apiresponses` VALUES (1,'GitHubUserAPI','{\"id\": 583231, \"bio\": null, \"url\": \"https://api.github.com/users/octocat\", \"blog\": \"https://github.blog\", \"name\": \"The Octocat\", \"type\": \"User\", \"email\": null, \"login\": \"octocat\", \"company\": \"@github\", \"node_id\": \"MDQ6VXNlcjU4MzIzMQ==\", \"hireable\": null, \"html_url\": \"https://github.com/octocat\", \"location\": \"San Francisco\", \"followers\": 16861, \"following\": 9, \"gists_url\": \"https://api.github.com/users/octocat/gists{/gist_id}\", \"repos_url\": \"https://api.github.com/users/octocat/repos\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/583231?v=4\", \"created_at\": \"2011-01-25T18:44:36Z\", \"events_url\": \"https://api.github.com/users/octocat/events{/privacy}\", \"site_admin\": false, \"updated_at\": \"2025-01-22T12:21:20Z\", \"gravatar_id\": \"\", \"starred_url\": \"https://api.github.com/users/octocat/starred{/owner}{/repo}\", \"public_gists\": 8, \"public_repos\": 8, \"followers_url\": \"https://api.github.com/users/octocat/followers\", \"following_url\": \"https://api.github.com/users/octocat/following{/other_user}\", \"user_view_type\": \"public\", \"twitter_username\": null, \"organizations_url\": \"https://api.github.com/users/octocat/orgs\", \"subscriptions_url\": \"https://api.github.com/users/octocat/subscriptions\", \"received_events_url\": \"https://api.github.com/users/octocat/received_events\"}','2025-02-07 05:56:26'),(2,'GitHubUserAPI','{\"id\": 583231, \"bio\": null, \"url\": \"https://api.github.com/users/octocat\", \"blog\": \"https://github.blog\", \"name\": \"The Octocat\", \"type\": \"User\", \"email\": null, \"login\": \"octocat\", \"company\": \"@github\", \"node_id\": \"MDQ6VXNlcjU4MzIzMQ==\", \"hireable\": null, \"html_url\": \"https://github.com/octocat\", \"location\": \"San Francisco\", \"followers\": 16861, \"following\": 9, \"gists_url\": \"https://api.github.com/users/octocat/gists{/gist_id}\", \"repos_url\": \"https://api.github.com/users/octocat/repos\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/583231?v=4\", \"created_at\": \"2011-01-25T18:44:36Z\", \"events_url\": \"https://api.github.com/users/octocat/events{/privacy}\", \"site_admin\": false, \"updated_at\": \"2025-01-22T12:21:20Z\", \"gravatar_id\": \"\", \"starred_url\": \"https://api.github.com/users/octocat/starred{/owner}{/repo}\", \"public_gists\": 8, \"public_repos\": 8, \"followers_url\": \"https://api.github.com/users/octocat/followers\", \"following_url\": \"https://api.github.com/users/octocat/following{/other_user}\", \"user_view_type\": \"public\", \"twitter_username\": null, \"organizations_url\": \"https://api.github.com/users/octocat/orgs\", \"subscriptions_url\": \"https://api.github.com/users/octocat/subscriptions\", \"received_events_url\": \"https://api.github.com/users/octocat/received_events\"}','2025-02-07 05:58:04'),(3,'GitHubUserAPI','{\"id\": 583231, \"bio\": null, \"url\": \"https://api.github.com/users/octocat\", \"blog\": \"https://github.blog\", \"name\": \"The Octocat\", \"type\": \"User\", \"email\": null, \"login\": \"octocat\", \"company\": \"@github\", \"node_id\": \"MDQ6VXNlcjU4MzIzMQ==\", \"hireable\": null, \"html_url\": \"https://github.com/octocat\", \"location\": \"San Francisco\", \"followers\": 16894, \"following\": 9, \"gists_url\": \"https://api.github.com/users/octocat/gists{/gist_id}\", \"repos_url\": \"https://api.github.com/users/octocat/repos\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/583231?v=4\", \"created_at\": \"2011-01-25T18:44:36Z\", \"events_url\": \"https://api.github.com/users/octocat/events{/privacy}\", \"site_admin\": false, \"updated_at\": \"2025-01-22T12:21:20Z\", \"gravatar_id\": \"\", \"starred_url\": \"https://api.github.com/users/octocat/starred{/owner}{/repo}\", \"public_gists\": 8, \"public_repos\": 8, \"followers_url\": \"https://api.github.com/users/octocat/followers\", \"following_url\": \"https://api.github.com/users/octocat/following{/other_user}\", \"user_view_type\": \"public\", \"twitter_username\": null, \"organizations_url\": \"https://api.github.com/users/octocat/orgs\", \"subscriptions_url\": \"https://api.github.com/users/octocat/subscriptions\", \"received_events_url\": \"https://api.github.com/users/octocat/received_events\"}','2025-02-10 08:55:40'),(4,'GitHubUserAPI','{\"id\": 583231, \"bio\": null, \"url\": \"https://api.github.com/users/octocat\", \"blog\": \"https://github.blog\", \"name\": \"The Octocat\", \"type\": \"User\", \"email\": null, \"login\": \"octocat\", \"company\": \"@github\", \"node_id\": \"MDQ6VXNlcjU4MzIzMQ==\", \"hireable\": null, \"html_url\": \"https://github.com/octocat\", \"location\": \"San Francisco\", \"followers\": 16894, \"following\": 9, \"gists_url\": \"https://api.github.com/users/octocat/gists{/gist_id}\", \"repos_url\": \"https://api.github.com/users/octocat/repos\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/583231?v=4\", \"created_at\": \"2011-01-25T18:44:36Z\", \"events_url\": \"https://api.github.com/users/octocat/events{/privacy}\", \"site_admin\": false, \"updated_at\": \"2025-01-22T12:21:20Z\", \"gravatar_id\": \"\", \"starred_url\": \"https://api.github.com/users/octocat/starred{/owner}{/repo}\", \"public_gists\": 8, \"public_repos\": 8, \"followers_url\": \"https://api.github.com/users/octocat/followers\", \"following_url\": \"https://api.github.com/users/octocat/following{/other_user}\", \"user_view_type\": \"public\", \"twitter_username\": null, \"organizations_url\": \"https://api.github.com/users/octocat/orgs\", \"subscriptions_url\": \"https://api.github.com/users/octocat/subscriptions\", \"received_events_url\": \"https://api.github.com/users/octocat/received_events\"}','2025-02-10 08:56:43'),(5,'GitHubUserAPI','{\"id\": 583231, \"bio\": null, \"url\": \"https://api.github.com/users/octocat\", \"blog\": \"https://github.blog\", \"name\": \"The Octocat\", \"type\": \"User\", \"email\": null, \"login\": \"octocat\", \"company\": \"@github\", \"node_id\": \"MDQ6VXNlcjU4MzIzMQ==\", \"hireable\": null, \"html_url\": \"https://github.com/octocat\", \"location\": \"San Francisco\", \"followers\": 16894, \"following\": 9, \"gists_url\": \"https://api.github.com/users/octocat/gists{/gist_id}\", \"repos_url\": \"https://api.github.com/users/octocat/repos\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/583231?v=4\", \"created_at\": \"2011-01-25T18:44:36Z\", \"events_url\": \"https://api.github.com/users/octocat/events{/privacy}\", \"site_admin\": false, \"updated_at\": \"2025-01-22T12:21:20Z\", \"gravatar_id\": \"\", \"starred_url\": \"https://api.github.com/users/octocat/starred{/owner}{/repo}\", \"public_gists\": 8, \"public_repos\": 8, \"followers_url\": \"https://api.github.com/users/octocat/followers\", \"following_url\": \"https://api.github.com/users/octocat/following{/other_user}\", \"user_view_type\": \"public\", \"twitter_username\": null, \"organizations_url\": \"https://api.github.com/users/octocat/orgs\", \"subscriptions_url\": \"https://api.github.com/users/octocat/subscriptions\", \"received_events_url\": \"https://api.github.com/users/octocat/received_events\"}','2025-02-10 09:41:28');
/*!40000 ALTER TABLE `apiresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'thirdpartyapidb'
--

--
-- Dumping routines for database 'thirdpartyapidb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 18:38:34
