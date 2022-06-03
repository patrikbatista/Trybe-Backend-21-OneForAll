SELECT
	musica AS cancao, 
    COUNT(tabRepro.musica_id) AS reproducoes
    FROM SpotifyClone.musicas AS tabMusicas
    INNER JOIN SpotifyClone.repro AS tabRepro 
    ON tabMusicas.musica_id = tabRepro.musica_id
    GROUP BY cancao 
    ORDER BY reproducoes DESC, cancao
    LIMIT 2;
