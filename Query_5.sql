-- Average, maximus and minimous of the surface per habitable square meter --
SELECT 	ville,
		COUNT(s.biens_id) AS quantite,
		AVG(surface_hab) AS average,
		MAX(surface_hab) AS maximum,
        MIN(surface_hab) AS minimum
FROM	surfaces as s
	JOIN localisations as l
    ON s.biens_id = l.biens_id
GROUP BY ville
ORDER BY quantite DESC;






  
