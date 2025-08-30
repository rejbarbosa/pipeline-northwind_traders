SELECT
    SupplierID AS supplier_id,
    CompanyName AS company_name,
    Country AS country
FROM {{ source('northwind_bronze_source', 'Suppliers') }}