


/*
 TODO:
 - products (id, category_id, price, name, description, image)
    -- Foreign key naar category

 - categories (id, parent_category_id, name)

 - customers (id, email, password, salt, street, number, number_add, city, postal, country)

 - sale_order_items (tabel bestaat al)
    -- aanmaken: foreign key naar producten en
 - sale_orders
    -- aanmaken: foreign key naar customers of users

 */

DROP TABLE IF EXISTS `sale_order_items`;
CREATE TABLE `sale_order_items` (
                                    `id` int NOT NULL AUTO_INCREMENT,
                                    `sale_order_id` int NOT NULL,
                                    `product_id` int DEFAULT NULL,
                                    `article_number` varchar(255) DEFAULT NULL,
                                    `description` varchar(255) DEFAULT NULL,
                                    `price` decimal(12,2) DEFAULT NULL,
                                    `quantity` int(11) DEFAULT NULL,
                                    `updated_at` DATETIME NULL,
                                    `created_at` DATETIME NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DROP TABLE IF EXISTS `sale_orders`;
CREATE TABLE `sale_orders` (
                              `id` int NOT NULL AUTO_INCREMENT,
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
                              `updated_at` DATETIME NULL,
                              `created_at` DATETIME NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 1
INSERT INTO `sale_orders` (`id`, `customer_id`, `name`, `email`, `street`, `number`, `city`, `postal`, `country`, `is_completed`, `is_paid`, `is_shipped`, `updated_at`, `created_at`) VALUES (NULL, '1', 'Anton', 'anton@roc.nl', 'Amst4ell', '2', 'Uithjopor', '14223DD', 'Nederland', '0', '1', '1', '2024-04-17 13:30:58', '2024-04-03 13:30:58');
-- 2
INSERT INTO `sale_orders` (`id`, `customer_id`, `name`, `email`, `street`, `number`, `city`, `postal`, `country`, `is_completed`, `is_paid`, `is_shipped`, `updated_at`, `created_at`) VALUES (NULL, 2, 'Sjaak', 'sj@roc.nl', 'Amst4e23423ll', '2', 'Uithjopor', '14223DD', 'Nederland', '0', '1', '1', '2024-04-17 13:30:58', '2024-04-03 13:30:58');
INSERT INTO `sale_orders` (`id`, `customer_id`, `name`, `email`, `street`, `number`, `city`, `postal`, `country`, `is_completed`, `is_paid`, `is_shipped`, `updated_at`, `created_at`) VALUES (NULL, '2', 'Chantal', 'ch@roc.nl', 'Amst4ell', '2', 'Uithjopor', '14223DD', 'Nederland', '0', '1', '1', '2024-04-17 13:30:58', '2024-04-03 13:30:58');


-- ALTER TABLE `sale_orders` ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sale_order_items` ADD CONSTRAINT `fk_sale_order_item` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `sale_order_items` (`id`, `sale_order_id`, `product_id`, `article_number`, `description`, `price`, `quantity`, `updated_at`, `created_at`) VALUES (NULL, '1', NULL, 'ARTI1', 'SChoenen', '23', 1, '2024-04-15 13:33:10', '2024-04-10 13:33:10');
INSERT INTO `sale_order_items` (`id`, `sale_order_id`, `product_id`, `article_number`, `description`, `price`, `quantity`, `updated_at`, `created_at`) VALUES (NULL, '1', NULL, 'AXX23', 'Jurk', '44', 1, '2024-04-15 13:33:10', '2024-04-10 13:33:10');
INSERT INTO `sale_order_items` (`id`, `sale_order_id`, `product_id`, `article_number`, `description`, `price`, `quantity`, `updated_at`, `created_at`) VALUES (NULL, '1', NULL, '00000D', 'Jas', '22', 1, '2024-04-15 13:33:10', '2024-04-10 13:33:10');
INSERT INTO `sale_order_items` (`id`, `sale_order_id`, `product_id`, `article_number`, `description`, `price`, `quantity`, `updated_at`, `created_at`) VALUES (NULL, '1', NULL, 'Z34der', 'Trui', '23', 1, '2024-04-15 13:33:10', '2024-04-10 13:33:10');



