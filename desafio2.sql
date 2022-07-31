SELECT COUNT(cancoes.track_name), COUNT(artista.id), COUNT(albuns.album_id)
FROM SpotifyClone.tracks AS cancoes,
INNER JOIN SpotifyClone.artist AS artista,
INNER JOIN SpotifyClone.album AS albuns