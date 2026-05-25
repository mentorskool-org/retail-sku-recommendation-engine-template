# Scenario 08 — Data Quality Assessment (Hands-On)

**Stack:** Excel  •  **Duration:** ~2h 30m  •  **Maps to sub-scenarios:** 13, 14, 15

## Overview

Apply data quality techniques to real retail data: identify bulk-purchase outliers that would skew clustering, reconcile store codes across three different source systems, and validate that your SKU tier assignments pass the business "smell test." This scenario builds the defensive skills every production data engineer needs.

## Pre-requisites

- Completed: Data Quality & Validation in Analytics masterclass (Position 7)
- Excel: QUARTILE, VLOOKUP, approximate matching

## Learning Objectives

1. Identify and document the top 10 outliers in store sales data with business explanations.
2. Create business rules for outlier treatment (exclude vs cap vs flag).
3. Reconcile 3 data sources with different store identifiers, achieving >95% match rate.
4. Validate SKU tier assignments by sampling and investigating surprising assignments.
5. Calculate tier stability metrics across monthly snapshots.

## Deliverables (commit into this folder)

- `outlier-analysis.xlsx` — IQR outlier detection, top-10 outliers with business notes.
- `outlier-treatment-rules.md` — exclude/cap/flag policy with rationale.
- `data-reconciliation.xlsx` — match rate calculation across 3 sources.
- `tier-validation.xlsx` — sampled tier assignments + stability metrics across snapshots.

## Submission Checklist

- [ ] >95% match rate achieved and shown explicitly
- [ ] Outlier rules cover both statistical and business-driven triggers
- [ ] Tier stability metric defined and computed
- [ ] PR opened with mentor tagged
