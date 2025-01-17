<<<<<<< HEAD
-- Create a database called hbnb_test_db in the current MySQL server
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- create the MySQL server user hbnb_test
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
-- Grant Permissions for user hbnb_test
GRANT ALL ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';
=======
-- Creates a MySQL server with:
--  database hbnb_test_db
--  user hbnb_test with password hbnb_dev_pwd in localhost.
--  grants all privilages for hbnb_test on hbnb_dev_db
--  grants SELECT privilege for hbnb_test on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- Creating a user on hbnb_test_db
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
-- Granting all privilages to the created user.
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
-- Granting SELECTED privileges on performance schema
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
-- Flushing privileges
FLUSH PRIVILEGES;
>>>>>>> 52836e803465455fe9db0c773d61b3a26feb8d90
