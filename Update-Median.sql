UPDATE A
SET A.daily_vaccinations =
Case when A.daily_vaccinations IS NULL THEN B.MEDIAN ELSE A.daily_vaccinations
END FROM	country_vaccination_stats2 A INNER JOIN
													(
													SELECT country,
														   daily_vaccinations,
														   PERCENTILE_CONT(0.5)
															 WITHIN GROUP (ORDER BY daily_vaccinations) OVER (
															   PARTITION BY country) AS MEDIAN
													FROM   country_vaccination_stats
													) B
											ON	A.country = B.country
select * from [dbo].[country_vaccination_stats2]