SELECT u.nome_usuario AS usuario,
 COUNT(r.cancao_id) AS qtde_musicas_ouvidas,
 ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.reproducao AS r
ON u.usuario_id = r.usuario_id
JOIN SpotifyClone.cancao AS c
ON r.cancao_id = c.cancao_id
GROUP BY u.usuario_id
ORDER BY u.nome_usuario;