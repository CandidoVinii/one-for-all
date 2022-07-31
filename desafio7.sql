SELECT a.nome_artista AS artista,
album.nome_album AS album,
COUNT(f.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN album AS album
ON a.artista_id = album.artista_id
INNER JOIN usuario_seguindo_artista AS f
ON a.artista_id = f.artista_id
GROUP BY album.nome_album, a.nome_artista
ORDER BY seguidores DESC, artista, album;