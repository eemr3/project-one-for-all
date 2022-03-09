SELECT COUNT(m.title_music) AS cancoes, COUNT(a.artist_name) AS artistas, COUNT(alb.title) AS albuns from SpotifyClone.music AS m 
LEFT JOIN SpotifyClone.album AS  alb
ON alb.album_id = m.music_id
LEFT JOIN SpotifyClone.artist AS a
ON a.artist_id = alb.album_id;
