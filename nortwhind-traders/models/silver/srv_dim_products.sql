SELECT
    ProductID AS product_id,
    ProductName AS product_name,
    SupplierID AS supplier_id,
    CategoryID AS category_id,
    UnitPrice AS unit_price,
    Discontinued AS discontinued,
    ReorderLevel AS reorder_level,
    UnitsInStock AS units_in_stock,
    UnitsOnOrder AS units_on_order,
    QuantityPerUnit AS quantity_per_unit
FROM {{ source('northwind_bronze_source', 'Products') }}