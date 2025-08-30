SELECT
	employee_id AS Id_Funcionario,
	last_name AS Sobrenome,
	first_name AS Nome,
	full_name AS Nome_Completo,
	title AS Cargo,
	birth_date AS Data_Nascimento,
	hire_date AS Data_Contratacao,
	city AS Cidade,
	region AS Regiao,
	country AS Pais,
	manager_id AS Id_Gerente
FROM {{ ref('srv_dim_employees') }}