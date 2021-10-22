


select CAST(AVG (daily_vaccinations) as numeric (14,0))

from 
		(
		select *, ROW_NUMBER () over (order by  daily_vaccinations desc) as desc_daily,
				  ROW_NUMBER () over (order by  daily_vaccinations asc) as asc_daily
		from country_vaccination_stats
		where country ='Belgium' -- AND daily_vaccinations <> 'ISNULL'
		) as a
WHERE asc_daily in (desc_daily, desc_daily+1, desc_daily-1)




select AVG (daily_vaccinations) from country_vaccination_stats
where country ='Belgium'







	
	SELECT country, daily_vaccinations	from country_vaccination_stats 
	WHERE        (country = N'Argentina') AND (daily_vaccinations IS NOT NULL)





