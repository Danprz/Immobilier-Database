SELECT COUNT(id) as total_des_maisons, ville 
FROM localisations  
GROUP BY ville
ORDER BY total_des_maisons DESC
;



