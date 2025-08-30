SELECT
    CategoryID AS category_id,
    CategoryName AS category_name
FROM {{ source('northwind_bronze_source', 'Categories') }}