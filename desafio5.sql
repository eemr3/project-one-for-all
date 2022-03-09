SELECT m.title_music AS cancao, COUNT(hm.music_id) AS reproducoes  FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.music_history AS hm
ON hm.music_id = m.music_id
GROUP BY cancao
HAVING reproducoes = 2 ORDER BY cancao LIMIT 2;
