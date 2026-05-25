# Scenario 16 — Recommendation Optimization (Hands-On)

**Stack:** Python · business rules  •  **Duration:** ~3h 0m  •  **Maps to sub-scenarios:** 26, 27, 28

## Overview

Build the recommendation optimisation layer: implement greedy SKU selection for revenue maximisation, layer business rules for mandatory inclusions and exclusions, and create outlier-robust aggregations. Test your logic with edge cases and document the business rule engine.

## Pre-requisites

- Completed: Business Rules & Optimization Logic masterclass (Position 15)
- Store clustering output from scenario 14

## Learning Objectives

1. Implement `select_top_skus()` with projected-revenue calculation.
2. Add business-rule layers: mandatory SKUs, regional exclusions, target caps.
3. Handle edge cases: cap exceeded by mandatory, empty recommendation sets, conflicting rules.
4. Implement outlier detection and capping for bulk-purchase transactions.
5. Create comprehensive unit tests covering all business rules.

## Deliverables (commit into this folder)

- `src/recommend.py` — `select_top_skus()` and rule-layer functions.
- `tests/test_recommend.py` — pytest suite with ≥1 test per rule.
- `recommendation.ipynb` — end-to-end run with sample stores, before/after rule application.
- `rules.md` — documented rule precedence and conflict resolution policy.

## Submission Checklist

- [ ] `pytest` runs green with all rule edge cases covered
- [ ] Notebook shows recommendations for ≥3 stores from different clusters
- [ ] Rule precedence is unambiguous and documented
- [ ] PR opened with mentor tagged
