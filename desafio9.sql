SELECT 
COUNT(song.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducao AS song
JOIN SpotifyClone.usuario AS username
ON song.usuario_id = 3
GROUP BY username.usuario_id
LIMIT 1;