SELECT us.user_name AS usuario, IF(YEAR(MAX(mh.date_playback)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario 
FROM `SpotifyClone`.user as us
INNER JOIN `SpotifyClone`.music_history AS mh
ON mh.user_id = us.user_id
GROUP BY us.user_name
ORDER BY usuario;
