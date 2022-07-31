SELECT 
FORMAT(MIN(p.valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(p.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(p.valor_plano), 2) AS faturamento_medio, 
FORMAT(SUM(p.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.usuario AS usuario
JOIN SpotifyClone.plano AS p
ON usuario.plano_id = p.plano_id;