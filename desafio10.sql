SELECT 
	tabMusicas.musica AS nome,
  COUNT(tabMusicas.musica) AS reproducoes
FROM 
	SpotifyClone.musicas AS tabMusicas
INNER JOIN SpotifyClone.repro AS tabRepro
ON tabMusicas.musica_id = tabRepro.musica_id
INNER JOIN SpotifyClone.usuarios  AS tabUsuarios
ON tabUsuarios.usuario_id = tabRepro.usuario_id
INNER JOIN SpotifyClone.planos AS tabPlanos
ON tabPlanos.plano_id = tabUsuarios.plano_id
WHERE tabPlanos.plano = 'gratuito' OR tabPlanos.plano = 'pessoal'
GROUP BY tabMusicas.musica
ORDER BY nome ASC;
