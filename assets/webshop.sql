

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*
 TODO:

 - product (id, category_id, price, name, description, image)
 - category (id, name)
 - customer (id, email, password, salt, street, number, number_add, city, postal, country)
 - customer (id, email, password, salt, street, number, number_add, city, postal, country)

 */



CREATE TABLE `sale_order` (
                              `id` int NOT NULL,
                              `customer_id` int DEFAULT NULL,
                              `name` varchar(255) DEFAULT NULL,
                              `email` varchar(255) DEFAULT NULL,
                              `street` varchar(255) DEFAULT NULL,
                              `number` varchar(10) DEFAULT NULL,
                              `city` varchar(255) DEFAULT NULL,
                              `postal` varchar(255) DEFAULT NULL,
                              `country` varchar(255) DEFAULT NULL,
                              `is_completed` tinyint(1) DEFAULT '0',
                              `is_paid` tinyint(1) DEFAULT '0',
                              `is_shipped` tinyint(1) DEFAULT '0',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `sale_order_item` (
                                   `id` int NOT NULL AUTO_INCREMENT,
                                   `sale_order_id` int NOT NULL,
                                   `product_id` int DEFAULT NULL,
                                   `article_number` varchar(255) DEFAULT NULL,
                                   `description` varchar(255) DEFAULT NULL,
                                   `price` decimal(12,2) DEFAULT NULL,
                                   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

ALTER TABLE `sale_order_item` ADD CONSTRAINT `fk_sale_order_item` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;



