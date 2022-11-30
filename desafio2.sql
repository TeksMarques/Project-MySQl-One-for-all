SELECT
	COUNT(DISTINCT musicas.id_musica) AS cancoes,
    COUNT(DISTINCT artistas.id_artista) AS artistas,
    COUNT(DISTINCT albuns.album_id) AS albuns

FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.artistas AS artistas
ON musicas.id_artista = artistas.id_artista
INNER JOIN SpotifyClone.albuns AS albuns
ON musicas.album_id = albuns.album_id;