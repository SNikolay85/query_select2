SELECT style_name, COUNT(artist_name) 
  FROM artist AS a
  JOIN artist_styles AS a_s ON a_s.artist_id = a.artist_id 
  JOIN styles AS s ON s.style_id = a_s.style_id 
GROUP BY style_name;

SELECT release_date, COUNT(track_name) 
  FROM album AS al
  JOIN track AS t ON t.album_id = al.album_id 
 WHERE release_date BETWEEN '01-01-2019' AND '31-12-2020'
GROUP BY release_date;

SELECT album_name, ROUND(AVG(duration), 1)
  FROM album a 
  JOIN track AS t ON t.album_id = a.album_id 
GROUP BY album_name;

SELECT artist_name, release_date
  FROM artist AS a 
  JOIN album_artist AS a_a ON a_a.artist_id = a.artist_id 
  JOIN album AS al ON al.album_id = a_a.album_id 
  WHERE release_date NOT BETWEEN '01-01-2020' AND '31-12-2020';

SELECT collection_name
  FROM collection AS col 
  JOIN track_collection AS t_c ON t_c.collection_id = col.collection_id 
  JOIN track AS t ON t.track_id = t_c.track_id 
  JOIN album AS al ON al.album_id = t.album_id 
  JOIN album_artist AS a_a ON a_a.album_id = al.album_id 
  JOIN artist AS art ON art.artist_id = a_a.artist_id 
  WHERE artist_name = 'МакSим';

SELECT album_name, COUNT(artist_name)
  FROM album AS al 
  JOIN album_artist AS a_a ON a_a.album_id =al.album_id 
  JOIN artist AS a ON a.artist_id =a_a.artist_id 
  JOIN artist_styles AS a_s ON a_s.artist_id = a.artist_id  
GROUP BY album_name 
HAVING COUNT(artist_name) > 1;

SELECT track_name
  FROM track AS t 
  LEFT JOIN track_collection AS t_c ON t_c.track_id = t.track_id 
 WHERE t_c.track_id IS NULL;

SELECT artist_name, duration
  FROM artist AS a
  JOIN album_artist AS a_a ON a_a.artist_id = a.artist_id 
  JOIN album AS al ON al.album_id = a_a.album_id 
  JOIN track AS t ON t.album_id = al.album_id 
  WHERE duration IN (SELECT MIN(duration) FROM track);

SELECT album_name, COUNT(track_id)
  FROM album AS al
  JOIN track AS t ON t.album_id = al.album_id 
GROUP BY album_name 
HAVING (track_id ) IN (
	SELECT count(track_id)
	  FROM album AS al
	  JOIN track AS t ON t.album_id = al.album_id 
   GROUP BY album_name
   ORDER BY count(track_id ) LIMIT 1
  );