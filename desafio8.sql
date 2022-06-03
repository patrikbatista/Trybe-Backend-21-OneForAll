SELECT
	tabArtistas.artista AS artista,
	tabAlbums.album AS album
FROM SpotifyClone.artistas AS tabArtistas
JOIN SpotifyClone.albuns AS tabAlbums 
ON tabAlbums.artista_id = tabArtistas.artista_id
WHERE tabArtistas.artista = "Walter Phoenix"
ORDER BY album ASC;
