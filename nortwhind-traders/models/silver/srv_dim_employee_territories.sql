WITH emp_territories AS(
    select 
    EmployeeID as employee_id,
    TerritoryID as territory_id
    from {{ source('northwind_bronze_source', 'EmployeeTerritories') }}
)
select * from emp_territories