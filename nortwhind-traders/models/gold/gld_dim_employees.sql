SELECT
	employee_id AS id_funcionario,
	last_name AS sobrenome,
	first_name AS nome,
	full_name AS nome_completo,
	title AS cargo,
	birth_date AS data_nascimento,
	hire_date AS data_contratacao,
	city AS cidade,
	region AS regiao,
	country AS pais,
	manager_id AS id_gerente
FROM {{ ref('srv_dim_employees') }}