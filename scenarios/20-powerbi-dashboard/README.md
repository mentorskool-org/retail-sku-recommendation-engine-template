# Scenario 20 — Power BI Dashboard (Hands-On)

**Stack:** Power BI Desktop · DAX  •  **Duration:** ~3h 30m  •  **Maps to sub-scenarios:** 31, 32

## Overview

Build the complete compliance tracking dashboard: overall and regional compliance rates, revenue attribution, trend analysis, and store-level detail tables. Create a dashboard that sales leadership can use to drive recommendation adoption.

## Pre-requisites

- Completed: Compliance Dashboards with Power BI masterclass (Position 19)
- Power BI Desktop installed (Windows)
- Recommendation outputs from scenario 16 + orders dataset

## Learning Objectives

1. Build a Power BI data model with recommendations and orders tables (star schema).
2. Create DAX measures: `Compliance Rate`, `Recommended Revenue`, `Revenue per Recommendation`, `Uplift %`.
3. Design a 4-visual dashboard: KPI card, bar chart, line trend, detail table.
4. Implement region and cluster slicers with drill-through to store level.
5. Validate DAX measures against manual Excel calculations.

## Deliverables (commit into this folder)

- `compliance-dashboard.pbix` — the Power BI file.
- `dax-measures.md` — every measure with its formula and short explanation.
- `screenshots/dashboard-overview.png`, `screenshots/drill-through.png`.
- `validation.md` — measure values cross-checked against Excel for at least one region.

## Submission Checklist

- [ ] Data model uses a star schema (no many-to-many shortcuts)
- [ ] All measures defined as explicit DAX (not implicit aggregations)
- [ ] Drill-through path works from dashboard to store-level detail
- [ ] PR opened with mentor tagged

> Note: `.pbix` files are binary. Don't worry about diff readability — your mentor will open them locally to review.
