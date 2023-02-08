SELECT g.genre_name, COUNT(*) FROM genres_artists ga
LEFT JOIN genres g ON ga.genre_id = g.genre_id
GROUP BY g.genre_name;

SELECT COUNT(*) FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE album_year BETWEEN 2019 AND 2020;

SELECT a.album_name, AVG(t.track_lenght) FROM tracks t
JOIN albums a ON t.album_id = a.album_id
GROUP BY a.album_name;

SELECT DISTINCT a.artist_name FROM artists_albums aa
JOIN artists a ON aa.artist_id = a.artist_id 
JOIN albums a2 ON aa.album_id = a2.album_id 
WHERE a2.album_year NOT BETWEEN 2019 AND 2021;

SELECT DISTINCT m.mixtape_name FROM mixtapes m
JOIN mixtape_tracks mt ON m.mixtape_id = mt.mixtape_id 
JOIN tracks t ON mt.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id 
JOIN artists_albums aa ON a.album_id = aa.album_id
JOIN artists a2 ON aa.artist_id = a2.artist_id 
WHERE a2.artist_name LIKE 'Eminem'

SELECT DISTINCT a2.album_name FROM albums a2
JOIN artists_albums aa ON a2.album_id = aa.album_id
JOIN artists a3 ON aa.artist_id = a3.artist_id 
WHERE a3.artist_name IN (SELECT a.artist_name FROM genres_artists ga
						JOIN artists a ON ga.artist_id = a.artist_id
						GROUP BY a.artist_name
						HAVING COUNT(*) > 1);

SELECT t.track_name FROM tracks t
LEFT JOIN mixtape_tracks mt ON t.track_id = mt.track_id
WHERE mt.track_id IS NULL;

SELECT a.artist_name FROM artists a
JOIN artists_albums aa ON a.artist_id = aa.artist_id
JOIN albums a2  ON aa.album_id = a2.album_id
JOIN tracks t ON a2.album_id = t.album_id
WHERE t.track_lenght = (SELECT MIN(track_lenght) FROM tracks);

SELECT DISTINCT a.album_name FROM albums a
JOIN tracks t ON t.album_id = a.album_id 
WHERE t.album_id IN (SELECT t.album_id FROM tracks t
					GROUP BY t.album_id
					HAVING COUNT(t.album_id) = (SELECT COUNT(album_id) FROM tracks
											  GROUP BY album_id
											  ORDER BY count
											  LIMIT 1)
					);