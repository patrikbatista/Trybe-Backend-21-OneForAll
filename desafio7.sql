SELECT
	tabArtistas.artista AS artista,
    tabAlbuns.album AS album,
    COUNT(tabSeguidores.usuario_id) AS seguidores
    FROM SpotifyClone.artistas AS tabArtistas
    INNER JOIN SpotifyClone.albuns AS tabAlbuns
    ON tabArtistas.artista_id = tabAlbuns.artista_id
    INNER JOIN SpotifyClone.seguidores AS tabSeguidores
    ON tabSeguidores.artista_id = tabAlbuns.artista_id
    GROUP BY album, artista
    ORDER BY seguidores DESC, artista ASC, album ASC;
