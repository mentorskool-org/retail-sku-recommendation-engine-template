# Scenario 10 — SQL Analytics Pipeline (Hands-On)

**Stack:** SQL  •  **Duration:** ~4h 0m  •  **Maps to sub-scenarios:** 16, 17, 18, 19

## Overview

Build the complete SQL layer of the recommendation engine: extract store KPIs from transactional data, join with geographic hierarchies, add within-region rankings, and create monthly snapshots for tracking cluster migrations. By the end, you will have a production-ready SQL pipeline.

## Pre-requisites

- Completed: SQL for Retail Analytics masterclass (Position 9)
- Access to a SQL environment (SQL Server, PostgreSQL, or cloud equivalent)

## Learning Objectives

1. Write and optimise a 6-month store KPI aggregation query with outlier exclusions.
2. Create a multi-table join query linking sales → stores → geography → targets.
3. Add regional rankings using `RANK`, `DENSE_RANK`, and `NTILE` window functions.
4. Implement a monthly snapshot table with change-detection logic.
5. Validate SQL outputs against Excel calculations for accuracy.

## Deliverables (commit into this folder)

- `queries/01_store_kpi_aggregation.sql`
- `queries/02_multi_table_join.sql`
- `queries/03_regional_ranking_windows.sql`
- `queries/04_monthly_snapshot.sql`
- `validation.md` — comparison of SQL outputs against Excel baselines (scenario 06 / 08).

## Submission Checklist

- [ ] Queries are commented and idempotent (re-runnable)
- [ ] Window functions chosen with stated reasoning (`RANK` vs `DENSE_RANK` vs `NTILE`)
- [ ] Validation document shows row counts and aggregate match
- [ ] PR opened with mentor tagged
