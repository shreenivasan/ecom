-- Adminer 4.2.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `ecom`;
CREATE DATABASE `ecom` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ecom`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` text NOT NULL,
  `api_key` varchar(32) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `api_key`, `status`, `created_at`) VALUES
(1,	'Shreenivas',	'shreenivas.madagundi@gmail.com',	'$2a$10$118351fdc969824eafcc1exbofqRslnKTlnQRclNlbz38ucXVZkBC',	'c7d5d378648023655afc2254ca03cedd',	1,	'2017-10-24 06:56:13');

-- 2017-10-24 09:37:48
