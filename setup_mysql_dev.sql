-- This file creates a MySQL server with:
--   Database hbnb_dev_db.
--   User hbnb_dev with password hbnb_dev_pwd in localhost.
--   Grants all privileges for hbnb_dev on hbnb_dev_db.
--   Grants SELECT privilege for hbnb_dev on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create a user with username 'hbnb_dev' and 
-- password 'hbnb_dev_pwd' on localhost
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- Granting all privileges tot the new user
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
-- Granting the SELECT privileges for the user hbnb_dev in Performance_schema
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
-- Flushing privileges.
FLUSH PRIVILEGES;
