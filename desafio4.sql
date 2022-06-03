SELECT 
	nome AS usuario,
    IF(YEAR(MAX(reproducao))= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
    FROM SpotifyClone.usuarios AS tabUsuarios
    INNER JOIN SpotifyClone.repro AS tabRepro
    ON tabUsuarios.usuario_id = tabRepro.usuario_id
    GROUP BY usuario
    ORDER BY nome;
