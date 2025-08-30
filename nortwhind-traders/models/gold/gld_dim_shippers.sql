SELECT
	shipper_id AS Id_Transportadora,
	company_name AS Transportadora
FROM {{ ref('srv_dim_shippers') }}