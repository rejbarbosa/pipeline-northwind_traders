-- CTE para os detalhes dos pedidos, agora incluindo as colunas necessárias
WITH raw_order_details AS (
    SELECT
        OrderID AS order_id,
        ProductID AS product_id,
        Quantity,
        UnitPrice,
        Discount,
        -- O total líquido da linha já calculado
        (UnitPrice * Quantity * (1 - Discount)) AS net_line_total
    FROM {{ source('northwind_bronze_source', 'Order_Details') }}
),

-- CTE para os pedidos (sem alterações, mas mantida para clareza)
raw_orders AS (
    SELECT
        OrderID AS order_id,
        CustomerID AS customer_id,
        EmployeeID AS employee_id,
        ShipVia AS shipper_id,
        CAST(OrderDate AS TIMESTAMP) AS order_date,
        CAST(RequiredDate AS TIMESTAMP) AS required_date,
        CAST(ShippedDate AS TIMESTAMP) AS shipped_date,
        Freight AS freight_cost
    FROM {{ source('northwind_bronze_source', 'Orders') }}
)

-- SELECT final unindo as duas fontes de dados
SELECT
    od.order_id,
    od.product_id,
    o.customer_id,
    o.employee_id,
    o.shipper_id,
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.freight_cost,
    od.Quantity AS quantity,
    od.UnitPrice AS unit_price,
    od.Discount AS discount_rate,
    (od.Quantity * od.UnitPrice * od.Discount) AS discount_amount,
    od.net_line_total
FROM raw_order_details AS od
LEFT JOIN raw_orders AS o ON od.order_id = o.order_id