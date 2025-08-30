SELECT
	territory_id AS id_territorio,
	territory_description AS descricao_territorio,
	region_id AS id_regiao,
	region_description AS descricao_regiao
FROM {{ ref('srv_dim_locality') }}