CREATE TABLES:
1)discount:
	create table discount(Product_Category varchar(25) primary key, Discount int, GST int, Delivey_Charge int);
	select * from discount;
		+------------------+----------+------+----------------+
		| Product_Category | Discount | GST  | Delivey_Charge |
		+------------------+----------+------+----------------+
		| Clothing         |       40 |   12 |              0 |
		| Electronics      |       15 |   18 |            350 |
		| Furniture        |       10 |   18 |            300 |
		| Home Appliances  |       22 |   24 |            800 |
		+------------------+----------+------+----------------+
2)products:
	create table products(Product_ID int primary key, 
						Product_Name varchar(30), 
						Product_Type varchar(30), 
						Product_Category varchar(30), 
						Product_Price int,
						foreign key(Product_Category)
						references discount(Product_Category)
						);
						
	select * from products;
		+------------+--------------------+-----------------+------------------+---------------+
		| Product_ID | Product_Name       | Product_Type    | Product_Category | Product_Price |
		+------------+--------------------+-----------------+------------------+---------------+
		|       1001 | Lenovo Yoga        | Laptop          | Electronics      |         45000 |
		|       1002 | LG Washing Machine | Washing Machine | Home Appliances  |         25000 |
		|       1003 | HP Pavilion 360    | Laptop          | Electronics      |         60000 |
		|       1004 | US Polo Assn       | T-Shirt         | Clothing         |          1200 |
		|       1005 | Neelkamal Been Bag | Sofa Set        | Furniture        |           350 |
		|       1008 | hp                 | laptop          | Electronics      |         50000 |
		+------------+--------------------+-----------------+------------------+---------------+
		
create dynamic web project in eclipse
and build the productAPI.
