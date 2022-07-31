SELECT "Walter Phoenix" AS artista,
album.nome_album AS album
FROM SpotifyClone.album AS album
JOIN SpotifyClone.artista AS art
ON album.artista_id = 1
GROUP BY album.nome_album;