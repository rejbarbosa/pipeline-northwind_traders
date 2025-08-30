SELECT
	employee_id AS id_funcionario,
	territory_id AS id_territorio
FROM {{ ref('srv_dim_employee_territories') }}