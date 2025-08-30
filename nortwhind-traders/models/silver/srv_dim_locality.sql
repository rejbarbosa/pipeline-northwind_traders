WITH territories_source AS (
    SELECT
        TerritoryID AS territory_id,
        TerritoryDescription AS territory_description,
        RegionID AS region_id
    FROM
        {{ source('northwind_bronze_source', 'Territories') }}
),

regions_source AS (
    SELECT
        RegionID AS region_id,
        RegionDescription AS region_description
    FROM
        {{ source('northwind_bronze_source', 'Region') }}
)

SELECT
    t.territory_id,
    t.territory_description,
    t.region_id,
    r.region_description
FROM
    territories_source t
LEFT JOIN
    regions_source r ON t.region_id = r.region_id