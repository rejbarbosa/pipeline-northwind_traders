WITH products AS (
    SELECT * FROM {{ ref('srv_dim_products') }}
),
categories AS (
    SELECT * FROM {{ ref('srv_dim_categories') }}
),
suppliers AS (
    SELECT * FROM {{ ref('srv_dim_suppliers') }}
)
SELECT
    p.product_id AS id_produto,
    p.product_name AS nome_produto,
    c.category_name AS nome_categoria,
    s.company_name AS nome_fornecedor,
    p.unit_price AS preco_unitario,
    p.reorder_level AS nivel_reposicao,
    p.units_on_order AS unidades_pedidas,
    p.supplier_id AS id_fornecedor,
    p.category_id AS id_categoria,
    p.discontinued AS descontinuado,
    p.units_in_stock AS unidades_estoque,
    p.quantity_per_unit AS quantidade_por_unidade
FROM
    products p
LEFT JOIN
    categories c ON p.category_id = c.category_id
LEFT JOIN
    suppliers s ON p.supplier_id = s.supplier_id