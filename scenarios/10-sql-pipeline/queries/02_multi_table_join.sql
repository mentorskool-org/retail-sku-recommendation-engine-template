-- Scenario 10 — Query 2: Star-schema multi-table join
--
-- Objective:
--   Enrich store KPIs with geographic hierarchy (region → zone → state) and
--   monthly sales targets so downstream analytics can rank performance vs target.
--
-- TODO: implement
SELECT
    s.store_id,
    -- store + geography + target columns
FROM fact_sales fs
JOIN dim_store    s ON s.store_id   = fs.store_id
JOIN dim_geography g ON g.region_id = s.region_id
LEFT JOIN dim_target t ON t.store_id = s.store_id
  AND t.month = DATE_TRUNC('month', fs.txn_date);
