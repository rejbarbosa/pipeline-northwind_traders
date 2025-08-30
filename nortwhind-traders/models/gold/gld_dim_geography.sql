SELECT
	territory_id AS Id_Territorio,
	territory_description AS Territorio,
	region_id AS Id_Regiao,
	region_description AS Regiao
FROM {{ ref('srv_dim_locality') }}