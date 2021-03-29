-- Columns filter by month and year --
SELECT *
FROM statuts, details
WHERE (EXTRACT(YEAR FROM date_vente) = 2020
	AND EXTRACT(MONTH FROM date_vente) = 5)
    ;