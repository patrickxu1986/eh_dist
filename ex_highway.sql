/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : ex_highway

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/01/2022 15:35:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(20) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123456',
  `merchant_code` varchar(20) NOT NULL DEFAULT '1',
  `authority` tinyint(4) NOT NULL DEFAULT '0',
  `license` text NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `modify_time` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `admin_user_user_id_uindex` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_data_package
-- ----------------------------
DROP TABLE IF EXISTS `ex_data_package`;
CREATE TABLE `ex_data_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `package_id` varchar(32) NOT NULL,
  `subject` varchar(800) NOT NULL,
  `product_params_ids` varchar(800) NOT NULL,
  `images` text NOT NULL,
  `data_nums` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `note` varchar(800) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_image
-- ----------------------------
DROP TABLE IF EXISTS `ex_image`;
CREATE TABLE `ex_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `image_id` varchar(64) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `des` varchar(200) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_image_image_id_uindex` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_image_category
-- ----------------------------
DROP TABLE IF EXISTS `ex_image_category`;
CREATE TABLE `ex_image_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '0',
  `des` varchar(200) NOT NULL DEFAULT '0.00',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_product_custom_property
-- ----------------------------
DROP TABLE IF EXISTS `ex_product_custom_property`;
CREATE TABLE `ex_product_custom_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `property_id` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `content` varchar(800) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `ex_product_detail`;
CREATE TABLE `ex_product_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `detail_id` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `content` text,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_image_image_id_uindex` (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_product_params
-- ----------------------------
DROP TABLE IF EXISTS `ex_product_params`;
CREATE TABLE `ex_product_params` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `param_id` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `keyword` text,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_material` varchar(100) DEFAULT NULL,
  `system_property` varchar(100) DEFAULT NULL,
  `custom_property_id` varchar(100) DEFAULT NULL,
  `sku_names` varchar(1200) DEFAULT NULL,
  `sku_prices` varchar(1200) DEFAULT NULL,
  `product_detail_id` varchar(32) DEFAULT NULL,
  `product_detail_location` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `multi_image_merge_template_id` varchar(32) DEFAULT NULL,
  `multi_image_thumbnail` varchar(200) DEFAULT NULL,
  `multi_image_nums` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `single_image_merge_template_id` varchar(32) DEFAULT NULL,
  `single_image_thumbnail` varchar(200) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_image_image_id_uindex` (`param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_product_system_property
-- ----------------------------
DROP TABLE IF EXISTS `ex_product_system_property`;
CREATE TABLE `ex_product_system_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `property_id` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `content` varchar(800) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_template
-- ----------------------------
DROP TABLE IF EXISTS `ex_template`;
CREATE TABLE `ex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `template_id` varchar(32) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `background_path` varchar(200) DEFAULT NULL,
  `overlay_img` varchar(200) NOT NULL,
  `overlay_path` varchar(200) NOT NULL,
  `image_nums` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_template_category
-- ----------------------------
DROP TABLE IF EXISTS `ex_template_category`;
CREATE TABLE `ex_template_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `des` varchar(200) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ex_template_image_template_id_uindex` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ex_template_images
-- ----------------------------
DROP TABLE IF EXISTS `ex_template_images`;
CREATE TABLE `ex_template_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` varchar(32) NOT NULL,
  `index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rotate` decimal(5,2) NOT NULL DEFAULT '0.00',
  `scale_x` decimal(5,2) NOT NULL DEFAULT '0.00',
  `scale_y` decimal(5,2) NOT NULL DEFAULT '0.00',
  `tl_x` decimal(5,2) NOT NULL DEFAULT '0.00',
  `tl_y` decimal(5,2) NOT NULL DEFAULT '0.00',
  `tr_x` decimal(5,2) DEFAULT '0.00',
  `tr_y` decimal(5,2) NOT NULL DEFAULT '0.00',
  `bl_x` decimal(5,2) NOT NULL DEFAULT '0.00',
  `bl_y` decimal(5,2) DEFAULT '0.00',
  `br_x` decimal(5,2) NOT NULL DEFAULT '0.00',
  `br_y` decimal(5,2) DEFAULT '0.00',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
