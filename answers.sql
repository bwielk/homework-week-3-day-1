-- Return ALL the data in the 'movies' table.
SELECT * FROM MOVIES

id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:40
  2 | The Incredible Hulk                 | 2008 | 23:45
  3 | Iron Man 2                          | 2010 | 17:45
  4 | Thor                                | 2011 | 14:40
  5 | Captain America: The First Avenger  | 2011 | 17:05
  6 | Avengers Assemble                   | 2012 | 12:30
  7 | Iron Man 3                          | 2013 | 18:00
  8 | Thor: The Dark World                | 2013 | 18:55
  9 | Batman Begins                       | 2005 | 16:30
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 11 | Guardians of the Galaxy             | 2014 | 12:10
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 18:20
 14 | Captain America: Civil War          | 2016 | 22:00
 15 | Doctor Strange                      | 2016 | 16:30

-- Return ONLY the name column from the 'people' table
SELECT NAME FROM PEOPLE

       name       
------------------
 James Annal
 Harrison Booth
 Graeme Cameron
 Sean Fealy
 Julia Franzoi
 Ben Frith
 Andrew Guppy
 Nina Kahr
 Camden Lohman
 Andrew Lonsdale
 Rory MacDonald
 Steven Noble
 Amy Robinson
 David Scott
 Lorna Sherwood
 Peter Trizuliak
 Blaise Wielk
 Kristie Yorkston
 Craig Morton

-- Return ONLY your name from the 'people' table.


SELECT name FROM people WHERE id = 17;

Blaise Wielk

-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

DELETE 1
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:40
  2 | The Incredible Hulk                 | 2008 | 23:45
  3 | Iron Man 2                          | 2010 | 17:45
  4 | Thor                                | 2011 | 14:40
  5 | Captain America: The First Avenger  | 2011 | 17:05
  6 | Avengers Assemble                   | 2012 | 12:30
  7 | Iron Man 3                          | 2013 | 18:00
  8 | Thor: The Dark World                | 2013 | 18:55
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 11 | Guardians of the Galaxy             | 2014 | 12:10
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 18:20
 14 | Captain America: Civil War          | 2016 | 22:00
 15 | Doctor Strange                      | 2016 | 16:30
(14 rows)

-- Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Rick');
SELECT * FROM people;


 id |       name       
----+------------------
  1 | James Annal
  2 | Harrison Booth
  3 | Graeme Cameron
  4 | Sean Fealy
  5 | Julia Franzoi
  6 | Ben Frith
  7 | Andrew Guppy
  8 | Nina Kahr
  9 | Camden Lohman
 10 | Andrew Lonsdale
 11 | Rory MacDonald
 12 | Steven Noble
 13 | Amy Robinson
 14 | David Scott
 15 | Lorna Sherwood
 16 | Peter Trizuliak
 17 | Blaise Wielk
 18 | Kristie Yorkston
 19 | Craig Morton
 20 | Rick

-- Craig Morton, has decided to hijack our movie evening, Remove him from the table of people

DELETE FROM people WHERE id = 19;
SELECT * FROM people;

DELETE 1
 id |       name       
----+------------------
  1 | James Annal
  2 | Harrison Booth
  3 | Graeme Cameron
  4 | Sean Fealy
  5 | Julia Franzoi
  6 | Ben Frith
  7 | Andrew Guppy
  8 | Nina Kahr
  9 | Camden Lohman
 10 | Andrew Lonsdale
 11 | Rory MacDonald
 12 | Steven Noble
 13 | Amy Robinson
 14 | David Scott
 15 | Lorna Sherwood
 16 | Peter Trizuliak
 17 | Blaise Wielk
 18 | Kristie Yorkston
(18 rows)

-- Somehow the list of people includes two people named 'Andrew'. Change one entry to 'Andy' and leave the other entry as 'Andrew'

UPDATE people SET name = 'Andy Guppy' WHERE id = 7;
SELECT * FROM people;

 id |       name       
----+------------------
  1 | James Annal
  2 | Harrison Booth
  3 | Graeme Cameron
  4 | Sean Fealy
  5 | Julia Franzoi
  6 | Ben Frith
  8 | Nina Kahr
  9 | Camden Lohman
 10 | Andrew Lonsdale
 11 | Rory MacDonald
 12 | Steven Noble
 13 | Amy Robinson
 14 | David Scott
 15 | Lorna Sherwood
 16 | Peter Trizuliak
 17 | Blaise Wielk
 18 | Kristie Yorkston
 19 | Craig Morton
  7 | Andy Guppy

-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, '00:00');
SELECT * FROM movies ORDER BY show_time ASC;
----+-------------------------------------+------+-----------
 16 | Guardians of the Galaxy 2           | 2016 | 00:00
 11 | Guardians of the Galaxy             | 2014 | 12:10
  6 | Avengers Assemble                   | 2012 | 12:30
  4 | Thor                                | 2011 | 14:40
  1 | Iron Man                            | 2008 | 15:40
  9 | Batman Begins                       | 2005 | 16:30
 15 | Doctor Strange                      | 2016 | 16:30
  5 | Captain America: The First Avenger  | 2011 | 17:05
  3 | Iron Man 2                          | 2010 | 17:45
  7 | Iron Man 3                          | 2013 | 18:00
 13 | Ant-Man                             | 2015 | 18:20
  8 | Thor: The Dark World                | 2013 | 18:55
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 14 | Captain America: Civil War          | 2016 | 22:00
 12 | Avengers: Age of Ultron             | 2015 | 23:40
  2 | The Incredible Hulk                 | 2008 | 23:45


-- The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, '00:00');
SELECT * FROM movies;

 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:40
  2 | The Incredible Hulk                 | 2008 | 23:45
  3 | Iron Man 2                          | 2010 | 17:45
  4 | Thor                                | 2011 | 14:40
  5 | Captain America: The First Avenger  | 2011 | 17:05
  6 | Avengers Assemble                   | 2012 | 12:30
  7 | Iron Man 3                          | 2013 | 18:00
  8 | Thor: The Dark World                | 2013 | 18:55
  9 | Batman Begins                       | 2005 | 16:30
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 18:20
 14 | Captain America: Civil War          | 2016 | 22:00
 15 | Doctor Strange                      | 2016 | 16:30
 11 | Guardians of the Galaxy             | 2014 | 21:30
 16 | Guardians of the Galaxy 2           | 2016 | 00:00


