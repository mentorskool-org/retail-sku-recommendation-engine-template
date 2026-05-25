-- Scenario 10 — Query 1: Store KPI aggregation (6-month window with outlier exclusions)
--
-- Objective:
--   Produce one row per store with Total Sales, Total Units, Distinct SKUs
--   across the last 6 months of transactions. Exclude bulk-purchase outliers
--   per the outlier rules defined in scenario 08.
--
-- Inputs (adjust to your schema):
--   fact_sales(store_id, sku_id, txn_date, units, revenue)
--   dim_store(store_id, store_name, region_id)
--
-- Output:
--   store_id, total_sales, total_units, distinct_skus, txn_count
--
-- TODO: implement
SELECT
    -- columns
FROM fact_sales s
WHERE s.txn_date >= DATEADD(month, -6, CURRENT_DATE)
  -- AND <outlier-exclusion predicate>
GROUP BY s.store_id;
