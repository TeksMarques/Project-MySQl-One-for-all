SELECT 
    nome_usuario AS usuario,
    COUNT(nome_usuario) AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.historico_de_reproducoes AS h
        INNER JOIN
    SpotifyClone.musicas AS m ON (h.id_musica = m.id_musica)
        INNER JOIN
    SpotifyClone.usuarios AS u ON (h.usuario_id = u.usuario_id)
GROUP BY nome_usuario
ORDER BY nome_usuario;