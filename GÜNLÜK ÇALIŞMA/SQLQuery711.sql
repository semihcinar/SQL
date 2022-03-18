	SELECT
		(
			ISNULL(
				(45 / NULLIF( 0, 0 )),
				0
			)
		) AS value