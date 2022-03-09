SELECT COUNT(mh.user_id) AS quantidade_musicas_no_historico FROM SpotifyClone.music_history as mh
INNER JOIN SpotifyClone.user AS us
ON us.user_id = mh.user_id
WHERE us.user_name = 'Bill';
