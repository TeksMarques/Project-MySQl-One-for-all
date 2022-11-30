SELECT 
    a.artistas AS artista,
    b.nome_album AS album,
    COUNT(s.id_artista) AS seguidores
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS b On b.id_artista = a.id_artista
        INNER JOIN
    SpotifyClone.seguindo_artistas AS s ON s.id_artista = a.id_artista
GROUP BY b.album_id
ORDER BY seguidores DESC , artista ASC , album ASC;