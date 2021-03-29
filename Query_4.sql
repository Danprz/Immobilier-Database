-- Average and standard deviation of the price per habitable square meter --
SELECT 	ville,
		COUNT(d.biens_id) AS quantite,
		AVG(prix_m2) AS average,
		STDDEV(prix_m2) AS std
FROM	details as d
	JOIN localisations as l
    ON d.biens_id = l.biens_id
GROUP BY ville
ORDER BY quantite DESC;