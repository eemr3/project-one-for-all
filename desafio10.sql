SELECT m.title_music AS nome, COUNT(mh.user_id) AS reproducoes FROM SpotifyClone.music_history AS mh
INNER JOIN SpotifyClone.music AS m
ON mh.music_id = m.music_id
INNER JOIN SpotifyClone.user as us
ON us.user_id = mh.user_id
WHERE us.plan_id = 1 OR us.plan_id = 4
GROUP BY nome
ORDER BY nome;
