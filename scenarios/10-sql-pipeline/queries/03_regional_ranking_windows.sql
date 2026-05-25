-- Scenario 10 — Query 3: Regional ranking with window functions
--
-- Objective:
--   For each (region, store), produce rank by total_sales using RANK,
--   DENSE_RANK, and NTILE(4) for quartile bucketing.
--   Document in validation.md when you'd choose each.
--
-- TODO: implement
WITH store_kpis AS (
    SELECT store_id, region_id, SUM(revenue) AS total_sales
    FROM fact_sales
    GROUP BY store_id, region_id
)
SELECT
    region_id,
    store_id,
    total_sales,
    RANK()       OVER (PARTITION BY region_id ORDER BY total_sales DESC) AS sales_rank,
    DENSE_RANK() OVER (PARTITION BY region_id ORDER BY total_sales DESC) AS sales_dense_rank,
    NTILE(4)     OVER (PARTITION BY region_id ORDER BY total_sales DESC) AS sales_quartile
FROM store_kpis;
