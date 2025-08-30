SELECT
    ShipperID AS shipper_id,
    CompanyName AS company_name
FROM {{ source('northwind_bronze_source', 'Shippers') }}