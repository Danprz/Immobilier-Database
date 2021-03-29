SELECT 
	EXTRACT(month FROM date_vente) AS mois_vente,
    COUNT(id) as total_des_maisons
FROM statuts
GROUP BY mois_vente
ORDER BY total_des_maisons DESC
;

