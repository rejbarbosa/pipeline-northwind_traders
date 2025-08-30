SELECT
	customer_id AS Id_Cliente,
	company_name AS Empresa,
	contact_name AS Contato,
	contact_title AS Titulo_Contato,
	address AS Endereco,
	city AS Cidade,
	region AS Regiao,
	postal_code AS CEP,
	country AS Pais
FROM {{ ref('srv_dim_customers') }}