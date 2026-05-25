-- Scenario 10 — Query 4: Monthly snapshot with change detection
--
-- Objective:
--   Create a snapshot table that captures each store's cluster assignment
--   per month and flags churn vs the previous month.
--
-- TODO: implement
-- 1. Create snapshot table if not exists
-- 2. Insert current month's cluster assignments
-- 3. Use LAG() OVER (PARTITION BY store_id ORDER BY snapshot_month) to flag changes

CREATE TABLE IF NOT EXISTS store_cluster_snapshot (
    snapshot_month DATE,
    store_id       BIGINT,
    cluster_id     INT,
    cluster_name   VARCHAR(64),
    changed_flag   BOOLEAN
);
