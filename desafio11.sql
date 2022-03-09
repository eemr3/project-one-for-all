SELECT m.title_music AS nome_musica, 
CASE
      WHEN m.title_music LIKE('%Streets') THEN REPLACE(m.title_music,'Streets','Code Review')
      WHEN m.title_music LIKE('%Her Own') THEN REPLACE(m.title_music,'Her Own','Trybe')
      WHEN m.title_music LIKE('%Inner Fire') THEN REPLACE(m.title_music,'Inner Fire','Project')
      WHEN m.title_music LIKE('%Silly') THEN REPLACE(m.title_music,'Silly','Nice')
      WHEN m.title_music LIKE('%Circus') THEN REPLACE(m.title_music,'Circus','Pull Request')
END AS novo_nome
FROM SpotifyClone.music AS m
WHERE m.title_music LIKE('%Streets%')
OR m.title_music LIKE('%Her Own%')
OR m.title_music LIKE('%Inner Fire%')
OR m.title_music LIKE('%Silly%')
OR m.title_music LIKE('%Circus%')
ORDER BY m.title_music;



