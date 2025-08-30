SELECT
    order_id AS id_pedido,
    product_id AS id_produto,
    customer_id AS id_cliente,
    employee_id AS id_funcionario,
    shipper_id AS id_transportadora,
    order_date AS data_pedido,
    required_date AS data_requerida,
    shipped_date AS data_envio,
    net_line_total AS valor_liquido,
    unit_price AS preco_unitario,
    quantity AS quantidade,
    discount_rate AS percentual_desconto,
    discount_amount AS valor_desconto,
    freight_cost AS custo_frete
FROM
    {{ ref('srv_fct_orders') }}