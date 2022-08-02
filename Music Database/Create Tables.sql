 /*database name*/
use it330mc_FA21_daj114;

 /*dropping tables so table can be recreated
 will wipe existing data in tables
 */
drop table if exists listenings;
drop table if exists songs;
drop table if exists artists;
drop table if exists categories;
drop table if exists users;




 /*artists table*/
CREATE TABLE artists (
    artistID INT PRIMARY KEY AUTO_INCREMENT,
    artistName VARCHAR(255),
    lastUpdatedDate DATETIME DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;  /*database engine*/


 /* genre table*/
CREATE TABLE categories (
    categoryID INT PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(255),
    lastUpdatedDate DATETIME DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;


 /* user table */
CREATE TABLE users (
    userID INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    lastUpdatedDate DATETIME DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;


/*composite tables must be created after the preliminary table for foreign key references*/


 /* unique song table*/
CREATE TABLE songs (
    songID INT AUTO_INCREMENT PRIMARY KEY,
    songTitle VARCHAR(255) NOT NULL,
    songLength TIME NOT NULL,
    songReleaseYear INT NOT NULL,
    categoryID INT NOT NULL,
    artistID INT NOT NULL,
    lastUpdatedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (categoryID)  /*composite tables must references foreign keys*/
        REFERENCES categories (categoryID),
    FOREIGN KEY (artistID)
        REFERENCES artists (artistID)
)  ENGINE=INNODB;


 /* indivdual song session records*/
CREATE TABLE listenings (
    listeningID INT PRIMARY KEY AUTO_INCREMENT,
    listeningStartTime DATETIME NOT NULL,
    listeningEndTime DATETIME NOT NULL,
    userID INT NOT NULL,
    songID INT NOT NULL,
    lastUpdatedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userID)
        REFERENCES users (userID),
    FOREIGN KEY (songID)
        REFERENCES songs (songID)
)  ENGINE=INNODB;



SELECT 
    *
FROM
    songs;
