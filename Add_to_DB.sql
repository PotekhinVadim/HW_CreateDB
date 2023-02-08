insert into genres(genre_ID, genre_name)
values	('1', 'Rock'),
		('2', 'Pop'),
		('3', 'Electro'),
		('4', 'Classic'),
		('5', 'Rap');

insert into artists(artist_name)
values	('Eminem'),
		('Rammstein'),
		('Ludwig Van Beethoven'),
		('Michael Jackson'),
		('Chemical Brothers'),
		('Fatboy Slim'),
		('Земфира'),
		('Katy Perry');
	
insert into genres_artists
values	(2, 1),
		(5, 1),
		(1, 2),
		(4, 3),
		(1, 4),
		(2, 4),
		(3, 5),
		(2, 6),
		(3, 6),
		(1, 7),
		(2, 7),
		(2, 8);
		
insert into albums(album_name, album_year)
values	('Sonata di violin N8', 1816),
		('Firework', 2015),
		('Thriller', 1989),
		('Marshall Matters', 2002),
		('П.М.М.Л.', 2005),
		('Songs for Jane', 2018),
		('Brown Album', 2018),
		('Rapping like a bee (ouch)', 2022);
	
insert into artists_albums
values	(1, 4),
		(2, 6),
		(2, 7),
		(3, 1),
		(4, 3),
		(5, 7),
		(1, 8),
		(6, 8),
		(7, 5),
		(7, 8),
		(8, 2);
		
insert into tracks(track_name, track_lenght, album_id)
values	('Жить в твоей голове', 263, 5),
		('Забей', 196, 5),
		('Хватит', 296, 5),
		('Sonata major', 865, 1),
		('Sonata minor', 1235, 1),
		('Hot and Cold', 186, 2),
		('Not so Hot', 120, 2),
		('Billie Jean', 209, 3),
		('Earth song', 382, 3),
		('My ass', 163, 4),
		('My butt', 163, 4),
		('Zap not forever more my Lord', 274, 6),
		('Forgive me my love', 308, 6),
		('How to eat', 175, 7),
		('How to live', 384, 7),
		('Tough but tru', 218, 8),
		('Rough but my life sucks', 254, 8);
		
insert into mixtapes(mixtape_name, mixtape_year)
values	('Best of pop', 2009),
		('Best of rap', 2018),
		('Best of XXI century', 2023),
		('Classic vs. Electro', 2020),
		('Strangest music', 2019),
		('Союз-85', 2005),
		('Золотые саундтреки', 2010),
		('Best from the west', 1998);
	
insert into mixtape_tracks
values	(3, 1),
		(6, 1),
		(7, 1),
		(8, 1),
		(10, 2),
		(11, 2),
		(16, 2),
		(17, 2),
		(8, 3),
		(9, 3),
		(1, 3),
		(4, 3),
		(4, 4),
		(5, 4),
		(12, 4),
		(15, 4),
		(2, 5),
		(7, 5),
		(13, 5),
		(14, 5),
		(1, 6),
		(2, 6),
		(3, 6),
		(16, 7),
		(11, 7),
		(6, 7),
		(8, 8),
		(12, 8),
		(17, 8);
	
insert into albums(album_name, album_year)
values	('Attention', 2019),
		('Nowhere', 2020);
	
insert into artists(artist_name)
values	('Chimino');

insert into genres_artists
values	(4, 9);
	
insert into tracks(track_name, track_lenght, album_id)
values	('uno', 88, 9),
		('dos', 232, 9),
		('tres', 123, 9),
		('quattro', 543, 9),
		('cinco', 435, 10),
		('seis', 18, 10),
		('alle', 234, 10);
	
insert into artists_albums
values	(9, 9),
		(9, 10);
