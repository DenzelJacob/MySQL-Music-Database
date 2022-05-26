/*
Use statement for your database
Statements that delete all data in the tables in the correct order
Statements that insert all data (NOT using the LOAD DATA SQL statement)
10 Songs and their supporting data
Be sure when inserting that if there are references to other tables (fk -> pk) that those values are in insert statements before the fk insert.

artists categories users > songs > listenings

*/

use it330mc_FA21_daj114;

delete from artists;
delete from categories;
delete from users;
delete from songs;
delete from listenings;



insert into artists (artistName) values  ('The Weeknd');
insert into artists (artistName) values  ('Drake');
insert into artists (artistName) values  ('MAX');
insert into artists (artistName) values  ('Justin Bieber');
insert into artists (artistName) values  ('KANA-BOON');
insert into artists (artistName) values  ('Fall Out Boy');

insert into categories (categoryName) values  ('Rap');
insert into categories (categoryName) values  ('Rock');
insert into categories (categoryName) values  ('Pop');

insert into users (username) values  ('Denzel');

insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Often','00:04:09',2015,1,1);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('False Alarm','00:05:45',2016,1,1);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Reminder','00:03:50',2016,1,1);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Gods Plan','00:05:56',2018,1,2);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Laugh Now Cry Later','00:05:01',2020,1,2);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Too Good','00:04:23',2016,1,2);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Blueberry Eyes','00:03:08',2020,3,3);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Peaches','00:03:17',2021,3,4);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Silhouette','00:04:25',2015,2,5);
insert into songs (songTitle, songLength,songReleaseYear,categoryID,artistID) values ('Reminder','00:04:31',2014,2,6);


insert into listenings (listeningStartTime, listeningEndTime,userID,songID) values ('2021-12-13 12:18:27','2021-12-13 12:24:36',1,1);
insert into listenings (listeningStartTime, listeningEndTime,userID,songID) values ('2021-12-13 17:18:27','2021-12-13 17:22:17',1,4);





