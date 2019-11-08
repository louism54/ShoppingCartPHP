CREATE DATABASE shopping_cart;
CREATE Table store_categories(
cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cat_title VARCHAR(50),
cat_desc VARCHAR(60));
INSERT INTO store_categories
VALUES
(1, "Books", "All kinds of Books - Hardback, Softback etc."),
(2, "Shirt", "Shirts of various materials"),
(3, "Hats", "All kinds of Hats ranging from Sporting Hats to Leisure"),
(4, "Shoes", "All types of Shoes from boots to Slippers");
CREATE TABLE store_items (
item_id INT PRIMARY KEY AUTO_INCREMENT,
cat_id INT REFERENCES store_categories(cat_id ),
item_title VARCHAR(25),
item_price DECIMAL(6,2),
item_desc VARCHAR(75),
item_image VARCHAR(50));
INSERT INTO store_items
VALUES
(1, 1, "Winnie the Pooh", 12.50, "Story of a little bear and a boy called Christopher Robin", "winnie.jpg"),
(2, 1, "Lord of the Flies", 22.50, "Epic story of young boys deserted on a island", "lof.jpg"),
(3, 1, "Post Mortem", 9.50, "Dr. Kay Scarpeta thriller", "postmortem.jpg"),
(4, 2, "Golf Shirt", 49.50, "Ping Golf shirt", "golfshirt.jpg"),
(5, 2, "Tennis Shirt", 69.50, "Cotton Tennis Shirt", "tennisshirt.jpg"),
(6, 3, "Baseball Hat", 19.50, "Red Socks Baseball Hat", "baseball.jpg"),
(7, 3, "Rain Hat", 19.50, "Plastic Rain Hat", "rain.jpg"),
(8, 4, "Pumps", 119.50, "Ballerina Pumps", "ballet.jpg"),
(9, 4, "Wellingtons", 59.50, "Fashionable Concert Wellies", "wellies.jpg");

CREATE Table store_item_size(
size_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
item_id INT REFERENCES store_items(item_id),
item_size VARCHAR (25));
INSERT INTO store_item_size
VALUES
(1, 4, "S"),
(2, 4, "M"),
(3, 4, "L"),
(4, 4, "XL"),
(5, 4, "XXL"),
(6, 5, "S"),
(7, 5, "M"),
(8, 6, "Size 1"),
(9, 6, "Size 2"),
(10, 6, "Size 3"),
(11, 7, "Size 1"),
(12, 7, "Size 2"),
(13, 7, "Size 3"),
(14, 8, "Size 3"),
(15, 8, "Size 4"),
(16, 8, "Size 5"),
(17, 8, "Size 6"),
(18, 8, "Size 7"),
(19, 9, "Size 3"),
(20, 9, "Size 4"),
(21, 9, "Size 5"),
(22, 9, "Size 6"),
(23, 9, "Size 7");
CREATE Table store_item_colour(
colour_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
item_id INT REFERENCES store_items(item_id),
item_colour VARCHAR (25));
INSERT INTO store_item_colour
VALUES
(1, 4, "Black"),
(2, 4, "Blue"),
(3, 4, "White"),
(4, 5, "Purple"),

(5, 5, "Grey"),
(6, 5, "Silver"),
(7, 5, "Green"),
(8, 6, "Orange"),
(9, 6, "Pink"),
(10, 6, "Marron"),
(11, 6, "Yellow"),
(12, 7, "Yellow"),
(13, 7, "Red"),
(14, 7, "Orange"),
(15, 7, "Blue"),
(16, 7, "Green"),
(17, 7, "Black"),
(18, 8, "Silver"),
(19, 8, "Gold"),
(20, 8, "Orange"),
(21, 8, "Black"),
(22, 9, "Gold"),
(23, 9, "Silver"),
(24, 9, "White"),
(25, 9, "Black"),
(26, 9, "Red");