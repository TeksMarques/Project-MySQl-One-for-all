SELECT 
    a.artistas AS artista, b.nome_album AS album
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS b
WHERE
    a.artistas LIKE 'Elis Regina'
        AND b.id_artista = '3';