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
    p.product_id AS Id_Produto,
    p.product_name AS Produto,
    c.category_name AS Categoria,
    s.company_name AS Fornecedor,
    p.unit_price AS Preco_Unitario,
    p.reorder_level AS Nivel_Reposicao,
    p.units_on_order AS Unidades_Pedidas,
    p.supplier_id AS Id_Fornecedor,
    p.category_id AS Id_Categoria,
    p.discontinued AS Descontinuado,
    p.units_in_stock AS Unidades_Estoque,
    REGEXP_EXTRACT(p.quantity_per_unit, r'^(\\d+)') AS Quantidade_Por_Unidade,
    REGEXP_EXTRACT(p.quantity_per_unit, r'(\\d+)') AS Volume_Por_Unidade,
    REGEXP_EXTRACT(p.quantity_per_unit, r'(g|kg|ml|cc|pieces|box|bottles|jars)') AS Unidade
FROM
    products p
LEFT JOIN
    categories c ON p.category_id = c.category_id
LEFT JOIN
    suppliers s ON p.supplier_id = s.supplier_id