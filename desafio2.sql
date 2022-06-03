SELECT
	(SELECT COUNT(DISTINCT musica) FROM SpotifyClone.musicas)AS cancoes,
	(SELECT COUNT(DISTINCT artista) FROM SpotifyClone.artistas) AS artistas,
	(SELECT COUNT(DISTINCT album) FROM SpotifyClone.albuns) AS albuns;
