/* DROP previous version */
DROP TABLE my_drinks;


/* create table */
CREATE TABLE IF NOT EXISTS my_drinks 
(
  drink_id SERIAL PRIMARY KEY,
  drink_name VARCHAR(25) NOT NULL,
  main VARCHAR(25) NOT NULL,
  amount1 DEC NOT NULL,
  second VARCHAR(25) NOT NULL,
  amount2 DEC NOT NULL,
  directions VARCHAR(200) DEFAULT 'contact us for more instructions.'
);

/** add primary key */
-- ALTER TABLE my_drinks ADD PRIMARY KEY (drink_id);

/* insert data */
INSERT INTO my_drinks
(drink_name, main, amount1, second, amount2)
VALUES
('Blackthorn', 'tonic water', 1.5, 'pineapple juice', 1),
('Blue Moon', 'soda', 1.5, 'blueberry juice', .75),
('Oh My Gosh', 'peach nectar', 1, 'pineapple juice', 1),
('Lime Fizz', 'Sprite', 1.5, 'lime juice', .75),
('Kiss on the Lips', 'cherry juice', 2, 'apricot nectar', 7),
('Hot Gold', 'peach nectar', 3, 'orange juice', 6),
('Lone Tree', 'soda', 1.5, 'cherry juice', .75),
('Greyhound', 'soda', 1.5, 'grapefruit juice', 5),
('Indian Summer', 'apple juice', 2, 'hot tea', 6),
('Bull Frog', 'iced tea', 1.5, 'lemonade', 5),
('Soda and lt', 'soda', 2, 'grape juice', 1);

/* show all table contents */
SELECT * FROM my_drinks;

/* select all with a 'juice' main ingredient */
SELECT * FROM my_drinks
WHERE
main LIKE '%juice';

/* select all with amount1 > 2 and amount2 < 2 */
SELECT drink_id, drink_name FROM my_drinks
WHERE
amount1 > 1 AND amount2 < 1;

/* selecting ranges */
SELECT drink_id, drink_name FROM my_drinks
WHERE
amount2 >= 2 AND amount2 <= 6;

/* selecting ranges using BETWEEN */
SELECT drink_id, drink_name FROM my_drinks
WHERE
amount2 BETWEEN 2 AND 6;