SELECT a.artist_name AS artista, alb.title AS album, COUNT(flw.user_id) AS seguidores FROM SpotifyClone.artist a
INNER JOIN SpotifyClone.album as alb
ON alb.artist_id = a.artist_id
INNER JOIN SpotifyClone.following_artist as flw
ON flw.artist_id = a.artist_id
GROUP BY a.artist_name, alb.title
ORDER BY seguidores DESC, a.artist_name, alb.title;
