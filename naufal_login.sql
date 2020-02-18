# Host: localhost  (Version 5.5.5-10.1.38-MariaDB)
# Date: 2020-01-13 13:26:07
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (3,'Naufal Nur Hidayat','naufal.gen13@gmail.com','IMG-20190203-WA00161.jpg','$2y$10$gHIMgY5c5exqOK.Kr8X5wuRIwSxCqI8hObUXil3cuGI2N/EQ8P/im',1,1,1574005508),(25,'Tyo Jeka','naufalnurhidayat510@gmail.com','IMG-20190204-WA0003.jpg','$2y$10$N/BeeGbiQVnI6cxuEa4MEuEZ1F6OLqUwRLmG1ladJJlD3YmrkYnw.',2,1,1578641435);

#
# Structure for table "user_access_menu"
#

DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Data for table "user_access_menu"
#

INSERT INTO `user_access_menu` VALUES (1,1,1),(2,1,2),(4,1,3),(5,2,2);

#
# Structure for table "user_menu"
#

DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "user_menu"
#

INSERT INTO `user_menu` VALUES (1,'Admin'),(2,'User'),(3,'Menu');

#
# Structure for table "user_role"
#

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "user_role"
#

INSERT INTO `user_role` VALUES (1,'Administrator'),(2,'Member');

#
# Structure for table "user_sub_menu"
#

DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

#
# Data for table "user_sub_menu"
#

INSERT INTO `user_sub_menu` VALUES (1,1,'Dashboard','admin','fas fa-fw fa-tachometer-alt',1),(2,2,'My Profile','user','fas fa-fw fa-user',1),(3,2,'Edit Profile','user/edit','fas fa-fw fa-user-edit',1),(4,3,'Menu Management','menu','fas fa-fw fa-folder',1),(5,3,'Submenu Management','menu/submenu','fas fa-fw fa-folder-open',1),(6,1,'Role','admin/role','fas fa-fw fa-user-tie',1),(7,2,'Change Password','user/changepassword','fas fa-fw fa-key',1);

#
# Structure for table "user_token"
#

DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# Data for table "user_token"
#

INSERT INTO `user_token` VALUES (6,'fitrialaila816@gmail.com','edYUeD1GEeKB+HlGKq7dc7IiD1bQXEMRypVqMNw/FyA=',1577762815);
