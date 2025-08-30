SELECT
    EmployeeID AS employee_id,
    LastName AS last_name,
    FirstName AS first_name,
    (FirstName || ' ' || LastName) AS full_name,
    Title AS title,
    CAST(BirthDate AS TIMESTAMP) AS birth_date,
    CAST(HireDate AS TIMESTAMP) AS hire_date,
    City AS city,
    Region AS region,
    Country AS country,
    ReportsTo AS manager_id
FROM {{ source('northwind_bronze_source', 'Employees') }}