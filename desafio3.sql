SELECT us.user_name AS usuario, COUNT(m.music_id) AS qtde_musicas_ouvidas, 
ROUND(SUM(m.duration /60),2) AS total_minutos FROM `SpotifyClone`.music_history AS mh
INNER JOIN SpotifyClone.user AS us
ON us.user_id = mh.user_id
INNER JOIN `SpotifyClone`.music AS m
ON m.music_id = mh.music_id
GROUP BY usuario ORDER BY us.user_name;
