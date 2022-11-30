SELECT 
    COUNT(h.id_musica) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_de_reproducoes AS h
        INNER JOIN
    SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE
    u.nome_usuario LIKE 'Barbara Liskov';