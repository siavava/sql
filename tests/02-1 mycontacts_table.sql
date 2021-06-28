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

INSERT INTO my_contacts (
  first_name,
  last_name,
  email,
  gender,
  profession,
  location
)
VALUES 
(
  'Pat',
  'Paulson',
  'patpost@breakneckpizza.com',
  'M',
  'delivery worker', 
  'Princeton, NJ'
),
(
  'Jon',
  'Jackson',
  'jonpost@breakneckpizza.com',
  'M',
  'cook', 
  'Princeton, NJ'
),
(
  'Kat',
  'Clarkson',
  'katpost@breakneckpizza.com',
  'F',
  'Manager', 
  'Princeton, NJ'
);