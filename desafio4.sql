SELECT u.nome_usuario AS usuario,
IF(YEAR(MAX(r.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.reproducao AS r
ON u.usuario_id = r.usuario_id
GROUP BY u.usuario_id 
ORDER BY u.nome_usuario;
