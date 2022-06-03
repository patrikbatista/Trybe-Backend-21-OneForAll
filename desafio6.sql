SELECT 
	ROUND(MIN(preco), 2) AS faturamento_minimo,
	ROUND(MAX(preco), 2) AS faturamento_maximo,
	ROUND(AVG(preco), 2) AS faturamento_medio,
	ROUND(SUM(preco), 2) AS faturamento_total
FROM SpotifyClone.planos AS planos
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.plano_id = planos.plano_id;
