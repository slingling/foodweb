/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.30 : Database - food2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`food2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `food2`;

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phonenumber` varchar(40) NOT NULL,
  `password` varchar(16) NOT NULL,
  `kind` int(4) DEFAULT '0',
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerid`,`name`,`address`,`phonenumber`,`password`,`kind`) values (2,' 仙女','民大','123','123',NULL),(3,' 仙女','民大','123','123',NULL),(4,' 仙女','民大','123','123',NULL),(5,'gg','88','88','66',NULL),(6,' 仙女','44','55','33',NULL),(7,' 仙女','44','55','33',NULL),(8,' 仙女','44','66','11',NULL),(9,' 仙女','44','66','11',NULL),(10,' 仙女','44','66','11',NULL),(11,' 仙女','44','66','11',NULL),(12,' 仙女','44','66','11',NULL),(13,'hh','民大','12345','123',NULL);

/*Table structure for table `t_food` */

DROP TABLE IF EXISTS `t_food`;

CREATE TABLE `t_food` (
  `foodid` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(40) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `imagepath` varchar(40) DEFAULT NULL,
  `average_score` double DEFAULT NULL,
  `intro` varchar(40) DEFAULT NULL,
  `kind` varchar(4) DEFAULT NULL,
  `hot` int(4) DEFAULT '0',
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_food` */

insert  into `t_food`(`foodid`,`foodname`,`unitprice`,`imagepath`,`average_score`,`intro`,`kind`,`hot`) values (1,'方便面',10,'01.jpg',9,'好吃，超好吃','第二食堂',1),(2,'麻辣鸡丝面',12,'02.jpg',9,'还行','第二食堂',1),(3,'大盘鸡',6,'03.jpg',10,'还不错','第二食堂',1),(4,'茶叶蛋',1.5,'04.jpg',8,'好吃','第二食堂',1),(5,'饺子',4,'05.jpg',10,'好吃','第二食堂',1),(6,'凉皮',5,'06.jpg',7,'美味','第二食堂',1);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderid` int(30) NOT NULL AUTO_INCREMENT,
  `food` int(11) DEFAULT NULL,
  `foodnum` int(2) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment_statue` int(2) DEFAULT '0',
  `comment` varchar(3) DEFAULT '好评',
  `content` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C38A1098C6` (`food`),
  KEY `FKA0C0C3C386406AC6` (`customer`),
  CONSTRAINT `FKA0C0C3C386406AC6` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`),
  CONSTRAINT `FKA0C0C3C38A1098C6` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON UPDATE CASCADE,
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`orderid`,`food`,`foodnum`,`customer`,`total`,`date`,`comment_statue`,`comment`,`content`) values (1,1,1,2,10,NULL,0,'好','好'),(2,1,1,2,10,NULL,NULL,NULL,NULL),(3,2,1,2,12,NULL,NULL,NULL,NULL),(4,2,1,13,12,NULL,NULL,NULL,NULL),(5,4,1,2,1.5,NULL,NULL,NULL,NULL),(7,4,1,13,1.5,NULL,NULL,NULL,NULL),(8,5,1,13,4,NULL,NULL,NULL,NULL),(10,1,1,13,10,NULL,NULL,NULL,NULL),(12,1,1,2,10,NULL,NULL,NULL,NULL),(14,1,1,13,10,NULL,NULL,NULL,NULL),(15,1,1,13,10,NULL,NULL,NULL,NULL),(17,1,1,13,10,NULL,NULL,NULL,NULL),(20,1,1,13,10,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
