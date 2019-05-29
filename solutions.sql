-- Solutions
-- https://github.com/DevMountain/sql-1-afternoon


-- Table - person
   -- #1
   CREATE TABLE person (
   id SERIAL PRIMARY KEY,
   name VARCHAR(25),
   age INTEGER,
   height INTEGER,
   city VARCHAR(25),
   favorite_color VARCHAR(25)
   );

   -- #2
   INSERT INTO person (name, age, height, city, favorite_color)
   VALUES
      ('Jackson', 15, 175, 'New Springs', 'Yellow'),
   ('Leo', 14, 168, 'Haverford', 'Orange'),
   ('Tiffany', 19, 172, 'Dublin', 'Purple'),
   ('Haley', 25, 169, 'Moore', 'Black'),
      ('Allison', 30, 177, 'Charleston', 'Green');

   -- #3
   SELECT * FROM person
   ORDER BY height DESC

   -- #4
   SELECT * FROM person
   ORDER BY height ASC

   -- #5
   SELECT * FROM person
   ORDER BY age DESC

   -- #6
   SELECT * FROM person
   WHERE age > 20

   -- #7
   SELECT * FROM person
   WHERE age = 18

   -- #8
   SELECT * FROM person
   WHERE age < 20 OR age > 30;

   -- #9
   SELECT * FROM person
   WHERE age != 27;

   -- #10
   SELECT * FROM person
   WHERE favorite_color != 'Red';

   -- #11
   SELECT * FROM person
   WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

   -- #12
   SELECT * FROM person
   WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

   -- #13
   SELECT * FROM person
   WHERE favorite_color IN ('Orange', 'Green', 'Blue');

   -- #14
   SELECT * FROM person
   WHERE favorite_color IN ('Yellow', 'Purple');


-- Table - orders
   -- #1
   CREATE TABLE orders (
   person_id SERIAL,
   product_name VARCHAR(25),
   product_price NUMERIC,
   quantity INTEGER
   );

   --   #2
   INSERT INTO orders (
   person_id,
   product_name,
   product_price,
   quantity
   )
   
   VALUES (
      1,
      'Kitchen Scissors',
      18.99,
      18
   ), (
      2,
      'Napkin Holder',
      4.99,
      2
   ), (
      4,
      'Toothpicks',
      2.49,
      12
   ), (
      5,
      'Silverware Set',
      49.99,
      1
   ), (
      3,
      'Roomba Vacuum',
      275,
      2
   ), (
      2,
      'Glassware',
      19.99,
      3
   );
         
   -- #3
   SELECT * FROM orders

   -- #4
   SELECT SUM(quantity) FROM orders;

   -- #5
   SELECT SUM(product_price) FROM orders;

   -- #6
   SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;


-- Table - artist
   -- #1
   INSERT INTO artist (name)
   VALUES ('Smallie Bigs'), ('Wassuh MattaU'), ('Mac N PCheese');

   -- #2
   SELECT * FROM artist 
   ORDER BY name DESC
   LIMIT 10;

   -- #3
   SELECT * FROM artist 
   ORDER BY name ASC
   LIMIT 5;

   -- #4
   SELECT * FROM artist 
   WHERE name LIKE 'Black%';

   -- #5
   SELECT * FROM artist 
   WHERE name ILIKE '%black%';


-- Table - employee
   -- #1
   SELECT first_name, last_name FROM employee
   WHERE city IN ('Calgary');

   -- #2
   SELECT MAX(birth_date) FROM employee

   -- #3
   SELECT MIN(birth_date) FROM employee

   -- #4
   SELECT * FROM employee
   WHERE reports_to = 2;

   -- #5
   SELECT COUNT(*) FROM employee
   WHERE city = 'Lethbridge'

-- Table - invoice
   -- #1
   SELECT COUNT(*) FROM invoice
   WHERE billing_country = 'USA'

   -- #2
   SELECT MAX(total) FROM invoice

   -- #3
   SELECT MIN(total) FROM invoice

   -- #4
   SELECT * FROM invoice
   WHERE total > 5;

   -- #5
   SELECT * FROM invoice
   WHERE total < 5;

   -- #6
   SELECT COUNT(*) FROM invoice
   WHERE billing_state IN ('CA', 'TX', 'AZ')

   -- #7
   SELECT AVG(total) from invoice;

   -- #8
   SELECT SUM(total) FROM invoice;