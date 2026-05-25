# Scenario 12 — Python Data Pipeline (Hands-On)

**Stack:** Python · Pandas · scikit-learn  •  **Duration:** ~4h 0m  •  **Maps to sub-scenarios:** 20, 21, 22

## Overview

Build a complete Python data preparation pipeline: load 5 CSV files, validate and clean data, calculate store KPIs with proper scaling, and implement SKU profiling with tier assignment. This Jupyter notebook becomes the foundation of your recommendation engine.

## Pre-requisites

- Completed: Python Data Engineering for Recommendations masterclass (Position 11)
- Python packages: `pandas`, `numpy`, `sklearn`, `scipy`

## Learning Objectives

1. Create a Jupyter notebook that loads, validates, and joins 5 data sources.
2. Implement store KPI calculation with `MinMaxScaler` and scaler persistence (`joblib`).
3. Build a `profile_skus()` function that calculates composite scores and assigns L1–L4 tiers.
4. Validate that tier distribution is approximately 25% per quartile.
5. Document the pipeline with markdown explanations for each transformation.

## Deliverables (commit into this folder)

- `pipeline.ipynb` — main notebook (use the starter as a base).
- `src/profile_skus.py` — extracted, reusable function with docstring.
- `artifacts/scaler.joblib` — persisted scaler (small file, OK to commit).
- `validation.md` — distribution checks for tier balance + sanity assertions.

## Submission Checklist

- [ ] Notebook runs top-to-bottom without errors on a fresh kernel
- [ ] `profile_skus()` has type hints and at least one unit test
- [ ] Tier distribution is within ±5pp of 25% per tier
- [ ] PR opened with mentor tagged
