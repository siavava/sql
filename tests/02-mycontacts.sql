/**
 * mycontacts.sql
 * SQL statements for conditional selections
 *
 * Author: siavava <amittaijoel@outlook.com>
 */

/* create table mycontacts */
CREATE TABLE IF NOT EXISTS my_contacts (
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50),
  gender CHAR(1) NOT NULL,
  birthday DATE,
  profession VARCHAR(50),
  location VARCHAR(50),
  status VARCHAR(20),
  interests VARCHAR(100),
  seeking VARCHAR(100)
);

/* insert values into table */
INSERT INTO my_contacts 
  ( first_name, last_name, email, gender, profession, location)
VALUES 
( 
  'Pat', 'Paulson', 'patpost@breakneckpizza.com',
  'M', 'delivery worker', 'Princeton, NJ'
),
(
  'Jon', 'Jackson', 'jonpost@breakneckpizza.com',
  'M', 'cook', 'Princeton, NJ'
),
(
  'Kat', 'Clarkson', 'katpost@breakneckpizza.com',
  'F', 'Manager', 'Princeton, NJ'
);

/* peek at all values */
SELECT * FROM my_contacts;


/* gender = 'M' */
SELECT * FROM my_contacts
WHERE 
gender = 'M';

/* first_name, last_name, profession */
SELECT first_name, last_name, profession from my_contacts;

/* first_name, last_name, profession...
   gender = 'M' && profession = 'cook' */
SELECT first_name, last_name, profession from my_contacts
WHERE
gender = 'M';

/* first_name, last_name, profession...
   gender = 'M' && profession = 'cook'*/
SELECT first_name, last_name, profession from my_contacts
WHERE
gender = 'M'
AND
profession = 'cook';

