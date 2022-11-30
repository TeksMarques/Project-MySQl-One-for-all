SELECT 
    m.musica as cancao,
    COUNT(h.id_musica) AS reproducoes
FROM
    SpotifyClone.musicas as m
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS h ON m.id_musica = h.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;