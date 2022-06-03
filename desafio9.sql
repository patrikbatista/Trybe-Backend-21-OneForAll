SELECT
	COUNT(tabUsuarios.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.repro AS tabReproducao
INNER JOIN SpotifyClone.usuarios AS tabUsuarios
ON tabReproducao.usuario_id = tabUsuarios.usuario_id
WHERE tabUsuarios.nome = "Bill";
