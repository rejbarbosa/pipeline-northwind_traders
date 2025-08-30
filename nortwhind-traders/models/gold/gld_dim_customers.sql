SELECT
	customer_id AS id_cliente,
	company_name AS nome_empresa,
	contact_name AS nome_contato,
	contact_title AS titulo_contato,
	address AS endereco,
	city AS cidade,
	region AS regiao,
	postal_code AS cep,
	country AS pais
FROM {{ ref('srv_dim_customers') }}