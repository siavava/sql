/**
 * conditional_select.sql
 * SQL statements for conditional selections
 *
 * Author: siavava <amittaijoel@outlook.com>
 */

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

