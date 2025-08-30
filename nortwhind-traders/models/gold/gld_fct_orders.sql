SELECT
    order_id AS Id_Pedido,
    product_id AS Id_Produto,
    customer_id AS Id_Cliente,
    employee_id AS Id_Funcionario,
    shipper_id AS Id_Transportadora,
    order_date AS Data_Pedido,
    required_date AS Data_Requerida,
    shipped_date AS Data_Envio,
    net_line_total AS Valor_Liquido,
    unit_price AS Preco_Unitario,
    quantity AS Quantidade,
    discount_rate AS Percentual_Desconto,
    discount_amount AS Valor_Desconto,
    freight_cost AS Custo_Frete
FROM
    {{ ref('srv_fct_orders') }}