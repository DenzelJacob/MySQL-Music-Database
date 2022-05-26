use it330mc_FA21_daj114;

-- Generate SQL to "Add a Song Category". Provide example data.

insert into categories (categoryName) values  ('Country');
SELECT 
    *
FROM
    categories;



-- Generate SQL to "Delete a Song Category". Provide example data. Cannot be the Category you added in the prior step

DELETE FROM songs 
WHERE
    categoryID = 2;
DELETE FROM categories 
WHERE
    categoryID = 2;

SELECT 
    *
FROM
    categories;


-- Generate SQL to "Add A Song". Provide example data.

insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('One Dance','00:02:55',2016,1,2);

SELECT 
    *
FROM
    songs;


-- Generate SQL to "Delete A Song". Provide example data. Cannot be the Song you added in the prior step

DELETE FROM songs 
WHERE
    songID = 2;

SELECT 
    *
FROM
    songs;

-- Generate SQL to "Produce searchable Song directory (search all characteristics). Display all characteristics per Song in output. Sort ascending by Song Name.". Provide example data.
SELECT 
    s.songID,
    s.songTitle,
    s.songLength,
    s.songReleaseYear,
    c.categoryID,
    a.artistID,
    a.artistName,
    c.categoryName,
    s.lastUpdatedDate
FROM
    songs AS s
        INNER JOIN
    categories AS c USING (categoryID)
        INNER JOIN
    artists AS a USING (artistID)
ORDER BY songTitle ASC;


-- Generate SQL to "Add a Song Listening entry". Provide example data.

insert into listenings (listeningStartTime, listeningEndTime,userID,songID) values ('2021-12-13 20:24:36','2021-12-13 20:29:37',1,5);

SELECT 
    *
FROM
    listenings;



-- Generate SQL to "Delete a Song Listening entry". Provide example data. Cannot be the listening entry from the prior step

DELETE FROM listenings 
WHERE
    listeningID = 1;
    
SELECT 
    *
FROM
    listenings;


-- Generate SQL to "Produce listening statement between two times of day (if the listening starts between these times).
-- show all listening characteristics in output.
-- Sort by date and time.
-- Calculate the total length of time for listening.
SELECT 
    *
FROM
    listenings
WHERE
    listeningStartTime > '2021-12-13 15:00:00'
        AND listeningEndTime < '2021-12-13 23:00:00';

SELECT 
    SUM(listeningEndTime - listeningStartTime) AS 'timespend(s)'
FROM
    listenings
WHERE
    listeningStartTime > '2021-12-13 15:00:00'
        AND listeningEndTime < '2021-12-13 23:00:00';

-- Generate SQL to Produce a Category report.
-- Show: Category, Number of songs per Category, Total length of time per Category

SELECT 
    c.categoryName AS Category,
    COUNT(s.songID) AS 'Number of songs per Category',
    SUM(s.songLength) AS 'Total length of time per Category'
FROM
    songs AS s
        INNER JOIN
    categories AS c USING (categoryID)
GROUP BY c.categoryID;
