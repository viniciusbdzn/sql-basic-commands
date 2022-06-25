CREATE TABLE clients (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    client_name VARCHAR(30) NOT NULL,
    birthday DATE
);

/*inserting values in table*/
INSERT INTO clients (client_name, birthday) VALUES ('Nathally', '1990-05-22');
INSERT INTO clients (client_name, birthday) VALUES ('John', '1982-03-12');
INSERT INTO clients (client_name, birthday) VALUES ('Mary', '1974-12-25');

/*updating data*/
UPDATE clients SET client_name="Nathally Souza" WHERE id="1";

/*deleting data*/
DELETE FROM clients WHERE id='1';

/*sorting in alphabetical order*/
SELECT * FROM clients ORDER BY client_name;


/*sorting in descending alphabetical order*/
SELECT * FROM clients ORDER BY client_name DESC;

/*adding a new collunm in a table*/
ALTER TABLE `clients` ADD `gender` VARCHAR(1) NOT NULL AFTER `birthdate`;

/*show the data lines quantity of a selected column*/
SELECT COUNT(id), gender FROM pessoa GROUP BY gender;
