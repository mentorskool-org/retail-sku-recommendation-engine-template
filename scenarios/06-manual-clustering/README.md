# Scenario 06 — Manual Clustering & Recommendation Logic (Hands-On)

**Stack:** Excel  •  **Duration:** ~3h 30m  •  **Maps to sub-scenarios:** 9, 10, 11, 12

## Overview

Build the store clustering logic manually in Excel for 100 stores, calculate cluster assignments using Euclidean distance, and generate SKU recommendations for individual stores using the matrix logic. This foundational exercise ensures you understand every step before automating it in Python.

## Pre-requisites

- Completed: Store Clustering Fundamentals masterclass (Position 5)
- Excel: SQRT, SUMPRODUCT, VLOOKUP, COUNTIFS

## Learning Objectives

1. Standardise 3 KPIs using min-max normalisation and visualise in scatter plots.
2. Perform 3 iterations of manual K-Means and compare to algorithm output.
3. Calculate Euclidean distance to assign a new store to the correct cluster.
4. Generate top-10 SKU recommendations for a specific store using peer-based logic.
5. Design and document a cold-start recommendation fallback for new stores.

## Deliverables (commit into this folder)

- `manual-kmeans.xlsx` — 3-iteration manual K-Means with assignment + centroid update sheets.
- `new-store-assignment.xlsx` — Euclidean distance calculations and cluster assignment.
- `peer-based-recommendations.xlsx` — top-10 SKU recommendations for at least 3 stores.
- `cold-start-design.md` — documented fallback strategy for stores with no history.

## Submission Checklist

- [ ] Manual K-Means iterations converge or stabilise; centroids shown per iteration
- [ ] Recommendations include projected revenue ranking
- [ ] Cold-start design considers regional, format, and SKU-category fallbacks
- [ ] PR opened with mentor tagged
