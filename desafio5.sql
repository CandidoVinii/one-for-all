SELECT c.nome_cancao AS cancao,
COUNT(r.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
JOIN SpotifyClone.reproducao AS r 
ON r.cancao_id = c.cancao_id
GROUP BY c.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;