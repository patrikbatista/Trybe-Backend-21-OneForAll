 SELECT 
	nome AS usuario,
	COUNT(tabRepro.musica_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(duracao)/60,2) AS total_minutos
    FROM SpotifyClone.usuarios AS tabUsuarios
    INNER JOIN SpotifyClone.repro AS tabRepro
    ON tabUsuarios.usuario_id = tabRepro.usuario_id
    INNER JOIN SpotifyClone.musicas AS tabMusicas
    ON tabMusicas.musica_id = tabRepro.musica_id
    GROUP BY usuario
    ORDER BY nome;
