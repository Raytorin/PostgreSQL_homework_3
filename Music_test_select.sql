SELECT album_name, album_year FROM album
WHERE (SELECT EXTRACT(YEAR FROM album_year)) = '2018';

SELECT track_name, track_duraction FROM tracks 
ORDER BY track_duraction DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE track_duraction > '03:50:00';

SELECT compilation_name FROM compilation
WHERE (SELECT EXTRACT(YEAR FROM compilation_year)) BETWEEN '2018' AND '2020';

SELECT artist_name FROM artist
WHERE (LENGTH(artist_name) - LENGTH(REPLACE(artist_name, ' ', ''))+1) = 1;

SELECT track_name FROM tracks
WHERE LOWER(track_name) LIKE '%my%';
	


