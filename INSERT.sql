INSERT INTO styles (style_name) 
	VALUES
		('POP'),
		('ROCK'),
		('CLASSIC'),
		('ELECTRIK'),
		('RAP');

INSERT INTO artist (artist_name) 
	VALUES
		('Tibasko'),
		('Руки Вверх!'),
		('DJ SMASH'),
		('Дима Билан'),
		('Kanye West'),
		('КИНО'),
	        ('Lindsey Stirling'),
	   	('Vanessa Mae'),
	   	('Eminem'),
	   	('МакSим');
	   
INSERT INTO album (album_name, release_date) 
	VALUES
		('Isolate', '01-01-2023'),
		('The Best', '01-01-2013'),
		('The Best of the best', '01-01-2018'),
		('Молния', '01-01-2018'),
		('Dondа', '01-01-2021'),
		('Легенда', '01-01-2018'),
		('Artemis', '01-01-2019'),
		('The Ultimate Vanessa Mae Collection', '01-01-2003'),
		('Relapse Deluxe', '01-01-2009'),
		('МОЙ РАЙ', '01-01-2007'),
		('Album of 2020 year', '01-01-2020');	
		
INSERT INTO track (track_name, duration, album_id) 
	VALUES
		('Love Me', 395, 1),
		('Synths of Ceylon',309, 1),
		('Алёшка', 205, 2),
		('Думала', 257, 2),
		('Moscow Never Sleeps', 236, 3),
		('Молния', 181, 4),
		('Jonah', 195, 5),
		('Кукушка', 400, 6),
		('Пачка сигарет', 268, 6),
		('Underground', 264, 7),
		('Picante', 177, 8),
		('My Mom', 319, 9),
		('МОЙ РАЙ', 215, 10),
		('ЗИМА', 177, 10),
		('НАУЧУСЬ ЛЕТАТЬ', 231, 10),
		('New track for Artemis', 250, 7),
		('Track №1 for album 2020', 230, 11),
		('Track №2 for album 2020', 245, 11),
		('Track №3 for album 2020', 255, 11);
	
INSERT INTO collection (collection_name, release_date) 
	VALUES
		('collection of songs 1', '01-01-2015'),
		('collection of songs 2', '01-01-2016'),
		('collection of songs 3', '01-01-2017'),
		('collection of songs 4', '01-01-2018'),
		('collection of songs 5', '01-01-2019'),
		('collection of songs 6', '01-01-2020'),
		('collection of songs 7', '01-01-2021'),
		('collection of songs 8', '01-01-2022');
	
INSERT INTO album_artist (album_id, artist_id)
	VALUES
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 7);

INSERT INTO artist_styles (style_id, artist_id)
	VALUES
		(4, 1),
		(1, 2),
		(1, 3),
		(1, 4),
		(5, 5),
		(2, 6),
		(3, 7),
		(3, 8),
		(5, 9),
		(1, 10),
		(4, 3);
	
INSERT INTO track_collection (track_id, collection_id )
	VALUES
		(1, 1),
		(3, 1),
		(6, 2),
		(7, 2),
		(2, 3),
		(3, 3),
		(4, 4),
		(4, 5),
		(5, 6),
		(10, 6),
		(4, 7),
		(7, 7),
		(15, 8),
		(13, 4),
		(12, 5),
		(11, 6),
		(14, 6),
		(9, 7),
		(7, 8);
	