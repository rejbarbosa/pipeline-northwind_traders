SELECT
	employee_id AS Id_Funcionario,
	territory_id AS Id_Territorio
FROM {{ ref('srv_dim_employee_territories') }}