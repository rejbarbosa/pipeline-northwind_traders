SELECT
	shipper_id AS id_transportadora,
	company_name AS nome_empresa
FROM {{ ref('srv_dim_shippers') }}