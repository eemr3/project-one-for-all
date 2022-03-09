SELECT a.artist_name AS artista, alb.title AS album  FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album as alb
ON alb.artist_id = a.artist_id
WHERE a.artist_name = 'Walter Phoenix';
