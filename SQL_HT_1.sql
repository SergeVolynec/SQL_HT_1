CREATE DATABASE IF NOT EXISTS seminar_1;

USE seminar_1;

DROP TABLE IF EXISTS mobiles;

CREATE TABLE mobiles
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(45),
    manufacturer VARCHAR(45),
    product_count INT,
    price INT
);

INSERT mobiles (product_name, manufacturer, product_count, price)
	VALUES
     ('iPhone X', 'Apple', 3, 76000 ),
     ('iPhone 8', 'Apple', 2, 51000 ),
     ('Samsung S9', 'Samsung', 2, 56000 ),
     ('Samsung S8', 'Samsung', 1, 41000 ),
     ('P20 Pro', 'Huawei', 5, 36000 );
     
 #Выведите название, производителя и цену для товаров, количество которых превышает 2  
SELECT product_name, manufacturer, price  
FROM mobiles
WHERE product_count > 2;

#Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM mobiles
WHERE manufacturer = 'Samsung';

#Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT *
FROM mobiles
WHERE product_count*price > 100000 AND product_count*price < 145000;

# Товары, в которых есть упоминание "Iphone"
SELECT *
FROM mobiles
WHERE product_name LIKE '%iPhone%';

#Товары, в которых есть упоминание "Galaxy"
SELECT *
FROM mobiles
WHERE product_name LIKE '%Galaxy%';

#Товары, в которых есть ЦИФРЫ
SELECT *
FROM mobiles
WHERE product_name REGEXP '(1|2|3|4|5|6|7|8|9|0)';

#Товары, в которых есть цифра 8
SELECT *
FROM mobiles
WHERE product_name LIKE '%8%';