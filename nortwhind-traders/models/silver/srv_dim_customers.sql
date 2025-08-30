SELECT
    CustomerID AS customer_id,
    CompanyName AS company_name,
    ContactName AS contact_name,
    ContactTitle AS contact_title,
    Address AS address,
    City AS city,
    Region AS region,
    PostalCode AS postal_code,
    Country AS country
FROM {{ source('northwind_bronze_source', 'Customers') }}