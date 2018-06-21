----------CATEGORY-----------------------------------------------------------------------------
CREATE TABLE category (

	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)

);

INSERT INTO category (name, description,image_url,is_active) 
VALUES ('Laptop', 'This is description for Laptop category!', 'CAT_1.png', true);
INSERT INTO category (name, description,image_url,is_active) 
VALUES ('Television', 'This is description for Television category!', 'CAT_2.png', true);
INSERT INTO category (name, description,image_url,is_active) 
VALUES ('Smartphones', 'This is description for Smartphone category!', 'CAT_3.png', true);
INSERT INTO category (name, description,image_url,is_active) 
VALUES ('Tablets', 'This is description for Tablet category!', 'CAT_4.png', true);
INSERT INTO category (name, description,image_url,is_active) 
VALUES ('Accessories', 'This is description for Accessory category!', 'CAT_5.png', true);
-----------------------------------------------------------------------------------------------

----------USER---------------------------------------------------------------------------------
CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Mr', 'Admin', 'ADMIN', true, '123456', 'admin@Dumacia.co', '123456789');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Loi', 'Nguyen', 'USER', true, '123456', '14521132@gm.uit.edu.vn', '123456789');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Thong', 'Lo', 'USER', true, '123456', '14520900@gm.uit.edu.vn', '123456789');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Thanh', 'Dang', 'USER', true, '123456', '14520832@gm.uit.edu.vn', '123456789');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Viet', 'Hoang', 'USER', true, '123456', '14521080@gm.uit.edu.vn', '123456789');
-----------------------------------------------------------------------------------------------

----------PRODUCT------------------------------------------------------------------------------
CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(13,0),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
);
-----------------------------------------------------------------------------------------------

----------SHOPPING CART------------------------------------------------------------------------
CREATE TABLE cart (
	id IDENTITY,
	user_id int,
	grand_total DECIMAL(10,2),
	cart_lines int,
	CONSTRAINT fk_cart_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_cart_id PRIMARY KEY (id)
);

INSERT INTO cart (user_id, grand_total, cart_lines)
VALUES (1, 0, 0);
INSERT INTO cart (user_id, grand_total, cart_lines)
VALUES (2, 0, 0);
INSERT INTO cart (user_id, grand_total, cart_lines)
VALUES (3, 0, 0);
INSERT INTO cart (user_id, grand_total, cart_lines)
VALUES (4, 0, 0);
INSERT INTO cart (user_id, grand_total, cart_lines)
VALUES (5, 0, 0);

CREATE TABLE cart_line (
	id IDENTITY,
	cart_id int,
	total DECIMAL(10,2),
	product_id int,
	product_count int,
	buying_price DECIMAL(10,2),
	is_available boolean,
	CONSTRAINT fk_cartline_product_id FOREIGN KEY (product_id ) REFERENCES product (id),
	CONSTRAINT pk_cartline_id PRIMARY KEY (id)
);
-----------------------------------------------------------------------------------------------

----------Adding PRODUCTs-----------------------------------------------------------------------

-- LAPTOP
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('PRDMNO123PQRX', 'Macbook Pro', 'apple', 'This is one of the best laptops available in the market right now!', 1980, 3, true, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('PRDABCXYZDEFX', 'Dell Latitude E6510', 'dell', 'This is one of the best laptop series from dell that can be used!', 520, 5, true, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('dell-vostro-14', 'Vostro 3468', 'dell', 'This is one of the best laptop series from dell that can be used!', 1120, 3, true, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Inspiron3567', 'Inspiron 3567', 'dell','This is one of the best laptop series from dell that can be used!', 1139, 4, True, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Inspiron13', 'Inspiron 13', 'dell','This is one of the best laptop series from dell that can be used!', 1529 , 3, True, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Acer Aspire', 'Acer Aspire ES1 432', 'acer','This is one of the best laptop series from acer that can be used!', 629, 4, True, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('asus-x441na', 'Asus X441NA', 'ASUS','This is one of the best laptop series from ASUS that can be used!', 749, 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('hp_15-bs553tu', 'HP15 bs578TU', 'HP','This is one of the best laptop series from HP that can be used!', 769 , 5, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('laptopHP15', 'HP 15-bs559TU', 'HP','This is one of the best laptop series from HP that can be used!', 769 , 5, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('ASUSLAP', 'Laptop Asus', 'ASUS','This is one of the best laptop series from dell that can be used!', 1429 , 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('laptop_asus', 'Laptop Asus', 'ASUS','This is one of the best laptop series from dell that can be used!', 2129 , 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('laptopProbook', 'HP Probook', 'HP','This is one of the best laptop series from HP that can be used!', 2119 , 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('probook_430', 'Probook 430', 'HP','This is one of the best laptop series from HP that can be used!', 1779, 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('acer-as', 'Acer E5', 'ACER','This is one of the best laptop series from ACER that can be used!', 869, 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('acer-a515', 'Laptop Acer', 'ACER','This is one of the best laptop series from ACER that can be used!', 1519, 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('thinkpad', 'Lenovo Thinkpad', 'LENOVO','This is one of the best laptop series from LENOVO that can be used!', 2449, 2, True, 1 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('LAPTOPLG', 'Laptop LG', 'LG','This is one of the best laptop series from LG that can be used!', 2400, 2, True, 1 );

-- TV
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-tcl-l65p6', 'Tivi TCL 4K ', 'TCL', 'This is one of the best TV series from TCL that can be used!', 3479, 2, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-sony-kd', 'Tivi 4K Sony ', 'SONY', 'This is one of the best TV series from TCL that can be used!', 3479, 3, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-lg-65uk6340ptf', 'Tivi LG 4K', 'LG', 'This is one of the best TV series from LG that can be used!', 3570, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-oled-lg', 'Tivi OLED LG', 'LG', 'This is one of the best TV series from LG that can be used!', 8000, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-lg', 'Tivi LG 4K', 'LG ', 'This is one of the best TV series from LG that can be used!', 3290, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-lg-65', 'Tivi LG 4K', 'LG', 'This is one of the best TV series from LG that can be used!', 3690, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-sony-kd1', 'Tivi Sony 4K', 'SONY', 'This is one of the best TV series from SONY that can be used!', 2190, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Tivi LG 4K', 'Tivi LG 4K', 'LG', 'This is one of the best TV series from LG that can be used!', 2190, 3, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-lg-65uk', 'Tivi LG 4K ', 'LG', 'This is one of the best TV series from LG that can be used!', 21200, 2, true, 1);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tvandroi', 'Android TV Sony ', 'SONY', 'This is one of the best TV series from TCL that can be used!', 4090, 3, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-lg-43uk', 'Tivi LG 4K', 'LG', 'This is one of the best TV series from LG that can be used!', 1340, 2, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('SAMSUNGTV', 'Tivi Samsung 4K', 'SAMSUNG', 'This is one of the best TV series from SAMSUNG that can be used!', 3490, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('TVSONY', 'Tivi Sony 40', 'SONY', 'This is one of the best TV series from SONY that can be used!', 1050, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-panasonic', 'Tivi Panasonic 40', 'PANASONIC', 'This is one of the best TV series from PANASONIC that can be used!', 679, 4, true, 2);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('tivi-qled', 'Tivi QLED', 'SAMSUNG', 'This is one of the best TV series from SAMSUNG that can be used!', 7489, 4, true, 2);

-- Smartphones
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('PRDABC123DEFX', 'iPhone 5s', 'apple', 'This is one of the best phone available in the market right now!', 300, 5, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('PRDDEF123DEFX', 'Samsung s7', 'samsung', 'A smart phone by samsung!', 590, 2, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('PRDPQR123WGTX', 'Google Pixel', 'google', 'This is one of the best android smart phone available in the market right now!', 600, 5, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('galaxy-s9', 'Galaxy S9+', 'SAMSUNG', 'This is one of the best smart phone series from samsung that can be used!', 1120, 2, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Galaxy S9+', 'Galaxy S9+', 'SAMSUNG', 'This is one of the best smart phone series from samsung that can be used!', 1120, 4, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('Galaxy Note 8', 'Note 8', 'SAMSUNG', 'This is one of the best smart phone series from samsung that can be used!',  2249, 5, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('galaxy-s8', 'S8 Plus', 'SAMSUNG', 'This is one of the best smart phone series from samsung that can be used!', 1799, 4, true, 3);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('galaxy-a8', 'A8 Star', 'SAMSUNG', 'This is one of the best smart phone series from samsung that can be used!', 1399, 4, true, 3);

-- Tablets
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('ipad-pro', 'iPad Pro', 'APPLE', 'This is one of the best TABLET series from APPLE that can be used!', 1999, 4, true, 4);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('galaxy-tab-a6', 'Galaxy Tab', 'SAMSUNG', 'This is one of the best TABLET series from SAMSUNG that can be used!',  799, 4, true, 4);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('mobell-tab-8', 'Mobell Tab 8', 'MOBELL', 'This is one of the best TABLET series from MOBELL that can be used!', 299, 3, true, 4);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('TABA6', 'Tab A6', 'SAMSUNG', 'This is one of the best TABLET series from SAMSUNG that can be used!', 799, 2, true, 4);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('lenovo-tab-7', 'Tab 7', 'LENOVO', 'This is one of the best TABLET series from LENOVO that can be used!', 239, 2, true, 4);

-- Mobile Accessories
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('phoneblutooth', 'Bluetooth NFC', 'AWEI', 'This is one of the best ACESSORIES series from TCL that can be used!', 33, 2, true, 5);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('adapter', 'Adapter', 'XMOBILE', 'This is one of the best ACESSORIES series from TCL that can be used!', 6, 2, true, 5);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('headphonebose', 'QuietComfort', 'BOSE', 'This is one of the best ACESSORIES series from BOSE that can be used!', 899, 3, true, 5);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('loabose', 'SoundLink ', 'BOSE', 'This is one of the best ACESSORIES series from BOSEL that can be used!', 499, 4, true, 5);
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id)
VALUES ('loablutoothcq5', 'SoundTouch', 'BOSE', 'This is one of the best ACESSORIES series from BOSE that can be used!', 1740, 2, true, 5);

